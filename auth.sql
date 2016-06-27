#setup auth
CREATE TABLE auth (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  tstamp INTEGER(0),
  srcuserdomain VARCHAR(20),
  dstuserdomain VARCHAR(20),
  srccomputer VARCHAR(20),
  dstcomputer VARCHAR(20),
  authtype VARCHAR (20),
  logontype VARCHAR (20),
  authorient VARCHAR (20),
  passfail VARCHAR (15),
  srcusr VARCHAR(10),
  srcdomain VARCHAR(15)
  dstusr VARCHAR(10),
  dstdomain VARCHAR(15),
  redteam VARCHAR(5);

LOAD DATA LOCAL INFILE '/media/pcgeller/SharedDrive/auth.txt'
  INTO TABLE auth
  FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'
  (tstamp, srcuserdomain, dstuserdomain, srccomputer, dstcomputer, authtype, logontype, authorient, 	passfail);

