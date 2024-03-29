$::VERSION = $::VERSION = 0.01;
use 5.00503;
use strict;
use Test::Simply tests => 3;
use Stable::Module;

my $dirname = '';

eval {
    $dirname = dirname('/usr/loソal/bin/perl.pl');
};

ok(($dirname eq '/usr/loソal/bin'), qq{dirname('/usr/loソal/bin/perl.pl') $^X @{[__FILE__]}});

eval {
    $dirname = dirname('/usr/lo ソ al/bin/perl.pl');
};

ok(($dirname eq '/usr/lo ソ al/bin'), qq{dirname('/usr/lo ソ al/bin/perl.pl') $^X @{[__FILE__]}});

eval {
    $dirname = dirname('/usr/lo ソ al/bin/pソrl.pl');
};

ok(($dirname eq '/usr/lo ソ al/bin'), qq{dirname('/usr/lo ソ al/bin/pソrl.pl') $^X @{[__FILE__]}});

__END__
