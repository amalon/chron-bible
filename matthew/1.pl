/*
 * Matthew 1
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
 * constraints for Matthew 1 (in the context of the whole Bible).
 *
 */

parent_son(Father, Son, bible([matthew, 1, Verse])) :-
	matthew_1_father_son(Father, Son, Verse).
parents_son(Parents, Son, bible([matthew, 1, Verse])) :-
	matthew_1_parents_son(Parents, Son, Verse).


% TODO 1: Jesus son of David, David son of Abraham


%                    Father[, Mother]		Son		Verse

matthew_1_father_son(abraham,			isaac,			2).
matthew_1_father_son(isaac,			jacob,			2).
matthew_1_father_son(jacob,			judah,			2).

matthew_1_parents_son([judah, tamar],		perez,			3).
matthew_1_parents_son([judah, tamar],		zerah,			3).
matthew_1_father_son(perez,			perezs_hezron,		3).
matthew_1_father_son(perezs_hezron,		ram,			3).

matthew_1_father_son(ram,			amminadab,		4).
matthew_1_father_son(amminadab,			nahshon,		4).
matthew_1_father_son(nahshon,			salmon,			4).

matthew_1_parents_son([salmon, rahab],		boaz,			5).
matthew_1_parents_son([boaz, ruth],		obed,			5).
matthew_1_father_son(obed,			jesse,			5).

matthew_1_father_son(jesse,			david,			6).
matthew_1_parents_son([david, bathsheba],	solomon,		6).
married(uriah, bathsheba, bible([matthew, 1, 6])).

matthew_1_father_son(solomon,			rehoboam,		7).
matthew_1_father_son(rehoboam,			abijah,			7).
matthew_1_father_son(abijah,			asaph,			7).

matthew_1_father_son(asaph,			jehoshaphat,		8).
matthew_1_father_son(jehoshaphat,		joram,			8).
matthew_1_father_son(joram,			uzziah,			8).

matthew_1_father_son(uzziah,			uzziahs_jotham,		9).
matthew_1_father_son(uzziahs_jotham,		ahaz,			9).
matthew_1_father_son(ahaz,			hezekiah,		9).

matthew_1_father_son(hezekiah,			manasseh,		10).
matthew_1_father_son(manasseh,			manassehs_amos,		10).
matthew_1_father_son(manassehs_amos,		josiah,			10).

matthew_1_father_son(josiah,			jechoniah,		11).	% TODO at time of deportation

% http://creation.com/jesus-genealogies
% Its possible Jeconiah was made into a eunuch (2 Kings 20:16-19)
% He may have adopted shealtiel son of Neri to pass on right to throne
parent_adopted_son(jechoniah,			shealtiel, [
			bible([matthew, 1, 12]),
			bible([kings2, 20, range(16, 19)]),
			url('http://creation.com/jesus-genealogies'),
			comment('Its possible Jeconiah was made into a eunuch. He may have adopted Shealtiel son of Neri to pass on the right to the throne.')
		   ]).	% TODO after time of deportation
matthew_1_father_son(shealtiel,			zerubbabel,		12).

matthew_1_father_son(zerubbabel,		abiud,			13).
matthew_1_father_son(abiud,			abiuds_eliakim,		13).
matthew_1_father_son(abiuds_eliakim,		azor,			13).

matthew_1_father_son(azor,			zadok,			14).
matthew_1_father_son(zadok,			achim,			14).
matthew_1_father_son(achim,			eliud,			14).

matthew_1_father_son(eliud,			eliuds_eleazar,		15).
matthew_1_father_son(eliuds_eleazar,		matthan,		15).
matthew_1_father_son(matthan,			jacob_father_of_joseph,	15).

man(uriah).
woman(tamar).
woman(rahab).
woman(bathsheba).
woman(ruth).

person_name(perezs_hezron,			'Hezron'). % Not Reuben's Hezron
person_name(uzziahs_jotham,			'Jotham'). % Not Jahdai's Jotham
person_name(manassehs_amos,			'Amos').
person_name(abiuds_eliakim,			'Eliakim').
person_name(eliuds_eleazar,			'Eleazar'). % Not Aaron's Eleazar
person_name(jacob_father_of_joseph,		'Jacob').

matthew_1_father_son(jacob_father_of_joseph,	joseph_carpenter,	16).
woman(mary).
married(joseph_carpenter, mary, bible([matthew, 1, 16])).
person_name(joseph_carpenter, 'Joseph').
parent_son(mary, jesus, bible([matthew, 1, 16])).

% 17: 14 generations abraham to david
% 17: 14 generations david to deportation
% 17: 14 generations deportation to christ
