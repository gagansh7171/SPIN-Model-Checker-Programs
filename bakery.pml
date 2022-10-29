// [] always
// <> eventually
// ! not
// X next

// U until
// && and
// || or
// -> implication
// <-> equivalence


// Bakery Mutual Exclusion algorithm
byte turn[2];
byte choosing[2];
byte crit[2];  

active [2] proctype P()
{	
	byte i = _pid;
	do
	::  choosing[i] = 1;
		turn[i] = turn[1-i] + 1;
		choosing[i] = 0;
		// comment below loop to demonstrate failure of mutual exclusion
		do
		::	skip ->skip; // had to write this redundant ->skip to avoid unconditional self-loop error
		od unless( choosing[1-i] ==0 && turn[i]<turn[1-i] && (i == 1) );
		crit[i]++;
		skip;
		skip;
		skip;
		skip;
		skip;
		skip;
		crit[i]--;
		turn[i] = 0;
	od
}

ltl P1 {[] ( !(crit[0] && crit[1]) ) }
