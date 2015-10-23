\c ndunhourowens;

DROP USER IF EXISTS indexed_cars_user;
DROP DATABASE IF EXISTS indexed_cars;

CREATE USER indexed_cars_user;
CREATE DATABASE indexed_cars;

\c indexed_cars;

\i scripts/car_models.sql;

\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;


-- 1.712 ms
SELECT make_title FROM car_models WHERE make_code = 'LAM' LIMIT 1;

-- 3.300 ms
SELECT make_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R' LIMIT 1;

-- 24.939 ms
SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';

-- 82.325 ms
SELECT * FROM car_models WHERE year > 2009 AND year < 2016 ;

-- 35.463 ms
SELECT * FROM car_models WHERE year = 2010;


CREATE INDEX make_title_idx ON car_models (make_title);
CREATE INDEX make_code_idx on car_models (make_code);
CREATE INDEX model_code_idx on car_models (model_code);
CREATE INDEX year_idx ON car_models (year);

-- 2.303 ms
SELECT make_title FROM car_models WHERE make_code = 'LAM' LIMIT 1;

-- 3.108 ms
SELECT make_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R' LIMIT 1;

-- 3.744 ms
SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';

-- 63.994 ms
SELECT * FROM car_models WHERE year > 2009 AND year < 2016 ;

-- 12.937 ms
SELECT * FROM car_models WHERE year = 2010;
