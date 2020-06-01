
use strict;
use warnings;

my $apt;
$apt = system("apt update");
print "$apt\n";
