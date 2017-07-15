/*
 * 1 Chronicles 2
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
 * constraints for 1 Chronicles 2 (in the context of the whole Bible).
 *
 */

parent_sons(jacob, Sons, bible([chronicles1, 2, 1])) :-
	Sons = [reuben, simeon, levi, judah, issachar, zebulun].

parent_sons(jacob, Sons, bible([chronicles1, 2, 2])) :-
	Sons = [dan, joseph, benjamin, naphtali, gad, asher].

woman(bathshua).
parent_descendent(canaan, bathshua, bible([chronicles1, 2, 3])).
parents_sons([judah, bathshua], Sons, bible([chronicles1, 2, 3])) :-
	Sons = [er, onan, judahs_shelah].
person_name(judahs_shelah, 'Shelah'). % Arphaxad also has a Shelah

woman(tamar).
% Tamar was Judah's daughter-in-law (married to Er then Onan, see Gen 38:6)
parents_sons([judah, tamar], Sons, bible([chronicles1, 2, 4])) :-
	Sons = [perez, zerah].

parent_sons(perez, Sons, bible([chronicles1, 2, 5])) :-
	Sons = [perezs_hezron, hamul].
person_name(perezs_hezron, 'Hezron'). % Reuben also has a Hezron

parent_sons(zerah, Sons, bible([chronicles1, 2, 6])) :-
	Sons = [zimri, ethan, heman, kalkol, dara].

% Carmi son of Zabdi, son of Zerah (see jos 7:1)
parent_son(carmi, achan, bible([chronicles1, 2, 7])).

parent_son(ethan, ethans_azariah, bible([chronicles1, 2, 8])).
person_name(ethans_azariah, 'Azariah'). % Jehu also had an Azariah

parent_sons(perezs_hezron, Sons, bible([chronicles1, 2, 9])) :-
	Sons = [jerahmeel, ram, caleb].

parent_son(ram, amminadab, bible([chronicles1, 2, 10])).
parent_son(amminadab, nahshon, bible([chronicles1, 2, 10])).

% Salmon (ESV) / Salma (KJV)
% Salmon mentioned in Matt 1:4
% Hur also had a Salma (vs 50)
parent_son(nahshon, salmon, bible([chronicles1, 2, 11])).
parent_son(salmon, boaz, bible([chronicles1, 2, 11])).

parent_son(boaz, obed, bible([chronicles1, 2, 12])).
parent_son(obed, jesse, bible([chronicles1, 2, 12])).

parent_sons(jesse, Sons, bible([chronicles1, 2, 13])) :-
	Sons = [eliab, abinadab, shimea]. % 1st, 2nd, 3rd born
age_ordering([eliab, abinadab, shimea], bible([chronicles1, 2, 13])).

parent_sons(jesse, Sons, bible([chronicles1, 2, 14])) :-
	Sons = [nethanel, raddai]. % 4th, 5th born
age_ordering([shimea,nethanel, raddai], bible([chronicles1, 2, 14])).

parent_sons(jesse, Sons, bible([chronicles1, 2, 15])) :-
	Sons = [ozem, david]. % 6th, 7th
age_ordering([raddai, ozem, david], bible([chronicles1, 2, 15])).

parent_daughters(jesse, Daughters, bible([chronicles1, 2, 16])) :-
	Daughters = [zeruiah, abigail].
parent_sons(zeruiah, Sons, bible([chronicles1, 2, 16])) :-
	Sons = [abshai, joab, asahel].

man(jether).
parent_descendent(ishmael, jether, bible([chronicles1, 2, 17])).
parents_son([abigail, jether], amasa, bible([chronicles1, 2, 17])).

woman(azubah). % AKA Jerioth
parents_sons([caleb, azubah], Sons, bible([chronicles1, 2, 18])) :-
	Sons = [jesher,shobab, ardon].

woman(ephrath).
married(caleb, ephrath, bible([chronicles1, 2, 19])).
events_ordered([death(azubah), begin(marriage(caleb, ephrath))],
		bible([chronicles1, 2, 19])).
parents_son([caleb, ephrath], hur, bible([chronicles1, 2, 19])).

parent_son(hur, uri, bible([chronicles1, 2, 20])).
parent_son(uri, bezalel, bible([chronicles1, 2, 20])).

man(makir).
parent_daughter(makir, makirs_daughter, bible([chronicles1, 2, 21])).
parent_son(makir, gilead, bible([chronicles1, 2, 21])).
married(perezs_hezron, makirs_daughter, bible([chronicles1, 2, 21])).
event_interval(birth(perezs_hezron),
		begin(marriage(perezs_hezron, markirs_daughter)),
		chronicles1_years(60), bible([chronicles1, 2, 21])).
parents_son([perezs_hezron, makirs_daughter], segub,
		bible([chronicles1, 2, 21])).

parent_son(segub, jair, bible([chronicles1, 2, 22])).

married(perezs_hezron, hezrons_wife_ephrath, bible([chronicles1, 2, 24])).
woman(hezrons_wife_ephrath).
% Unclear if same Ephrath mentioned in vs 19
person_name(hezrons_wife_ephrath, 'Ephrath').
parents_son([caleb, hezrons_wife_ephrath], ashur, bible([chronicles1, 2, 24])).
events_ordered([death(perezs_hezron), conception(ashur)],
		bible([chronicles1, 2, 24])).
parent_son(ashur, tekoa, bible([chronicles1, 2, 24])).

parent_sons(jerahmeel, Sons, bible([chronicles1, 2, 25])) :-
	Sons = [jerahmeels_ram, bunah, oren, jerahmeels_ozem, ahijah].
person_name(jerahmeels_ram, 'Ram'). % Distinct from Hezron's Ram
person_name(jerahmeels_ozem, 'Ozem'). % Not the son of Jesse

woman(atarah).
married(jerahmeel, atarah, bible([chronicles1, 2, 26])).
parents_son([jerahmeel, atarah], onam, bible([chronicles1, 2, 26])).

parent_sons(jerahmeels_ram, Sons, bible([chronicles1, 2, 27])) :-
	Sons = [maaz, rams_jamin, eker].
person_name(rams_jamin, 'Jamin'). % Simeon also had a jamin

parent_sons(onam, Sons, bible([chronicles1, 2, 28])) :-
	Sons = [shammai, jada].
parent_sons(shammai, Sons, bible([chronicles1, 2, 28])) :-
	Sons = [shammais_nadab, abishur].
person_name(shammais_nadab, 'Nadab'). % Aaron also had a Nadab

woman(abihail).
married(abishur, abihail).
parents_sons([abishur, abihail], Sons, bible([chronicles1, 2, 29])) :-
	Sons = [ahban, molid].

parent_sons(shammais_nadab, Sons, bible([chronicles1, 2, 30])) :-
	Sons = [seled, appaim].

parent_son(appaim, ishi, bible([chronicles1, 2, 31])).
parent_son(ishi, sheshan, bible([chronicles1, 2, 31])).
% Sheshan had only daughters
% Given 1 Ch 11:41, it seems likely that the daughter referred to was Ahlai
parent_daughter(sheshan, ahlai, bible([chronicles1, 2, 31])).

parent_sons(jada, Sons, bible([chronicles1, 2, 32])) :-
	Sons = [jadas_jether, jadas_jonathan].
person_name(jadas_jether, 'Jether'). % not the ishmaelite
person_name(jadas_jonathan, 'Jonathan'). % not the son of Saul

parent_sons(jadas_jonathan, Sons, bible([chronicles1, 2, 33])) :-
	Sons = [peleth, zaca].

woman(ahlai).
man(jarha).
parent_descendent(mizraim, jarha, bible([chronicles1, 2, 34])). % Egyption
% Jarha was Sheshan's servant

married(jarha, ahlai, bible([chronicles1, 2, 35])).
parents_son([jarha, ahlai], attai, bible([chronicles1, 2, 35])).

parent_son(attai, attais_nathan, bible([chronicles1, 2, 36])).
parent_son(attais_nathan, zabad, bible([chronicles1, 2, 36])).
person_name(attais_nathan, 'Nathan'). % David also had a Nathan

parent_son(zabad, ephial, bible([chronicles1, 2, 37])).
parent_son(ephial, ephials_obed, bible([chronicles1, 2, 37])).
person_name(ephials_obed, 'Obed'). % Boaz also had an Obed

parent_son(ephials_obed, jehu, bible([chronicles1, 2, 38])).
parent_son(jehu, jehus_azariah, bible([chronicles1, 2, 38])).
person_name(jehus_azariah, 'Azariah'). % Ethan also had an Azariah

parent_son(jehus_azariah, helez, bible([chronicles1, 2, 39])).
parent_son(helez, eleasah, bible([chronicles1, 2, 39])).

parent_son(eleasah, sismai, bible([chronicles1, 2, 40])).
parent_son(sismai, shallum, bible([chronicles1, 2, 40])).

parent_son(shallum, jekamiah, bible([chronicles1, 2, 41])).
parent_son(jekamiah, elishama, bible([chronicles1, 2, 41])).

parent_sons(caleb, Sons, bible([chronicles1, 2, 42])) :-
	Sons = [mesha, marashah].
parent_son(mesha, ziph, bible([chronicles1, 2, 42])).
parent_son(marashah, marashahs_hebron, bible([chronicles1, 2, 42])).
person_name(marashahs_hebron, 'Hebron'). % Kobath son of Levi also had a Hebron

parent_sons(marashahs_hebron, Sons, bible([chronicles1, 2, 43])) :-
	Sons = [hebrons_korah, tappuah, rekem, shema].
person_name(hebrons_korah, 'Korah'). % Izhar from Levi also had Korah

parent_son(shema, raham, bible([chronicles1, 2, 44])).
parent_son(raham, jorkeam, bible([chronicles1, 2, 44])).
parent_son(rekem, rekems_shammai, bible([chronicles1, 2, 44])).
person_name(rekems_shammai, 'Shammai'). % Onam also had a Shammai

parent_son(rekems_shammai, maon, bible([chronicles1, 2, 45])).
parent_son(maon, beth_zur, bible([chronicles1, 2, 45])).
person_name(beth_zur, 'Beth-Zur').

% Ephah was Caleb's concubine
woman(calebs_ephah).
person_name(calebs_ephah, 'Ephah'). % Midian had a son called Ephah
parents_sons([caleb, calebs_ephah], Sons, bible([chronicles1, 2, 46])) :-
	Sons = [calebs_haran, moza, gazez].
person_name(calebs_haran, 'Haran'). % Not the father of Lot
parent_son(calebs_haran, harans_gazez, bible([chronicles1, 2, 46])).
person_name(harans_gazez, 'Gazez').

% Ambiguous who Jahdai was, presumably a concubine or descendent of Caleb
parent_descendent(caleb, jahdai, bible([chronicles1, 2, 47])).
parent_sons(jahdai, Sons, bible([chronicles1, 2, 47])) :-
	Sons = [regem, jotham, geshan, pelet, jahdais_ephah, jahdais_shaaph].
person_name(jahdais_ephah, 'Ephah'). % Midian had a son called Ephah
person_name(jahdais_shaaph, 'Shaaph'). % Caleb had a son called Shaaph

% Maacah was another concubine
woman(maacah).
parents_sons([caleb, maacah], Sons, bible([chronicles1, 2, 48])) :-
	Sons = [sheber, tirhanah].
parents_sons([caleb, maacah], Sons, bible([chronicles1, 2, 49])) :-
	Sons = [shaaph, sheva].
parent_son(shaaph, madmannah, bible([chronicles1, 2, 49])).
parent_sons(sheva, Sons, bible([chronicles1, 2, 49])) :-
	Sons = [machbenah, gibea].
parent_daughter(caleb, achsah, bible([chronicles1, 2, 49])).

parent_son(hur, shobal, bible([chronicles1, 2, 50])).
parent_son(shobal, kiriath_jearim, bible([chronicles1, 2, 50])).
person_name(kiriath_jearim, 'Kiriath Jearim').

parent_sons(hur, Sons, bible([chronicles1, 2, 51])) :-
	Sons = [hurs_salma, hareph].
person_name(hurs_salma, 'Salma'). % Nahshon also had a Salma
parent_son(hurs_salma, bethlehem, bible([chronicles1, 2, 51])).
parent_son(hareph, beth_gader, bible([chronicles1, 2, 51])).
person_name(beth_gader, 'Beth-Gader').

parent_son(shobal, haroeh, bible([chronicles1, 2, 52])).
parent_descendent(shobal, manahathites, bible([chronicles1, 2, 52])).

parent_descendents(kiriath_jearim, Descendents, bible([chronicles1, 2, 53])) :-
	Descendents = [ithrites, puthites, shumathites, mishraites,
			zirathites, eshtaolites].

parent_sons(hurs_salma, Sons, bible([chronicles1, 2, 54])) :-
	Sons = [bethlehem, atroth_beth_joab].
person_name(atroth_beth_joab, 'Atroth Beth-Joab').
parent_descendents(hurs_salma, Descendents, bible([chronicles1, 2, 54])) :-
	Descendents = [netophathites, manahathites, zorites].

parent_descendents(hurs_salma, Descendents, bible([chronicles1, 2, 55])) :-
	Descendents = [tirathites, shimeathites, sucathites].
