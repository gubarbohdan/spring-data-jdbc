CREATE TABLE dummy_entity ( id BIGINT GENERATED BY DEFAULT AS IDENTITY ( START WITH 1 ) PRIMARY KEY, NAME VARCHAR(100));
CREATE TABLE element (id BIGINT GENERATED BY DEFAULT AS IDENTITY (START WITH 1) PRIMARY KEY, content VARCHAR(100), Dummy_Entity_key VARCHAR(100), dummy_entity BIGINT);

ALTER TABLE ELEMENT
  ADD FOREIGN KEY (dummy_entity)
    REFERENCES dummy_entity(id);
