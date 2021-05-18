create table if not exists fifa."Card"
(
	card_id serial not null
		constraint card_pk
			primary key,
	player_id integer
		constraint card_player_player_id_fk
			references fifa."Player",
	club_id integer
		constraint card_club_club_id_fk
			references fifa."Club",
	player_rating integer,
	pace_rating integer,
	defence_rating integer,
	shoot_rating integer,
	pass_rating integer
);

alter table fifa."Card" owner to postgres;

create unique index if not exists card_card_id_uindex
	on fifa."Card" (card_id);

create unique index if not exists card_player_id_uindex
	on fifa."Card" (player_id);

---------------------------------------

create table if not exists fifa."Club"
(
	club_id serial not null
		constraint club_pk
			primary key,
	club_nm varchar(100),
	city_club_nm varchar(50),
	sponsor_id integer
		constraint club_sponsor_sponsor_id_fk
			references fifa."Sponsor",
	league_id integer
		constraint club_league_league_id_fk
			references fifa."League"
);

alter table fifa."Club" owner to postgres;

create unique index if not exists club_club_id_uindex
	on fifa."Club" (club_id);

---------------------------------------

create table if not exists fifa."Club rating"
(
	rating_id serial not null
		constraint "club rating_pk"
			primary key,
	club_id integer
		constraint "club rating_club_club_id_fk"
			references fifa."Club",
	league_id integer
		constraint "club rating_league_league_id_fk"
			references fifa."League",
	rating numeric(4,2)
);

alter table fifa."Club rating" owner to postgres;

create unique index if not exists "club rating_rating_id_uindex"
	on fifa."Club rating" (rating_id);

create unique index if not exists "club rating_club_id_uindex"
	on fifa."Club rating" (club_id);

create unique index if not exists "club rating_league_id_uindex"
	on fifa."Club rating" (league_id);

---------------------------------------

create table if not exists fifa."Coach"
(
	coach_id serial not null
		constraint coach_pk
			primary key,
	club_id integer
		constraint coach_club_club_id_fk
			references fifa."Club",
	coach_nm varchar(100)
);

alter table fifa."Coach" owner to postgres;

create unique index if not exists coach_coach_id_uindex
	on fifa."Coach" (coach_id);

create unique index if not exists coach_club_id_uindex
	on fifa."Coach" (club_id);

---------------------------------------

create table if not exists fifa."League"
(
	league_id serial not null
		constraint league_pk
			primary key,
	sponsor_id integer
		constraint league_sponsor_sponsor_id_fk
			references fifa."Sponsor",
	league_nm varchar(100),
	country_league_nm varchar(50)
);

alter table fifa."League" owner to postgres;

create unique index if not exists league_league_id_uindex
	on fifa."League" (league_id);

---------------------------------------

create table if not exists fifa."Player"
(
	player_id serial not null
		constraint player_pk
			primary key,
	player_nm varchar(100),
	age_player integer,
	sponsor_id integer
		constraint player_sponsor_sponsor_id_fk
			references fifa."Sponsor"
);

alter table fifa."Player" owner to postgres;

create unique index if not exists player_player_id_uindex
	on fifa."Player" (player_id);

---------------------------------------

create table if not exists fifa."Sponsor"
(
	sponsor_id serial not null
		constraint sponsor_pk
			primary key,
	sponsor_nm varchar(100)
);

alter table fifa."Sponsor" owner to postgres;

create unique index if not exists sponsor_sponsor_id_uindex
	on fifa."Sponsor" (sponsor_id);

---------------------------------------

create table if not exists fifa."Stadium"
(
	stadium_id serial not null
		constraint stadium_pk
			primary key,
	club_id integer
		constraint stadium_club_club_id_fk
			references fifa."Club",
	sponsor_id integer
		constraint stadium_sponsor_sponsor_id_fk
			references fifa."Sponsor",
	stadium_nm varchar(100)
);

alter table fifa."Stadium" owner to postgres;

create unique index if not exists stadium_stadium_id_uindex
	on fifa."Stadium" (stadium_id);

create unique index if not exists stadium_club_id_uindex
	on fifa."Stadium" (club_id);

---------------------------------------

create table if not exists fifa."Transfer"
(
	transfer_id serial not null
		constraint transfer_pk
			primary key,
	player_id integer
		constraint transfer_player_player_id_fk
			references fifa."Player",
	club_old_id integer,
	club_new_id integer,
	price_amt integer
);

alter table fifa."Transfer" owner to postgres;

create unique index if not exists transfer_transfer_id_uindex
	on fifa."Transfer" (transfer_id);

---------------------------------------

----- INSERT -----

INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (9, 2, 3, 93, 85, 38, 92, 91);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (10, 3, 8, 92, 89, 35, 93, 81);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (11, 4, 13, 91, 76, 64, 86, 93);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (12, 5, 20, 91, 78, 43, 91, 78);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (13, 6, 23, 91, 91, 36, 85, 86);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (14, 7, 4, 91, 87, 50, 92, 78);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (15, 8, 14, 90, 76, 91, 60, 71);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (16, 9, 14, 90, 93, 45, 86, 81);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (17, 10, 14, 90, 94, 44, 85, 80);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (18, 11, 14, 90, 86, 52, 86, 81);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (19, 12, 23, 90, 96, 39, 86, 78);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (20, 13, 3, 90, 88, 43, 85, 88);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (21, 14, 13, 89, 78, 33, 90, 77);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (22, 15, 5, 89, 71, 88, 70, 76);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (23, 16, 20, 89, 87, 56, 87, 91);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (24, 17, 5, 89, 74, 40, 85, 81);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (25, 18, 5, 89, 65, 86, 73, 76);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (26, 19, 5, 89, 84, 46, 89, 74);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (27, 20, 15, 88, 68, 47, 91, 80);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (28, 21, 13, 88, 93, 45, 81, 79);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (29, 22, 13, 88, 86, 64, 82, 93);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (30, 23, 16, 88, 77, 86, 66, 76);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (31, 24, 20, 88, 71, 81, 72, 86);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (32, 25, 5, 88, 54, 71, 81, 91);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (33, 26, 5, 88, 88, 35, 82, 83);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (34, 27, 8, 88, 85, 43, 85, 84);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (35, 28, 9, 88, 88, 53, 85, 73);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (36, 29, 10, 88, 75, 89, 28, 55);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (37, 30, 5, 87, 73, 71, 76, 89);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (38, 31, 11, 87, 84, 39, 88, 67);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (39, 32, 17, 87, 93, 38, 86, 75);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (40, 33, 18, 87, 77, 68, 83, 88);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (41, 34, 23, 87, 83, 48, 81, 85);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (42, 35, 21, 87, 83, 37, 74, 81);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (43, 36, 15, 87, 88, 43, 86, 80);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (44, 37, 4, 87, 70, 51, 90, 82);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (45, 38, 14, 87, 80, 80, 66, 87);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (46, 39, 3, 87, 79, 57, 85, 84);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (47, 40, 13, 87, 63, 88, 50, 72);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (48, 41, 8, 87, 86, 49, 82, 73);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (49, 42, 14, 87, 77, 61, 80, 81);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (50, 43, 13, 87, 81, 51, 77, 83);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (51, 44, 14, 87, 67, 85, 69, 79);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (52, 45, 23, 87, 90, 54, 81, 75);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (53, 46, 3, 87, 42, 83, 62, 80);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (54, 47, 8, 87, 66, 90, 46, 58);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (55, 48, 15, 87, 89, 64, 82, 68);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (56, 49, 20, 86, 68, 56, 82, 82);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (57, 50, 19, 86, 88, 55, 85, 66);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (58, 51, 18, 86, 73, 66, 81, 86);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (59, 52, 23, 86, 64, 79, 60, 85);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (60, 53, 3, 86, 57, 86, 61, 71);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (61, 54, 6, 86, 90, 39, 79, 84);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (62, 55, 14, 86, 65, 81, 74, 84);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (63, 56, 5, 86, 80, 82, 54, 78);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (64, 57, 21, 86, 58, 89, 58, 77);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (65, 58, 7, 86, 64, 52, 74, 88);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (66, 59, 18, 86, 88, 57, 81, 78);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (67, 60, 5, 86, 82, 87, 49, 64);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (68, 61, 3, 86, 88, 78, 69, 81);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (69, 63, 14, 87, 83, 81, 62, 80);
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (70, 62, 22, 86, 80, 50, 86, 85);

---------------------------------------

INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (3, 'Барселона', 'Барселона', 5, 1);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (4, 'Атлетико', 'Мадрид', 16, 1);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (5, 'Реал М', 'Мадрид', 6, 1);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (6, 'Севилья', 'Севилья', 3, 1);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (7, 'Реал С', 'Сосьедад', 25, 1);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (8, 'Ювентус', 'Турин', 3, 2);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (9, 'Интер', 'Милан', 5, 2);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (10, 'Наполи', 'Неаполь', 4, 2);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (11, 'Лацио', 'Рим', 2, 2);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (12, 'Аталанта', 'Бергамо', 1, 2);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (13, 'Манчестер Сити', 'Манчестер', 12, 3);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (14, 'Ливерпуль', 'Ливерпуль', 8, 3);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (15, 'Тоттенхэм', 'Лондон', 17, 3);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (16, 'Челси', 'Лондон', 18, 3);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (17, 'Арсенал', 'Лондон', 11, 3);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (18, 'Манчестер Юнайтед', 'Манчестер', 20, 3);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (19, 'Лестер', 'Лестер', 21, 3);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (20, 'Бавария', 'Мюнхен', 9, 4);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (23, 'ПСЖ', 'Париж', 24, 5);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (22, 'Боруссия М', 'Мёнхенгладбах', 3, 4);
INSERT INTO fifa."Club" (club_id, club_nm, city_club_nm, sponsor_id, league_id) VALUES (21, 'Боруссия Д', 'Дортмунд', 4, 4);

---------------------------------------

INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (1, 3, 'Рональд Куман');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (2, 4, 'Диего Симеоне');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (3, 5, 'Зинедин Зидан');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (4, 8, 'Андреа Пирло');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (5, 9, 'Антонио Конте');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (6, 10, 'Дженнаро Гаттузо');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (7, 11, 'Фелиппе Индзаги');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (8, 12, 'Джан Пьеро Гасперини');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (9, 13, 'Хосеп Гвардиола');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (10, 14, 'Юрген Клопп');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (11, 16, 'Томас Тухель');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (12, 17, 'Микель Артета');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (13, 18, 'Оле Гуннар Сульшер');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (14, 19, 'Брэндон Роджерс');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (15, 20, 'Ханси Флик');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (16, 22, 'Марко Розе');
INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (17, 23, 'Маурисио Почеттино');

---------------------------------------

INSERT INTO fifa."League" (league_id, sponsor_id, league_nm, country_league_nm) VALUES (1, 23, 'BBVA', 'Испания');
INSERT INTO fifa."League" (league_id, sponsor_id, league_nm, country_league_nm) VALUES (2, 19, 'Serie A', 'Италия');
INSERT INTO fifa."League" (league_id, sponsor_id, league_nm, country_league_nm) VALUES (3, 11, 'APL', 'Англия');
INSERT INTO fifa."League" (league_id, sponsor_id, league_nm, country_league_nm) VALUES (4, 9, 'Bundesliga', 'Германия');
INSERT INTO fifa."League" (league_id, sponsor_id, league_nm, country_league_nm) VALUES (5, 24, 'Ligue 1', 'Франция');

---------------------------------------

INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (3, 'Криштиану Роналду', 36, 3);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (2, 'Лионель Месси', 33, 4);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (63, 'Эндрю Робертсон', 25, 8);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (60, 'Рафаэль Варан', 27, 6);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (59, 'Давид де Хеа', 30, 20);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (23, 'Нголо Канте', 30, 18);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (54, 'Алехандро Гомес', 33, 22);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (30, 'Лука Модрич', 35, 6);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (45, 'Кейлор Навас', 34, 3);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (47, 'Джорджио Кьеллини', 34, 4);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (26, 'Эден Азар', 29, 6);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (13, 'Марк-Андре тер Штеген', 29, 5);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (40, 'Эмерик Ляпорт', 26, 12);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (25, 'Тони Кроос', 30, 6);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (37, 'Луис Суарез', 34, 16);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (51, 'Поль Погба', 27, 20);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (34, 'Анхель ди Мария', 33, 3);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (35, 'Джейдон Санчо', 20, 3);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (18, 'Каземиро', 28, 6);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (19, 'Тибо Куртуа', 28, 6);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (10, 'Садио Мане', 28, 8);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (11, 'Алиссон Беккер', 28, 8);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (8, 'Вирджил ван Дайк', 29, 8);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (9, 'Мохамед Салах', 28, 8);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (6, 'Неймар Жуниор', 29, 3);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (43, 'Бернарду Силва', 26, 12);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (28, 'Самир Ханданович', 36, 3);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (27, 'Пауло Дибала', 27, 4);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (32, 'Пьер-Эмерик Обамеянг', 31, 11);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (41, 'Войцех Щенсны', 30, 4);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (49, 'Томас Мюллер', 31, 9);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (15, 'Серхио Рамос', 34, 6);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (17, 'Карим Бензема', 33, 6);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (7, 'Ян Облак', 28, 16);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (12, 'Килиан Мбаппе', 22, 3);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (61, 'Жорди Альба', 32, 8);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (24, 'Йозуа Киммих', 25, 12);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (48, 'Уло Льорис', 34, 17);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (22, 'Эдерсон', 26, 12);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (31, 'Чиро Иммобиле', 31, 19);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (33, 'Бруно Фернандеш', 26, 20);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (21, 'Рахим Стерлинг', 26, 12);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (57, 'Матс Хуммельс', 32, 4);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (53, 'Жерар Пике', 32, 5);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (14, 'Серхио кун Агуэро', 32, 12);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (36, 'Хён Мин Сон', 28, 17);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (46, 'Серхио Бускетс', 32, 5);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (55, 'Джордан Хендерсон', 30, 8);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (56, 'Дани Карвахаль', 28, 6);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (4, 'Кевин де Брюйне', 29, 12);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (16, 'Мануэль Нойер', 34, 9);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (39, 'Антуан Гризманн', 30, 5);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (44, 'Фабиньо', 27, 8);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (42, 'Роберто Фирмино', 29, 8);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (29, 'Калиду Кулибали', 29, 15);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (20, 'Харри Кейн', 27, 17);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (62, 'Янн Зоммер', 32, 4);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (38, 'Трент Александр-Арнольд', 22, 8);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (58, 'Давид Сильва', 35, 3);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (50, 'Джейми Варди', 34, 21);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (5, 'Роберт Левандовски', 32, 9);
INSERT INTO fifa."Player" (player_id, player_nm, age_player, sponsor_id) VALUES (52, 'Марко Вератти', 28, 3);

---------------------------------------

INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (1, 'Coca-Cola Company');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (2, 'Reebok');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (3, 'Nike');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (4, 'Adidas');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (5, 'Qatar Foudation');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (6, 'Bwin');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (7, 'AON');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (8, 'Standard Chartered');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (9, 'Deutsche Telekom');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (10, 'Samsung');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (11, 'Fly Emirates');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (12, 'Etihad');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (13, 'Pirelli');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (14, 'Puma');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (15, 'Kappa');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (16, 'Plus500');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (17, 'AIA');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (18, 'Yokohama');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (19, 'Macron');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (20, 'Chevrolet');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (21, 'King Power');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (22, 'Joma');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (23, 'BBVA');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (24, 'Uber');
INSERT INTO fifa."Sponsor" (sponsor_id, sponsor_nm) VALUES (25, 'Qbao');

---------------------------------------

INSERT INTO fifa."Transfer" (transfer_id, player_id, club_old_id, club_new_id, price_amt) VALUES (1, 37, 3, 4, 6);
INSERT INTO fifa."Transfer" (transfer_id, player_id, club_old_id, club_new_id, price_amt) VALUES (2, 6, 3, 23, 222);
INSERT INTO fifa."Transfer" (transfer_id, player_id, club_old_id, club_new_id, price_amt) VALUES (3, 19, 16, 5, 20);
INSERT INTO fifa."Transfer" (transfer_id, player_id, club_old_id, club_new_id, price_amt) VALUES (4, 26, 16, 5, 100);
INSERT INTO fifa."Transfer" (transfer_id, player_id, club_old_id, club_new_id, price_amt) VALUES (5, 23, 19, 16, 40);
INSERT INTO fifa."Transfer" (transfer_id, player_id, club_old_id, club_new_id, price_amt) VALUES (6, 39, 4, 3, 100);
INSERT INTO fifa."Transfer" (transfer_id, player_id, club_old_id, club_new_id, price_amt) VALUES (7, 54, 12, 6, 10);

---------------------------------------

INSERT INTO fifa."Stadium" (stadium_id, club_id, sponsor_id, stadium_nm) VALUES (1, 3, 5, 'Камп Ноу');
INSERT INTO fifa."Stadium" (stadium_id, club_id, sponsor_id, stadium_nm) VALUES (2, 5, 6, 'Сантьяго Бернабеу');
INSERT INTO fifa."Stadium" (stadium_id, club_id, sponsor_id, stadium_nm) VALUES (3, 18, 20, 'Олд Траффорд');
INSERT INTO fifa."Stadium" (stadium_id, club_id, sponsor_id, stadium_nm) VALUES (4, 20, 9, 'Альянц Арена');
INSERT INTO fifa."Stadium" (stadium_id, club_id, sponsor_id, stadium_nm) VALUES (5, 4, 16, 'Ванда Метрополитано');
INSERT INTO fifa."Stadium" (stadium_id, club_id, sponsor_id, stadium_nm) VALUES (6, 15, 17, 'Тоттенхэм Хотспур');
INSERT INTO fifa."Stadium" (stadium_id, club_id, sponsor_id, stadium_nm) VALUES (7, 10, 4, 'Диего Армандо Марадона');

---------------------------------------

-----SELECTS-----

-----1) в результате этого запроса получаем имя игрока и его спонсора -----

SELECT pl.player_nm "Имя игрока", sp.sponsor_nm "Имя спонсора"
FROM fifa."Player" pl,
     fifa."Sponsor" sp
WHERE pl.sponsor_id = sp.sponsor_id;

-----2) в результате этого запроса получаем имена игроков с рейтингом 90+, строчки отсортированы по убыванию рейтинга -----

SELECT pl.player_nm "Имя игрока", cd.player_rating "Рейтинг игрока"
FROM fifa."Player" pl,
     fifa."Card" cd
WHERE pl.player_id = cd.player_id
AND cd.player_rating >= 90
ORDER BY cd.player_rating DESC;

-----3) в результате этого запроса получаем сначала имена игроков и их предыдущие клубы, -----
----- а потом имена игроков и клубы, в которые игроки перешли -----

SELECT pl.player_nm, cl.club_nm
FROM fifa."Transfer" tf,
     fifa."Player" pl,
     fifa."Club" cl
WHERE tf.player_id = pl.player_id
AND tf.club_old_id = cl.club_id;

SELECT pl.player_nm, cl.club_nm
FROM fifa."Transfer" tf,
     fifa."Player" pl,
     fifa."Club" cl
WHERE tf.player_id = pl.player_id
AND tf.club_new_id = cl.club_id;

-----4) в результате этого запроса получаем названия клубов, у которых есть хотя бы 3 -----
----- игрока со скоростью между 70 и 90. Строчки отсортированы по убыванию количества игроков со скоростью между 70 и 90 -----

SELECT cl.club_nm, count(cd.card_id)
FROM fifa."Card" cd,
     fifa."Club" cl
WHERE cd.pace_rating BETWEEN 70 AND 90
AND cd.club_id = cl.club_id
GROUP BY cl.club_nm
HAVING count(cd.card_id) > 2
ORDER BY count(cd.card_id) DESC;

-----5) в результате этого запроса получаем названия стадионов, клубов и спонсоров клубов из Испании -----

SELECT st.stadium_nm "Название стадиона", cl.club_nm "Название клуба", sp.sponsor_nm "Спонсор"
FROM fifa."Stadium" st,
     fifa."Club" cl,
     fifa."League" lg,
     fifa."Sponsor" sp
WHERE st.sponsor_id = sp.sponsor_id
AND st.club_id = cl.club_id
AND cl.league_id = lg.league_id
AND lg.country_league_nm = 'Испания';

-----CRUD-queries-----

----- сделаем первый CRUD-запрос -----

----- посчитаем количество карточек в таблице fifa."Card" -----
SELECT count(*)
from fifa."Card";

----- изменим карточку с номером 9 -----
UPDATE fifa."Card" SET player_id = 2, club_id = 3, player_rating = 93, pace_rating = 85, defence_rating = 38, shoot_rating = 92, pass_rating = 91 WHERE card_id = 9;

----- удалим карточку с номером 11 -----
DELETE FROM fifa."Card"
WHERE card_id = 11;

----- вставим эту карточку снова -----
INSERT INTO fifa."Card" (card_id, player_id, club_id, player_rating, pace_rating, defence_rating, shoot_rating, pass_rating) VALUES (11, 4, 13, 91, 76, 64, 86, 93);

----- сделаем второй CRUD-запрос -----

----- добавим нового тренера -----

INSERT INTO fifa."Coach" (coach_id, club_id, coach_nm) VALUES (default, 7, 'Дмитрий Полозов');

----- посмотрим на нового тренера -----
SELECT ch.coach_nm
FROM fifa."Coach" as ch
WHERE club_id = 7;

----- изменим нового тренера -----
UPDATE fifa."Coach" SET coach_nm = 'Александр Халяпов' WHERE club_id = 7;

----- посмотрим еще раз на нового тренера -----
SELECT ch.coach_nm
FROM fifa."Coach" as ch
WHERE club_id = 7;

----- удалим созданного тренера -----
DELETE FROM fifa."Coach"
WHERE club_id = 7;

-----views-----

-----сначала добавим тренерам номера телефонов

ALTER TABLE fifa."Coach"
ADD telephone_nm varchar(10);

UPDATE fifa."Coach" SET telephone_nm = '492548934' WHERE coach_nm = 'Рональд Куман';
UPDATE fifa."Coach" SET telephone_nm = '547598685' WHERE coach_nm = 'Диего Симеоне';
UPDATE fifa."Coach" SET telephone_nm = '348912579' WHERE coach_nm = 'Зинедин Зидан';
UPDATE fifa."Coach" SET telephone_nm = '845395659' WHERE coach_nm = 'Андреа Пирло';
UPDATE fifa."Coach" SET telephone_nm = '544667575' WHERE coach_nm = 'Антонио Конте';
UPDATE fifa."Coach" SET telephone_nm = '354885894' WHERE coach_nm = 'Дженнаро Гаттузо';
UPDATE fifa."Coach" SET telephone_nm = '458897393' WHERE coach_nm = 'Фелиппе Индзаги';
UPDATE fifa."Coach" SET telephone_nm = '456556765' WHERE coach_nm = 'Джан Пьеро Гасперини';
UPDATE fifa."Coach" SET telephone_nm = '543665494' WHERE coach_nm = 'Хосеп Гвардиола';
UPDATE fifa."Coach" SET telephone_nm = '876844754' WHERE coach_nm = 'Юрген Клопп';
UPDATE fifa."Coach" SET telephone_nm = '142543546' WHERE coach_nm = 'Томас Тухель';
UPDATE fifa."Coach" SET telephone_nm = '142254345' WHERE coach_nm = 'Микель Артета';
UPDATE fifa."Coach" SET telephone_nm = '978675534' WHERE coach_nm = 'Оле Гуннар Сульшер';
UPDATE fifa."Coach" SET telephone_nm = '846376435' WHERE coach_nm = 'Брэндон Роджерс';
UPDATE fifa."Coach" SET telephone_nm = '233576784' WHERE coach_nm = 'Ханси Флик';
UPDATE fifa."Coach" SET telephone_nm = '489675806' WHERE coach_nm = 'Марко Розе';
UPDATE fifa."Coach" SET telephone_nm = '897676879' WHERE coach_nm = 'Маурисио Почеттино';

-----теперь сделаем вью на имя тренера и на его телефон и скроем часть цифр-----

CREATE OR REPLACE VIEW fifa.v_coaches
AS SELECT coach_nm,
REPLACE(REPLACE(REPLACE(REPLACE(telephone_nm, '8', '*'), '1', '*'), '4', '*'), '5', '*')
FROM fifa."Coach";

SELECT *
FROM fifa.v_coaches;

-----сделаем оставшиеся представления по каждой таблице-----

-----Card-----

CREATE OR REPLACE VIEW fifa.v_cards_from_england
AS SELECT player_id, club_id
FROM fifa."Card"
WHERE club_id BETWEEN 13 AND 19
ORDER BY club_id ASC;

SELECT *
FROM fifa.v_cards_from_england;

-----Club-----

CREATE OR REPLACE VIEW fifa.v_clubs_with_sport_sponsor
AS SELECT club_nm, sponsor_id
FROM fifa."Club"
WHERE sponsor_id IN (2, 3, 4, 14, 15)
ORDER BY sponsor_id ASC;

SELECT *
FROM fifa.v_clubs_with_sport_sponsor;

-----League-----

CREATE OR REPLACE VIEW fifa.v_leagues_with_long_name
AS SELECT league_nm, country_league_nm
FROM fifa."League"
WHERE league_nm LIKE '_____%';

SELECT *
FROM fifa.v_leagues_with_long_name;

-----Player-----

CREATE OR REPLACE VIEW fifa.v_young_players
AS SELECT player_nm, age_player
FROM fifa."Player"
WHERE age_player < 30
ORDER BY age_player ASC;

SELECT *
FROM fifa.v_young_players;

-----Sponsor-----

CREATE OR REPLACE VIEW fifa.v_sponsors_with_a
AS SELECT sponsor_id, sponsor_nm
FROM fifa."Sponsor"
WHERE sponsor_nm LIKE '%a%';

SELECT *
FROM fifa.v_sponsors_with_a;

-----Stadium-----

CREATE OR REPLACE VIEW fifa.v_stadiums_in_spain
AS SELECT stadium_nm, club_id
FROM fifa."Stadium"
WHERE club_id BETWEEN 3 AND 7;

SELECT *
FROM fifa.v_stadiums_in_spain;

-----Transfer-----

CREATE OR REPLACE VIEW fifa.v_expensive_transfers
AS SELECT player_id, price_amt
FROM fifa."Transfer"
WHERE price_amt >= 100
ORDER BY price_amt DESC;

SELECT *
FROM fifa.v_expensive_transfers;

-----Views with join-----

----- создадим вью, которая будет отображать полную характеристику игрока -----

CREATE OR REPLACE VIEW fifa.v_player_characteristic
AS SELECT pl.player_nm "Имя игрока", pl.age_player "Возраст игрока",
          cd.player_rating "Рейтинг игрока", sp.sponsor_nm "Спонсор игрока",
          cl.club_nm "Название клуба", lg.league_nm "Название лиги"
FROM fifa."Player" pl
INNER JOIN fifa."Card" cd
ON pl.player_id = cd.player_id
INNER JOIN fifa."Club" cl
ON cd.club_id = cl.club_id
INNER JOIN fifa."League" lg
ON cl.league_id = lg.league_id
INNER JOIN fifa."Sponsor" sp
ON sp.sponsor_id = pl.sponsor_id
ORDER BY cd.player_rating DESC;

SELECT * 
FROM fifa.v_player_characteristic;

----- создадим вью, которая будет отображать, какая лига самая богатая -----

CREATE OR REPLACE VIEW fifa.v_rich_leagues
AS SELECT lg.league_nm "Навание лиги", sum(tr.price_amt) Сумма
FROM fifa."Transfer" tr
INNER JOIN fifa."Club" cl
ON cl.club_id = tr.club_new_id
INNER JOIN fifa."League" lg
ON lg.league_id = cl.league_id
GROUP BY lg.league_id, lg.league_nm
ORDER BY Сумма DESC;

SELECT * FROM fifa.v_rich_leagues;

-----Triggers-----

----- первый триггер считает средний рейтинг игроков клуба при добавлении последнего в таблицу "Club rating" -----

CREATE OR REPLACE FUNCTION fifa.count_rating()
RETURNS TRIGGER AS $$
    DECLARE avg_rating DECIMAL(4, 2);
    BEGIN
        SELECT avg(cd.player_rating) INTO avg_rating
        FROM fifa."Card" cd
        WHERE new.club_id = cd.club_id
        GROUP BY cd.club_id;

        UPDATE fifa."Club rating"
        SET rating = avg_rating
        WHERE new.club_id = club_id;

        RETURN new;
    END;
    $$ LANGUAGE plpgsql;

CREATE TRIGGER club_rating_tr
    AFTER INSERT
    ON fifa."Club rating"
    FOR EACH ROW
EXECUTE PROCEDURE fifa.count_rating();

----- проверим работоспособность на нескоских инсертах -----

INSERT INTO fifa."Club rating" (rating_id, club_id, league_id) VALUES (17, 5, 1);
INSERT INTO fifa."Club rating" (rating_id, club_id, league_id) VALUES (20, 3, 1);
INSERT INTO fifa."Club rating" (rating_id, club_id, league_id) VALUES (21, 22, 4);

----- второй триггер меняет club_id в таблице "Card" у игроков, которые переходят в другой клуб. -----
----- О переходе мы узнаем из таблицы "Трансфер" -----

CREATE OR REPLACE FUNCTION fifa.change_club_id()
RETURNS TRIGGER AS $$
    DECLARE updated_club_id INT;
    BEGIN
        SELECT new.club_new_id INTO updated_club_id;

        UPDATE fifa."Card"
        SET club_id = updated_club_id
        WHERE player_id = new.player_id;

        RETURN new;
    END;
    $$ LANGUAGE plpgsql;

CREATE TRIGGER change_club_id_where_transfer
    AFTER INSERT
    ON fifa."Transfer"
    FOR EACH ROW
EXECUTE PROCEDURE fifa.change_club_id();

----- продадим Роналду обратно в Реал за 1111 млн. евро и проверим, изменился ли club_id в таблице "Card" -----

INSERT INTO fifa."Transfer" (transfer_id, player_id, club_old_id, club_new_id, price_amt) VALUES (9, 3, 8, 5, 1111);

-----Function-----

----- сделаем еще одну процедуру, которая будет выводить имена игроков из нужного нам клуба -----

CREATE OR REPLACE FUNCTION fifa.get_players_from_club(club VARCHAR(100))
RETURNS TABLE(player_nm VARCHAR(100))
LANGUAGE SQL AS $$
    SELECT pl.player_nm
    FROM fifa."Club" cl,
         fifa."Player" pl,
         fifa."Card" cd
    WHERE cl.club_nm = club
    AND cd.player_id = pl.player_id
    AND cd.club_id = cl.club_id;
$$;

----- проверим работу функции

SELECT * FROM fifa.get_players_from_club('Бавария');
