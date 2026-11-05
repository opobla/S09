#include <stdio.h>
#include "ogp.h"
#include "ipg.h"


int main(int argc, char** argv) {
    printf("Hello there \n");
    say_hello_ogp();
    say_hello_ipg();
    printf("You passed %d arguments \n", argc);

    for (int i=0; i < argc ; i++) {
        printf("Argument [%d] is  %s \n", i, argv[i]);
    }

    printf("Bye!\n");
    return 0;
}
