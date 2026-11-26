BEGIN;
DROP TABLE IF EXISTS inspections;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS dealers;
CREATE TABLE dealers (
  id          SERIAL PRIMARY KEY,
  name        VARCHAR(100) NOT NULL,
  city        VARCHAR(50)  NOT NULL,
  phone       VARCHAR(20),
  email       VARCHAR(255) NOT NULL UNIQUE,
  created_at  TIMESTAMP    NOT NULL DEFAULT NOW()
);

CREATE TABLE cars (
  id          SERIAL PRIMARY KEY,
  dealer_id   INTEGER NOT NULL REFERENCES dealers(id) ON DELETE RESTRICT,
  make        VARCHAR(50)   NOT NULL,
  model       VARCHAR(50)   NOT NULL,
  year        INTEGER       NOT NULL CHECK (year BETWEEN 1990 AND 2026),
  price       NUMERIC(12,2) NOT NULL CHECK (price > 0),
  mileage_km  INTEGER       NOT NULL CHECK (mileage_km >= 0),
  vin         CHAR(17)      NOT NULL UNIQUE,
  created_at  TIMESTAMP     NOT NULL DEFAULT NOW()
);

CREATE TABLE inspections (
  id              SERIAL PRIMARY KEY,
  car_id          INTEGER NOT NULL REFERENCES cars(id) ON DELETE CASCADE,
  inspector_name  VARCHAR(100) NOT NULL,
  inspected_at    TIMESTAMP    NOT NULL,
  score           INTEGER      NOT NULL CHECK (score BETWEEN 0 AND 100),
  status          VARCHAR(10)  NOT NULL CHECK (status IN ('passed', 'failed', 'pending')),
  notes           TEXT
);
CREATE INDEX idx_cars_dealer_id     ON cars(dealer_id);
CREATE INDEX idx_inspections_car_id ON inspections(car_id);
INSERT INTO dealers (name, city, phone, email)
SELECT
  'Dealer ' || g,
  (ARRAY['Karachi','Lahore','Islamabad','Rawalpindi','Faisalabad','Multan','Peshawar'])[floor(random() * 7 + 1)::int],
  '03' || lpad(floor(random() * 1000000000)::bigint::text, 9, '0'),
  'dealer' || g || '@example.com'
FROM generate_series(1, 50) AS g;
WITH picks AS MATERIALIZED (
  SELECT g, floor(random() * 10 + 1)::int AS m
  FROM generate_series(1, 300) AS g
)
INSERT INTO cars (dealer_id, make, model, year, price, mileage_km, vin)
SELECT
  floor(random() * 50 + 1)::int,
  (ARRAY['Toyota','Toyota','Honda','Honda','Suzuki','Suzuki','Hyundai','Kia','Changan','MG'])[m],
  (ARRAY['Corolla','Yaris','Civic','City','Alto','Cultus','Tucson','Sportage','Alsvin','HS'])[m],
  floor(random() * 17 + 2010)::int,
  round((random() * 9000000 + 1000000)::numeric, -3),
  floor(random() * 200000)::int,
  'VIN' || lpad(g::text, 14, '0')
FROM picks;
WITH s AS MATERIALIZED (
  SELECT g, floor(random() * 101)::int AS score
  FROM generate_series(1, 500) AS g
)
INSERT INTO inspections (car_id, inspector_name, inspected_at, score, status, notes)
SELECT
  floor(random() * 300 + 1)::int,
  (ARRAY['Ahmed Khan','Sara Ali','Bilal Hussain','Ayesha Malik','Usman Tariq'])[floor(random() * 5 + 1)::int],
  NOW() - (random() * INTERVAL '365 days'),
  score,
  CASE WHEN score >= 60 THEN 'passed' ELSE 'failed' END,
  CASE WHEN random() < 0.3 THEN 'Minor scratches on bumper' ELSE NULL END
FROM s;

COMMIT;
SELECT 'dealers' AS tbl, COUNT(*) FROM dealers
UNION ALL SELECT 'cars', COUNT(*) FROM cars
UNION ALL SELECT 'inspections', COUNT(*) FROM inspections;
