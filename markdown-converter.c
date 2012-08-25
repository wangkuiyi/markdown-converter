#include "markdown-converter.h"

#include <mkdio.h>
#include <string.h>
#include <stdio.h>

int markdown_convert(const char* md_doc, 
		     const char* out_filename) {
  FILE *out = NULL;
  int ret = 0;
  MMIOT* mmio = gfm_string(md_doc, strlen(md_doc), 0);
  out = fopen(out_filename, "w+");
  ret = markdown(mmio, out, 0);
  fclose(out);
  return ret;
}
