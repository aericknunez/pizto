UPDATE `sync` SET `correlativo`=0,`inicio`=0 WHERE `td` = 7;

TRUNCATE ticket_num;
TRUNCATE ticket;
TRUNCATE mesa;
TRUNCATE sync_status;