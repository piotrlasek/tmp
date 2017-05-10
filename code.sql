delete from data where pickup_longitude < -171;       -- 34 removed
delete from data where pickup_longitude > 

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
