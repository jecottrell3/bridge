#! /bin/make

N=1234567

H=deal.txt hcps.txt
D=hand-tops.txt hand-dist.txt hand-revs.txt hand-sort.txt
F=pair-tops.txt pair-dist.txt pair-revs.txt pair-sort.txt

A=$H $D $F

all: $A

deal.txt:;	time deal	4  > $@

hcps.txt:;	time hcps	$N > $@

hand-tops.txt:;	time dist	$N > $@
hand-sort.txt:;	time dist -r	$N > $@
hand-dist.txt:;	time dist -d	$N > $@
hand-revs.txt:;	time dist -dr	$N > $@
pair-tops.txt:;	time dist -p	$N > $@
pair-sort.txt:;	time dist -pr	$N > $@
pair-dist.txt:;	time dist -pd	$N > $@
pair-revs.txt:;	time dist -pdr	$N > $@

save::
	mv -vi $A save

move::
	mv -vf $A save

clean::
	rm -fv [a-z]*.txt
