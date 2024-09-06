* Miscellaneous Bridge Utilities

Here you will find Three Programs to Compute the Distribution
of High Card Points and Suit Distribution. They are written in
Python3 under Linux but ought to work on any Python interpreter.

** hand
	Deals a Bridge Hand. Very Rudimentary. Ignore, or rather,
	consider this a Test Program.

** hcps deals
	Print a High Card Distribution Graph. Takes one argument, the
	Number of Hands to Deal. Default is 1000. which is Way Too Low,
	but Instantaneous. Try adding a Zero to get Better Approximations.
	Note that a Deal actually includes Four Hands.

** dist deals what how
	This one is Complex. This prints Hand Distribution is Four Different
	Ways. The first argument is the Number of Hands. The second controls
	Which Field will be Sorted on, either the Distribution Itself, or the
	Frequency of that Distribution. The third argument determines whether
	to Sort UP or DOWN.

	The distribution Names themselves are Sorted;
	a 6310 hand becomes a 0136 one. So this mode can be used to Determine
	the Frequency of Voids, Singletons as well as Long Suits.

	The arguments WHAT and HOW are Encoded as wither Zero or One. They both
	default to 1 if omitted.

	I started to Explain the Differences, but it's Easier to just
	Run the Four Commands ...

		./dist 1000 1 1
		./dist 1000 0 1
		./dist 1000 0 0
		./dist 1000 1 0

	... and See What they Do. I have included .TXT files with the outputs.

** fits
	This is the Same Program as Dist mentioned above, except both the
	Hands on Each Side are Combined, giving the Distribution of the Fits.
	This just Falls Out of the Program; Two sides of 26 cards each
	rather than Four of 13. Same Arguments.

* NOTES:

The outputs have a Cumulative as well as Reverse running Total Columns,
so Ranges can be more Easily Computed.

* Quick Facts

	+ 35% chance of 4 card longest suit
	+ 44% chance of 5 card longest suit
	+ 16% chance of 6 card longest suit
	+ 3-1/2% for  a 7 card longest suit
	+ 1/2% chance a 8 card longest suit
	+ 1/25% chance  9 card longest suit

	+  5% chance of Having a Void
	+ 30% chance of Having a Singleton
	+ 55% chance of Having a Doubleton
	+ 10% chance of Having a Flat Hand

* I will be Including some DATA Files soon.

* END
