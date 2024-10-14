#! /bin/make

N=1234567

D=deal.txt hcps-hand.txt hcps-pair.txt
H=hand-tops.txt hand-dist.txt hand-revs.txt hand-sort.txt
P=pair-tops.txt pair-dist.txt pair-revs.txt pair-sort.txt

T=$D $H $P

all: $T

deal.txt:;	time deal	4  > $@

hcps-hand.txt:;	time hcps  $N > $@
hcps-pair.txt:;	time hcps -$N > $@

hand-tops.txt:;	time dist	$N > $@
hand-sort.txt:;	time dist -r	$N > $@
hand-dist.txt:;	time dist -d	$N > $@
hand-revs.txt:;	time dist -dr	$N > $@
pair-tops.txt:;	time dist -p	$N > $@
pair-sort.txt:;	time dist -pr	$N > $@
pair-dist.txt:;	time dist -pd	$N > $@
pair-revs.txt:;	time dist -pdr	$N > $@

save::
	mv -vi $T save

move::
	mv -vf $T save

clean::
	rm -vf [a-z]*.txt
