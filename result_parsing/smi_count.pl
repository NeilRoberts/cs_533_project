#! /usr/bin/env perl

use strict;
use warnings;

system( "echo 6 > /proc/smidriver" );
print $1 if `dmesg | tail` =~ /SMI Count (\d+)/;

