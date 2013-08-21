/*
 * Genesis
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
 * constraints for Genesis (in the context of the whole Bible).
 *
 */

% Define the interval type genesis_years(Years)
% Use a floor type (like integer year ages, get less precise with each generation)
derived_interval(genesis_years(Num), floor(Num, year)).

% Fallenness
fallen(_, _) :- fail.
event(fall(X)) :-
	fallen(X, _).

:- include(noah_calendar).

:- include('1').
:- include('2').
:- include('3').
:- include('4').
:- include('5').
:- include('7').
:- include('8').
:- include('9').
:- include('10').
:- include('11').
:- include('12').
:- include('13').
:- include('14').
:- include('16').
:- include('17').
:- include('18').
:- include('19').
:- include('20').
:- include('21').
:- include('22').
:- include('23').
:- include('24').
:- include('25').
