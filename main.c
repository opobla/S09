#include <stdio.h>
#include "ogp.h"
#include "ipg.h"

#include "ipg.h"
#include "jjg.h"
#include "mm.h"
#include "ogp.h"
#include "pain.h"
#include "rdb.h"
#include "selva.h"

int main(int argc, char** argv) {
    printf("Hello there \n");

    say_hello_ipg();
    say_hello_jjg();
    say_hello_mm();
    say_hello_ogp();
    say_hello_mark();
    say_hello_rdb();
    say_hello_selva();

    printf("You passed %d arguments \n", argc);

    for (int i=0; i < argc ; i++) {
        printf("Argument [%d] is  %s \n", i, argv[i]);
    }

    printf("Bye!\n");
    return 0;
}
