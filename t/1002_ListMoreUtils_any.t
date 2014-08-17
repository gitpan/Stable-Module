$::VERSION = $::VERSION = 0.01;
use 5.00503;
use strict;
use Test::Simply tests => 4;
use Stable::Module;

my $any = '';

eval {
    $any = any(1,1,1,1);
};
ok($any, qq{any(1,1,1,1) $^X @{[__FILE__]}});

eval {
    $any = any(0,0,0,0);
};
ok((not $any), qq{any(0,0,0,0) $^X @{[__FILE__]}});

eval {
    $any = any(0,0,0,1);
};
ok($any, qq{any(0,0,0,1) $^X @{[__FILE__]}});

eval {
    $any = any(1,1,1,0);
};
ok($any, qq{any(1,1,1,0) $^X @{[__FILE__]}});

__END__
