use strict;
use warnings;

package B::Compiling;

our $VERSION = '0.01';

use B;
use XSLoader;

XSLoader::load(__PACKAGE__, $VERSION);

use Sub::Exporter -setup => {
    exports => ['PL_compiling'],
    groups  => { default => ['PL_compiling'] },
};

1;
