use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'AI::ParaX::Population::BitVector',
    AUTHOR           => q{Adam Wohld <adam@radarlabs.com>},
    VERSION_FROM     => 'lib/AI/ParaX/Population/BitVector.pm',
    ABSTRACT_FROM    => 'lib/AI/ParaX/Population/BitVector.pm',
    LICENSE          => 'artistic_2',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Moose'                             => 0,
        'namespace::autoclean'              => 0,
        'AI::Genetic::Parallel::Individual' => 0,
        'AI::Genetic::Parallel::Population' => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'AI-ParaX-Population-BitVector-*' },
);
