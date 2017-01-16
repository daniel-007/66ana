CREATE TABLE dy_user (
  id SERIAL,
  uid INTEGER,
  nickname VARCHAR(120),
  level INTEGER,
  strength INTEGER,
  gift INTEGER,
  platform_privilege INTEGER,
  deserve_level INTEGER,
  deserve_count INTEGER,
  bdeserve_level INTEGER,
  create_time TIMESTAMPTZ,
  last_update TIMESTAMPTZ,
  first_appeared_room_id INTEGER,
  last_appeared_room_id INTEGER
);

CREATE TABLE dy_user_room (
  id SERIAL,
  user_id INTEGER,
  room_id INTEGER,
  room_privilege INTEGER
);

CREATE TABLE dy_room (
  id SERIAL,
  rid INTEGER,
  cate_id INTEGER,
  name VARCHAR(255),
  status INTEGER,
  thumb VARCHAR(255),
  avatar VARCHAR(255),
  fans INTEGER,
  owner_name VARCHAR(120),
  last_live_time TIMESTAMPTZ,
  create_time TIMESTAMPTZ,
  last_update TIMESTAMPTZ
);

CREATE TABLE dy_cate (
  id SERIAL,
  cid INTEGER,
  game_name VARCHAR(32),
  short_name VARCHAR(16),
  game_url VARCHAR(120),
  game_src VARCHAR(255),
  game_icon VARCHAR(255),
  create_time TIMESTAMPTZ,
  last_update TIMESTAMPTZ
);

CREATE TABLE dy_gift_type (
  id SERIAL,
  room_id INTEGER,
  gid INTEGER,
  name VARCHAR(120),
  type INTEGER,
  price DECIMAL(7, 2),
  contribution INTEGER,
  intro VARCHAR(120),
  "desc" VARCHAR(120),
  himg VARCHAR(255),
  mimg VARCHAR(255),
  create_time TIMESTAMPTZ,
  last_update TIMESTAMPTZ
);

CREATE TABLE dy_danmu (
  id BIGSERIAL,
  cid INTEGER,
  user_id INTEGER,
  room_id INTEGER,
  content VARCHAR(255),
  color INTEGER,
  client INTEGER,
  create_time TIMESTAMPTZ
);

CREATE TABLE dy_gift (
  id BIGSERIAL,
  user_id INTEGER,
  room_id INTEGER,
  gift_type_id INTEGER,
  count INTEGER,
  hits INTEGER,
  gift_style VARCHAR(255),
  create_time TIMESTAMPTZ
);

CREATE TABLE dy_deserve (
  id BIGSERIAL,
  user_id INTEGER,
  room_id INTEGER,
  level INTEGER,
  count INTEGER,
  hits INTEGER,
  create_time TIMESTAMPTZ
);

CREATE TABLE dy_user_enter (
  id BIGSERIAL,
  user_id INTEGER,
  room_id INTEGER,
  create_time TIMESTAMPTZ
);

CREATE TABLE dy_super_danmu (
  id BIGSERIAL,
  sdid INTEGER,
  room_id INTEGER,
  jump_room_id INTEGER,
  content VARCHAR(255),
  create_time TIMESTAMPTZ
);
