$::VERSION = $::VERSION = 0.01;
use 5.00503;
use strict;
use Test::Simply tests => 3;
use Stable::Module;

my $dirname = '';

eval {
    $dirname = dirname('/usr/lo�\al/bin/perl.pl');
};

ok(($dirname eq '/usr/lo�\al/bin'), qq{dirname('/usr/lo�\al/bin/perl.pl') $^X @{[__FILE__]}});

eval {
    $dirname = dirname('/usr/lo �\ al/bin/perl.pl');
};

ok(($dirname eq '/usr/lo �\ al/bin'), qq{dirname('/usr/lo �\ al/bin/perl.pl') $^X @{[__FILE__]}});

eval {
    $dirname = dirname('/usr/lo �\ al/bin/p�\rl.pl');
};

ok(($dirname eq '/usr/lo �\ al/bin'), qq{dirname('/usr/lo �\ al/bin/p�\rl.pl') $^X @{[__FILE__]}});

__END__
