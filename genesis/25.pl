/*
 * Genesis 25
 *
 * Copyright (C) 2013 James Hogan <james@albanarts.com>
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
 * constraints for Genesis 25 (in the context of the whole Bible).
 *
 */

% Abraham took another wife, Keturah
woman(keturah).
married(abram, keturah, bible([genesis, 25, 1])).
events_ordered([begin(marriage(isaac, rebekah)), begin(marriage(abram, keturah))], bible([genesis, 25, 1])).

% The sons of Abraham and Keturah
parents_sons([abram, keturah], Sons, bible([genesis, 25, 2])) :-
	Sons = [zimran, jokshan, medan, midian, ishbak, shuah].

% The sons of Jokshan
parent_sons(jokshan, Sons, bible([genesis, 25, 3])) :-
	Sons = [sheba, jokshans_dedan].
person_name(jokshans_dedan, 'Dedan').

% The sons of Dedan
parent_sons(jokshans_dedan, Sons, bible([genesis, 25, 3])) :-
	Sons = [asshurim, letushim, leummin].

% The sons of Midian
parent_sons(midian, Sons, bible([genesis, 25, 4])) :-
	Sons = [ephah, epher, hanoch, ebidah, eldaah].

% Abraham died at 175
person_lifetime(abram, genesis_years(175), bible([genesis, 25, 7])).

% Sons of Ishmael (starting with first born)
parent_sons(ishmael, Sons, bible([genesis, 25, 13])) :-
	Sons = [nebajoth, edar, adbeel, mibsam].
parent_sons(ishmael, Sons, bible([genesis, 25, 14])) :-
	Sons = [mishma, dumah, massa].
parent_sons(ishmael, Sons, bible([genesis, 25, 15])) :-
	Sons = [hadar, tema, jetur, naphish, kedemah].

% Ishmael lived 137 years
person_lifetime(ishmael, genesis_years(137), bible([genesis, 25, 17])).

% Isaac 40 when he married Rebekah
event_interval(birth(isaac), begin(marriage(isaac, rebekah)), genesis_years(40), bible([genesis, 25, 20])).

% Rebekah had twins
twins(esau, jacob, bible([genesis, 25, 24])).

% Esau
parents_son([isaac, rebekah], esau, bible([genesis, 25, 25])).

% Jacob
parents_son([isaac, rebekah], jacob, bible([genesis, 25, 26])).

% Isaac was 60
event_interval(birth(isaac), birth(Son), genesis_years(60), bible([genesis, 25, 26])) :-
	member(Son, [esau, jacob]).

% The edomites came from Esau
parent_descendent(esau, edomites, bible([genesis, 25, 30])).
