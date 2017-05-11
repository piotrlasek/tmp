delete from data where pickup_longitude < -171;       -- 34 removed

delete from data where pickup_longitude > 


select
        min(pickup_longitude) as PICK_LON_MIN, max(pickup_longitude) as PICK_LON_MAX,
        min(pickup_latitude) as PICK_LAT_MIN, max(pickup_latitude) as PICK_LAT_MAX,
        min(dropoff_longitude) as DROP_LON_MIN, max(dropoff_longitude) as DROP_LON_MAX,
        min(dropoff_latitude) as DROP_LAT_MIN, max(dropoff_latitude) as DROP_LAT_MAX
from data;


delete from data where pickup_latitude < 38.7128;
delete from data where pickup_latitude > 42.7128;
delete from data where pickup_longitude < -76.0059;
delete from data where pickup_longitude > -72.0059;

delete from data where dropoff_latitude < 38.7128;
delete from data where dropoff_latitude > 42.7128;
delete from data where dropoff_longitude < -76.0059;
delete from data where dropoff_longitude > -72.0059;

delete from data where pickup_time > dropoff_time;


-- 40.7128, -74.0059 


INITIALIZE PI_CUBE

        DECLARE MIN_LONGITUDE FLOAT;
        DECLARE MIN_LATITUDE FLOAT;
        
        --

        RAISE NOTICE 'Selecting minimal PICKUP_LONGITUDE';
        SELECT MIN(PICKUP_LONGITUDE)
            FROM DATA INTO MIN_PICKUP_LONGITUDE;

        RAISE NOTICE 'Selecting minimal DROPOFF_LONGITUDE';
        SELECT MIN(DROPOFF_LONGITUDE)
            FROM DATA INTO MIN_DROPOFF_LONGITUDE;
        
        IF MIN_PICKUP_LONGITUDE < MIN_DROPOFF_LONGITUDE THEN
            MIN_LONGITUDE := MIN_PICKUP_LONGITUDE;
        ELSE
            MIN_LONGITUDE := MIN_DROPOFF_LONGITUDE;
        END IF

        RAISE NOTICE 'Selecting minimal PICKUP_LATITUDE';
        SELECT MIN(PICKUP_LATITUDE)
            FROM DATA INTO MIN_PICKUP_LATITUDE;

        RAISE NOTICE 'Selecting minimal DROPOFF_LATITUDE';
        SELECT MIN(DROPOFF_LATITUDE)
            FROM DATA INTO MIN_DROPOFF_LATITUDE';

        IF MIN_PICKUP_LATITUDE < MIN_DROPOFF_LATITUDE THEN
            MIN_LATITUDE := MIN_PICKUP_LATITUDE;
        ELSE
            MIN_LATITUDE := MIN_DROPOFF_LATITUDE;
        END IF

        RAISE NOTICE 'Selecting minimal PICKUP_DATETIME';
        SELECT MIN(PICKUP_DATETIME)
            FROM DATA INTO MIN_PICKUP_TIME;
            
        
            
        IF 
