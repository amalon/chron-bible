/*
 * Genesis 10
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
 * constraints for Genesis 10 (in the context of the whole Bible).
 *
 */

% All recorded grandchildren of Noah born after the flood
events_ordered([end(dwell(noah, ark, 1)), birth(Grandchild)], bible([genesis, 10])) :-
	is_parent_child(noah, Son, _),
	is_parent_child(Son, Grandchild, _).

% The sons of Japheth
parent_sons(japheth, Sons, bible([genesis, 10, 2])) :-
	Sons = [gomer, magog, madai, javan, tubai, meshech, tiras].

% The sons of Gomer
parent_sons(gomer, Sons, bible([genesis, 10, 3])) :-
	Sons = [ashkenaz, riphath, togarmah].

% The sons of Javan
parent_sons(javan, Sons, bible([genesis, 10, 4])) :-
	Sons = [elishah, tarshish, kittim, dodanim].

% Vs 5 may refer to Babel

% The sons of Ham
parent_sons(ham, Sons, bible([genesis, 10, 6])) :-
	Sons = [cush, mizraim, phut, canaan].

% The sons of Cush
parent_sons(cush, Sons, bible([genesis, 10, 7])) :-
	Sons = [seba, cushes_havilah, sabtah, raamah, sabtechah].
person_name(cushes_havilah, 'Havilah').
% The sons of Raamah
parent_sons(raamah, Sons, bible([genesis, 10, 7])) :-
	Sons = [raamahs_sheba, dedan].
person_name(raamahs_sheba, 'Sheba').

% Nimrod
man(nimrod).
parent_descendent(cush, nimrod, bible([genesis, 10, 8])).
city_in_land(City, shinar, bible([genesis, 10, 10])) :-
	member(City, [babel, erech, accad, calneh]).
built(nimrod, City, bible([genesis, 10, 10])) :-
	city_in_land(City, shinah, bible([genesis, 10, 10])).

% Assyria
city_in_land(City, assyria, bible([genesis, 10, 11])) :-
	member(City, [ninevah, rehoboth, calah]).
built(nimrod, City, bible([genesis, 10, 11])) :-
	city_in_land(City, assyria, bible([genesis, 10, 11])).

% Resen
city_in_land(resen, assyria, bible([genesis, 10, 12])).
built(nimrod, resen, bible([genesis, 10, 12])).

% The descendents of Mizraim (Egypt)
parent_descendents(mizraim, Descendents, bible([genesis, 10, 13])) :-
	Descendents = [ludim, anamim, lehabim, naphtuhum].
parent_descendents(mizraim, Descendents, bible([genesis, 10, 14])) :-
	Descendents = [pathrusim, casluhim, caphtorim].
parent_descendent(casluhim, philistim, bible([genesis, 10, 14])).

% The descendents of Canaan
% Sidon was first born
parent_descendents(canaan, Descendents, bible([genesis, 10, 15])) :-
	Descendents = [sidon, heth].
parent_descendents(canaan, Descendents, bible([genesis, 10, 16])) :-
	Descendents = [jebusites, amorites, girgasites].
parent_descendents(canaan, Descendents, bible([genesis, 10, 17])) :-
	Descendents = [hivites, arkites, sinites].
parent_descendents(canaan, Descendents, bible([genesis, 10, 18])) :-
	Descendents = [arvadites, zemarites, hamathites].

% The sons of Shem
parent_descendent(shem, eber, bible([genesis, 10, 21])).
parent_sons(shem, Sons, bible([genesis, 10, 22])) :-
	Sons = [elam, asshur, arphaxad, lud, aram].

% The sons of Aram
parent_sons(aram, Sons, bible([genesis, 10, 23])) :-
	Sons = [uz, hul, gether, mash].

% Salah and Eber
parent_son(arphaxad, shelah, bible([genesis, 10, 24])).
parent_son(shelah, eber, bible([genesis, 10, 24])).

% The sons of Eber
parent_sons(eber, Sons, bible([genesis, 10, 25])) :-
	Sons = [peleg, joktan].
event_during(babel_dispersal, lifetime(peleg), bible([genesis, 10, 25])).

% The sons of Joktan
parent_sons(joktan, Sons, bible([genesis, 10, 26])) :-
	Sons = [almodad, sheleph, hazarmaveth, jerah].
parent_sons(joktan, Sons, bible([genesis, 10, 27])) :-
	Sons = [hadoram, uzal, 	diklah].
parent_sons(joktan, Sons, bible([genesis, 10, 28])) :-
	Sons = [obal, abimael, joktans_sheba].
person_name(joktans_sheba, 'Sheba').
parent_sons(joktan, Sons, bible([genesis, 10, 29])) :-
	Sons = [ophir, joktans_havilah, jobab].
person_name(joktans_havilah, 'Havilah').
