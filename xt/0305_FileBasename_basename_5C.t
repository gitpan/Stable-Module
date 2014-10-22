$::VERSION = $::VERSION = 0.01;
use 5.00503;
use strict;
use Test::Simply tests => 12;
use Stable::Module;

my $basename = '';

eval {
    $basename = basename('/usr/lo�\al/bin/perl.pl');
};

ok(($basename eq 'perl.pl'), qq{basename('/usr/lo�\al/bin/perl.pl') $^X @{[__FILE__]}});

if ($^O =~ m{\A (?:MSWin32|NetWare|symbian|dos) \z}oxms) {
    eval {
        $basename = basename('/usr/lo�\al/bin/perl.pl','.pl');
    };

    ok(($basename eq 'perl'), qq{basename('/usr/lo�\al/bin/perl.pl','.pl') $^X @{[__FILE__]}});
}
else {
    ok(1, qq{SKIP basename('/usr/lo�\al/bin/perl.pl','.pl') $^X @{[__FILE__]}});
}

eval {
    $basename = basename('/usr/lo�\al/bin/perl.pl','.txt');
};

ok(($basename eq 'perl.pl'), qq{basename('/usr/lo�\al/bin/perl.pl','.txt') $^X @{[__FILE__]}});

if ($^O =~ m{\A (?:MSWin32|NetWare|symbian|dos) \z}oxms) {
    eval {
        $basename = basename('/usr/lo �\ al/bin/pe rl.p l','.p l');
    };

    ok(($basename eq 'pe rl'), qq{basename('/usr/lo �\ al/bin/pe rl.p l','.p l') $^X @{[__FILE__]}});
}
else {
    ok(1, qq{SKIP basename('/usr/lo �\ al/bin/pe rl.p l','.p l') $^X @{[__FILE__]}});
}

eval {
    $basename = basename('/usr/lo�\al/bin/p�\rl.pl');
};

ok(($basename eq 'p�\rl.pl'), qq{basename('/usr/lo�\al/bin/p�\rl.pl') $^X @{[__FILE__]}});

if ($^O =~ m{\A (?:MSWin32|NetWare|symbian|dos) \z}oxms) {
    eval {
        $basename = basename('/usr/lo�\al/bin/p�\rl.pl','.pl');
    };

    ok(($basename eq 'p�\rl'), qq{basename('/usr/lo�\al/bin/p�\rl.pl','.pl') $^X @{[__FILE__]}});
}
else {
    ok(1, qq{SKIP basename('/usr/lo�\al/bin/p�\rl.pl','.pl') $^X @{[__FILE__]}});
}

eval {
    $basename = basename('/usr/lo�\al/bin/p�\rl.pl','.txt');
};

ok(($basename eq 'p�\rl.pl'), qq{basename('/usr/lo�\al/bin/p�\rl.pl','.txt') $^X @{[__FILE__]}});

if ($^O =~ m{\A (?:MSWin32|NetWare|symbian|dos) \z}oxms) {
    eval {
        $basename = basename('/usr/lo �\ al/bin/p�\ rl.p l','.p l');
    };

    ok(($basename eq 'p�\ rl'), qq{basename('/usr/lo �\ al/bin/p�\ rl.p l','.p l') $^X @{[__FILE__]}});
}
else {
    ok(1, qq{SKIP basename('/usr/lo �\ al/bin/p�\ rl.p l','.p l') $^X @{[__FILE__]}});
}

eval {
    $basename = basename('/usr/lo�\al/bin/p�\rl.p�\');
};

ok(($basename eq 'p�\rl.p�\'), qq{basename('/usr/lo�\al/bin/p�\rl.p�\') $^X @{[__FILE__]}});

if ($^O =~ m{\A (?:MSWin32|NetWare|symbian|dos) \z}oxms) {
    eval {
        $basename = basename('/usr/lo�\al/bin/p�\rl.p�\','.p�\');
    };

    ok(($basename eq 'p�\rl'), qq{basename('/usr/lo�\al/bin/p�\rl.p�\','.p�\') $^X @{[__FILE__]}});
}
else {
    ok(1, qq{SKIP basename('/usr/lo�\al/bin/p�\rl.p�\','.p�\') $^X @{[__FILE__]}});
}

eval {
    $basename = basename('/usr/lo�\al/bin/p�\rl.p�\','.tx�\');
};

ok(($basename eq 'p�\rl.p�\'), qq{basename('/usr/lo�\al/bin/p�\rl.p�\','.tx�\') $^X @{[__FILE__]}});

if ($^O =~ m{\A (?:MSWin32|NetWare|symbian|dos) \z}oxms) {
    eval {
        $basename = basename('/usr/lo �\ al/bin/p�\ rl.p �\','.p �\');
    };

    ok(($basename eq 'p�\ rl'), qq{basename('/usr/lo �\ al/bin/p�\ rl.p �\','.p �\') $^X @{[__FILE__]}});
}
else {
    ok(1, qq{SKIP basename('/usr/lo �\ al/bin/p�\ rl.p �\','.p �\') $^X @{[__FILE__]}});
}

__END__
