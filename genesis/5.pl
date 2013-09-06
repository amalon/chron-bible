/*
 * Genesis 5
 *
 * Copyright (C) 2012-2013 James Hogan <james@albanarts.com>
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details
 * (in the file called COPYING).
 *
 *
 * Chron facts defining events, periods, geneologies, and chronological
 * constraints for Genesis 5 (in the context of the whole Bible).
 *
 */

% genesis_5_father_son(Father, Son,
%			FatherAgeAtBirth, Verse1,
%			RemainingYears, Verse2,
%			TotalYears, Verse3).
parent_son(Father, Son, bible([genesis, 5, Verse1])) :-
	genesis_5_father_son(Father, Son, _, Verse1, _, _, _, _).
event_interval(birth(Father), birth(Son), genesis_years(FatherAgeAtBirth), bible([genesis, 5, Verse1])) :-
	genesis_5_father_son(Father, Son, FatherAgeAtBirth, Verse1, _, _, _, _).
event_interval(birth(Son), death(Father), genesis_years(RemainingYears), bible([genesis, 5, Verse2])) :-
	genesis_5_father_son(Father, Son, _, _, RemainingYears, Verse2, _, _).
person_lifetime(Father, genesis_years(TotalYears), bible([genesis, 5, Verse3])) :-
	genesis_5_father_son(Father, _, _, _, _, _, TotalYears, Verse3).

%		     father	son	years:	before    after     total
genesis_5_father_son(adam,	seth,		130, 3,   800, 4,   930, 5).
genesis_5_father_son(seth,	enosh,		105, 6,   807, 7,   912, 8).
genesis_5_father_son(enosh,	kenan,		 90, 9,   815, 10,  905, 11).
genesis_5_father_son(kenan,	mahalalel,	 70, 12,  840, 13,  910, 14).
genesis_5_father_son(mahalalel,	jared,		 65, 15,  830, 16,  895, 17).
genesis_5_father_son(jared,	enoch,		162, 18,  800, 19,  962, 20).
genesis_5_father_son(enoch,	methuselah,	 65, 21,  300, 22,  365, 23).
genesis_5_father_son(methuselah,lamech,		187, 25,  782, 26,  969, 27).
genesis_5_father_son(lamech,	noah,		182, 28,  595, 30,  777, 31).

% Noah's childbearing years >= 500
event_interval(birth(noah), birth(Son), genesis_years(Age), bible([genesis, 5, 32])) :-
	is_parent_child(noah, Son, _),
	Age #>= 500.
% after which he had Shem, Ham, and Japheth
parent_son(noah, shem, bible([genesis, 5, 32])).
parent_son(noah, ham, bible([genesis, 5, 32])).
parent_son(noah, japheth, bible([genesis, 5, 32])).
