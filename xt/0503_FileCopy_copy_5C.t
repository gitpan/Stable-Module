$::VERSION = $::VERSION = 0.01;
use 5.00503;
use strict;
use Test::Simply tests => 10;
use Stable::Module;

my $copy = 0;

open(FILE,'>ソース1.txt');
print FILE "\n";
close(FILE);

ok((    -e 'ソース1.txt'), qq{    -e 'ソース1.txt' $^X @{[__FILE__]}});
ok((not -e 'ソース2.txt'), qq{not -e 'ソース2.txt' $^X @{[__FILE__]}});

eval {
    $copy = copy('ソース1.txt','ソース2.txt');
};

ok($copy, qq{copy('ソース1.txt','ソース2.txt') $^X @{[__FILE__]}});
ok((    -e 'ソース1.txt'), qq{    -e 'ソース1.txt' $^X @{[__FILE__]}});
ok((    -e 'ソース2.txt'), qq{    -e 'ソース2.txt' $^X @{[__FILE__]}});

unlink('ソース1.txt');
unlink('ソース2.txt');

open(FILE,'>ソ ー ス1.txt');
print FILE "\n";
close(FILE);

ok((    -e 'ソ ー ス1.txt'), qq{    -e 'ソ ー ス1.txt' $^X @{[__FILE__]}});
ok((not -e 'ソ ー ス2.txt'), qq{not -e 'ソ ー ス2.txt' $^X @{[__FILE__]}});

eval {
    $copy = copy('ソ ー ス1.txt','ソ ー ス2.txt');
};

ok($copy, qq{copy('ソ ー ス1.txt','ソ ー ス2.txt') $^X @{[__FILE__]}});
ok((    -e 'ソ ー ス1.txt'), qq{    -e 'ソ ー ス1.txt' $^X @{[__FILE__]}});
ok((    -e 'ソ ー ス2.txt'), qq{    -e 'ソ ー ス2.txt' $^X @{[__FILE__]}});

unlink('ソ ー ス1.txt');
unlink('ソ ー ス2.txt');

__END__
