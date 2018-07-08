#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <R.h>

void quiz(void);

void quiz(void) {
  char ans_u[256];
  char answer[] = "さくらんぼ";
  printf("おうとうってなんだ？: ");
  scanf_s("%s",ans_u,256);
  if(strcmp(answer,ans_u) == 0) printf("あってるよ"); else printf("まちがってるよ");
}

