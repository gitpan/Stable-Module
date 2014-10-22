$::VERSION = $::VERSION = 0.01;
use 5.00503;
use strict;
use Test::Simply tests => 10;
use Stable::Module;

my $copy = 0;

open(FILE,'>copy1.txt');
print FILE "\n";
close(FILE);

ok((    -e 'copy1.txt'), qq{    -e 'copy1.txt' $^X @{[__FILE__]}});
ok((not -e 'copy2.txt'), qq{not -e 'copy2.txt' $^X @{[__FILE__]}});

eval {
    $copy = copy('copy1.txt','copy2.txt');
};

ok($copy, qq{copy('copy1.txt','copy2.txt') $^X @{[__FILE__]}});
ok((    -e 'copy1.txt'), qq{    -e 'copy1.txt' $^X @{[__FILE__]}});
ok((    -e 'copy2.txt'), qq{    -e 'copy2.txt' $^X @{[__FILE__]}});

unlink('copy1.txt');
unlink('copy2.txt');

open(FILE,'>co py1.txt');
print FILE "\n";
close(FILE);

ok((    -e 'co py1.txt'), qq{    -e 'co py1.txt' $^X @{[__FILE__]}});
ok((not -e 'co py2.txt'), qq{not -e 'co py2.txt' $^X @{[__FILE__]}});

eval {
    $copy = copy('co py1.txt','co py2.txt');
};

ok($copy, qq{copy('co py1.txt','co py2.txt') $^X @{[__FILE__]}});
ok((    -e 'co py1.txt'), qq{    -e 'co py1.txt' $^X @{[__FILE__]}});
ok((    -e 'co py2.txt'), qq{    -e 'co py2.txt' $^X @{[__FILE__]}});

unlink('co py1.txt');
unlink('co py2.txt');

__END__
