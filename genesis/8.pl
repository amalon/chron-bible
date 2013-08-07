/*
 * Genesis 8
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
 * constraints for Genesis 8 (in the context of the whole Bible).
 *
 */

% The waters returned from off the earth continually after end of rain
% Waters decreased after 150 days
% (repeated)
period_len(deluge, time(150, day), bible([genesis, 8, 3])).

% The Ark rested on 7th month, 17th day (vs 4)
event(noah_ark_rested).
event_date(noah_ark_rested, noah_calendar(600, 2, 17), bible([genesis, 8, 4])).

% On the first day of the 10th month the tops of the mountains were seen (vs 5)
event(deluge_mountains_seen).
event_date(deluge_mountains_seen, noah_calendar(600, 10, 1), bible([genesis, 8, 5])).

% Noah opened window after 40 days to send a raven and a dove (vs 6)
event(noah_sent_raven_and_dove).
event_interval(deluge_mountains_seen, noah_sent_raven_and_dove, time(40, day), bible([genesis, 8, 6])).

% 7 days later sent the dove again (returned in evening with olive leaf) (vs 10)
event(noah_sent_dove_returned).
event_interval(noah_sent_raven_and_dove, noah_sent_dove_returned, time(7, day), bible([genesis, 8, 10])).

% 7 days later sent the done again (didn't return) (vs 12)
event(noah_sent_dove_no_return).
event_interval(noah_sent_dove_returned, noah_sent_dove_no_return, time(7, day), bible([genesis, 8, 12])).

% 601st year, 1st month, 1st day, Noah removed covering and saw it was dry (vs
% 13)
event(noah_saw_dry).
event_date(noah_saw_dry, noah_calendar(601, 1, 1), bible([genesis, 8, 13])).

% 2nd month, 27th day, earth dried (vs 14).
% God said to leave Ark, so Noah did
event_date(end(dwell(Person, ark, 1)), noah_calendar(601, 2, 27), bible([genesis, 8, 14])) :-
	person_in_group(Person, group(deluge_survivors)).
