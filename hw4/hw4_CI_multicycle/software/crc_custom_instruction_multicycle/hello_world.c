/**********************************************************/
/*	ECE695R, FALL 2016, HOMEWORK #3			  */
/*	File: MAC_test.c				  */
/**********************************************************/

/* This is the reference program for performing
 * the compute-intensive steps of the IEEE 802.11
 * MAC protocol: WEP encryption and CRC computation.
 *
 *  The steps are:
 *  1. The ICV (CRC of the payload) is calculated and appended
 *     to the frame.
 *  2. The payload and ICV are encrypted using WEP.
 *  3. The FCS (CRC of the entire frame) is calculated
 *     and appended to the frame.
 */

//Header files
#include <stdio.h>
#include "system.h"
#include "test_frames.h"
#include "crc_table.h"
#include <altera_avalon_performance_counter.h>

// Function declarations
void sbox_setup ( unsigned char seed[] );
unsigned char get_wep_byte ( void );
void wep_encrypt ( int plaintext_len, unsigned char plaintext[], unsigned char ciphertext[], unsigned char seed[] );
unsigned long get_crc( int no_of_bytes, unsigned char data[] );
unsigned long get_crc_CI_multicycle( int no_of_bytes, unsigned char data[] );
unsigned long get_crc_CI_multicycle_adv( int no_of_bytes, unsigned char data[] );

//Custom instruction template
#define crc_CI_combinational(crc,data) ALT_CI_CRC_CI_COMBINATIONAL_0 (crc, data)

// Multicycle Custom Instruction Template
// Inputs : 32-bit Data/CRC, 32-bit Dummy Data
// Output : 32-bit CRC value (updated value)
#define CRC_multiCI_LOAD(data1)  		ALT_CI_CRC_CI_MULTICYCLE_0(0x0, data1, 0x0)
#define CRC_multiCI_08BIT(data1) 		ALT_CI_CRC_CI_MULTICYCLE_0(0x1, data1, 0x0)
#define CRC_multiCI_16BIT(data1) 		ALT_CI_CRC_CI_MULTICYCLE_0(0x2, data1, 0x0)
#define CRC_multiCI_24BIT(data1) 		ALT_CI_CRC_CI_MULTICYCLE_0(0x3, data1, 0x0)
#define CRC_multiCI_32BIT(data1) 		ALT_CI_CRC_CI_MULTICYCLE_0(0x4, data1, 0x0)
#define CRC_multiCI_64BIT(data1, data2)         ALT_CI_CRC_CI_MULTICYCLE_0(0x5, data1, data2)
#define CRC_multiCI_READ()       	        ALT_CI_CRC_CI_MULTICYCLE_0(0x6, 0x0,   0x0)

// Global Variable declarations
static unsigned char sbox[256];
static unsigned char wep_index1;
static unsigned char wep_index2;

/***************************************************/
/* Initialize the S-Box used in WEP encryption     */
/***************************************************/
void sbox_setup(unsigned char seed[])
{
  unsigned char index, temp;
  short counter;

  // Initialize index variables
  index = 0;
  wep_index1 = 0;
  wep_index2 = 0;

  for (counter = 0; counter < 256; counter++)
    sbox[counter] = (unsigned char)counter;

  for (counter = 0; counter < 256; counter++)
    {
      // Calculate index
      index = (index + sbox[counter] + seed[counter % 8]) % 256;

      // Swap bytes
      temp = sbox[counter];
      sbox[counter] = sbox[index];
      sbox[index] = temp;
    }
}

/***************************************************/
/* Get a Byte of the key stream - this is just     */
/* XOR-ed with the plaintext                       */
/***************************************************/
unsigned char get_wep_byte(void)
{
  unsigned char index, temp;

  wep_index1 = (wep_index1 + 1) % 256;
  wep_index2 = (wep_index2 + sbox[wep_index1]) % 256;
  temp = sbox[wep_index1];
  sbox[wep_index1] = sbox[wep_index2];
  sbox[wep_index2] = temp;
  index = (sbox[wep_index1] + sbox[wep_index2]) % 256;

  return sbox[index];
}

/***************************************************/
/* Perform WEP encryption of the given plaintext   */
/* using the given seed, using the RC4 algorithm   */
/***************************************************/
void wep_encrypt(int plaintext_len, unsigned char plaintext[], unsigned char ciphertext[], unsigned char seed[])
{
  int i;

  sbox_setup(seed);

  for (i = 0; i < plaintext_len; i++)
    {
      ciphertext[i] = plaintext[i] ^ get_wep_byte();
    }
}

unsigned long get_crc_CI_multicycle(int no_of_bytes, unsigned char data[])
{
  unsigned long crc_temp = 0x4E08BFB4;

  int offset,chunks;
  offset = no_of_bytes%4;
  chunks = no_of_bytes/4;
  int i;
  i = chunks;
  int data32;
  CRC_multiCI_LOAD(crc_temp); 
  for(i=0;i<chunks;i++)
  {
	  data32 = (data[4*i+3] << 24) | (data[4*i+2] << 16) | (data[4*i+1] << 8) | data[4*i];
	  CRC_multiCI_32BIT(data32); 
  }
  if (offset == 1)
  {
	  data32 = (data[4*chunks]);
	  CRC_multiCI_08BIT(data32);
  }
  if (offset == 2)
  {
	  data32 = (data[4*chunks+1]<<8)|(data[4*chunks]);
	  CRC_multiCI_16BIT(data32);
  }
  if (offset == 3)
  {
	  data32 = (data[4*chunks+2]<<16)|(data[4*chunks+1]<<8)|(data[4*chunks]);
	  CRC_multiCI_24BIT(data32);
  }
  crc_temp = CRC_multiCI_READ();
  crc_temp = crc_temp ^ 0xFFFFFFFF;

  return crc_temp; 
}

unsigned long get_crc_CI_multicycle_adv(int no_of_bytes, unsigned char data[])
{
  unsigned long crc_temp = 0x4E08BFB4;
  int offset;
  offset = no_of_bytes%4;
  
  int i, dataa, datab;
  i=0;
  CRC_multiCI_LOAD(crc_temp); 
  
  while((no_of_bytes-i)/8){
	  datab = (data[i+3] << 24) | (data[i+2] << 16) | (data[i+1] << 8) | data[i];
	  dataa = (data[i+7] << 24) | (data[i+6] << 16) | (data[i+5] << 8) | data[i+4];
	  CRC_multiCI_64BIT(datab, dataa);
	  i=i+8;
  }
  
  while((no_of_bytes-i)/4){
	  dataa = (data[i+3] << 24) | (data[i+2] << 16) | (data[i+1] << 8) | data[i];
	  CRC_multiCI_32BIT(dataa);
	  i=i+4;
  }
  
  if (offset == 1)
  {
	  dataa = (data[i]);
	  CRC_multiCI_08BIT(dataa);
  }
  if (offset == 2)
  {
	  dataa = (data[i+1]<<8)|(data[i]);
	  CRC_multiCI_16BIT(dataa);
  }
  if (offset == 3)
  {
	  dataa = (data[i+2]<<16)|(data[i+1]<<8)|(data[i]);
	  CRC_multiCI_24BIT(dataa);
  }
  crc_temp = CRC_multiCI_READ();
  crc_temp = crc_temp ^ 0xFFFFFFFF;

  return crc_temp; 
}

unsigned long get_crc(int no_of_bytes, unsigned char data[])
{
  unsigned long crc_temp = 0xFFFFFFFF;
  int i, index;

  index = ((int)(crc_temp >> 24)) & 0xFF;
  crc_temp = (crc_temp << 8) ^ crc_table[index];

  for (i = 0; i < no_of_bytes; i++)
    {
      index = ((int)(crc_temp >> 24) ^ data[i]) & 0xFF;
      crc_temp = (crc_temp << 8) ^ crc_table[index];
    }
  crc_temp = crc_temp ^ 0xFFFFFFFF;

  return crc_temp;
}

/***************************************************/
/*  Main function - runs through the test frames,  */
/*       performs the required processing one each */
/*       one, and prints out the final frame       */
/***************************************************/
int main()
{

  unsigned char frame[MAX_FRAME_SIZE];
  unsigned char *payload;
  unsigned int payload_len, frame_len;
  unsigned long crc;
  unsigned long crc_ci_mc, crc_ci_mc_adv;
  int i,j;
  unsigned char seed[8];

  // The 5 MSBs of the seed represent the key,
  // which do not change with the frame
  // The 3 LSBs represent the IV, which change
  // with each new frame (part of the 802.11 specification)
  for(j = 0; j < 5; j++) {
    seed[3+j] = test_key[j];
  }

  for (i = 0; i< NUM_TEST_FRAMES; i++)
    {
      PERF_RESET(PERFORMANCE_COUNTER_0_BASE);
      PERF_START_MEASURING(PERFORMANCE_COUNTER_0_BASE);
      //Copy in data from the i-th test frame
      payload_len = test_frames[i].payload_length;

      frame_len = 0;
      for(j = 0; j < HEADER_SIZE; j++)
	frame[frame_len++] = test_frames[i].header[j];
      for(j = 0; j < IV_SIZE; j++)
	frame[frame_len++] = test_frames[i].iv[j];
      for(j = 0; j < payload_len; j++)
	frame[frame_len++] = test_frames[i].payload[j];

      seed[0] = test_frames[i].iv[0];
      seed[1] = test_frames[i].iv[1];
      seed[2] = test_frames[i].iv[2];

      // payload is just a pointer into the frame array
      // It comes after the header and IV
      payload = &(frame[HEADER_SIZE+IV_SIZE]);

      // Compute the ICV (CRC of the payload)
      PERF_BEGIN(PERFORMANCE_COUNTER_0_BASE,1);
      crc = get_crc(payload_len, payload);
      PERF_END(PERFORMANCE_COUNTER_0_BASE,1);
      PERF_BEGIN(PERFORMANCE_COUNTER_0_BASE,2);
      crc_ci_mc = get_crc_CI_multicycle(payload_len, payload);
      PERF_END(PERFORMANCE_COUNTER_0_BASE,2);
      PERF_BEGIN(PERFORMANCE_COUNTER_0_BASE,3);
      crc_ci_mc_adv = get_crc_CI_multicycle_adv(payload_len, payload);
      PERF_END(PERFORMANCE_COUNTER_0_BASE,3);
      // Append the ICV to the frame
      frame[frame_len++] = (unsigned char)(crc >> 24);
      frame[frame_len++] = (unsigned char)(crc >> 16);
      frame[frame_len++] = (unsigned char)(crc >> 8);
      frame[frame_len++] = (unsigned char)(crc);

      // Encrypt the payload and ICV. Plaintext and Ciphertext
      // pointers are the same, which means that
      // Ciphertext overwrites the Plaintext
      wep_encrypt(payload_len+ICV_SIZE, payload, payload, seed);

      // Compute the FCS (CRC of the whole frame)
      PERF_BEGIN(PERFORMANCE_COUNTER_0_BASE,1);
      crc = get_crc(frame_len, frame);
      PERF_END(PERFORMANCE_COUNTER_0_BASE,1);
      PERF_BEGIN(PERFORMANCE_COUNTER_0_BASE,2);
      crc_ci_mc = get_crc_CI_multicycle(frame_len, frame);
      PERF_END(PERFORMANCE_COUNTER_0_BASE,2);
      PERF_BEGIN(PERFORMANCE_COUNTER_0_BASE,3);
      crc_ci_mc_adv = get_crc_CI_multicycle_adv(frame_len, frame);
      PERF_END(PERFORMANCE_COUNTER_0_BASE,3);
      // Append the FCS to the frame
      frame[frame_len++]   = (unsigned char)(crc >> 24);
      frame[frame_len++] = (unsigned char)(crc >> 16);
      frame[frame_len++] = (unsigned char)(crc >> 8);
      frame[frame_len++] = (unsigned char)(crc);

      // Display the final frame that would be transmitted
      printf("Output frame %d (%d Bytes):\n", i, frame_len);
      printf("Output CRC SW %lu : CRC CI MC : %lu CRC CI MC ADV : %lu\n", crc,crc_ci_mc,crc_ci_mc_adv);
      for(j = 0; j < frame_len; j++) {
	printf("%2x ", frame[j]);
	if(j > 2 && (j+1)%8 == 0) printf("\n");
      }
      printf("\n");

      PERF_STOP_MEASURING(PERFORMANCE_COUNTER_0_BASE);
      printf("Printing performance data for Frame number - %i with Payload length - %i B\n",i,payload_len);
      perf_print_formatted_report((void* )PERFORMANCE_COUNTER_0_BASE, 50000000 ,3,"SW_crc","CI_MC_crc","CI_MC_crc_Adv");
    }
  return(0);
}
