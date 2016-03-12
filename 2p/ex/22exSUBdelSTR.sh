#!/bin/bash
var=abcABC123ABCabc
echo ${var}
echo ${var#a*C}
echo ${var##a*C}
echo ${var%b*c}
echo ${var%%b*c}
