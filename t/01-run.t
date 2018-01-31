#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 23;

use AI::Genetic::Parallel::Population;
use AI::Genetic::Parallel::Individual;

use AI::ParaX::Population::BitVector;


can_ok( 'AI::ParaX::Population::BitVector', 'new', 'bits' );


my $pop = AI::ParaX::Population::BitVector->new(
    individual_count => 10,
    bits             => 10,
);

isa_ok( $pop, 'AI::ParaX::Population::BitVector' );

is( scalar @{$pop->individuals}, 10, "found all 10 members" );

my $count = 1;
foreach my $individual ( @{$pop->individuals} ) {
    is( length $individual->dna, 10,    "member $count has the correct DNA length" );
    ok( $individual->dna =~ m/^[01]+$/, "member $count has the correct DNA"        );
    $count++;
}


