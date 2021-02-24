

CREATE TABLE ksql_products_table \
      WITH (VALUE_FORMAT='AVRO', \
            KAFKA_TOPIC='products-with-key', KEY='ID');

