use strict;
use warnings;
use Test::More;

BEGIN {
    eval 'use Devel::BeginLift (); 1' or plan skip_all => 'Devel::BeginLift required';
}

use B::Compiling;

sub mk_const { PL_subname . '_const' }

use Devel::BeginLift 'mk_const';

sub foo {
    mk_const;
}

is foo(), 'main::foo_const', 'got sub name during compilation';

done_testing;
