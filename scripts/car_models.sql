-- db indexed_cars

CREATE TABLE IF NOT EXISTS car_models
(
 id serial,
 make_code character varying(125) NOT NULL,
 make_title character varying(125) NOT NULL,
 model_code character varying(125) NOT NULL,
 model_title character varying(125) NOT NULL,
 year integer NOT NULL,
 PRIMARY KEY (id)
)

CREATE INDEX make_title_idx ON car_models (make_title);
CREATE INDEX make_code_idx on car_models (make_code);
CREATE INDEX model_code_idx on car_models (model_code);
CREATE INDEX year_idx ON car_models (year);