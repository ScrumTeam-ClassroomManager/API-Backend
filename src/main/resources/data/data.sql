
--ADMIN JUST ONE ADMIN WITH ROLE
--username:admin
--password:admin
INSERT INTO USERS (ID,EMAIL,FIRST_NAME,LAST_NAME,PASSWORD,SERIAL_NUMBER)
SELECT 1,'admin@prova.com','admin','admin','$2a$10$5HoNE/hOpqvtIqY2G0wwSu5olSxGrvzWXDxxErH1QEF.PZ0BAo1sW',12345
WHERE NOT EXISTS (SELECT ID FROM USERS WHERE ID = '1');

INSERT INTO CLASSROOMS (ID,NAME,CUBE,FLOOR,CAPABILITY,NUM_SOCKET,PROJECTOR,AVAIALABLE)
SELECT 1,'MT11',30,2,200,4,true,true
    WHERE NOT EXISTS (SELECT ID FROM CLASSROOMS WHERE ID = '1');

INSERT INTO CLASSROOMS (ID,NAME,CUBE,FLOOR,CAPABILITY,NUM_SOCKET,PROJECTOR,AVAIALABLE)
SELECT 2,'MT10',30,2,180,4,true,true
    WHERE NOT EXISTS (SELECT ID FROM CLASSROOMS WHERE ID = '2');

--END SCRIPT

