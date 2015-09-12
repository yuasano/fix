--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: friendly_id_slugs; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (4, 'chemex-classic-6-cup-coffeemaker', 3, 'Spree::Product', NULL, '2015-07-15 22:58:12.111647');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (5, 'hario-cold-brewer', 4, 'Spree::Product', NULL, '2015-07-20 17:31:09.206964');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (6, 'bonavita-1-0l-electric-kettle', 5, 'Spree::Product', NULL, '2015-07-20 17:47:08.219918');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (7, 'baratza-virtuoso-conical-burr-coffee-grinder', 6, 'Spree::Product', NULL, '2015-07-22 23:48:02.180044');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (8, 'etekcity-digital-scale', 7, 'Spree::Product', NULL, '2015-07-22 23:55:38.657837');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (9, 'update-international-frothing-thermometer', 8, 'Spree::Product', NULL, '2015-07-22 23:58:53.289557');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (10, 'msr-reactor-2-5l-stove-system', 9, 'Spree::Product', NULL, '2015-07-23 00:50:11.933026');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (11, 'joco-glass-12oz-cup', 10, 'Spree::Product', NULL, '2015-07-23 17:35:56.073815');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (12, 'hario-skerton-manual-ceramic-burr-grinder', 11, 'Spree::Product', NULL, '2015-07-23 17:39:46.636897');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (13, 'hario-v60-ceramic-coffee-dripper', 12, 'Spree::Product', NULL, '2015-07-23 18:35:04.850196');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (46, 'bodum-chambord-34oz-french-press', 45, 'Spree::Product', NULL, '2015-07-23 19:54:42.737771');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (47, 'cozyna-ceramic-burr-coffee-grinder', 46, 'Spree::Product', NULL, '2015-07-23 20:02:27.556008');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (48, 'frothing-pitcher-12oz-stainless-steel', 47, 'Spree::Product', NULL, '2015-07-23 20:07:35.625297');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (49, 'frothing-thermometer', 8, 'Spree::Product', NULL, '2015-07-23 20:09:08.69168');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (50, 'aerolatte-milk-frother', 48, 'Spree::Product', NULL, '2015-07-23 20:11:25.429402');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (51, 'aeropress-coffee-maker', 49, 'Spree::Product', NULL, '2015-07-23 20:17:12.540333');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (52, 'snow-peak-h300-titanium-double-walled-stackable-cup', 50, 'Spree::Product', NULL, '2015-07-23 20:30:36.768556');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (53, 'blue-bottle-8oz-single-origin-brazil-yellow-catuai', 51, 'Spree::Product', NULL, '2015-08-04 20:38:29.141387');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (54, 'sightglass-12oz-single-origin-papua-new-guinea-bunum-wo', 52, 'Spree::Product', NULL, '2015-08-04 20:42:38.911286');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (55, 'ritual-12oz-single-origin-guatemala-hacienda-carmona', 53, 'Spree::Product', NULL, '2015-08-04 20:46:01.53861');
INSERT INTO friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) VALUES (56, 'pure-maple-syrup-vermont', 54, 'Spree::Product', NULL, '2015-08-04 20:55:04.409421');


--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('friendly_id_slugs_id_seq', 56, true);


--
-- Data for Name: spree_assets; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (9, 5, 'Spree::Variant', 1468, 1468, 140641, 2, 'image/jpeg', '071715_Heroku_9760.jpg', 'Spree::Image', '2015-07-20 17:53:28.22687', 'superior pour-control with gooseneck spout', '2015-07-20 17:49:47.257389', '2015-07-20 17:53:29.617419');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (59, 50, 'Spree::Variant', 1861, 1861, 131788, 1, 'image/jpeg', '071715_Heroku_3223.jpg', 'Spree::Image', '2015-07-23 20:31:32.148591', 'light-weight drinking cup', '2015-07-23 20:31:37.201888', '2015-07-23 20:31:37.201888');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (60, 50, 'Spree::Variant', 1500, 1500, 227258, 2, 'image/jpeg', '071715_Heroku_9604.jpg', 'Spree::Image', '2015-07-23 20:32:03.872411', 'great for camping', '2015-07-23 20:32:05.980601', '2015-07-23 20:32:05.980601');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (10, 6, 'Spree::Variant', 3724, 3724, 368029, 1, 'image/jpeg', '071715_Heroku_3293.jpg', 'Spree::Image', '2015-07-23 20:44:17.428081', 'coffee grinder with top-loading bean hopper and front-loading grounds drawer', '2015-07-22 23:50:44.209439', '2015-07-23 20:44:27.129288');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (13, 9, 'Spree::Variant', 3840, 3840, 350396, 1, 'image/jpeg', '071715_Heroku_3263.jpg', 'Spree::Image', '2015-07-23 00:52:50.142263', 'fuel canister mounted burner with compact 2.5L boiler', '2015-07-23 00:52:55.491926', '2015-07-23 00:52:55.491926');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (15, 9, 'Spree::Variant', 1500, 1500, 227258, 3, 'image/jpeg', '071715_Heroku_9604.jpg', 'Spree::Image', '2015-07-23 00:54:51.706368', 'use outdoors on any flat surface', '2015-07-23 00:54:53.297015', '2015-07-23 00:54:53.297015');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (14, 9, 'Spree::Variant', 1889, 1889, 187794, 2, 'image/jpeg', '071715_Heroku_3264.jpg', 'Spree::Image', '2015-07-23 17:03:09.33697', 'durable mesh burner evenly disperses heat', '2015-07-23 00:54:05.660578', '2015-07-23 17:03:11.667285');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (7, 4, 'Spree::Variant', 2979, 2979, 214059, 0, 'image/jpeg', '071715_Heroku_3278.jpg', 'Spree::Image', '2015-07-23 17:33:17.676547', 'tall slender clear glass carafe contains inner brewing system in a sleek all-in-one package', '2015-07-20 17:35:48.505518', '2015-07-23 17:33:31.97576');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (6, 4, 'Spree::Variant', 1214, 1214, 163081, 1, 'image/jpeg', '071715_Heroku_9730.jpg', 'Spree::Image', '2015-07-20 17:31:32.936278', 'cold brew in action, coffee droplets falling', '2015-07-20 17:31:41.686671', '2015-07-20 17:32:12.06054');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (16, 10, 'Spree::Variant', 1703, 1703, 108281, 1, 'image/jpeg', '071715_Heroku_3242.jpg', 'Spree::Image', '2015-07-23 17:36:59.486957', 'transparent glass tumbler with silicon grip & anti-spill sipper lid', '2015-07-23 17:37:02.018251', '2015-07-23 17:37:02.018251');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (18, 11, 'Spree::Variant', 2435, 2435, 164514, 1, 'image/jpeg', '071715_Heroku_3277.jpg', 'Spree::Image', '2015-07-23 17:43:03.716211', 'clear glass container-base, plastic bean hopper, and manual crank mechanism with grind adjustment', '2015-07-23 17:43:08.4662', '2015-07-23 17:43:08.4662');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (17, 10, 'Spree::Variant', 3566, 3566, 443274, 2, 'image/jpeg', '071715_Heroku_9729.jpg', 'Spree::Image', '2015-07-23 17:47:34.143376', 'easy-fill snap-on lid', '2015-07-23 17:37:53.150635', '2015-07-23 17:47:40.886526');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (8, 5, 'Spree::Variant', 2796, 2796, 261560, 1, 'image/jpeg', '071715_Heroku_3228.jpg', 'Spree::Image', '2015-07-23 18:33:11.390002', 'brushed aluminum kettle with gooseneck spout & insulated handle', '2015-07-20 17:48:42.269933', '2015-07-23 18:33:16.101419');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (19, 12, 'Spree::Variant', 1703, 1703, 76639, 1, 'image/jpeg', '071715_Heroku_3237.jpg', 'Spree::Image', '2015-07-23 18:38:23.458591', 'inverted ceramic cone for cup-top brewing with internal flow guides & heat-avoiding handle', '2015-07-23 18:38:24.916887', '2015-07-23 18:38:24.916887');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (20, 12, 'Spree::Variant', 1446, 1446, 137201, 2, 'image/jpeg', '071715_Heroku_9785.jpg', 'Spree::Image', '2015-07-23 18:39:22.229575', 'brew a single serving directly into your cup', '2015-07-23 18:39:24.927213', '2015-07-23 18:39:24.927213');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (52, 45, 'Spree::Variant', 2534, 2534, 236683, 1, 'image/jpeg', '071715_Heroku_3230.jpg', 'Spree::Image', '2015-07-23 19:56:44.749116', 'classic clear cylindrical glass, piston-filter coffeemaker', '2015-07-23 19:56:52.517522', '2015-07-23 19:56:52.517522');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (53, 45, 'Spree::Variant', 879, 879, 156042, 2, 'image/jpeg', '071715_Heroku_9694.jpg', 'Spree::Image', '2015-07-23 19:59:33.248772', 'makes up to 6-cups of coffee at once', '2015-07-23 19:59:40.13937', '2015-07-23 19:59:40.13937');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (54, 46, 'Spree::Variant', 2484, 2484, 141967, 1, 'image/jpeg', '071715_Heroku_3235.jpg', 'Spree::Image', '2015-07-23 20:03:46.442726', 'svelt, portable, cylindrical body', '2015-07-23 20:03:50.517329', '2015-07-23 20:03:50.517329');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (55, 47, 'Spree::Variant', 1517, 1517, 112056, 1, 'image/jpeg', '071715_Heroku_3255.jpg', 'Spree::Image', '2015-07-23 20:10:21.440407', 'stainless steel pitcher with pour spout & handle', '2015-07-23 20:10:23.736785', '2015-07-23 20:10:23.736785');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (56, 48, 'Spree::Variant', 2338, 2338, 108482, 1, 'image/jpeg', '071715_Heroku_3267.jpg', 'Spree::Image', '2015-07-23 20:12:44.435657', 'palm-sized device with wire wisk', '2015-07-23 20:12:51.197165', '2015-07-23 20:12:51.197165');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (57, 49, 'Spree::Variant', 2832, 2832, 244549, 1, 'image/jpeg', '071715_Heroku_3270.jpg', 'Spree::Image', '2015-07-23 20:20:19.80267', 'hand-held pressure-piston, micron filter disks, stirrer, & scoop', '2015-07-23 20:20:32.053765', '2015-07-23 20:20:32.053765');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (58, 49, 'Spree::Variant', 3852, 3852, 1512545, 2, 'image/jpeg', '071715_Heroku_9806.jpg', 'Spree::Image', '2015-07-23 20:27:52.377203', 'brew right into your cup', '2015-07-23 20:27:59.956092', '2015-07-23 20:27:59.956092');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (11, 7, 'Spree::Variant', 1900, 1900, 101034, 1, 'image/jpeg', '071715_Heroku_3233.jpg', 'Spree::Image', '2015-07-23 20:45:30.349803', 'portable, table-top scale with digital display & controls', '2015-07-22 23:56:59.38051', '2015-07-23 20:45:37.191593');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (12, 8, 'Spree::Variant', 1422, 1422, 83510, 1, 'image/jpeg', '071715_Heroku_3269.jpg', 'Spree::Image', '2015-07-23 20:46:00.008972', 'dial thermometer mounted on end of probe rod', '2015-07-23 00:00:31.80239', '2015-07-23 20:46:05.029432');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (4, 3, 'Spree::Variant', 2788, 2788, 202924, 0, 'image/jpeg', '071715_Heroku_3302.jpg', 'Spree::Image', '2015-07-23 20:44:50.543282', 'clear glass carafe with contoured wood grips', '2015-07-15 23:49:47.569132', '2015-07-23 20:46:56.816799');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (5, 3, 'Spree::Variant', 1498, 1498, 246401, 1, 'image/jpeg', '071715_Heroku_9931.jpg', 'Spree::Image', '2015-07-20 17:42:52.616834', 'the standard pour-over coffeemaker', '2015-07-15 23:55:55.979578', '2015-07-20 17:42:56.974297');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (61, 51, 'Spree::Variant', 1000, 1000, 139058, 1, 'image/jpeg', '071715_Heroku_3208-.jpg', 'Spree::Image', '2015-08-04 20:40:24.297862', 'small paper bag containing Blue Bottle coffee beans', '2015-08-04 20:40:27.616313', '2015-08-04 20:40:27.616313');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (62, 52, 'Spree::Variant', 1000, 1000, 130943, 1, 'image/jpeg', '071715_Heroku_3209-.jpg', 'Spree::Image', '2015-08-04 20:44:25.55122', 'small paper bag of Sightglass coffee beans', '2015-08-04 20:44:27.758279', '2015-08-04 20:44:27.758279');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (63, 53, 'Spree::Variant', 1000, 1000, 153122, 1, 'image/jpeg', '071715_Heroku_3213-.jpg', 'Spree::Image', '2015-08-04 20:49:59.305336', 'vacuum sealed bag of Ritual coffee beans', '2015-08-04 20:50:00.689614', '2015-08-04 20:50:00.689614');
INSERT INTO spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) VALUES (64, 54, 'Spree::Variant', 1000, 1000, 130812, 1, 'image/jpeg', '071715_Heroku_3291-.jpg', 'Spree::Image', '2015-08-04 20:55:50.860409', 'resealable plastic jug of maple syrup', '2015-08-04 20:55:52.065856', '2015-08-04 20:55:52.065856');


--
-- Name: spree_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_assets_id_seq', 64, true);


--
-- Data for Name: spree_calculators; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_calculators (id, type, calculable_id, calculable_type, created_at, updated_at, preferences) VALUES (1, 'Spree::Calculator::Shipping::FlatRate', 1, 'Spree::ShippingMethod', '2015-06-03 20:33:55.24138', '2015-06-03 20:34:02.618001', '---
:amount: !ruby/object:BigDecimal 18:0.8E1
:currency: USD
');


--
-- Name: spree_calculators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_calculators_id_seq', 1, true);



--
-- Data for Name: spree_option_types; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Name: spree_option_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_option_types_id_seq', 1, false);


--
-- Data for Name: spree_option_types_prototypes; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Data for Name: spree_option_values; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Name: spree_option_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_option_values_id_seq', 1, false);


--
-- Data for Name: spree_option_values_variants; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Data for Name: spree_payment_methods; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_payment_methods (id, type, name, description, active, deleted_at, created_at, updated_at, display_on, auto_capture, preferences) VALUES (1, 'Spree::PaymentMethod::Check', 'Check', '', true, NULL, '2015-06-03 20:27:38.649034', '2015-06-03 20:27:38.649034', '', NULL, NULL);


--
-- Name: spree_payment_methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_payment_methods_id_seq', 1, true);


--
-- Data for Name: spree_prices; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (3, 3, 39.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (4, 4, 59.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (5, 5, 89.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (6, 6, 229.00, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (7, 7, 19.00, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (8, 8, 4.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (9, 9, 159.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (10, 10, 24.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (11, 11, 34.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (12, 12, 24.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (45, 45, 39.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (46, 46, 37.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (47, 47, 9.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (48, 48, 19.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (49, 49, 29.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (50, 50, 29.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (51, 51, 13.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (52, 52, 21.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (53, 53, 14.99, 'USD', NULL);
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (1, 1, 29.99, 'USD', '2015-08-04 20:50:34.079276');
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (2, 2, 25.99, 'USD', '2015-08-04 20:50:44.739187');
INSERT INTO spree_prices (id, variant_id, amount, currency, deleted_at) VALUES (54, 54, 13.99, 'USD', NULL);


--
-- Name: spree_prices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_prices_id_seq', 54, true);


--
-- Data for Name: spree_product_option_types; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_product_option_types_id_seq', 1, false);


--
-- Data for Name: spree_product_properties; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_product_properties (id, value, product_id, property_id, created_at, updated_at, "position") VALUES (1, 'non-porous Borosilicate glass, polished wood, leather', 3, 1, '2015-07-15 23:58:22.176812', '2015-07-15 23:58:22.176812', 1);
INSERT INTO spree_product_properties (id, value, product_id, property_id, created_at, updated_at, "position") VALUES (2, '5.25"', 3, 2, '2015-07-16 00:00:34.163595', '2015-07-16 00:00:34.163595', 2);
INSERT INTO spree_product_properties (id, value, product_id, property_id, created_at, updated_at, "position") VALUES (3, '8.5"', 3, 3, '2015-07-16 00:00:34.223849', '2015-07-16 00:00:34.223849', 3);
INSERT INTO spree_product_properties (id, value, product_id, property_id, created_at, updated_at, "position") VALUES (4, '30oz', 3, 4, '2015-07-16 00:00:34.254623', '2015-07-16 00:00:34.254623', 4);


--
-- Name: spree_product_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_product_properties_id_seq', 5, true);


--
-- Data for Name: spree_products; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (47, 'Frothing Pitcher, 12oz Stainless Steel', 'This simple stainless steel milk frothing pitcher is a small investment that will last a lifetime. Durable 18/8 gauge stainless steel does not stain or rust; dripless spout for precise pours. Dishwasher-safe construction and heat resistant handle for safe.  A multipurpose preparation basic.', '2015-07-01 00:00:00', NULL, 'frothing-pitcher-12oz-stainless-steel', '', '', NULL, 1, '2015-07-23 20:07:35.404091', '2015-09-01 17:49:31.051057', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (46, 'Cozyna Ceramic Burr Coffee Grinder', 'The Coznya Ceramic Burr Coffee Grinder can produce an exceptional range of grand sizes for a manual grinder, from espresso to French Press.  

No need to unscrew the entire grinder in order to adjust the grind size. Simple knob adjustments change settings between espresso, drip, french press, cold drip.  The coffee mill is made of high grade stainless steel.  Bonus: the grinder handle disassembles, so that the entire mill can fit inside an Aeropress- a space saver while traveling.', '2015-07-01 00:00:00', NULL, 'cozyna-ceramic-burr-coffee-grinder', '', '', NULL, 1, '2015-07-23 20:02:27.15819', '2015-09-04 17:42:01.678445', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (5, 'Bonavita 1.0L Electric Kettle', 'This classic electric kettle is a staple of hot beverage preparation. Equipped with a 1000W heater for quick water boiling at any fill volume, the Bonavita automatically deactivates on boiling, preventing excessive evaporation or damaging the heating element through prolonged operation without liquid. 

Made of brushed stainless steel, the gooseneck spout allows for maximum pour control.  The 360 degree swivel makes for flexible kettle placement and ease of use.  120 volt, with automatic shutoff and an optional voltage converter.  5 year warranty.  Not dishwasher safe.', '2015-07-01 00:00:00', NULL, 'bonavita-1-0l-electric-kettle', '', '', NULL, 1, '2015-07-20 17:47:08.041377', '2015-09-04 00:44:56.823264', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (52, 'Bunum Wo AA, Papua New Guinea', 'This is our Monday Lunch Offer 
Please update now 



Sightglass single origin whole coffee beans from Papua New Guinea: Bunum Wo AA.  Delicate but deep aroma, with chocolate, pipe tobacco and leather.

Papua New Guinea produces some of the world''s finest and most distinctive coffees.  This coffee was introduced to New Guinea from Jamaica in 1937 from Bourbon plants originating in the Blue Mountain region . The coffee is grown in peasant patches and small plantations throughout the rugged mountain highlands.', '2015-07-01 00:00:00', NULL, 'sightglass-12oz-single-origin-papua-new-guinea-bunum-wo', '', '', NULL, 1, '2015-08-04 20:42:38.330799', '2015-09-03 22:50:49.303472', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (4, 'Hario Cold Brewer', 'The key to cold brew is a coarse grind and a 12 hour steep. The 1000ml makes 4 cups of coffee; the durable glass carafe has a sturdy handle and easy pour spout.

Though the instructions are only in Japanese, there are pictographs.  Easy to clean, reusable filter, dishwasher safe, and no filters to resupply make for a minimalist coffee preparation experience.  Perfect for cold brew afficionados.', '2015-07-01 00:00:00', NULL, 'hario-cold-brewer', '', '', NULL, 1, '2015-07-20 17:31:08.183531', '2015-09-02 18:21:07.455126', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (6, 'Baratza Virtuoso Conical Burr Coffee Grinder', 'The Virtuoso is in a class by itself: the particle size of the grind is very consistent at both the coarse and fine ends of the grind range. Even particle size makes for predictable brewing results at different settings. 

The secret to the Virtuoso''s professional grade grind is two-fold: an efficient DC motor keeps beans cool, even during extended grind times, and dual electric / gear speed reducers that slow the burr to 450 RPM.  A smooth bean feed mechanism helps the Virtuoso deliver consistency of grind over the 5-year warrantied lifetime of the product.', '2015-07-01 00:00:00', NULL, 'baratza-virtuoso-conical-burr-coffee-grinder', '', '', NULL, 1, '2015-07-22 23:48:01.931237', '2015-09-04 00:44:56.875364', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (11, 'Hario Skerton Manual Ceramic Burr Grinder', 'Small, lightweight, and portable, the Skerton is the ideal hand grinder for the traveling coffee enthusiast, or the home enthusiast on a limited budget.

Set to a coarse grind for use with the Hario Cold Water Coffee Brewer, or a finer grind for the Hario Dripper.', '2015-07-01 00:00:00', NULL, 'hario-skerton-manual-ceramic-burr-grinder', '', '', NULL, 1, '2015-07-23 17:39:46.553173', '2015-09-02 18:23:11.613181', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (7, 'Etekcity Digital Scale', 'Eliminate bitter, weak, and inconsistent brews by weighing both water and coffee before preparation.  16 grams (weak) to 20 grams (strong) of coffee to 280 grams of water is the optimal ratio of ground coffee to water.  This simple digital scale weighs up to 500g, with division graduations of 0.01g, and is light and easy to operate.  The compact design provides fast and accurate measurement with automatic and manual calibration modes. Low battery indicator, uneven surface detector, and overload indicator. Constructed of stainless steel; comes with protective cover, carrying case and 2 AAA batteries.', '2015-07-01 00:00:00', NULL, 'etekcity-digital-scale', '', '', NULL, 1, '2015-07-22 23:55:38.327314', '2015-09-04 00:44:56.916046', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (48, 'Aerolatte Milk Frother', 'This classic, handheld, battery-powered milk frother works well with cold or hot milk. Easily operated with one hand, the Aerolatte froths milk in 30-60 seconds.  Streamlined construction and stainless steel wire whisk simplify cleaning and improve durability. Rinse with hot water to clean. Includes 2 AA batteries and a 5-year warranty.', '2015-07-01 00:00:00', NULL, 'aerolatte-milk-frother', '', '', NULL, 1, '2015-07-23 20:11:25.360242', '2015-09-01 23:43:36.817392', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (1, 'Ritual Coffee: Limu, Ethiopia (12oz)', 'This is an early offering from several of the true small producers of Ethiopia who opted to work through the auctioning ECX system, which has helped the many underrepresented farmers of this country to earn fair prices for their coffees.  What’s particularly amazing about this coffee is that we usually never see fresh Ethiopian offerings this early in the year.  
 
With the help of expert sourcer and miller Heleanna Georgalis, we were able to find some of the sweetest, most fruited offerings from the small woreda of Limu, and we’re happy to serve them while they’re so fresh!
 
In the cup, the first thing you’ll notice is a heavy floral perfume. Flavors of ripe peach and blackberry are muddled with demerara sugar to create a brew that seems to never stop sweetening, even as it cools.
 
This is an extremely special coffee, and will only be available for a short run; if you enjoy African coffees make your move now!', '2015-05-19 00:00:00', '2015-08-04 20:50:34.365282', '1438721434_ritual-limu-ethiopia', '', '', NULL, 1, '2015-06-03 20:09:22.886148', '2015-08-04 20:50:34.365282', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (2, 'Blue Bottle: Brazil Red Catuai Natural (12oz)', 'In the highlands of Divinolandia, Brazil, Milton Nogueira, the esteemed producer of Santa Clara estate, cares for his red Catuai coffee variety trees with a lot of pride. When they''re ready for harvest, Milton spreads them thinly on African-style drying beds, and allows them to dry for two weeks or more before removing the dried fruit. When you want (nay, need) a full and fruity coffee that you can sink your teeth into, make a cup of Santa Clara, take a seat, and let its praline, toffee, and dried cherry deliciousness sink in.', '2015-05-05 00:00:00', '2015-08-04 20:50:45.262076', '1438721445_blue-bottle-brazil-red-catuai-natural-12oz', '', '', NULL, 1, '2015-06-03 21:40:45.795649', '2015-08-04 20:50:45.262076', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (54, 'Pure Maple Syrup, Vermont', 'This organic maple syrup is farmed from family owned farms in rural Vermont and bottled in Woodstock.  Because Grade B maple syrup is made at the end of the sugaring season, just before the maple trees bud, it can be almost as dark as molasses, with a strong, intense flavor.  

Maple syrup is a natural taste complement to coffee. The slow release of natural sugars paired with intense essence of maple sweetens and complements rich brews.', '2015-07-01 00:00:00', NULL, 'pure-maple-syrup-vermont', '', '', NULL, 1, '2015-08-04 20:55:04.319335', '2015-09-01 23:42:50.181547', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (45, 'Bodum Chambord 34oz French Press', 'The original French Press was patented by Italian designer Attilio Calimani in 1929.  The basic design has been refined over the decades by many different manufacturing houses, but the uncontested modern favorite for best French Press is The Bodum Chambord.  

The Bodum Chambord has a 3-part stainless steel mesh filter helps extract the coffee''s aromatic oils and subtle flavors.  The carafe is made of durable, heat-resistant borosilicate glass; the stainless steel frame has a heat resistant handle.  All parts are dishwasher safe, though hand washing is preferred.  Recommended brewing time is 2-4 minutes.  Immediate subsequent decanting is recommended to avoid developing a bitter undertone to French Press brews.', '2015-07-01 00:00:00', NULL, 'bodum-chambord-34oz-french-press', '', '', NULL, 1, '2015-07-23 19:54:42.20646', '2015-09-01 23:54:34.905767', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (50, 'Snow Peak H300 Titanium Double Walled Cup', 'The Snow Peak H300 Titanium Double Walled Cup is lightweight, durable and beautifully made.  Designed for easy grasping without handles, this perfect receptacle for hot beverages holds 1 1/4 cups of liquid.  

Stackable with other H Series cups, the Snow Peak weighs only 2 ounces and is perfect for travel.  The double walls insulate contents while the cup remains cool to the touch.  Dishwasher safe.  Not to be used as a cooking vessel or placed directly on fire, the Sno Peak comes with a mesh bag that can help to hold other coffee preparation essentials at home or on the road.', '2015-07-01 00:00:00', NULL, 'snow-peak-h300-titanium-double-walled-stackable-cup', '', '', NULL, 1, '2015-07-23 20:30:36.639616', '2015-09-04 17:42:01.729346', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (12, 'Hario V60 Ceramic Coffee Dripper', 'Designed for manual, pour-over style coffee brewing. The Hario has a true cone, not the flattened bottom shape that can result in pooling.  Brews one to three cups at a time. Works well with V60 size 02 paper or cloth filters and fits on almost any cup.  

This style of dripper is very hands-on- it allows infinite control over grind, water volume and temperature. The ceramic body is durable and helps prevent heat loss during the brewing cycle.', '2015-07-01 00:00:00', NULL, 'hario-v60-ceramic-coffee-dripper', '', '', NULL, 1, '2015-07-23 18:35:04.735538', '2015-09-02 18:25:56.549202', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (8, 'Frothing Thermometer', 'A frothing thermometer is an essential tool.  In certain brewing situations boiling can cause ingredients like milk to go bad. In order to create a high-quality froth and maximize the sugars in the milk, most ingredients must be heated to nearly boiling. Higher temperatures can lead to burning, curdling, and unpleasant taste or texture. This thermometer has a range of 30 to 220ºF. It will accurately measure the temperature when heating milk or Turkish coffee to frothing.', '2015-07-01 00:00:00', NULL, 'frothing-thermometer', '', '', NULL, 1, '2015-07-22 23:58:53.005911', '2015-09-04 00:44:57.009753', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (49, 'AeroPress Coffee Maker', 'One minute from start to enjoy. The AeroPress is the result of several years of applied research by inventor/engineer Alan Adler, whose experiments demonstrated that proper temperature, total immersion and rapid filtering were key to flavor excellence.

Actual press time takes 20 seconds once ideal water temperature has been reached: just short of boiling. Gentle air pressure yields rich flavor with lower acidity and no bitterness; total immersion brewing results in uniform extraction of the ultimate in rich coffee flavor. The patented micro filter produces grit free coffee so pure and particle free that it can be stored for days as a concentrate for cold brew.  Made in the USA. 5 year warranty.', '2015-07-01 00:00:00', NULL, 'aeropress-coffee-maker', '', '', NULL, 1, '2015-07-23 20:17:12.265142', '2015-09-04 17:42:01.501522', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (53, 'Hacienda Carmona, Guatemala', 'Ritual single origin coffee beans from Honduras: Hacienda Carmona, Bourbón Typica,  This year’s selection is incredibly sweet- with flavors of mission fig and chocolate covered cherries. 



In 1910, the Zelayas family purchased Hacienda Carmona.  With the planting of the first coffee trees in 1914, this farm started to become the integral center of Antiguan coffee production that it is today.  76-year-old Maria Zelaya still takes a hands-on approach to managing the daily affairs of Hacienda Carmona, including a mill to ferment, wash, and dry the coffee.', '2015-07-01 00:00:00', NULL, 'ritual-12oz-single-origin-guatemala-hacienda-carmona', '', '', NULL, 1, '2015-08-04 20:46:01.394547', '2015-09-04 17:42:01.798922', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (10, 'JOCO Glass 12oz Cup', 'Made from strong Borosilicate glass, the JOCO cup is a stylish, sturdy and eco-friendly solution to enjoying your everyday brew. Every JOCO glass cup is microwave safe, BPA-free and modeled after standard disposable coffee cup sizes. 

Glass never affects coffee flavor. The Joco is fitted with a thermal sleeve to ensure hot coffee and cool fingers. The ergonomic lid is splash safe and easy to clean with warm water and gentle soaps.  

Like our cups, every product JOCO makes is designed to have an element of reuse. When you order a JOCO cup, it comes in a nifty little package. Flip the lid and look underneath you will notice a couple of suggestions aimed at preventing you from tossing our little friend in the trash. Explore the features below to get a better look into the innovation behind the worlds favorite glass re-usable cup.  BPA free.', '2015-07-01 00:00:00', NULL, 'joco-glass-12oz-cup', '', '', NULL, 1, '2015-07-23 17:35:55.597744', '2015-09-02 18:29:32.272144', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (3, 'Chemex Classic 6-cup Coffeemaker', 'Included in the New York MOMA collections as one the "best designed products of modern times," the Six Cup Classic Series used together with the scientifically designed, patented CHEMEX® Bonded Filters, delivers the perfect pour over cup of coffee, free of sediments or bitter elements.

The Chemex Coffemaker consists of an narrow-waist glass flask and uses proprietary paper filters, made of chemically bonded paper, to remove most of the coffee oils from the finished cup.  Thicker-gauge paper than the standard paper filters used in typical drip-method coffeemakers assist in removing more of the naturally occurring cafestol, a cholesterol-containing compound found in coffee oils.  The Chemex brew method thus produces coffee with a taste that is distinct from the taste of coffee brewed in other coffee-making systems.', '2015-07-01 00:00:00', NULL, 'chemex-classic-6-cup-coffeemaker', '', '', NULL, 1, '2015-07-15 22:58:11.067216', '2015-09-04 00:44:56.750553', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (51, 'Yellow Catuai, Brazil', 'Blue Bottle single origin whole coffee beans from Brazil: FAF Carmel, Yellow Catuai, Natural.  This can be a problematic coffee bean—there’s Robusta influence in the Timor family, which often leads to low acidity and high bitterness. However  the Indonesian types, when processed correctly, deliver piquant herbal and fruit-rind flavors.

This micro lot is exclusively Yellow Catuai and shows off the clean natural processing that has made this producer famous.  Coffees from Sitio Canaã have been featured in the World Barista Championship as well as other coffee competitions.', '2015-07-01 00:00:00', NULL, 'blue-bottle-8oz-single-origin-brazil-yellow-catuai', '', '', NULL, 1, '2015-08-04 20:38:28.841085', '2015-09-04 00:44:57.058505', true, NULL);
INSERT INTO spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title) VALUES (9, 'MSR Reactor 2.5L Stove System', 'The burner system on the MSR Reactor series is utterly reliable and supremely efficient. Usable in winds up to 12 miles per hour, the fuel-pressure regulation system maximizes the life of every fuel canister, and integrated stove-and-pot design makes for rock-solid stability when cooking and easy storage when preparing coffee outside the kitchen.  

The 2.5-liter pot, patent-pending radiant burner and heat exchanger have a 3 minute boil time at sea level altitudes. The collapsible handle, locking see-through lid, and way the 4 oz. MSR IsoPro fuel fits inside pot (sold separately) are all testament to its ease of use when out on the trail.', '2015-07-01 00:00:00', NULL, 'msr-reactor-2-5l-stove-system', '', '', NULL, 1, '2015-07-23 00:50:11.767675', '2015-09-04 17:42:01.583609', true, NULL);


--
-- Name: spree_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_products_id_seq', 54, true);


--
-- Data for Name: spree_products_promotion_rules; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Data for Name: spree_products_taxons; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (3, 2, 3, 1);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (4, 4, 5, 1);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (7, 2, 10, 5);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (8, 2, 11, 6);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (48, 6, 52, 4);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (47, 6, 53, 5);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (12, 5, 16, 1);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (45, 6, 49, 1);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (10, 4, 13, 3);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (11, 4, 14, 2);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (50, 3, 55, 4);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (52, 7, 56, 1);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (53, 7, 57, 2);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (51, 7, 58, 3);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (52, 6, 59, 6);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (52, 5, 60, 4);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (51, 4, 61, 4);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (51, 2, 62, 7);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (53, 3, 63, 5);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (9, 3, 12, 2);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (49, 3, 54, 1);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (46, 3, 51, 3);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (6, 2, 9, 3);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (5, 2, 6, 2);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (11, 5, 15, 3);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (5, 5, 8, 2);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (46, 6, 50, 3);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (5, 6, 7, 2);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (49, 8, 67, 1);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (52, 8, 64, 3);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (3, 8, 65, 4);
INSERT INTO spree_products_taxons (product_id, taxon_id, id, "position") VALUES (9, 8, 66, 2);


--
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_products_taxons_id_seq', 67, true);


--
-- Data for Name: spree_promotion_categories; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_promotion_categories_id_seq', 1, false);


--
-- Data for Name: spree_promotion_rules; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Name: spree_promotion_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_promotion_rules_id_seq', 1, false);


--
-- Data for Name: spree_promotion_rules_users; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Data for Name: spree_promotions; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Name: spree_promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_promotions_id_seq', 1, false);


--
-- Data for Name: spree_properties; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_properties (id, name, presentation, created_at, updated_at) VALUES (1, 'materials', 'materials', '2015-07-15 23:58:22.026261', '2015-07-15 23:58:22.026261');
INSERT INTO spree_properties (id, name, presentation, created_at, updated_at) VALUES (2, 'diameter', 'diameter', '2015-07-16 00:00:34.071534', '2015-07-16 00:00:34.071534');
INSERT INTO spree_properties (id, name, presentation, created_at, updated_at) VALUES (3, 'height', 'height', '2015-07-16 00:00:34.087826', '2015-07-16 00:00:34.087826');
INSERT INTO spree_properties (id, name, presentation, created_at, updated_at) VALUES (4, 'capacity', 'capacity', '2015-07-16 00:00:34.117598', '2015-07-16 00:00:34.117598');
INSERT INTO spree_properties (id, name, presentation, created_at, updated_at) VALUES (5, 'allergens', 'allergens', '2015-08-19 21:53:17.376242', '2015-08-19 21:53:17.376242');


--
-- Name: spree_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_properties_id_seq', 5, true);


--
-- Data for Name: spree_properties_prototypes; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Data for Name: spree_prototypes; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Name: spree_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_prototypes_id_seq', 1, false);


--
-- Data for Name: spree_shipping_method_categories; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_shipping_method_categories (id, shipping_method_id, shipping_category_id, created_at, updated_at) VALUES (1, 1, 1, '2015-06-03 20:33:55.246427', '2015-06-03 20:33:55.246427');


--
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_shipping_method_categories_id_seq', 1, true);


--
-- Data for Name: spree_shipping_methods; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_shipping_methods (id, name, display_on, deleted_at, created_at, updated_at, tracking_url, admin_name, tax_category_id, code) VALUES (1, 'USPS', '', NULL, '2015-06-03 20:33:55.237598', '2015-06-03 20:33:55.237598', '', 'usps', NULL, '');


--
-- Name: spree_shipping_methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_shipping_methods_id_seq', 1, true);


--
-- Data for Name: spree_shipping_methods_zones; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_shipping_methods_zones (shipping_method_id, zone_id) VALUES (1, 1);
INSERT INTO spree_shipping_methods_zones (shipping_method_id, zone_id) VALUES (1, 2);


--
-- Data for Name: spree_stock_items; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (52, 1, 52, -7, '2015-08-04 20:42:38.725372', '2015-09-03 22:50:49.266546', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (1, 1, 1, -34, '2015-06-03 20:09:22.984914', '2015-08-04 20:50:34.110667', true, '2015-08-04 20:50:34.110667');
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (2, 1, 2, -6, '2015-06-03 21:40:45.86089', '2015-08-04 20:50:44.893844', true, '2015-08-04 20:50:44.893844');
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (54, 1, 54, 0, '2015-08-04 20:55:04.37352', '2015-08-04 20:55:04.37352', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (4, 1, 4, -1, '2015-07-20 17:31:08.421566', '2015-08-06 01:47:43.917252', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (10, 1, 10, -1, '2015-07-23 17:35:55.988012', '2015-08-06 01:47:44.248558', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (3, 1, 3, -16, '2015-07-15 22:58:11.674829', '2015-09-04 00:44:56.711912', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (5, 1, 5, -22, '2015-07-20 17:47:08.137844', '2015-09-04 00:44:56.81364', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (6, 1, 6, -13, '2015-07-22 23:48:02.065025', '2015-09-04 00:44:56.866886', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (7, 1, 7, -12, '2015-07-22 23:55:38.416474', '2015-09-04 00:44:56.908364', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (8, 1, 8, -11, '2015-07-22 23:58:53.160221', '2015-09-04 00:44:57.002003', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (51, 1, 51, -17, '2015-08-04 20:38:29.04189', '2015-09-04 00:44:57.051041', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (49, 1, 49, -3, '2015-07-23 20:17:12.39925', '2015-09-04 17:42:01.490315', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (9, 1, 9, -3, '2015-07-23 00:50:11.847957', '2015-09-04 17:42:01.562348', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (46, 1, 46, -8, '2015-07-23 20:02:27.364897', '2015-09-04 17:42:01.668586', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (50, 1, 50, -3, '2015-07-23 20:30:36.697335', '2015-09-04 17:42:01.721143', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (53, 1, 53, -3, '2015-08-04 20:46:01.472711', '2015-09-04 17:42:01.790046', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (45, 1, 45, -2, '2015-07-23 19:54:42.553962', '2015-08-20 16:59:05.286848', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (48, 1, 48, -2, '2015-07-23 20:11:25.393253', '2015-08-20 16:59:05.503909', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (47, 1, 47, -2, '2015-07-23 20:07:35.493516', '2015-08-20 16:59:05.584477', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (12, 1, 12, -3, '2015-07-23 18:35:04.80242', '2015-08-20 20:54:13.447885', true, NULL);
INSERT INTO spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) VALUES (11, 1, 11, -4, '2015-07-23 17:39:46.591658', '2015-08-20 20:54:13.597796', true, NULL);


--
-- Name: spree_stock_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_stock_items_id_seq', 54, true);


--
-- Data for Name: spree_tax_categories; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_tax_categories_id_seq', 1, false);


--
-- Data for Name: spree_tax_rates; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_tax_rates_id_seq', 1, false);


--
-- Data for Name: spree_taxonomies; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_taxonomies (id, name, created_at, updated_at, "position") VALUES (4, 'Featured on Home', '2015-08-25 16:56:18.909695', '2015-09-04 17:42:01.604806', 3);
INSERT INTO spree_taxonomies (id, name, created_at, updated_at, "position") VALUES (3, 'Beans', '2015-08-04 20:51:45.743463', '2015-09-04 17:42:01.815475', 2);
INSERT INTO spree_taxonomies (id, name, created_at, updated_at, "position") VALUES (2, 'Kit', '2015-07-02 21:32:03.072445', '2015-09-04 17:42:01.815475', 1);


--
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_taxonomies_id_seq', 4, true);


--
-- Data for Name: spree_taxons; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_taxons (id, parent_id, "position", name, permalink, taxonomy_id, lft, rgt, icon_file_name, icon_content_type, icon_file_size, icon_updated_at, description, created_at, updated_at, meta_title, meta_description, meta_keywords, depth, hero_file_name, hero_content_type, hero_file_size, hero_updated_at, group_file_name, group_content_type, group_file_size, group_updated_at, style_file_name, style_content_type, style_file_size, style_updated_at) VALUES (2, 1, 0, 'The Chemex Kit', 'kit/chemex', 2, 2, 3, 'triagnlify-red-gray.png', 'image/png', 506238, '2015-07-02 21:48:49.079844', 'An iconic brewer with a timeless design invented in 1941, the Chemex is easy to use and easy on the eyes. The Chemex is housed in the MOMA permanent design collection —it also lives on most of our kitchen counters. It brews a clean cup and maintains body and balanced floral notes.

Chemex brews tend to taste different than other drip preparations because the filtered paper strains more of the cafestrol- the bitter coffee oils- from the final cup.  Presence or absence of cafestrol is a deeply personal preference; the Chemex brewer will produce the least cafestrol residue of any brew method.  ', '2015-07-02 21:38:28.463984', '2015-09-04 00:44:57.070321', '', '', '', 1, '071715_Heroku_3338-Edit-crop1.jpg', 'image/jpeg', 167407, '2015-07-24 23:49:07.471478', '071715_Heroku_3338-Edit-.jpg', 'image/jpeg', 169725, '2015-07-24 23:49:07.499721', '071715_Heroku_9899-.jpg', 'image/jpeg', 120294, '2015-07-24 23:40:24.271342');
INSERT INTO spree_taxons (id, parent_id, "position", name, permalink, taxonomy_id, lft, rgt, icon_file_name, icon_content_type, icon_file_size, icon_updated_at, description, created_at, updated_at, meta_title, meta_description, meta_keywords, depth, hero_file_name, hero_content_type, hero_file_size, hero_updated_at, group_file_name, group_content_type, group_file_size, group_updated_at, style_file_name, style_content_type, style_file_size, style_updated_at) VALUES (6, 1, 0, 'The French Press Kit', 'kit/french-press', 2, 10, 11, NULL, NULL, NULL, NULL, 'The French press is the most classic expression of a full immersion brewer.  Characteristics of a French press include producing a full bodied cup with a rich flavor profile. 

A coarse grind, with a coffee to water ratio of 1:15, is ideal for the French press.  When using a full immersion brew method, it is extremely important to have a timer to monitor the brew time. Although it is one of the easiest brew methods, it is possible to produce overly extracted coffee by brewing the coffee too long.', '2015-07-20 17:29:07.464004', '2015-09-04 17:42:01.688707', '', '', '', 1, '071715_Heroku_3376-Edit-crop1.jpg', 'image/jpeg', 113006, '2015-07-24 23:51:54.254088', '071715_Heroku_3376-Edit-.jpg', 'image/jpeg', 119587, '2015-07-24 23:51:54.28686', '071715_Heroku_9683-.jpg', 'image/jpeg', 116388, '2015-07-24 23:41:32.837077');
INSERT INTO spree_taxons (id, parent_id, "position", name, permalink, taxonomy_id, lft, rgt, icon_file_name, icon_content_type, icon_file_size, icon_updated_at, description, created_at, updated_at, meta_title, meta_description, meta_keywords, depth, hero_file_name, hero_content_type, hero_file_size, hero_updated_at, group_file_name, group_content_type, group_file_size, group_updated_at, style_file_name, style_content_type, style_file_size, style_updated_at) VALUES (4, 1, 0, 'The Cold Brew Kit', 'kit/cold-brew', 2, 6, 7, NULL, NULL, NULL, NULL, 'There is no more minimalist system than cold brew: a coarse grind, a simple brewer, water and coffee.  No energy is needed to produce the finest of cold brews; a simple overnight on the counter or in the fridge will produce a dense, dark potion that can be diluted with water or milk, or simply drunk cold from the Joco cup.  Excellent for tropical latitudes where a colder brew is more typically drunk in the morning.  ', '2015-07-20 17:26:50.184134', '2015-09-04 00:44:57.070321', '', '', '', 1, '071715_Heroku_3385-crop1.jpg', 'image/jpeg', 152925, '2015-07-24 23:50:37.102054', '071715_Heroku_3385-.jpg', 'image/jpeg', 151118, '2015-07-24 23:50:37.133647', '071715_Heroku_9732-.jpg', 'image/jpeg', 91535, '2015-07-24 23:40:59.329591');
INSERT INTO spree_taxons (id, parent_id, "position", name, permalink, taxonomy_id, lft, rgt, icon_file_name, icon_content_type, icon_file_size, icon_updated_at, description, created_at, updated_at, meta_title, meta_description, meta_keywords, depth, hero_file_name, hero_content_type, hero_file_size, hero_updated_at, group_file_name, group_content_type, group_file_size, group_updated_at, style_file_name, style_content_type, style_file_size, style_updated_at) VALUES (3, 1, 0, 'The Camper’s Kit', 'kit/camping', 2, 4, 5, NULL, NULL, NULL, NULL, 'What is an adventure without the morning coffee ritual? This simple lightweight system will produce astonishing coffee at most any altitude or latitude. The Reactor system boils water in 3 minutes at normal elevations; the Aeropress takes less than a minute to brew; the Hario cup keeps your coffee hot without burning the fingers. This system is ideal for coffee on the trail, wherever that trail may lead.  ', '2015-07-02 21:38:38.251271', '2015-09-04 17:42:01.809368', '', '', '', 1, '071715_Heroku_3346-crop1.jpg', 'image/jpeg', 183120, '2015-07-24 23:49:54.863701', '071715_Heroku_3346-.jpg', 'image/jpeg', 152547, '2015-07-24 23:49:54.896539', '071715_Heroku_9588-.jpg', 'image/jpeg', 117805, '2015-07-24 23:40:43.807636');
INSERT INTO spree_taxons (id, parent_id, "position", name, permalink, taxonomy_id, lft, rgt, icon_file_name, icon_content_type, icon_file_size, icon_updated_at, description, created_at, updated_at, meta_title, meta_description, meta_keywords, depth, hero_file_name, hero_content_type, hero_file_size, hero_updated_at, group_file_name, group_content_type, group_file_size, group_updated_at, style_file_name, style_content_type, style_file_size, style_updated_at) VALUES (7, NULL, 0, 'Beans', 'beans', 3, 13, 14, NULL, NULL, NULL, NULL, NULL, '2015-08-04 20:51:45.791858', '2015-09-04 17:42:01.809368', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO spree_taxons (id, parent_id, "position", name, permalink, taxonomy_id, lft, rgt, icon_file_name, icon_content_type, icon_file_size, icon_updated_at, description, created_at, updated_at, meta_title, meta_description, meta_keywords, depth, hero_file_name, hero_content_type, hero_file_size, hero_updated_at, group_file_name, group_content_type, group_file_size, group_updated_at, style_file_name, style_content_type, style_file_size, style_updated_at) VALUES (8, NULL, 0, 'Featured on Home', 'featured', 4, 15, 16, NULL, NULL, NULL, NULL, '', '2015-08-25 16:56:18.942317', '2015-09-04 17:42:01.596177', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO spree_taxons (id, parent_id, "position", name, permalink, taxonomy_id, lft, rgt, icon_file_name, icon_content_type, icon_file_size, icon_updated_at, description, created_at, updated_at, meta_title, meta_description, meta_keywords, depth, hero_file_name, hero_content_type, hero_file_size, hero_updated_at, group_file_name, group_content_type, group_file_size, group_updated_at, style_file_name, style_content_type, style_file_size, style_updated_at) VALUES (1, NULL, 0, 'Kit', 'kit', 2, 1, 12, NULL, NULL, NULL, NULL, NULL, '2015-07-02 21:32:03.143529', '2015-09-04 17:42:01.809368', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO spree_taxons (id, parent_id, "position", name, permalink, taxonomy_id, lft, rgt, icon_file_name, icon_content_type, icon_file_size, icon_updated_at, description, created_at, updated_at, meta_title, meta_description, meta_keywords, depth, hero_file_name, hero_content_type, hero_file_size, hero_updated_at, group_file_name, group_content_type, group_file_size, group_updated_at, style_file_name, style_content_type, style_file_size, style_updated_at) VALUES (5, 1, 0, 'The Pour Over Kit', 'kit/pour-over', 2, 8, 9, NULL, NULL, NULL, NULL, 'Arguably the simplest and cleanest way to draw out a coffee’s best qualities, the pour-over method is elegant without being prohibitively difficult. For those accustomed to coffee from a drip machine, this method will produce something similar but noticeably more delicate and complex.

This pour over kit will provide the brewer will the option to control every variable in the brewing process and create a cup that''s exactly suited to their preferences.', '2015-07-20 17:27:38.634211', '2015-09-04 00:44:56.836878', '', '', '', 1, '071715_Heroku_3353-Edit-crop1.jpg', 'image/jpeg', 96947, '2015-07-24 23:51:17.442679', '071715_Heroku_3353-Edit-.jpg', 'image/jpeg', 106277, '2015-07-24 23:51:17.491849', '071715_Heroku_9760-.jpg', 'image/jpeg', 74955, '2015-07-24 23:41:19.586069');


--
-- Name: spree_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_taxons_id_seq', 8, true);


--
-- Data for Name: spree_taxons_promotion_rules; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Name: spree_taxons_promotion_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_taxons_promotion_rules_id_seq', 1, false);


--
-- Data for Name: spree_taxons_prototypes; Type: TABLE DATA; Schema: public; Owner: mars.hall
--



--
-- Name: spree_taxons_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_taxons_prototypes_id_seq', 1, false);


--
-- Data for Name: spree_variants; Type: TABLE DATA; Schema: public; Owner: mars.hall
--

INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (1, 'RIT123', 12.00, NULL, NULL, NULL, '2015-08-04 20:50:34.34698', true, 1, NULL, 1, 'USD', true, NULL, '2015-08-04 20:50:34.34698', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (2, 'blue-bottle-catuai', 0.00, NULL, NULL, NULL, '2015-08-04 20:50:45.203171', true, 2, NULL, 1, 'USD', true, NULL, '2015-08-04 20:50:45.203171', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (12, 'hario-v60', 0.00, NULL, NULL, NULL, NULL, true, 12, NULL, 1, 'USD', true, NULL, '2015-08-20 20:54:13.457241', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (11, 'hario-skerton', 0.00, NULL, NULL, NULL, NULL, true, 11, NULL, 1, 'USD', true, NULL, '2015-08-20 20:54:13.600862', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (54, 'sov-maple-16pz', 0.00, NULL, NULL, NULL, NULL, true, 54, NULL, 1, 'USD', true, NULL, '2015-08-04 20:55:52.076751', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (4, 'hario-cold-brewer', 0.00, NULL, NULL, NULL, NULL, true, 4, NULL, 1, 'USD', true, NULL, '2015-08-06 01:47:43.9621', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (10, 'joco-120oz-black', 0.00, NULL, NULL, NULL, NULL, true, 10, NULL, 1, 'USD', true, NULL, '2015-08-06 01:47:44.256283', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (48, 'aerolatte-milk-frother', 0.50, 8.00, 1.00, 1.50, NULL, true, 48, NULL, 1, 'USD', true, NULL, '2015-08-31 15:08:15.641654', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (52, 'sg-papua-new-guinea-bunum-wo', 0.00, NULL, NULL, NULL, NULL, true, 52, NULL, 1, 'USD', true, NULL, '2015-09-03 22:50:49.294746', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (3, 'chemex-classic-6-cup', 0.00, 8.50, NULL, NULL, NULL, true, 3, NULL, 1, 'USD', true, NULL, '2015-09-04 00:44:56.734858', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (5, 'bonavita-1L-electric-kettle', 0.00, NULL, NULL, NULL, NULL, true, 5, NULL, 1, 'USD', true, NULL, '2015-09-04 00:44:56.817833', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (6, 'baratza-virtuoso', 4.00, 13.00, 4.00, 7.00, NULL, true, 6, NULL, 1, 'USD', true, NULL, '2015-09-04 00:44:56.870445', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (7, 'etekcity-scale', 0.00, NULL, NULL, NULL, NULL, true, 7, NULL, 1, 'USD', true, NULL, '2015-09-04 00:44:56.91151', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (8, 'update-thermometer', 0.00, NULL, NULL, NULL, NULL, true, 8, NULL, 1, 'USD', true, NULL, '2015-09-04 00:44:57.005463', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (51, 'bb-brazil-yellow-catuai', 0.00, NULL, NULL, NULL, NULL, true, 51, NULL, 1, 'USD', true, NULL, '2015-09-04 00:44:57.053977', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (49, 'aeropress', 1.00, 10.00, 4.00, 4.00, NULL, true, 49, NULL, 1, 'USD', true, NULL, '2015-09-04 17:42:01.494803', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (9, 'msr-reactor-stove', 0.00, NULL, NULL, NULL, NULL, true, 9, NULL, 1, 'USD', true, NULL, '2015-09-04 17:42:01.57371', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (46, 'cozyna-grinder', 0.00, NULL, NULL, NULL, NULL, true, 46, NULL, 1, 'USD', true, NULL, '2015-09-04 17:42:01.672063', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (50, 'snow-peak-h300-cup', 0.00, NULL, NULL, NULL, NULL, true, 50, NULL, 1, 'USD', true, NULL, '2015-09-04 17:42:01.724366', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (53, 'ritual-guatemala-hacienda-carmona', 0.00, NULL, NULL, NULL, NULL, true, 53, NULL, 1, 'USD', true, NULL, '2015-09-04 17:42:01.79365', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (45, 'bodum-chambord-34oz', 0.00, NULL, NULL, NULL, NULL, true, 45, NULL, 1, 'USD', true, NULL, '2015-08-20 16:59:05.291949', 1);
INSERT INTO spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, stock_items_count) VALUES (47, 'update-international-pitcher', 0.00, NULL, NULL, NULL, NULL, true, 47, NULL, 1, 'USD', true, NULL, '2015-08-20 16:59:05.597339', 1);


--
-- Name: spree_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mars.hall
--

SELECT pg_catalog.setval('spree_variants_id_seq', 54, true);


--
-- PostgreSQL database dump complete
--

