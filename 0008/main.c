#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define MAX_LENGTH 13

int main(int argc, char* argv[])
{
    FILE* file = fopen("input.txt", "r");
    if (file == NULL)
    {
        printf("Error opening file\n");
        return EXIT_FAILURE;
    }

    char input;
    int digits[MAX_LENGTH + 1] = {0};
    uint64_t max_product = 1, product;
    while((input = fgetc(file)) != EOF)
        if(input <= '9' && input >= '0')
        {
            if(digits[0] < MAX_LENGTH)
                digits[++digits[0]] = input - '0';
            else
            {
                product = 1;
                for (int i = 1; i <= MAX_LENGTH; i++)
                    product *= digits[i];
                max_product = product > max_product ? product : max_product;
                for (int i = 1; i < MAX_LENGTH; i++)
                    digits[i] = digits[i + 1];
                digits[MAX_LENGTH] = input - '0';
            }
        }

    printf("%lld", max_product);

    return EXIT_SUCCESS;
}