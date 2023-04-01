#include <stdio.h>

int main(int argc, char **argv) {
    int i;
    if(argc > 1) {
        for(i = 1; i < argc; i++) {
            printf("Argument %d: %s\n", i, argv[i]);
        }
    }
    else {
        printf("No arguments\n");
    }
}