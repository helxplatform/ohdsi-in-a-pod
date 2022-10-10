CREATE OR REPLACE PROCEDURE update_sources(source_schema text,dbhost text,dbname text,dbuser text,dbpassword text)
AS $$
BEGIN
  EXECUTE format('UPDATE %s.source SET source_connection = ''jdbc:postgresql://%s:5432/%s?user=%s&password=%s''',
    source_schema,
    dbhost,
    dbname,
    dbuser,
    dbpassword
  );
END;
$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE PROCEDURE update_sources_db(dbname text)
AS $$
BEGIN
  CALL update_sources('webapi','postgresql.ohdsi-dev',dbname,'ohdsi','admin1');
END;
$$ LANGUAGE 'plpgsql';
