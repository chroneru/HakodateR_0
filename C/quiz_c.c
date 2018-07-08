#include "/usr/include/stdio.h"
#include "/usr/include/stdlib.h"
#include "/usr/include/string.h"
#include "/usr/include/R/R.h"

void quiz(void);

void quiz(void) {
  char ans_u[256];
  char answer[] = "さくらんぼ";
  printf("おうとうってなんだ？: ");
  scanf("%s",ans_u);
  if(strcmp(answer,ans_u) == 0) printf("あってるよ"); else printf("まちがってるよ");
}

