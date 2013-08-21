/*
 * Genesis 30
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
 * constraints for Genesis 30 (in the context of the whole Bible).
 *
 */

% Jacob married Bilhah
married(jacob, bilhah, bible([genesis, 30, 4])).
events_ordered([birth(judah), begin(marriage(jacob, bilhah))],
		bible([genesis, 30, 1])).

% Bilhah bore Dan
parents_son([jacob, bilhah], dan, bible([genesis, 30, 5])).
events_ordered([begin(marriage(jacob, bilhah)), conception(dan)],
		bible([genesis, 30, 4])).

% Bilhah bore Naphtali
parents_son([jacob, bilhah], naphtali, bible([genesis, 30, 7])).
age_ordering([dan, naphtali], bible([genesis, 30, 7])).


% Jacob marries Zilpah
married(jacob, zilpah, bible([genesis, 30, 9])).
events_ordered([birth(naphtali), begin(marriage(jacob, zilpah))],
		bible([genesis, 30, 9])).

% Zilpah bore Gad
parents_son([jacob, zilpah], gad, bible([genesis, 30, 10])).
events_ordered([begin(marriage(jacob, zilpah)), conception(gad)],
		bible([genesis, 30, 10])).

% Zilpah bore Asher
parents_son([jacob, zilpah], asher, bible([genesis, 30, 12])).
age_ordering([gad, asher], bible([genesis, 30, 12])).

% Leah bore Issachar
parents_son([jacob, leah], issachar, bible([genesis, 30, 17])).
events_ordered([birth(asher), conception(issachar)],
		bible([genesis, 30, 17])).

% Leah bore Zebulun
parents_son([jacob, leah], zebulun, bible([genesis, 30, 19])).
age_ordering([issachar, zebulun], bible([genesis, 30, 19])).

% Leah bore Dinah
parents_daughter([jacob, leah], dinah, bible([genesis, 30, 21])).
age_ordering([zebulun, dinah], bible([genesis, 30, 21])).

% Rachel bore Joseph
parents_son([jacob, rachel], joseph, bible([genesis, 30, 23])).
age_ordering([dinah, joseph], bible([genesis, 30, 23])).

% After Joseph born, Jacob asked Laban to send him home
% He must have finished his 2nd 7 years
event(jacob_asks_to_leave_laban).
events_ordered([birth(joseph), jacob_asks_to_leave_laban],
		bible([genesis, 30, 25])).
events_ordered([end(serve_for(jacob, laban, leah)), jacob_asks_to_leave_laban],
		bible([genesis, 30, 25])).
