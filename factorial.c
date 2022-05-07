#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
  int n = atoi(argv[1]);
  if (n < 0) {
    printf("Error\n");
    return 1;
  }
  int r = 1;
  while (n > 0) {
    r *= n;
    n--;
  }
  printf("%d\n", r);
  return 0;
}
