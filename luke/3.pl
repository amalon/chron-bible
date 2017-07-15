/*
 * Luke 3
 *
 * Copyright (C) 2012-2017 James Hogan <james@albanarts.com>
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
 * constraints for Luke 3 (in the context of the whole Bible).
 *
 */

parent_son(Father, Son, bible([luke, 3, Verse])) :-
	luke_3_son_father(Son, Father, Verse).

luke_3_son_father(Son, Father, Verse) :-
	luke_3_chain(Chain, Verse),
	pair_sublist([Son, Father], Chain).


% 23: Jesus about 30 when started his ministry
parent_adopted_son(joseph_carpenter, jesus, bible([luke, 3, 23])).
person_name(joseph_carpenter, "Joseph").
parent_daughter(heli,	mary,	bible([luke, 3, 23])).
% http://creation.com/jesus-genealogies
% If Mary had no brothers, Joseph would have been the heir
parent_adopted_son(heli, joseph_carpenter, [
			bible([luke, 3, 23]),
			url('http://creation.com/jesus-genealogies'),
			comment('If Heli had only daughters, Joseph could have become Heli’s heir by adoption, especially if Joseph became his son-in-law.')
		   ]).

luke_3_chain([	heli,
		levis_melchis_matthat,
		melchis_levi,
		jannais_melchi,
		jannai,
		mattathiases_joseph		], 24).
luke_3_chain([	mattathiases_joseph,
		amoses_mattathias,
		nahums_amos,
		nahum,
		esli,
		naggai				], 25).
luke_3_chain([	naggai,
		naath,
		semeins_mattathias,
		semein,
		josech,
		joda				], 26).
luke_3_chain([	joda,
		joanan,
		rhesa,
		zerubbabel,
		shealtiel,
		neri				], 27).
luke_3_chain([	neri,
		addis_melchi,
		addi,
		cosam,
		elmadam,
		joshuas_er			], 28).
luke_3_chain([	joshuas_er,
		joshua,
		jorims_eliezer,
		jorim,
		levis_simeons_matthat,
		simeons_levi			], 29).
luke_3_chain([	simeons_levi,
		judahs_simeon,
		josephs_judah,
		jonams_joseph,
		jonam,
		meleas_eliakim		], 30).
luke_3_chain([	meleas_eliakim,
		melea,
		menna,
		mattatha,
		nathan,
		david				], 31).
luke_3_chain([	david,
		jesse,
		obed,
		boaz,
		salmon,		% sala
		nahshon				], 32).
luke_3_chain([	nahshon,
		amminadab,
		admin,
		arni,
		hezron,
		perez,
		judah				], 33).
luke_3_chain([	judah,
		jacob,
		isaac,
		abraham,
		terah,
		serugs_nahor			], 34).
luke_3_chain([	serugs_nahor,
		serug,
		reu,
		peleg,
		eber,
		shelah				], 35).
luke_3_chain([	shelah,
		% Cainan,
		% http://creation.com/cainan-can-you-explain-the-difference-between-luke-336-and-genesis-1112
		% This is only present in more recent LXX copies, and is likely
		% a miscopy.
		arphaxad,
		shem,
		noah,
		lamech				], 36).
luke_3_chain([	lamech,
		methuselah,
		enoch,
		jared,
		mahalalel,	% Mahalaleel
		kenan				], 37). % Cainan
luke_3_chain([	kenan,
		enosh,		% Enos
		seth,
		adam,
		god				], 38).

person_name(levis_melchis_matthat,		'Matthat').
person_name(melchis_levi,			'Levi').
person_name(jannais_melchi,			'Melchi').
person_name(mattathiases_joseph,		'Joseph').
person_name(amoses_mattathias,			'Mattathias').
person_name(nahums_amos,			'Amos').
person_name(semeins_mattathias,			'Mattathias').
person_name(addis_melchi,			'Melchi').
person_name(joshuas_er,				'Er').
person_name(jorims_eliezer,			'Eliezer').
person_name(levis_simeons_matthat,		'Matthat').
person_name(simeons_levi,			'Levi').
person_name(judahs_simeon,			'Simeon').
person_name(josephs_judah,			'Judah').
person_name(jonams_joseph,			'Joseph').
person_name(meleas_eliakim,			'Eliakim').
person_name(serugs_nahor,			'Nahor').
person_name(arphaxads_cainan,			'Cainan').
