/*
 * Genesis 27
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
 * constraints for Genesis 27 (in the context of the whole Bible).
 *
 */

% Isaac blesses Jacob
event(bless(isaac, jacob)).
event_during(bless(isaac, jacob), lifetime(Person), bible([genesis, 27, 27])) :-
	member(Person, [isaac, jacob, esau, rebekah]).

% Rebekah referred to the daughters of Heth
% It seems that hittites may be descended from Heth
parent_descendent(heth, hittites, bible([genesis, 27, 46])).
