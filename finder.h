#pragma once

#ifndef LAB1_1_FINDER_H
#define LAB1_1_FINDER_H

static unsigned int power(
        unsigned int base,
        unsigned int pow);

static unsigned int charHash(
        char alpha,
        unsigned int iter);

unsigned int stringHash(
        const char * string,
        unsigned int string_len);

void reportOccurrence(
        const char *pattern,
        const char *string,
        int position);

int find(
        const char *string,
        const char *pattern,
        unsigned int string_len,
        unsigned int pattern_len,
        unsigned int pattern_hash);

#endif
