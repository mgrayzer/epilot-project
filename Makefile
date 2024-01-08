.PHONY: execute_analysis

execute_analysis:
	echo installing all dependencies
	pip install -r requirements.txt
	echo creating dbt environment
	cp -r .dbt ~ 
	echo loading raw data to snowflake cluster
	snowsql -a ff77862.eu-central-1 -u EPILOT_USER -d epilot -s raw -f DDL/uploadraw.sql
	echo executing transformations
	dbt run