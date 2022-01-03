/*
 * MacAcceleratorDriver.h
 *
 *  Created	: 06 Dec 2019, 14:56 EST
 *  Author	: Abhishek Bhaumick
 *
 */

#ifndef MAC_ACCELERATOR_DRIVER_H_
#define MAC_ACCELERATOR_DRIVER_H_

	#include "altera_avalon_dma.h"
	#include "altera_avalon_dma_regs.h"
	#include "alt_types.h"


	#define MAC_ACCELERATOR_RESET_OFFSET	0x000
	#define MAC_ACCELERATOR_COEFF_OFFSET	0x100
	#define MAC_ACCELERATOR_DATA_OFFSET		0x200
	#define MAC_ACCELERATOR_RESULT_OFFSET	0x300

	#define MAC_ACCELERATOR_BASE_ADDRESS	(int*) MACACCELERATOR_0_BASE
	#define MAC_ACCELERATOR_COEFF_ADDRESS	(int*) MACACCELERATOR_0_BASE + MAC_ACCELERATOR_COEFF_OFFSET
	#define MAC_ACCELERATOR_DATA_ADDRESS	(int*) MACACCELERATOR_0_BASE + MAC_ACCELERATOR_DATA_OFFSET
	#define MAC_ACCELERATOR_RESULT_ADDRESS	(int*) MACACCELERATOR_0_BASE + MAC_ACCELERATOR_RESULT_OFFSET

	unsigned int macDmaTxStatus = 0;
	unsigned int macDmaRxStatus = 0;
	const size_t NumMacCoeffs = 96;

	void macDmaTxComplete()
	{
		macDmaTxStatus = 1;
	}

	volatile size_t sendBlockToMacDma( size_t wordCount, unsigned int* data )
	{
		return 0.0;
	}


	volatile size_t sendCoeffsToMacDma( size_t coeffCount, void* coeffData )
	{

		while( IORD_ALTERA_AVALON_DMA_STATUS( DMA_0_BASE ) & ALTERA_AVALON_DMA_STATUS_BUSY_MSK );

		IOWR_ALTERA_AVALON_DMA_CONTROL( DMA_0_BASE, ALTERA_AVALON_DMA_CONTROL_SOFTWARERESET_MSK );
		IOWR_ALTERA_AVALON_DMA_RADDRESS( DMA_0_BASE, coeffData );
		IOWR_ALTERA_AVALON_DMA_WADDRESS( DMA_0_BASE, MAC_ACCELERATOR_COEFF_ADDRESS );
		IOWR_ALTERA_AVALON_DMA_LENGTH( DMA_0_BASE, coeffCount );

		IOWR_ALTERA_AVALON_DMA_CONTROL( DMA_0_BASE, ( ALTERA_AVALON_DMA_CONTROL_LEEN_MSK | ALTERA_AVALON_DMA_CONTROL_GO_MSK | ALTERA_AVALON_DMA_CONTROL_WORD_MSK ) );

		//	Wait till busy
		while( IORD_ALTERA_AVALON_DMA_STATUS( DMA_0_BASE ) & ALTERA_AVALON_DMA_STATUS_BUSY_MSK );

		//	Wait till done
		if( ! IORD_ALTERA_AVALON_DMA_STATUS( DMA_0_BASE ) & ALTERA_AVALON_DMA_STATUS_DONE_MSK );
		
	}

	volatile size_t sendPixelsToMacDma( size_t pixelCount, void* pixelData )
	{

		while( IORD_ALTERA_AVALON_DMA_STATUS( DMA_0_BASE ) & ALTERA_AVALON_DMA_STATUS_BUSY_MSK );

		IOWR_ALTERA_AVALON_DMA_CONTROL( DMA_0_BASE, ALTERA_AVALON_DMA_CONTROL_SOFTWARERESET_MSK );
		IOWR_ALTERA_AVALON_DMA_RADDRESS( DMA_0_BASE, pixelData );
		IOWR_ALTERA_AVALON_DMA_WADDRESS( DMA_0_BASE, MAC_ACCELERATOR_DATA_ADDRESS );
		IOWR_ALTERA_AVALON_DMA_LENGTH( DMA_0_BASE, pixelCount );

		IOWR_ALTERA_AVALON_DMA_CONTROL( DMA_0_BASE, ( ALTERA_AVALON_DMA_CONTROL_WCON_MSK | ALTERA_AVALON_DMA_CONTROL_LEEN_MSK | ALTERA_AVALON_DMA_CONTROL_GO_MSK | ALTERA_AVALON_DMA_CONTROL_WORD_MSK ) );

		//	Wait till busy
		while( IORD_ALTERA_AVALON_DMA_STATUS( DMA_0_BASE ) & ALTERA_AVALON_DMA_STATUS_BUSY_MSK );

		//	Wait till done
		if( ! IORD_ALTERA_AVALON_DMA_STATUS( DMA_0_BASE ) & ALTERA_AVALON_DMA_STATUS_DONE_MSK );
		
	}

		
	volatile unsigned long getMACFromAcceleratorDma( unsigned int byteCount, unsigned char* data )
	{
		//	Wait till not busy
		while( IORD_ALTERA_AVALON_DMA_STATUS( DMA_0_BASE ) & ALTERA_AVALON_DMA_STATUS_BUSY_MSK );

		*( MAC_ACCELERATOR_BASE_ADDRESS ) = 0x00;

		IOWR_ALTERA_AVALON_DMA_CONTROL( DMA_0_BASE, ALTERA_AVALON_DMA_CONTROL_SOFTWARERESET_MSK );
		IOWR_ALTERA_AVALON_DMA_RADDRESS( DMA_0_BASE, data );
		IOWR_ALTERA_AVALON_DMA_WADDRESS( DMA_0_BASE, MAC_ACCELERATOR_DATA_ADDRESS );
		IOWR_ALTERA_AVALON_DMA_LENGTH( DMA_0_BASE, byteCount );
		IOWR_ALTERA_AVALON_DMA_CONTROL( DMA_0_BASE, (  ALTERA_AVALON_DMA_CONTROL_LEEN_MSK | ALTERA_AVALON_DMA_CONTROL_GO_MSK | ALTERA_AVALON_DMA_CONTROL_WORD_MSK ) );

		//	Wait till busy
		while( IORD_ALTERA_AVALON_DMA_STATUS( DMA_0_BASE ) & ALTERA_AVALON_DMA_STATUS_BUSY_MSK );

		//	Wait till done
		if( ! IORD_ALTERA_AVALON_DMA_STATUS( DMA_0_BASE ) & ALTERA_AVALON_DMA_STATUS_DONE_MSK );

		return (unsigned long) *( MAC_ACCELERATOR_RESULT_ADDRESS );

	}


#endif /* MAC_ACCELERATOR_DRIVER_H_ */
