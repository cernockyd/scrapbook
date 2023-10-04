INSERT INTO auth.users (instance_id,id,aud,"role",email,encrypted_password,email_confirmed_at,last_sign_in_at,raw_app_meta_data,raw_user_meta_data,is_super_admin,created_at,updated_at,phone,phone_confirmed_at,confirmation_token,email_change,email_change_token_new,recovery_token) VALUES
	('00000000-0000-0000-0000-000000000000'::uuid,'f76629c5-a070-4bbc-9918-64beaea48848'::uuid,'authenticated','authenticated','test@example.com','$2a$10$PznXR5VSgzjnAp7T/X7PCu6vtlgzdFt1zIr41IqP0CmVHQtShiXxS','2022-02-11 21:02:04.547','2022-02-11 22:53:12.520','{"provider": "email", "providers": ["email"]}','{}',FALSE,'2022-02-11 21:02:04.542','2022-02-11 21:02:04.542',NULL,NULL,'','','',''),
	('00000000-0000-0000-0000-000000000000'::uuid,'d9064bb5-1501-4ec9-bfee-21ab74d645b8'::uuid,'authenticated','authenticated','demo@example.com','$2a$10$mOJUAphJbZR4CdM38.bgOeyySurPeFHoH/T1s7HuGdpRb7JgatF7K','2022-02-12 07:40:23.616','2022-02-12 07:40:23.621','{"provider": "email", "providers": ["email"]}','{}',FALSE,'2022-02-12 07:40:23.612','2022-02-12 07:40:23.613',NULL,NULL,'','','','')
ON CONFLICT (id) DO NOTHING;

INSERT INTO auth.identities (id,user_id,identity_data,provider,last_sign_in_at,created_at,updated_at) VALUES
	('f76629c5-a070-4bbc-9918-64beaea48848','f76629c5-a070-4bbc-9918-64beaea48848'::uuid,'{"sub": "f76629c5-a070-4bbc-9918-64beaea48848"}','email','2022-02-11 21:02:04.545','2022-02-11 21:02:04.545','2022-02-11 21:02:04.545'),
	('d9064bb5-1501-4ec9-bfee-21ab74d645b8','d9064bb5-1501-4ec9-bfee-21ab74d645b8'::uuid,'{"sub": "d9064bb5-1501-4ec9-bfee-21ab74d645b8"}','email','2022-02-12 07:40:23.615','2022-02-12 07:40:23.615','2022-02-12 07:40:23.615')
ON CONFLICT (id, provider) DO NOTHING;

insert into public.profiles (username, id) values
('testuser','d9064bb5-1501-4ec9-bfee-21ab74d645b8'),
('testuser2',	'f76629c5-a070-4bbc-9918-64beaea48848');

insert into public.portfolios (created_at, name, profile_id, url, feed_url, platform, id) values
('2022-11-13 20:45:24.417349+00',	null,	'd9064bb5-1501-4ec9-bfee-21ab74d645b8',	null,	'https://mvelebova.wordpress.com/feed',	'custom',	'8f37202d-438e-4996-8378-b781cf936029'),
('2022-11-13 20:21:44.664241+00',	null,	'f76629c5-a070-4bbc-9918-64beaea48848',	'https://veronikabatelkova.cz',	'https://veronikabatelkova.cz/feed',	'wordpress',	'327981ac-7186-409c-a4ea-7d11e8d11106');

insert into public.portfolio_posts (created_at, title, url, description, published_at, portfolio_id) values 
('2022-11-14 11:45:14.111636+00',	'Munichallenge 1',	'https://veronikabatelkova.cz/blog/munichallenge/', 'Na jeden akademický rok jsem se stala jednou z tváří Masarykovy univerzity, a to jako ambassadorka kampaně pro uchazeče o studium #MUNICHALLENGE. Nahlédla jsem pod pokličku marketingové strategie, zúčastnila se profesionálního focení a natáčení reklamního spotu a tvořila jsem příspěvky na sociální sítě. To vše pod vedením Lucie Mertové z Media Age.  Spolupráce na tomto [&#8230;]',	'2022-01-28 12:47:56+00',	'327981ac-7186-409c-a4ea-7d11e8d11106'),
('2022-11-14 11:45:14.111636+00',	'Munichallenge 2',	'https://veronikabatelkova.cz/blog/neco/', 'Na jeden akademický rok jsem se stala jednou z tváří Masarykovy univerzity, a to jako ambassadorka kampaně pro uchazeče o studium #MUNICHALLENGE. Nahlédla jsem pod pokličku marketingové strategie, zúčastnila se profesionálního focení a natáčení reklamního spotu a tvořila jsem příspěvky na sociální sítě. To vše pod vedením Lucie Mertové z Media Age.  Spolupráce na tomto [&#8230;]',	'2022-01-28 12:47:56+00',	'327981ac-7186-409c-a4ea-7d11e8d11106'),
('2022-11-14 11:45:14.111636+00',	'Munichallenge 3',	'https://veronikabatelkova.cz/blog/ahoj/', 'Na jeden akademický rok jsem se stala jednou z tváří Masarykovy univerzity, a to jako ambassadorka kampaně pro uchazeče o studium #MUNICHALLENGE. Nahlédla jsem pod pokličku marketingové strategie, zúčastnila se profesionálního focení a natáčení reklamního spotu a tvořila jsem příspěvky na sociální sítě. To vše pod vedením Lucie Mertové z Media Age.  Spolupráce na tomto [&#8230;]',	'2022-01-28 12:47:56+00',	'327981ac-7186-409c-a4ea-7d11e8d11106'),
('2022-11-14 11:45:14.111636+00',	'Munichallenge 4',	'https://veronikabatelkova.cz/blog/test/', 'Na jeden akademický rok jsem se stala jednou z tváří Masarykovy univerzity, a to jako ambassadorka kampaně pro uchazeče o studium #MUNICHALLENGE. Nahlédla jsem pod pokličku marketingové strategie, zúčastnila se profesionálního focení a natáčení reklamního spotu a tvořila jsem příspěvky na sociální sítě. To vše pod vedením Lucie Mertové z Media Age.  Spolupráce na tomto [&#8230;]',	'2022-01-28 12:47:56+00',	'327981ac-7186-409c-a4ea-7d11e8d11106'),
('2022-11-14 11:45:14.111636+00',	'Munichallenge 5',	'https://veronikabatelkova.cz/blog/necoco/', 'Na jeden akademický rok jsem se stala jednou z tváří Masarykovy univerzity, a to jako ambassadorka kampaně pro uchazeče o studium #MUNICHALLENGE. Nahlédla jsem pod pokličku marketingové strategie, zúčastnila se profesionálního focení a natáčení reklamního spotu a tvořila jsem příspěvky na sociální sítě. To vše pod vedením Lucie Mertové z Media Age.  Spolupráce na tomto [&#8230;]',	'2022-01-28 12:47:56+00',	'327981ac-7186-409c-a4ea-7d11e8d11106'),
('2022-11-14 11:45:14.111636+00',	'Munichallenge 6',	'https://veronikabatelkova.cz/blog/dalsi/', 'Na jeden akademický rok jsem se stala jednou z tváří Masarykovy univerzity, a to jako ambassadorka kampaně pro uchazeče o studium #MUNICHALLENGE. Nahlédla jsem pod pokličku marketingové strategie, zúčastnila se profesionálního focení a natáčení reklamního spotu a tvořila jsem příspěvky na sociální sítě. To vše pod vedením Lucie Mertové z Media Age.  Spolupráce na tomto [&#8230;]',	'2022-01-28 12:47:56+00',	'327981ac-7186-409c-a4ea-7d11e8d11106'),
('2022-11-14 11:45:14.111636+00',	'Munichallenge 7',	'https://veronikabatelkova.cz/blog/testujeme/', 'Na jeden akademický rok jsem se stala jednou z tváří Masarykovy univerzity, a to jako ambassadorka kampaně pro uchazeče o studium #MUNICHALLENGE. Nahlédla jsem pod pokličku marketingové strategie, zúčastnila se profesionálního focení a natáčení reklamního spotu a tvořila jsem příspěvky na sociální sítě. To vše pod vedením Lucie Mertové z Media Age.  Spolupráce na tomto [&#8230;]',	'2022-01-28 12:47:56+00',	'327981ac-7186-409c-a4ea-7d11e8d11106'),
('2022-11-14 11:45:14.111636+00',	'Munichallenge 8',	'https://veronikabatelkova.cz/blog/to/', 'Na jeden akademický rok jsem se stala jednou z tváří Masarykovy univerzity, a to jako ambassadorka kampaně pro uchazeče o studium #MUNICHALLENGE. Nahlédla jsem pod pokličku marketingové strategie, zúčastnila se profesionálního focení a natáčení reklamního spotu a tvořila jsem příspěvky na sociální sítě. To vše pod vedením Lucie Mertové z Media Age.  Spolupráce na tomto [&#8230;]',	'2022-01-28 12:47:56+00',	'327981ac-7186-409c-a4ea-7d11e8d11106');