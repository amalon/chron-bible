/*
 * Genesis 16
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
 * Chron facts defining events, periods, genealogies, and chronological
 * constraints for Genesis 16 (in the context of the whole Bible).
 *
 */

% After Genesis 14
events_ordered([kings_met_abram, begin(marriage(abram, hagar))], bible([genesis, 16])).

% Sarai had an egyption maid called Hagar
woman(hagar).
dwelt(hagar, plain_of_mamre, 1, bible([genesis, 16])).
parent_descendent(mizraim, hagar, bible([genesis, 16, 1])).

% Sarai gave Hagar her maid to Abram as his wife
% After being in Canaan for 10 years
married(abram, hagar, bible([genesis, 16, 3])).
event_interval(begin(dwell(abram, canaan, 1)), begin(marriage(abram, hagar)), genesis_years(10), bible([genesis, 16, 3])).
event_during(begin(marriage(abram, hagar)), dwell(hagar, plain_of_mamre, 1), bible([genesis, 16])).

% Ishmael was conceived
events_ordered([begin(marriage(abram, hagar)), conception(ishmael)], bible([genesis, 16, 4])).

% Ishmael was born, when Abram was 86
parents_son([abram, hagar], ishmael, bible([genesis, 16, 15])).
event_interval(birth(abram), birth(ishmael), genesis_years(86), bible([genesis, 16, 161])).
dwelt(ishmael, plain_of_mamre, 1, bible([genesis, 16])).
events_coincide([birth(ishmael), begin(dwell(ishmael, plain_of_mamre, 1))], bible([genesis, 16])).
