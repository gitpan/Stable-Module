$::VERSION = $::VERSION = 0.01;
use 5.00503;
use strict;
use Test::Simply tests => 4;
use Stable::Module;

my $notall = '';

eval {
    $notall = notall(1,1,1,1);
};
ok((not $notall), qq{notall(1,1,1,1) $^X @{[__FILE__]}});

eval {
    $notall = notall(0,0,0,0);
};
ok($notall, qq{notall(0,0,0,0) $^X @{[__FILE__]}});

eval {
    $notall = notall(0,0,0,1);
};
ok($notall, qq{notall(0,0,0,1) $^X @{[__FILE__]}});

eval {
    $notall = notall(1,1,1,0);
};
ok($notall, qq{notall(1,1,1,0) $^X @{[__FILE__]}});

__END__
