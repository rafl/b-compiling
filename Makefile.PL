use strict;
use warnings;
use inc::Module::Install;

name 'B-Compiling';
all_from 'lib/B/Compiling.pm';

requires 'B';
requires 'XSLoader';
requires 'Sub::Exporter';

extra_tests;

WriteAll;
