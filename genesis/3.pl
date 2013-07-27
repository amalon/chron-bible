/*
 * Genesis 3
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
 * constraints for Genesis 3 (in the context of the whole Bible).
 *
 */

% The fall of satan
fallen(satan, bible([genesis, 3, 1])).

% The fall of man
fallen(mankind, bible([genesis, 3, 6])).
events_ordered([fall(satan), fall(mankind)], bible([genesis, 3, 6])).
event_during(fall(mankind), lifetime(eve), bible([genesis, 3, 6])).
event_during(fall(mankind), lifetime(adam), bible([genesis, 3, 6])).

% Surpent's curse
event(surpents_curse).
events_ordered([fall(mankind), surpents_curse], bible([genesis, 3, 14])).

% Woman's curse
event(womans_curse).
events_ordered([fall(mankind), womans_curse], bible([genesis, 3, 16])).

% Man's curse
event(mans_curse).
events_ordered([fall(mankind), mans_curse], bible([genesis, 3, 17])).

% Eve was the mother of all living, but they were all fallen
events_ordered([closing_of_eden, conception(Person)], bible([genesis, 3, 20])) :-
	born_person(Person).

% Closing of the Garden of Eden
event(closing_of_eden).
events_coincide([surpents_curse, womans_curse, mans_curse], bible([genesis, 3])).
events_ordered([mans_curse, closing_of_eden], bible([genesis, 3, 24])).
