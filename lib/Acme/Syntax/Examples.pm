# vim: set ts=2 sts=2 sw=2 expandtab smarttab:
use strict;
use warnings;

package #
  Acme::Syntax::Examples;

# ABSTRACT: Perl syntax examples for testing parsers, highlighters, etc.

# Imports

use List::Util;
use Time::Stamp 1.300 qw( localstamp );
use Try::Tiny  0.11;

package #
  Based::Package;

# Modules as arguments

use base 'Acme::Syntax::Examples';

package #
  Child;

use parent qw( Acme::Syntax::Examples );

use aliased "CPAN::Meta::Requirements";
use aliased 'Path::Tiny' => 'Path', qw/tempfile/;

require Timer::Simple;

# Moose

{

  package #
    Thing1;
  use Moose::Role;
  package #
    Thing2;
  use Moose::Role;

  package #
    Animal;
  use Moose;

  package #
    Antlers;

  use Moose;

  extends q[Animal];

  with qw<
    Thing1
    Thing2
  >;

  has attr => (
    is => 'ro',
    default => sub { +{} },
  );

  __PACKAGE__->meta->make_immutable;
}

1;

=head1 DESCRIPTION

Perl syntax examples for testing parsers, highlighters, etc.

=cut

__END__

=head1 end pod

pod after end

=cut

__DATA__
1
2

=head1 data pod

pod after data

=cut
