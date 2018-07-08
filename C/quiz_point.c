#include "/usr/include/stdio.h"
#include "/usr/include/stdlib.h"
#include "/usr/include/string.h"
#include "/usr/include/R/R.h"

void quiz(char **ans_u);

void quiz(char **ans_u) {
  char answer[] = "さくらんぼ";
  char yes[] = "あってるよ";
  char no[] = "まちがってるよ";

  printf("おうとうってなんだ？: %p\n",*ans_u);
  if(strcmp(answer,*ans_u) == 0) {
	printf("%s",yes); 
  } else {
	printf("%s",no);
  }
}

