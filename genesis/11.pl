/*
 * Genesis 11
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
 * constraints for Genesis 11 (in the context of the whole Bible).
 *
 */

% Babel
event(babel_dispersal).

% The generations of Shem

% genesis_11_father_son(Father, Son,
%			FatherAgeAtBirth, Verse1,
%			RemainingYears, Verse2).
parent_son(Father, Son, bible([genesis, 11, Verse1])) :-
	genesis_11_father_son(Father, Son, _, Verse1, _, _).
event_interval(birth(Father), birth(Son), genesis_years(FatherAgeAtBirth), bible([genesis, 11, Verse1])) :-
	genesis_11_father_son(Father, Son, FatherAgeAtBirth, Verse1, _, _).
event_interval(birth(Son), death(Father), genesis_years(RemainingYears), bible([genesis, 11, Verse2])) :-
	genesis_11_father_son(Father, Son, _, _, RemainingYears, Verse2).


event_interval(end(deluge), birth(arphaxad), genesis_years(2), bible([genesis, 11, 10])).

%		      father	son	years:	before    after
genesis_11_father_son(shem,	arphaxad,	100, 10,  500, 11).
genesis_11_father_son(arphaxad,	salah,		 35, 12,  403, 13).
genesis_11_father_son(salah,	eber,		 30, 14,  403, 15).
genesis_11_father_son(eber,	peleg,		 34, 16,  430, 17).
genesis_11_father_son(peleg,	reu,		 30, 17,  209, 19).
genesis_11_father_son(reu,	serug,		 32, 20,  207, 21).
genesis_11_father_son(serug,	serugs_nahor,	 30, 22,  200, 23).
person_name(serugs_nahor, 'Nahor').
genesis_11_father_son(serugs_nahor,	terah,	 29, 24,  119, 25).
event_interval(birth(terah), birth(Son), genesis_years(AtLeastSeventy), bible([genesis, 11, 26])) :-
	is_parent_child(terah, Son, _),
	AtLeastSeventy #>= 70.

% The generations of Terah
parent_sons(terah, [abram, terahs_nahor, haran], bible([genesis, 11, 27])).
person_name(terahs_nahor, 'Nahor').
parent_son(haran, lot, bible([genesis, 11, 27])).

% Haran died while Terah in Ur
people_group(terah_family, [terah, abram, lot, sarai]).
people_dwelt(group(terah_family), ur, 1, bible([genesis, 11, 28])).
period_during(lifetime(haran), dwell(terah, ur, 1), bible([genesis, 11, 28])).

% Sarai
woman(sarai).
married(abram, sarai, bible([genesis, 11, 29])).

% Milcah
woman(milcah).
married(terahs_nahor, milcah, bible([genesis, 11, 29])).
parent_child(haran, milcah, bible([genesis, 11, 29])).
person(iscah).
parent_child(haran, iscah, bible([genesis, 11, 29])).

% They moved to Harran
people_moved(group(terah_family), ur, 1, haran, 1, bible([genesis, 11, 31])).

% Where Terah died at 205
person_lifetime(terah, genesis_years(205), bible([genesis, 11, 32])).
event_during(death(terah), dwell(terah, haran, 1), bible([genesis, 11, 32])).
