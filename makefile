#! /bin/make

H=hand.txt hcps-1M.txt
D=dist-1M-0-0.txt dist-1M-0-1.txt dist-1M-1-0.txt dist-1M-1-1.txt
F=fits-1M-0-0.txt fits-1M-0-1.txt fits-1M-1-0.txt fits-1M-1-1.txt
A=$H $D $F

all: $A

hand.txt:
	hand > $@

hcps-1M.txt:
	time hcps 1234567 > $@

dist-1M-0-0.txt:
	time dist 1234567 0 0 > $@

dist-1M-0-1.txt:
	time dist 1234567 0 1 > $@

dist-1M-1-0.txt:
	time dist 1234567 1 0 > $@

dist-1M-1-1.txt:
	time dist 1234567 1 1 > $@

fits-1M-0-0.txt:
	time fits 1234567 0 0 > $@

fits-1M-0-1.txt:
	time fits 1234567 0 1 > $@

fits-1M-1-0.txt:
	time fits 1234567 1 0 > $@

fits-1M-1-1.txt:
	time fits 1234567 1 1 > $@

save::
	mv -vi $A save
