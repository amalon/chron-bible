/*
 * Ezra 7
 *
 * Copyright (C) 2017 James Hogan <james@albanarts.com>
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
 * constraints for Ezra 7 (in the context of the whole Bible).
 *
 */

parent_son(Father, Son, bible([ezra, 7, Verse])) :-
	ezra_7_son_father(Son, Father, Verse).


% FIXME In the reign of Artaxerxes king of Persia

person_name(zadoks_shallum,	'Shallum').
person_name(ahitubs_zadok,	'Zadok').
person_name(meraioths_azariah,	'Azariah').

%                    Son		Father			Verse

ezra_7_son_father(ezra,			seraiah,		1).
ezra_7_son_father(seraiah,		azariah,		1).
ezra_7_son_father(azariah,		hilkiah,		1).

ezra_7_son_father(hilkiah,		zadoks_shallum,		2).
ezra_7_son_father(zadoks_shallum,	ahitubs_zadok,		2).
ezra_7_son_father(ahitubs_zadok,	ahitub,			2).

ezra_7_son_father(ahitub,		amariah,		3).
ezra_7_son_father(amariah,		meraioths_azariah,	3).
ezra_7_son_father(meraioths_azariah,	meraioth,		3).

ezra_7_son_father(meraioth,		zerahiah,		4).
ezra_7_son_father(zerahiah,		uzzi,			4).
ezra_7_son_father(uzzi,			bukki,			4).

ezra_7_son_father(bukki,		abishua,		5).
ezra_7_son_father(abishua,		phinehas,		5).
ezra_7_son_father(phinehas,		eleazar,		5).
ezra_7_son_father(eleazar,		aaron,			5).
