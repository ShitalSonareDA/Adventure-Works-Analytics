use adventure_works;

CREATE TABLE Calendar (
    DateKey VARCHAR(10) PRIMARY KEY,
    FullDateAlternateKey VARCHAR(10),
    DayNumberOfWeek VARCHAR(10),
    EnglishDayNameOfWeek VARCHAR(10),
    SpanishDayNameOfWeek VARCHAR(10),
    FrenchDayNameOfWeek VARCHAR(10),
    DayNumberOfMonth VARCHAR(10),
    DayNumberOfYear VARCHAR(10),
    WeekNumberOfYear VARCHAR(10),
    EnglishMonthName VARCHAR(20),
    SpanishMonthName VARCHAR(20),
    FrenchMonthName VARCHAR(20),
    MonthNumberOfYear VARCHAR(10),
    CalendarQuarter VARCHAR(10),
    CalendarYear VARCHAR(10),
    CalendarSemester VARCHAR(10),
    FiscalQuarter VARCHAR(10),
    FiscalYear VARCHAR(10),
    FiscalSemester VARCHAR(10)
);

select * from calendar;

