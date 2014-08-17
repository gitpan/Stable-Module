$::VERSION = $::VERSION = 0.01;
use 5.00503;
use strict;
use Test::Simply tests => 14;
use Stable::Module;

$SIG{__WARN__} = sub {};
$SIG{__DIE__}  = sub {};

my $rmtree = 0;

mkdir('a',0777)     if not -d 'a';
mkdir('a/b',0777)   if not -d 'a/b';
mkdir('a/b/c',0777) if not -d 'a/b/c';
ok((-d 'a'    ), qq{-d 'a' $^X @{[__FILE__]}});
ok((-d 'a/b'  ), qq{-d 'a/b' $^X @{[__FILE__]}});
ok((-d 'a/b/c'), qq{-d 'a/b/c' $^X @{[__FILE__]}});

eval {
    $rmtree = rmtree('a');
};

ok(($rmtree >= 1  ), qq{rmtree('a') $^X @{[__FILE__]}});
ok((not -e 'a/b/c'), qq{not -e 'a/b/c' $^X @{[__FILE__]}});
ok((not -e 'a/b'  ), qq{not -e 'a/b' $^X @{[__FILE__]}});
ok((not -e 'a'    ), qq{not -e 'a' $^X @{[__FILE__]}});

mkdir('a a',0777)         if not -d 'a a';
mkdir('a a/b b',0777)     if not -d 'a a/b b';
mkdir('a a/b b/c c',0777) if not -d 'a a/b b/c c';
ok((-d 'a a'        ), qq{-d 'a a' $^X @{[__FILE__]}});
ok((-d 'a a/b b'    ), qq{-d 'a a/b b' $^X @{[__FILE__]}});
ok((-d 'a a/b b/c c'), qq{-d 'a a/b b/c c' $^X @{[__FILE__]}});

eval {
    $rmtree = rmtree('a a');
};

ok(($rmtree >= 1        ), qq{rmtree('a a') $^X @{[__FILE__]}});
ok((not -e 'a a/b b/c c'), qq{not -e 'a a/b b/c c' $^X @{[__FILE__]}});
ok((not -e 'a a/b b'    ), qq{not -e 'a a/b b' $^X @{[__FILE__]}});
ok((not -e 'a a'        ), qq{not -e 'a a' $^X @{[__FILE__]}});

__END__
