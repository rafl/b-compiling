use strict;
use warnings;

package B::Compiling;
# ABSTRACT: Expose PL_compiling to perl

use B;
use XSLoader;

XSLoader::load(
    __PACKAGE__,
    exists $B::Compiling::{VERSION} ? ${ $B::Compiling::{VERSION} } : (),
);

use Sub::Exporter -setup => {
    exports => ['PL_compiling'],
    groups  => { default => ['PL_compiling'] },
};

1;

=head1 SYNOPSIS

    use B::Compiling;

    BEGIN {
        warn "currently compiling ", PL_compiling->file;
    }

=head1 DESCRIPTION

This module exposes the perl interpreter's PL_compiling variable to perl.

=func PL_compiling

This function returns a C<B::COP> object representing PL_compiling. It's
exported by default. See L<B> for documentation on how to use the returned
C<B::COP>.

=head1 SEE ALSO

L<B>

=cut
