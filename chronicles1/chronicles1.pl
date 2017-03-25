/*
 * 1 Chronicles
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
 * constraints for 1 Chronicles (in the context of the whole Bible).
 *
 */

% Define the interval type chronicles1_years(Years)
% Use a floor type (like integer year ages, get less precise with each generation)
derived_interval(chronicles1_years(Num), floor(Num, year)).

:- include('2').
