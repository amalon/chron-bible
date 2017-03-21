/*
 * Exodus 6
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
 * constraints for Exodus 6 (in the context of the whole Bible).
 *
 */

parent_sons(reuben, Sons, bible([exodus, 6, 14])) :-
	Sons = [reubens_hanoch, pallu, hezron, carmi].
person_name(reubens_hanoch, 'Hanoch'). % Midian also has a hanoch

parent_sons(simeon, Sons, bible([exodus, 6, 15])) :-
	Sons = [jemuel, jamin, ohad, jakin, zohar, shaul].
woman(shauls_mother).
parent_son(shauls_mother, shaul, bible([exodus, 6, 15])).
parent_descendent(canaan, shauls_mother, bible([exodus, 6, 15])).

parent_sons(levi, Sons, bible([exodus, 6, 16])) :-
	Sons = [gershon, kohath, merari].
person_lifetime(levi, exodus_years(137), bible([exodus, 6, 16])).

parent_sons(gershon, Sons, bible([exodus, 6, 17])) :-
	Sons = [libni, shimei].

parent_sons(kohath, Sons, bible([exodus, 6, 18])) :-
	Sons = [amram, izhar, hebron, uzziel].
person_lifetime(kohath, exodus_years(133), bible([exodus, 6, 18])).

parent_sons(merari, Sons, bible([exodus, 6, 19])) :-
	Sons = [mahli, mushi].

married(amram, jochebed, bible([exodus, 6, 20])).
% Jochebed was Amram's father's sister, i.e. presumably Levi's daughter
parent_daughter(levi, jochebed, bible([exodus, 6, 20])).
parents_sons([amram, jochebed], Sons, bible([exodus, 6, 20])) :-
	Sons = [aaron, moses].
person_lifetime(amram, exodus_years(137), bible([exodus, 6, 20])).

parent_sons(izhar, Sons, bible([exodus, 6, 21])) :-
	Sons = [korah, nepheg, zikri].

parent_sons(uzziel, Sons, bible([exodus, 6, 22])) :-
	Sons = [mishael, elzaphan, sithri].

married(aaron, elisheba, bible([exodus, 6, 23])).
parent_daughter(amminadab, elisheba, bible([exodus, 6, 23])).
% Elisheba sister of Nahshon, i.e. child of Amminadab too
parent_child(amminadab, nahshon, bible([exodus, 6, 23])).
parents_sons([aaron, elisheba], Sons, bible([exodus, 6, 23])) :-
	Sons = [nadab, abihu, eleazar, ithamar].

parent_sons(korah, Sons, bible([exodus, 6, 24])) :-
	Sons = [assir, elkanah, abiasaph].

married(eleazar, eleazars_wife, bible([exodus, 6, 25])).
parent_daughter(putiel, eleazars_wife, bible([exodus, 6, 25])).
parents_son([eleazar, eleazars_wife], phinehas, bible([exodus, 6, 25])).
