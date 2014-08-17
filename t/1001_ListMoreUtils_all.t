$::VERSION = $::VERSION = 0.01;
use 5.00503;
use strict;
use Test::Simply tests => 4;
use Stable::Module;

my $all = '';

eval {
    $all = all(1,1,1,1);
};
ok($all, qq{all(1,1,1,1) $^X @{[__FILE__]}});

eval {
    $all = all(0,0,0,0);
};
ok((not $all), qq{all(0,0,0,0) $^X @{[__FILE__]}});

eval {
    $all = all(0,0,0,1);
};
ok((not $all), qq{all(0,0,0,1) $^X @{[__FILE__]}});

eval {
    $all = all(1,1,1,0);
};
ok((not $all), qq{all(1,1,1,0) $^X @{[__FILE__]}});

__END__
