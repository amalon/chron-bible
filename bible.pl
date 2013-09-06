/*
 * The Bible
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
 * constraints for the Bible.
 *
 */

:- module('bible', []).

:- include(chron(database)).

event(epoch).

% describe source
describe_source(bible([Book]), Shortname) :-
	bible_book(Book, _, Shortname).
describe_source(bible([Book, Chap]), Desc) :-
	bible_book(Book, _, Shortname),
	Desc = concat([Shortname, ' ', Chap]).
describe_source(bible([Book, Chap, Verse]), Desc) :-
	bible_book(Book, _, Shortname),
	Desc = concat([Shortname, ' ', Chap, ':', Verse]).

% sexual maturity
% Lets assume around 16 years to space out unknowns
% Adam & Eve don't count here since they were created mature
mature(Person, time(16, year), fiat) :-
	born_person(Person).

% weaning - assume somewhere between 2 and 5 years of age
weaned(_) :- fail.
event(weaning(Person)) :-
	weaned(Person).
event_interval(birth(Person), weaning(Person), time(Years, year), weaning) :-
	weaned(Person),
	Years in 2..5.

bible_book(genesis, 'Genesis', 'Gen').
:- include('genesis/genesis').

events_coincide([epoch, creation], fiat).
