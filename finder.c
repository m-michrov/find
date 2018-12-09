#include <stdio.h>
#include <string.h>

static unsigned int power(
        unsigned int base,
        unsigned int pow)
{
    unsigned int result = 1;
    for (unsigned int k = 0; k < pow; k++)
        result *= base;

    return result;
}

static unsigned int charHash(
        const char alpha,
        unsigned const int iter)
{
    return (alpha % 3) * power(3, iter);
}

unsigned int stringHash(
        const char * string,
        unsigned const int string_len)
{

    unsigned int hs = 0;

    for (unsigned int k = 0; k < string_len; k++)
        hs += charHash(string[k], k);
    return hs;
}

void reportOccurrence(
        const char *pattern,
        const char *string,
        int position)
{
    printf("Found substring \"%s\" in \"%s\" at position %d\n", pattern, string, position);
}

int find(
        const char *string,
        const char *pattern,
        unsigned int string_len,
        unsigned int pattern_len,
        unsigned int pattern_hash)
{

    unsigned int current_hash = stringHash(string, pattern_len),
                 matches = 0;

    if (string_len == 0)
        return -1;

    for (int position = 0; position <= (int)string_len - (int)pattern_len; position++) {
        if (current_hash == pattern_hash) {

            for (matches = 0; matches < pattern_len; matches++) {

                if (string[position + matches] != pattern[matches]) {
                    matches = 0;
                    break;
                }
            }


            if (matches == pattern_len)
                return position;
        }

        current_hash -= charHash(string[position], 0);
        current_hash /= 3;

        if (position < string_len - pattern_len)
            current_hash += charHash(string[position + pattern_len], pattern_len - 1);

    }
    return -1;
}