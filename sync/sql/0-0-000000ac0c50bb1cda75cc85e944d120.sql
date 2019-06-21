INSERT INTO `login_members` (`id`, `username`, `email`, `password`, `salt`) VALUES
(4, 'Admin', 'admin@italia.com', 'd9233fb3d36f7201eb00feb6f807a4eca3ca258d46f125bb70ff5b2ada40a134fd51cf2ad07a39b90a596ab8140baa70b5f248b9782a7017ad2b2578ccace7d5', '52d59e7f12535d13c733011cdde2b9f8067e6d9bff90fa9715c24572fe806dad820279de2bad1a03ef0a24e3eac9d0609815b35171122bd323a252c9c8656a43');

INSERT INTO `login_userdata` (`id`, `nombre`, `tipo`, `user`, `tkn`, `avatar`, `td`) VALUES
(null, 'Administracion', 5, '4e7afebcfbae000b22c7c85e5560f89a2a0280b4', '1', 'flat-faces-icons-circle-6-min.png', 6);

UPDATE `sync` SET `correlativo`=0,`inicio`=0 WHERE `td` = 6;

TRUNCATE ticket_num;
TRUNCATE ticket;
TRUNCATE mesa;
TRUNCATE sync_status;