enconv - A Character Encoding Converter
=======================================

enconv is a small utility written in Lua for converting text
from one character encoding to another. 
n-graphs (digraphs, trigraphs, etc.) are supported.

Usage
=====

enconv <table> <max>

table = The character conversion table to be used.
max = The maximum size of n-graphs

Text to be converted is taken from stdin

Tables
======

enconv takes advantage of how modules are interpreted by Lua as tables.
As such
