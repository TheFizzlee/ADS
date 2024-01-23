create database weather_test

use weather_test

DROP TABLE WeatherData

CREATE TABLE WeatherData (
    MinTemp NVARCHAR(255),
    MaxTemp NVARCHAR(255),
    Rainfall NVARCHAR(255),
    Evaporation NVARCHAR(255),
    Sunshine NVARCHAR(255),
    WindGustDir NVARCHAR(255),
    WindGustSpeed NVARCHAR(255),
    WindDir9am NVARCHAR(255),
    WindDir3pm NVARCHAR(255),
    WindSpeed9am NVARCHAR(255),
    WindSpeed3pm NVARCHAR(255),
    Humidity9am NVARCHAR(255),
    Humidity3pm NVARCHAR(255),
    Pressure9am NVARCHAR(255),
    Pressure3pm NVARCHAR(255),
    Cloud9am NVARCHAR(255),
    Cloud3pm NVARCHAR(255),
    Temp9am NVARCHAR(255),
    Temp3pm NVARCHAR(255),
    RainToday NVARCHAR(255),
    RISK_MM NVARCHAR(255),
    RainTomorrow NVARCHAR(255)
);


BULK INSERT WeatherData
FROM 'C:\users\timoy\weather.csv'
WITH (
   FIELDTERMINATOR = ',',
   ROWTERMINATOR = '\n',
   FIRSTROW = 2 -- Skip header if needed
);


SELECT * FROM WeatherData