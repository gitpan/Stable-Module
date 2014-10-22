$::VERSION = $::VERSION = 0.01;
use 5.00503;
use strict;
use Test::Simply tests => 10;
use Stable::Module;

my $copy = 0;

open(FILE,'>�\�[�X1.txt');
print FILE "\n";
close(FILE);

ok((    -e '�\�[�X1.txt'), qq{    -e '�\�[�X1.txt' $^X @{[__FILE__]}});
ok((not -e '�\�[�X2.txt'), qq{not -e '�\�[�X2.txt' $^X @{[__FILE__]}});

eval {
    $copy = copy('�\�[�X1.txt','�\�[�X2.txt');
};

ok($copy, qq{copy('�\�[�X1.txt','�\�[�X2.txt') $^X @{[__FILE__]}});
ok((    -e '�\�[�X1.txt'), qq{    -e '�\�[�X1.txt' $^X @{[__FILE__]}});
ok((    -e '�\�[�X2.txt'), qq{    -e '�\�[�X2.txt' $^X @{[__FILE__]}});

unlink('�\�[�X1.txt');
unlink('�\�[�X2.txt');

open(FILE,'>�\ �[ �X1.txt');
print FILE "\n";
close(FILE);

ok((    -e '�\ �[ �X1.txt'), qq{    -e '�\ �[ �X1.txt' $^X @{[__FILE__]}});
ok((not -e '�\ �[ �X2.txt'), qq{not -e '�\ �[ �X2.txt' $^X @{[__FILE__]}});

eval {
    $copy = copy('�\ �[ �X1.txt','�\ �[ �X2.txt');
};

ok($copy, qq{copy('�\ �[ �X1.txt','�\ �[ �X2.txt') $^X @{[__FILE__]}});
ok((    -e '�\ �[ �X1.txt'), qq{    -e '�\ �[ �X1.txt' $^X @{[__FILE__]}});
ok((    -e '�\ �[ �X2.txt'), qq{    -e '�\ �[ �X2.txt' $^X @{[__FILE__]}});

unlink('�\ �[ �X1.txt');
unlink('�\ �[ �X2.txt');

__END__
