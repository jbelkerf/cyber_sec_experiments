#!/bin/bash
as $1 -o out.o
ld out.o -o $2
./$2
