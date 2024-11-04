https://github.com/jecottrell3/bridge

* Miscellaneous Bridge Utilities

Here you will find Programs to Compute the Distribution of High Card
Points, and Suit Distribution, and Score a Hand.  They are written in
Python3 under Linux but ought to work on any Python interpreter.

** deal deals

	Deals Bridge Hands. Default is One.

** hcps deals

	Print a High Card Distribution Graph. Takes one argument, the
	Number of Hands to Deal. Default is 1000, which is Too Low,
	but Quick. Try adding a Zero or Two to get Better Approximations.
	Note that a Deal actually includes Four Hands.

	If deals is negative, print Pair (26 cards) rather than Hand (13)
	Distributions. Note that since this chart is Symmetric, only Half
	of it is printed. For every pair that holds 17 points, there is a
	pair that holds 23. and so on.

** dist -drp deals

	Prints Distributions in Several Different Ways.
	With no flags, prints Distributions sorted by Count. Use -d to sort
	by Distribution. The -r flag Reverses, the Sort; however, the Name of
	the Distribution is reversed as well, allowing Voids, Singletons, and
	Doubletons to be tallied. Finally, using -p analyzes Pairs of 26 cards
	rather than Hands of 13, allowing Partnership Fits to be Displayed.

	The last argument is the Number of Deals, defaulting to 1000.

	NOTE: Suit lengths are in Hex; A is 10, B is 11, C is 12, and D is 13.

** score contracts
	Scores Bridge Hands. Print  the Score for Each Contract.
	With no arguments, print ACBL Score Table.

* NOTES:

The outputs have a Cumulative as well as Reverse running SubTotal Columns,
so Ranges can be more Easily Computed when the -d flag is used.

A thousand hands take One Second. A Million take Two Minutes.

* Quick Facts

	+ use "dist"	for a normal distribution table
	+ use "dist -r"	for a sorted distribution table

	+ use "dist -d" to determine...
	+ 35% chance of 4 card longest suit
	+ 44% chance of 5 card longest suit
	+ 16% chance of 6 card longest suit
	+ 3-1/2% for  a 7 card longest suit
	+ 1/2% chance a 8 card longest suit
	+ 1/25% chance  9 card longest suit

	+ use "dist -dr" to determine...
	+  5% chance of Having a Void
	+ 30% chance of Having a Singleton
	+ 55% chance of Having a Doubleton
	+ 10% chance of Having a Flat Hand

	+ use "dist -p" to determine...
	+ 22% chance Both Sides hold a 8765 Fit
	+ 10% chance Both Sides hold a 7766 Fit

	+ use "dist -pd" to determine...
	+ 15% chance of Seven Only Fit
	+ 45% chance of Eight Card Fit
	+ 28% chance of Nine  Card Fit
	+  8% chance of Ten   Card Fit
	+  2% chance of Eleven or More

* Program Files.

Three programs are included: hand, hcps, dist.
A makefile and a README.txt are included.

* Data Files.

NAME		COMMAND			DESCRIPTION
deal.txt	deal 4			A Chicago Deal
hcps-hand.txt	hcps	  1234567	Hand High Card Point Graph
hcps-pair.txt	hcps	  -1234567	Pair High Card Point Graph

hand-tops.txt	dist	  1234567	Hand Distribution by Freduency
hand-sort.txt	dist -r   1234567	Hand Distribution by Scarcity
hand-dist.txt	dist -d	  1234567	Hand Distribution by Long  Suits
hand-revs.txt	dist -dr  1234567	Hand Distribution by Short Suits

pair-tops.txt	dist -p	  1234567	Pair Distribution by Freduency
pair-sort.txt	dist -pr  1234567	Pair Distribution by Scarcity
pair-dist.txt	dist -pd  1234567	Pair Distribution by Long  Suits
pair-revs.txt	dist -pdr 1234567	Pair Distribution by Short Suits

score.txt	score			ACBL Scoring Table

* END
