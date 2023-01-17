#pragma once

#ifdef PLATFORM_WEB
char out_buffer[1<<16];
char *out_buffer_p = out_buffer;
#define output(...) do { \
    sprintf(out_buffer_p, __VA_ARGS__); \
    out_buffer_p = strchr(out_buffer, 0); \
    while (0);
#else
#define output(...) printf(__VA_ARGS__)
#endif

