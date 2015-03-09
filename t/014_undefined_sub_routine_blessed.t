use Test::More tests => 1;

use strict;
use warnings;

use Dancer2;
use Dancer2::Plugin::Passphrase;

eval {
     my $password = passphrase('password')->generate();
     print "$password\n";
};
like($@, qr/^$/);