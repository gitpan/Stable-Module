$::VERSION = $::VERSION = 0.01;
use 5.00503;
use strict;
use Test::Simply tests => 4;
use Stable::Module;

my $none = '';

eval {
    $none = none(1,1,1,1);
};
ok((not $none), qq{none(1,1,1,1) $^X @{[__FILE__]}});

eval {
    $none = none(0,0,0,0);
};
ok($none, qq{none(0,0,0,0) $^X @{[__FILE__]}});

eval {
    $none = none(0,0,0,1);
};
ok((not $none), qq{none(0,0,0,1) $^X @{[__FILE__]}});

eval {
    $none = none(1,1,1,0);
};
ok((not $none), qq{none(1,1,1,0) $^X @{[__FILE__]}});

__END__
