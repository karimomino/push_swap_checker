use strict;
use warnings;
use 5.010;

use List::Util 'shuffle';

my @unique = (shuffle -1000 .. 1000)[1..$ARGV[0]];

say "@unique";
