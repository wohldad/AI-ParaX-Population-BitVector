#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'AI::ParaX::Population::BitVector' ) || print "Bail out!\n";
}

diag( "Testing AI::ParaX::Population::BitVector $AI::ParaX::Population::BitVector::VERSION, Perl $], $^X" );
