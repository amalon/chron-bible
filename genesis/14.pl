/*
 * Genesis 14
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
 * constraints for Genesis 14 (in the context of the whole Bible).
 *
 */

% The various kings served Chedorlaomer for 12 years and rebelled in 13th
man(chedorlaomer).
period(reign(chedorlaomer)).
period_during(reign(chedorlaomer), lifetime(chedorlaomer), bible([genesis, 14, 4])).
period_len(reign(chedorlaomer), genesis_years(13), bible([genesis, 14, 4])).

% In the 14th year Chedorlaomer and his allies went to war
period(conquest(chedorlaomer)).
event_interval(begin(reign(chedorlaomer)), begin(conquest(chedorlaomer)),
		genesis_years(14), bible([genesis, 14, 5])).

% Kings of Sodom and Gomorrah fled, Sodom captured, Lot taken
event(defeat(sodom)).
event_during(defeat(sodom), conquest(chedorlaomer), bible([genesis, 14, 10])).
event_during(defeat(sodom), dwell(lot, sodom, 1), bible([genesis, 14, 12])).
event_during(defeat(sodom), dwell(abram, plain_of_mamre, 1), bible([genesis, 14, 13])).

% Mamre the amorite and his brothers Eshcol and Aner were Allied with Abram
parent_descendent(amorites, mamre, bible([genesis, 14, 13])).
parent_descendent(amorites, eshcol, bible([genesis, 14, 13])).
parent_descendent(amorites, aner, bible([genesis, 14, 13])).

% Abram and his company persued Chedorlaomer
period(persuit(chedorlaomer)).
events_ordered([defeat(sodom), begin(persuit(chedorlaomer))], bible([genesis, 14, 14])).
period_during(persuit(chedorlaomer), lifetime(Person), bible([genesus, 14, 14])) :-
	member(Person, [chedorlaomer, abram, lot, mamre, eshcol, aner]).

% Abram defeated Chedorlaomer and rescued lot
events_coincide([end(persuit(chedorlaomer)), death(chedorlaomer)], bible([genesis, 14, 15])).

% King of Sodom and those with him went out to meet him after his return
event(kings_met_abram).
events_ordered([end(persuit(chedorlaomer)), kings_met_abram], bible([genesis, 14, 17])).

% Melchizedek king of Salem was priest of most high God, and blessed Abram
man(melchizedek).
event(bless(melchizedek, abram)).
event(give(abram, melchizedek, tithe)).
events_coincide([kings_met_abram, bless(melchizedek, abram), give(abram, melchizedek, tithe)], bible([genesis, 14, 14])).
event_during(bless(melchizedek, abram), lifetime(Person), bible([genesis, 14, 19])) :-
	member(Person, [abram, melchizedek]).
event_during(give(abram, melchizedek, tithe), lifetime(Person), bible([genesis, 14, 20])) :-
	member(Person, [abram, melchizedek]).
