drop sequence server_sequence_international;
CREATE SEQUENCE server_sequence_international
  START WITH 1
  MAXVALUE 999999
  MINVALUE 1
  NOCYCLE
  CACHE 20
  NOORDER;
