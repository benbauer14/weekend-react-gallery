-- database: 'react_gallery'

CREATE TABLE gallery (
    id SERIAL PRIMARY KEY,
    path varchar(255),
    description varchar(255),
    likes varchar (4)
);

INSERT INTO gallery (path, description, likes) VALUES ( 'images/gazebo.jpg', 'Gazebo structure in the gardens of Versailles Palace.', 0);
INSERT INTO gallery (path, description, likes) VALUES ('images/irish_pagan_sculpture.jpg', 'Pagan sculpture at an Irish Heritage site.', 0 );
INSERT INTO gallery (path, description, likes) VALUES ('images/goat_small.jpg','Photo of a goat taken at Glacier National Park.',0);
INSERT INTO gallery (path, description, likes) VALUES ('/images/venus_mars_jupiter.png', 'The evening view from my home in Colorado. Venus is the bright star in the middle of the photo. Mars is the lower bright star to the left (10 oclock position). Jupiter is the bright star just above Mars.',4);
INSERT INTO gallery (path, description, likes) VALUES ('images/firey_sunset.jpg','A beautiful sunset taken from my porch at my house in Colorado.',2);
INSERT INTO gallery (path, description, likes) VALUES  ('images/max.jpg', 'My first dog, Max.',0);
INSERT INTO gallery (path, description, likes) VALUES ('images/saint_chappell.jpg','Interior and Rose of Sain Chappell in Paris, France.', 0);
INSERT INTO gallery (path, description, likes) VALUES ('images/park_near_louvre.jpg','A park just outside of the Musee Louvre, Paris, France.',1);
INSERT INTO gallery (path, description, likes) VALUES ('images/versailles_ceiling.jpg','One of the many ornate ceilings of Versailles.',0);
INSERT INTO gallery (path, description, likes) VALUES ('images/thomas_jefferson.jpg','Statue of Thomas Jefferson outside of the Musee Monmart, Paris, France.',0);
INSERT INTO gallery (path, description, likes) VALUES ('images/rodin_three_men.jpg','Rodin sculpture, Musee Rodin, Paris, France.',0);
INSERT INTO gallery (path, description, likes) VALUES ('images/rodin_woman.jpg','Rodin sculpture, Musee Rodin, Paris, France.',0);
INSERT INTO gallery (path, description, likes) VALUES ('images/royal_cottages_versailles.jpg','"Cottages" built for the Queen of France and her three closest friends. Versailles, France."',2);
INSERT INTO gallery (path, description, likes) VALUES ('images/gazebo.jpg','Marble gazebo in the gardens of Versailles, France.',3);
INSERT INTO gallery (path, description, likes) VALUES ('images/acting_stupid.jpg','Chad being a dork.',0);
INSERT INTO gallery (path, description, likes) VALUES  ('images/actual_restaurant.jpg','Another weird restaurant in Pristina.',0);
INSERT INTO gallery (path, description, likes) VALUES  ('images/album_cover.jpg','Slightly modified painting from El Paso Museum of Art.',0);
INSERT INTO gallery (path, description, likes) VALUES  ('alexander_the_great_square.jpg','Statue of Alexander the Great in Skopje, Macedonia.',0);
INSERT INTO gallery (path, description, likes) VALUES ('images/bad_neighbor.jpg','Moose that liked to hang out in my front yard in Colorado.', 0);
INSERT INTO gallery (path, description, likes) VALUES ('images/bald_barista.jpg','Owner of The Bald Barista Coffee Shop in Dublin. Yes, he has a tattoo of the shop logo on the back of his head.', 0);
INSERT INTO gallery (path, description, likes) VALUES ('images/best_steak.jpg','Three steaks stacked on a potato pancake-ish dish. Cost about $40 US in Skopje, Macedonia.',0);
INSERT INTO gallery (path, description, likes) VALUES ('images/birdseed_thief.jpg','Ground squirrel that liked to steal all of my birdseed.',0);
INSERT INTO gallery (path, description, likes) VALUES ('images/black_madonna.jpg','15th Century religious statue, referred to a "Black Madonna."',0);
INSERT INTO gallery (path, description, likes) VALUES ('images/black_madonna_2.jpg','15th Century religious statue, referred to a "Black Madonna."',0);
INSERT INTO gallery (path, description, likes) VALUES (  'images/bw_park_kuwait.jpg', 'Chad in a park in Kuwait City.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/cat_mouse_cathedral.jpg', 'Mummified cat and mouse carcass found in an organ pipe in Cathedral of Dublin, Ireland.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/chad_eiffel_tower.jpg', 'Chad in front of the Eiffel Tower in Paris, France.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/chairy_orchard.jpg', 'A "Chairy" orchard in Denton, Texas.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/colorado_road.jpg', 'Stretch of mountain road frequented by mouse and elk in Colorado.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/dpd_graduation.jpg', 'Graduation Day from Dallas Police Academy.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/dubai_cabbie.jpg', 'Very cool cab driver, who posed with my travel partner, Penny, in Dubai.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/dublin_bridge.jpg', 'Chad on a bridge in Central Dublin, Ireland.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ('images/fah_chad.jpg', 'Posing with comedy troupe, Foil Arms & Hog after a performance in Dublin, Ireland.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ('images/dublin_cathedral.jpg', 'Cathedral of Dublin, Ireland.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  '/images/fire_in_the_sky.jpg', 'Another gorgeous sunset from my front porch in Colorado.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/firey_sunset.jpg', 'Gorgeous sunset from my front porch in Colorado.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/gazebo.jpg', 'Gazebo structure in the gardens of Versailles Palace.', 0 );
INSERT INTO gallery (path, description, likes) VALUES ('images/guilded_fireplace.jpg', 'Ornate fireplace in Versailles Palace.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ('images/have_you_seen_this_man.jpg', 'The photo that will be shown should anything ever happen to me.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ('images/irish_pagan_sculpture.jpg', 'Pagan sculpture at an Irish Heritage site.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ('images/jane_gare_du_nord.jpg', 'Chad, or Jane, enjoying their coffee at the Gare Du Nord, Paris, France.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/job_openings.jpeg', 'Sign on a sewer cover: Now hiring Ninja Turtles, apply within.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/kabul_mountains.jpg', 'The northern view in Kabul, Afghanistan.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/kosovo_cookout.jpg', 'Open-fire cooking in Kosovo.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/locks_pont_neuf.jpg', 'Locks on a bridge near Pont Neuf, Paris, France.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/london_bridge.jpg', 'I checked. London Bridge has not fallen down.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/macchiato_burek.jpg', 'A macchiato and burek in Pristina, Kosovo. Cost about $4 total.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/max.jpg', 'My first dog, Max', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/mexican_ice_sculpture.jpg', 'The Mexico entry to the International Snow Sculpting Championships.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/mexican_ice_sculpture2.jpg', 'The Mexico entry to the International Snow Sculpting Championships.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/molly_malone.jpg', 'Sculpture of Molly Malone in Dublin, Ireland.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/montgomery_reservoir.jpg', 'Montgomery Reservoir near Alma, Colorado. Elevation ~9.5K ft.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/narrowest_building.jpg', 'The narrowest building in Paris, about 2 meters wide.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/neolithic_carvings.jpg', 'Neolithic carvings inside a mound in Ireland. The site is older than the Egyptian Pyramids.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/notre_dame.jpg', 'Notre Dame, Paris, France.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/original_liberty.jpg', 'The original Statue of Liberty in Paris. This was made as a model for the statue gifted to the United States.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/park_near_louvre.jpg', 'A picturesque park near the Louvre in Paris.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/queens_palace.jpg', 'The Queens Palace in Kabul, Afghanistan.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/resort_kuwait.jpg', 'Chad at a resort in Kuwait.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/picturesque_village.jpg', 'A picturesque village in Kosovo.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/rodin_three_men.jpg', 'Rodin sculpture at Musee Rodin, Paris, France.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/rodin_woman.jpg', 'Rodin sculpture at Musee Rodin, Paris, France.', 10 );
  INSERT INTO gallery (path, description, likes) VALUES ( 'images/royal_cottages_versailles.jpg', 'Cottages built for the Queen of France and her three closest friends.', 0 );
  INSERT INTO gallery (path, description, likes) VALUES (  'images/russian_horse.jpg', 'Chad at a horse-back riding resort in Kosovo.', 0 );
INSERT INTO gallery (path, description, likes) VALUES (  'images/saint_chappell', 'Interior of Saint Chappell in Paris, France.', 0 );
INSERT INTO gallery (path, description, likes) VALUES (  'images/sam_houston_forest.jpg', 'Sam Houston National Forest in Texas.', 0 );
INSERT INTO gallery (path, description, likes) VALUES (  'images/seawall_kuwait.jpg', 'Chad standing on the seawall in Kuwait.', 0 );
INSERT INTO gallery (path, description, likes) VALUES ( 'images/shambles_of_york.jpg', '"The Shambles" in York, England.', 0 );
INSERT INTO gallery (path, description, likes) VALUES (  'images/sign_post_1.jpg', 'Sign post in Kosovo.', 0 );
INSERT INTO gallery (path, description, likes) VALUES ( 'images/statue_in_gazebo.jpg', 'Statue in the gazebo in the gardens of Versailles.', 0 );
INSERT INTO gallery (path, description, likes) VALUES (  'images/thomas_jefferson.jpg', 'Statue of Thomas Jefferson in Paris.', 0 );
INSERT INTO gallery (path, description, likes) VALUES (  'images/tim_hortons.jpg', 'Chad having some piping hot Tim Hortons coffee in Kuwait.', 0 );
INSERT INTO gallery (path, description, likes) VALUES ( 'images/treat_carefully.jpg', 'A disgusting portable toilet with a sign warning of icy floors.', 0 );
INSERT INTO gallery (path, description, likes) VALUES ( 'images/trim_castle.jpg', 'Trim Castle in Ireland.', 0 );
INSERT INTO gallery (path, description, likes) VALUES ( 'images/trim_castle_side.jpg', 'Trime Castle in Ireland.', 0 );
INSERT INTO gallery (path, description, likes) VALUES ( 'images/vet_services_pigeons.jpg', 'Vet services sign for your cow, dog, or pigeon.', 0 );
INSERT INTO gallery (path, description, likes) VALUES (  'images/wheeler_lake.jpg', 'Snow fed mountain lake, Wheeler Lake, near Alma and Leadville, Colorado. The lake is at 12K ft elevation.', 0 );