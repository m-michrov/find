#include <stdio.h>
#include <string.h>
#include <math.h>

#include "finder.h"

int main(
        int argc,
        char * argv[])
{

    if (argc < 3) {
        puts("Usage: find <pattern> <string> <string> ... <string>");
        return 0;
    }

    unsigned int pattern_len = (unsigned int)strlen(argv[1]),
                 pattern_hash = stringHash(argv[1], pattern_len),
                 max_pow = (unsigned int)pow(3, pattern_len - 1),
                 current_string_len = 0;

    int last_index,
        current_index;

    for (int k = 2; k < argc; k++) {

        current_string_len = (unsigned int)strlen(argv[k]);

        last_index = -1;

        while ((current_index = find(&argv[k][last_index + 1], argv[1], current_string_len, pattern_len, pattern_hash, max_pow)) >= 0) {

            reportOccurrence(argv[1], argv[k], last_index + current_index + 1);

            last_index += current_index + 1;
            current_string_len -= current_index + 1;
        }
    }

    return 0;
}