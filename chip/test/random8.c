// 
// Program:  random.c
// Name:  James E. Stine, Jr.
// Purpose: to create some random hex digits
// 

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

#define STR_LEN 4
#define NUMB 10


void disp_bin(double x, int bits_to_left, int bits_to_right, FILE *out_file) {
  double diff;
  int i;
  if (fabs(x) <  pow(2.0, -bits_to_right)) {
    for (i = -bits_to_left + 1; i <= bits_to_right; i++) {
      fprintf(out_file,"0");
    }
    return;
  }
  if (x < 0.0) {
    x = pow(2.0, ((double) bits_to_left)) + x;
  }
  for (i = -bits_to_left + 1; i <= bits_to_right; i++) {
    diff = pow(2.0, -i);
    if (x < diff) {
      fprintf(out_file, "0");
    }
    else {
      fprintf(out_file, "1");
      x -= diff;
    }
    if (i == 0) {
      fprintf(out_file, ".");
    }
  }
}

 
int main(void) {

    int number;
    int i, j;
    int aa, bb, p;
    int a, b, c, d;
    unsigned char str[STR_LEN + 1] = {0};
    const char *hex_digits16 = "0123456789abcdef";
    const char *hex_digits8 = "01234567";
    const char *hex_digits4 = "0123";
    const char *hex_digits2 = "01";
    
    srand(time(NULL)); 

    for (j = 0; j < NUMB; j++) { 
      aa = 0; bb = 0;
      while (aa <= 0) {
	str[0] = hex_digits16[rand() % 16];
	str[1] = hex_digits16[rand() % 16];
	a = (str[0] > '9')? (str[0] &~ 0x20) - 'A' + 10: (str[0] - '0');
	b = (str[1] > '9')? (str[1] &~ 0x20) - 'A' + 10: (str[1] - '0');
	aa = b*10 + a;
	if (aa > 0)
	  break;
      }
      while (bb <= 0) {
	str[2] = hex_digits16[rand() % 16];
	str[3] = hex_digits16[rand() % 16];
	c = (str[2] > '9')? (str[2] &~ 0x20) - 'A' + 10: (str[2] - '0');
	d = (str[3] > '9')? (str[3] &~ 0x20) - 'A' + 10: (str[3] - '0');
	bb = d*10 + c;
	if (bb > 0)
	  break;
      }
      p = aa*bb;
      printf("%x %x %x ", aa, bb, p);
      printf(" ");
      disp_bin((double) aa, 8, 0, stdout);
      printf(" ");
      disp_bin((double) bb, 8, 0, stdout);
      printf(" ");
      disp_bin((double) p, 16, 0, stdout);
      printf("\n");

    }
 
    return EXIT_SUCCESS;
}
