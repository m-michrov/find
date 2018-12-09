#include <stdio.h>
#include <string.h>

#include "finder.h"

int main(
        int argc,
        char * argv[])
{

    if (argc < 3) {
        puts("Usage: find <pattern> <string> <string> ... <string>");
        return 0;
    }

    unsigned  int pattern_len = strlen(argv[1]),
                  pattern_hash = stringHash(argv[1], pattern_len);

    int last_index = -1,
        current_index;

    for (int k = 2; k < argc; k++) {

        while ((current_index = find(&argv[k][last_index + 1], argv[1], strlen(&argv[k][last_index + 1]), pattern_len, pattern_hash)) >= 0) {

            reportOccurrence(argv[1], argv[k], last_index + current_index + 1);

            last_index += current_index + 1;
        }
    }

    return 0;
}