DROP TABLE IF EXISTS mobileappmetrics;

CREATE UNLOGGED TABLE IF NOT EXISTS mobileappmetrics (
  clientId char(80) NOT NULL CHECK (clientId <> ''),
  event_type char(30) NOT NULL CHECK(event_type <> ''),
  event_time timestamptz NOT NULL DEFAULT now(),
  client_time timestamptz DEFAULT now(),
  data jsonb NOT NULL,
  PRIMARY KEY(clientId, event_type, event_time)
);

INSERT INTO mobileappmetrics(clientId, event_type, data, client_time)
  VALUES('1234', 'sync', '{"operation":"createMeme", "data": {"photo": "http://redhat.com/img.jpg"}}', NOW());

INSERT INTO mobileappmetrics(clientId, event_type, data, client_time)
VALUES('5678', 'sync', '{"operation":"getMemeById", "data": {"id": 1}}', NOW());