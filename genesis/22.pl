/*
 * Genesis 22
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
 * constraints for Genesis 22 (in the context of the whole Bible).
 *
 */

% 3: Abraham went to went to Moriah with Isaac
% 10: God tested Abraham
% 19: Went to dwell in Beersheba

% Milcah bore children to Nahor
parents_sons([terahs_nahor, milcah], Sons, bible([genesis, 22, 21])) :-
	Sons = [huz, buz, kemuel].
parent_son(kemuel, kemuels_aram, bible([genesis, 22, 21])).
person_name(kemuels_aram, 'Aram').
parents_sons([terahs_nahor, milcah], Sons, bible([genesis, 22, 22])) :-
	Sons = [chesed, hazo, pildash, jidlaph, bethuel].
parent_daughter(bethuel, rebekah, bible([genesis, 22, 23])).

% His concubine also bore children
woman(reumah).
married(terahs_nahor, reumah, bible([genesis, 22, 24])).
parents_sons([terahs_nahor, reumah], Sons, bible([genesis, 22, 24])) :-
	Sons = [tebah, geham, thahash, maachah].
