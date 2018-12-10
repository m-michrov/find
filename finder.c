#include <stdio.h>
#include <string.h>

unsigned int stringHash(
        const char * string,
        unsigned const int string_len)
{

    unsigned int hs = 0,
                 pow = 1;

    for (unsigned int k = 0; k < string_len; k++) {
        hs += (string[k] % 3) * pow;
        pow *= 3;
    }
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
        unsigned int pattern_hash,
        unsigned int max_pow)
{
    if (string_len < pattern_len)
        return -1;

    unsigned int current_hash = stringHash(string, pattern_len),
                 matches = 0;

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

        current_hash -= string[position] % 3;
        current_hash /= 3;

        if (position < string_len - pattern_len)
            current_hash += (string[position + pattern_len] % 3) * max_pow;

    }
    return -1;
}