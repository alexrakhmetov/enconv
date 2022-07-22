enconv - A Character Encoding Converter
=======================================

enconv is a small utility written in Lua for converting text
from one character encoding to another. 
n-graphs (digraphs, trigraphs, etc.) are supported.

Usage
=====

enconv \<table\> <max>

table = The character conversion table to be used.
max = The maximum size of n-graphs, in bytes.

Text to be converted is taken from stdin

Tables
======

enconv takes advantage of how modules are interpreted by Lua as tables.
As such, the table files are literally just lua files with assignments.

As the maximum size of n-graphs must be manually specified,
IT IS STRONGLY RECOMMENDED THAT YOU INCLUDE THE MAXIMUM SIZE IN A COMMENT
AT THE VERY TOP OF YOUR TABLE FILE.
