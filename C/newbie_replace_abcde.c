#include <stdio.h>
#include <R.h>

void replace_abcde_c(int *vec,int *vec_length,  char **mojivec);

void replace_abcde_c(int *vec,int *vec_length,  char **mojivec) {
	int count_times = 0;
	// int vec_length = sizeof vec / sizeof *vec;

	while(count_times < *vec_length) {
		**mojivec = *vec + 96;

		**mojivec += 1;
		vec += 1;

		count_times++;
	}
};
