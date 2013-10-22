/*
 * Genesis: Noah's calendar
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
 * Chron rules for describing Noah's calendar as used in Genesis 7 and 8.
 *
 */

% Noah's lunasolar calendar (relative to his birth)
% Lets just assume a month is between 29 and 31 days
noah_days_in_month(_, _, Days) :-
	Days in 29..31.

noah_months_in_year(_, 12).

% noah_day_of_year(Year, Month, DayOfMonth, DayOfYear)
% Month: 1..13
% DayOfMonth: 1..31
% DayOfYear: 0..364
noah_day_of_year(_, 1, DayOfMonth, DayOfYear) :-
	DayOfYear #= DayOfMonth - 1,
	!.
noah_day_of_year(Year, Month, DayOfMonth, DayOfYear) :-
	MonthBefore is Month - 1,
	noah_days_in_month(Year, MonthBefore, DaysInMonthBefore),
	noah_day_of_year(Year, MonthBefore, DaysInMonthBefore, DayOfYearMonthBegin),
	DayOfYear #= DayOfYearMonthBegin + DayOfMonth.

% noah_days_in_year(Year, Days)
% Complete and utter guess
noah_days_in_year(_, Days) :-
	Days in 365..366.

noah_days_in_years(Year1, Year2, Days) :-
	noah_days_in_years_p(Year1, Year2, 0, Days).

noah_days_in_years_p(Year1, Year2, Total, Output) :-
	(	Year1 = Year2
	->	Output = Total
	;	Year1 < Year2,
		LastYear is Year2 - 1,
		noah_days_in_year(LastYear, DaysInLastYear),
		NewTotal #= Total + DaysInLastYear,
		noah_days_in_years_p(Year1, LastYear, NewTotal, Output)
	).

calendar_interval(D1, D2, time(Interval, day)) :-
	D1 = noah_calendar(Year1, Month1, Day1),
	D2 = noah_calendar(Year2, Month2, Day2),
	noah_calendar_interval(Year1, Month1, Day1, Year2, Month2, Day2, Interval).

calendar_ordered(noah_calendar(Year1, _, _), noah_calendar(Year2, _, _)) :-
	Year1 < Year2.
calendar_ordered(noah_calendar(Year, Month1, _), noah_calendar(Year, Month2, _)) :-
	Month1 < Month2.
calendar_ordered(noah_calendar(Year, Month, Day1), noah_calendar(Year, Month, Day2)) :-
	Day1 < Day2.

% two dates in same calendar month is easy
noah_calendar_interval(Year, Month, Day1, Year, Month, Day2, Interval) :-
	Interval #= Day2 - Day1.

% two dates in same calendar year isn't too bad
noah_calendar_interval(Year, Month1, Day1, Year, Month2, Day2, Interval) :-
	Month1 > Month2,
	% swap and negate
	Interval #= -NegInterval,
	noah_calendar_interval(Year, Month2, Day2, Year, Month1, Day1, NegInterval).
noah_calendar_interval(Year, Month1, Day1, Year, Month2, Day2, Interval) :-
	Month1 < Month2,
	LastMonth is Month2 - 1,
	noah_days_in_month(Year, LastMonth, DaysInLastMonth),
	Interval #= IntervalToEndOfLastMonth + Day2,
	noah_calendar_interval(Year, Month1, Day1, Year, LastMonth,
				DaysInLastMonth, IntervalToEndOfLastMonth).

% two dates in different calendar years are a bit awkward, there may be a 13th
% month after all!
noah_calendar_interval(Year1, Month1, Day1, Year2, Month2, Day2, Interval) :-
	Year1 > Year2,
	% swap and negate
	Interval #= -NegInterval,
	noah_calendar_interval(Year2, Month2, Day2, Year1, Month1, Day1, NegInterval).
noah_calendar_interval(Year1, Month1, Day1, Year2, Month2, Day2, Interval) :-
	Year1 < Year2,
	noah_months_in_year(Year1, MonthsInFirstYear),
	noah_days_in_month(Year1, MonthsInFirstYear, DaysInLastMonth),
	Interval #= IntervalToEndOfFirstYear + IntervalMiddle + IntervalFromNewYear + 1,
	noah_calendar_interval(Year1, Month1, Day1, Year1, MonthsInFirstYear,
				DaysInLastMonth, IntervalToEndOfFirstYear),
	Year1Plus1 is Year1 + 1,
	noah_days_in_years(Year1Plus1, Year2, IntervalMiddle),
	noah_calendar_interval(Year2, 1, 1, Year2, Month2, Day2,
				IntervalFromNewYear).

% Relate noah's calendar with Noah's birth
% Noah's 2nd year occured before he was 1 (approximately).
event(noah_calendar_epoch).
event_date(noah_calendar_epoch, noah_calendar(2, 1, 1), fiat).
event_interval(birth(noah), noah_calendar_epoch, floor(0, year), fiat).
