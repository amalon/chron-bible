/*
 * Genesis 4
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
 * constraints for Genesis 4 (in the context of the whole Bible).
 *
 */

% Cain
parents_son([adam, eve], cain, bible([genesis, 4, 1])).

% Abel
parents_son([adam, eve], abel, bible([genesis, 4, 2])).
age_ordering([cain, abel], bible([genesis, 4, 2])).

% Cain and Abel's offerings
event(cains_offering).
event(abels_offering).
% Cain's motivation for murdering Abel appears to have been jealousy
event_during(cains_offering, lifetime(abel), bible([genesis, 4, 3])).
event_during(abels_offering, lifetime(abel), bible([genesis, 4, 4])).

% Abel's death
murdered(cain, abel, bible([genesis, 4, 8])).

% Cain's curse was relate to Abel's murder
event(cains_curse).
events_ordered([death(abel), cains_curse], bible([genesis, 4, 11])).

% Cain then went to live in Nod
period(cain_lives_in_nod).
period_during(cain_lives_in_nod, lifetime(cain), bible([genesis, 4, 16])).
events_ordered([death(abel), begin(cain_lives_in_nod)], bible([genesis, 4, 16])).

% Cains line

% Enoch
woman(cains_wife).
married(cain, cains_wife, bible([genesis, 4, 17])).
parents_son([cain, cains_wife], cains_enoch, bible([genesis, 4, 17])).

% Irad, Mehujael, Lamech
parent_son(cains_enoch, irad, bible([genesis, 4, 18])).
parent_son(irad, mehujael, bible([genesis, 4, 18])).
parent_son(mehujael, mehujaels_lamech, bible([genesis, 4, 18])).

% Lamech's wives
woman(adah).
woman(zilah).
married(mehujaels_lamech, adah, bible([genesis, 4, 19])).
married(mehujaels_lamech, zilah, bible([genesis, 4, 19])).

% Jabal
parents_son([mehujaels_lamech, adah], jabal, bible([genesis, 4, 20])).

% Jubal (Jabal's brother)
parents_son([mehujaels_lamech, adah], jubal, bible([genesis, 4, 21])).

% Tubal-cain
parents_son([mehujaels_lamech, zilah], tubal_cain, bible([genesis, 4, 22])).
% Naamah (Tubal-cain's sister)
parents_daughter([mehujaels_lamech, zilah], naamah, bible([genesis, 4, 22])).


% Back to Adam

% Seth
parents_son([adam, eve], seth, bible([genesis, 4, 25])).
age_ordering([abel, seth], bible([genesis, 4, 25])).
% Seth was probably conceived after Abel's murder
events_ordered([death(abel), conception(seth)], bible([genesis, 4, 25])).

% Enos
parent_son(seth, enos, bible([genesis, 4, 26])).
