CREATE OR REPLACE FILE FORMAT RAW.CSV_FILE_FORMAT
TYPE = CSV 
record_delimiter = '\n'
field_delimiter = ','
null_if = ('NULL', 'null')
empty_field_as_null = true
FIELD_OPTIONALLY_ENCLOSED_BY = '0x22'
compression = gzip;
