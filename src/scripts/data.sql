SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
00000000-0000-0000-0000-000000000000	0cc192c6-948c-46a6-884c-1b1c3ee726ff	{"action":"user_confirmation_requested","actor_id":"d76d3d97-c616-4918-86e7-364e4dab51de","actor_username":"demo1234@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-07-13 14:20:12.932949+00	
00000000-0000-0000-0000-000000000000	968198ff-afeb-46bf-8ff2-fdf078d1fe40	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"demo@example.com","user_id":"0563351d-5d2c-4271-a111-98ec076f49b2","user_phone":""}}	2025-07-13 14:23:30.055065+00	
00000000-0000-0000-0000-000000000000	126ad145-f8ea-475c-a57d-4b5a777dc163	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"demo1234@gmail.com","user_id":"d76d3d97-c616-4918-86e7-364e4dab51de","user_phone":""}}	2025-07-13 14:23:40.777419+00	
00000000-0000-0000-0000-000000000000	0544d3d4-5776-4bb7-a6eb-88a6461cd8c7	{"action":"login","actor_id":"0563351d-5d2c-4271-a111-98ec076f49b2","actor_username":"demo@example.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-13 14:24:07.190185+00	
00000000-0000-0000-0000-000000000000	2f0e32f3-a377-4b8c-92a6-499e8712c132	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"demo@example.com","user_id":"0563351d-5d2c-4271-a111-98ec076f49b2","user_phone":""}}	2025-07-15 20:07:49.25915+00	
00000000-0000-0000-0000-000000000000	53b1926c-ace3-4fcd-aaa0-4c3b019e4427	{"action":"user_confirmation_requested","actor_id":"56e8406b-cded-428e-9493-fe6ff59750ea","actor_username":"demo000@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}	2025-07-15 20:08:32.280195+00	
00000000-0000-0000-0000-000000000000	c9a55f5a-4412-46a5-a59b-3d55d3633cce	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"demo000@gmail.com","user_id":"56e8406b-cded-428e-9493-fe6ff59750ea","user_phone":""}}	2025-07-15 20:13:31.249624+00	
00000000-0000-0000-0000-000000000000	97ac3271-a277-4e32-8ef7-912938d2115d	{"action":"user_signedup","actor_id":"e693bca7-6c27-4b0e-aca7-c465bf8b2cc3","actor_username":"demo000@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-07-15 20:13:53.642052+00	
00000000-0000-0000-0000-000000000000	60fbdeb5-7048-49aa-8c6d-2a1d0ecfdf7f	{"action":"login","actor_id":"e693bca7-6c27-4b0e-aca7-c465bf8b2cc3","actor_username":"demo000@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-07-15 20:13:53.646964+00	
00000000-0000-0000-0000-000000000000	87d2fad1-f0e1-44dd-b5fe-cb8a84d37b50	{"action":"token_refreshed","actor_id":"e693bca7-6c27-4b0e-aca7-c465bf8b2cc3","actor_username":"demo000@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-15 21:27:30.204077+00	
00000000-0000-0000-0000-000000000000	d806919d-347e-4844-8176-a8da2065f354	{"action":"token_revoked","actor_id":"e693bca7-6c27-4b0e-aca7-c465bf8b2cc3","actor_username":"demo000@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-15 21:27:30.206984+00	
00000000-0000-0000-0000-000000000000	edf704bb-c025-4505-ad33-0739a5316e0f	{"action":"token_refreshed","actor_id":"e693bca7-6c27-4b0e-aca7-c465bf8b2cc3","actor_username":"demo000@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-16 19:58:42.101085+00	
00000000-0000-0000-0000-000000000000	75a44185-09d6-4ca0-941a-2c8e6ea7c6d7	{"action":"token_revoked","actor_id":"e693bca7-6c27-4b0e-aca7-c465bf8b2cc3","actor_username":"demo000@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-16 19:58:42.113429+00	
00000000-0000-0000-0000-000000000000	bde15fc3-36e0-434c-b703-9dd30f9e9d80	{"action":"token_refreshed","actor_id":"e693bca7-6c27-4b0e-aca7-c465bf8b2cc3","actor_username":"demo000@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-17 10:16:40.467742+00	
00000000-0000-0000-0000-000000000000	0577450e-b046-4c65-a193-5a1524169e99	{"action":"token_revoked","actor_id":"e693bca7-6c27-4b0e-aca7-c465bf8b2cc3","actor_username":"demo000@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-17 10:16:40.474065+00	
00000000-0000-0000-0000-000000000000	d7dec6ef-a673-4052-bb96-5ce6052a8ab5	{"action":"token_refreshed","actor_id":"e693bca7-6c27-4b0e-aca7-c465bf8b2cc3","actor_username":"demo000@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-17 11:20:23.456918+00	
00000000-0000-0000-0000-000000000000	a2818474-4122-4ee3-9aec-3b3c99a5a743	{"action":"token_revoked","actor_id":"e693bca7-6c27-4b0e-aca7-c465bf8b2cc3","actor_username":"demo000@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-17 11:20:23.459687+00	
00000000-0000-0000-0000-000000000000	9c038d2f-b481-4cae-961a-eb5997e69898	{"action":"token_refreshed","actor_id":"e693bca7-6c27-4b0e-aca7-c465bf8b2cc3","actor_username":"demo000@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-17 13:36:56.297966+00	
00000000-0000-0000-0000-000000000000	98178c19-93b3-4669-bdad-03925c58e1ab	{"action":"token_revoked","actor_id":"e693bca7-6c27-4b0e-aca7-c465bf8b2cc3","actor_username":"demo000@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-07-17 13:36:56.300337+00	
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	e693bca7-6c27-4b0e-aca7-c465bf8b2cc3	authenticated	authenticated	demo000@gmail.com	$2a$10$lcwtSrw7SXsgQ.HGhiBuQeN6A.Z.PxIzLZAexM9LM2EnBRP/WsDf6	2025-07-15 20:13:53.642562+00	\N		\N		\N			\N	2025-07-15 20:13:53.647552+00	{"provider": "email", "providers": ["email"]}	{"sub": "e693bca7-6c27-4b0e-aca7-c465bf8b2cc3", "email": "demo000@gmail.com", "lastName": "Last Name", "firstName": "First Name", "email_verified": true, "phone_verified": false}	\N	2025-07-15 20:13:53.634933+00	2025-07-17 13:36:56.305381+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
e693bca7-6c27-4b0e-aca7-c465bf8b2cc3	e693bca7-6c27-4b0e-aca7-c465bf8b2cc3	{"sub": "e693bca7-6c27-4b0e-aca7-c465bf8b2cc3", "email": "demo000@gmail.com", "lastName": "Last Name", "firstName": "First Name", "email_verified": false, "phone_verified": false}	email	2025-07-15 20:13:53.639209+00	2025-07-15 20:13:53.639271+00	2025-07-15 20:13:53.639271+00	d9efe35a-2453-487e-b9c7-9a3a8854e03c
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") FROM stdin;
bb7102fc-94ff-4b70-9542-df516e6a0981	e693bca7-6c27-4b0e-aca7-c465bf8b2cc3	2025-07-15 20:13:53.647628+00	2025-07-17 13:36:56.308028+00	\N	aal1	\N	2025-07-17 13:36:56.307384	Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0	168.199.72.216	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
bb7102fc-94ff-4b70-9542-df516e6a0981	2025-07-15 20:13:53.673982+00	2025-07-15 20:13:53.673982+00	password	6eaac180-b980-46ed-9d36-d6dcc3ee2d3a
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	2	wmb4eejdn3hg	e693bca7-6c27-4b0e-aca7-c465bf8b2cc3	t	2025-07-15 20:13:53.654239+00	2025-07-15 21:27:30.2077+00	\N	bb7102fc-94ff-4b70-9542-df516e6a0981
00000000-0000-0000-0000-000000000000	3	kerh74rsvmh7	e693bca7-6c27-4b0e-aca7-c465bf8b2cc3	t	2025-07-15 21:27:30.211838+00	2025-07-16 19:58:42.116476+00	wmb4eejdn3hg	bb7102fc-94ff-4b70-9542-df516e6a0981
00000000-0000-0000-0000-000000000000	4	7av53bpb5txh	e693bca7-6c27-4b0e-aca7-c465bf8b2cc3	t	2025-07-16 19:58:42.12933+00	2025-07-17 10:16:40.47479+00	kerh74rsvmh7	bb7102fc-94ff-4b70-9542-df516e6a0981
00000000-0000-0000-0000-000000000000	5	76wtrmasoplf	e693bca7-6c27-4b0e-aca7-c465bf8b2cc3	t	2025-07-17 10:16:40.483191+00	2025-07-17 11:20:23.460217+00	7av53bpb5txh	bb7102fc-94ff-4b70-9542-df516e6a0981
00000000-0000-0000-0000-000000000000	6	u2wotr4n63he	e693bca7-6c27-4b0e-aca7-c465bf8b2cc3	t	2025-07-17 11:20:23.462716+00	2025-07-17 13:36:56.300881+00	76wtrmasoplf	bb7102fc-94ff-4b70-9542-df516e6a0981
00000000-0000-0000-0000-000000000000	7	2a5iy33bch26	e693bca7-6c27-4b0e-aca7-c465bf8b2cc3	f	2025-07-17 13:36:56.303607+00	2025-07-17 13:36:56.303607+00	u2wotr4n63he	bb7102fc-94ff-4b70-9542-df516e6a0981
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: emoji; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."emoji" ("id", "created_at", "name", "shortcode", "unicode", "utf8") FROM stdin;
12	2025-07-15 21:14:07.404121+00	happy	:blush:	U+1F60A	128522
13	2025-07-15 21:14:07.404121+00	sad	:cry:	U+1F622	128546
14	2025-07-15 21:14:07.404121+00	excited	:star_struck:	U+1F929	129321
15	2025-07-15 21:14:07.404121+00	angry	:angry:	U+1F620	128544
16	2025-07-15 21:14:07.404121+00	anxious	:cold_sweat:	U+1F630	128560
17	2025-07-15 21:14:07.404121+00	relaxed	:relieved:	U+1F60C	128524
18	2025-07-15 21:14:07.404121+00	tired	:sleeping:	U+1F634	128564
19	2025-07-15 21:14:07.404121+00	surprised	:astonished:	U+1F632	128562
20	2025-07-15 21:14:07.404121+00	confused	:confused:	U+1F615	128533
21	2025-07-15 21:14:07.404121+00	bored	:yawning_face:	U+1F971	129393
\.


--
-- Data for Name: journal_content; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."journal_content" ("id", "created_at", "text", "title") FROM stdin;
1	2025-07-16 17:57:44.718765+00	Example text	Example title
\.


--
-- Data for Name: journal_prompt_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."journal_prompt_category" ("id", "created_at", "name") FROM stdin;
1	2025-07-16 17:52:21.139072+00	beginner
2	2025-07-16 17:52:32.093027+00	daily
\.


--
-- Data for Name: journal_prompt; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."journal_prompt" ("id", "created_at", "prompt", "prompt_category") FROM stdin;
1	2025-07-16 17:55:10.694173+00	What happened today?	1
2	2025-07-16 17:55:10.694173+00	What was the best thing that happened today?	1
3	2025-07-16 17:55:10.694173+00	What was the worst thing that happened today?	1
4	2025-07-16 17:55:10.694173+00	What was the most interesting thing I saw or heard today?	1
5	2025-07-16 17:55:10.694173+00	What was the most challenging thing I faced today?	1
6	2025-07-16 17:55:10.694173+00	What am I grateful for today?	1
7	2025-07-16 17:55:10.694173+00	What did I learn today?	1
8	2025-07-16 17:55:10.694173+00	What was the most fun thing I did today?	1
9	2025-07-16 17:55:10.694173+00	What was the most surprising thing that happened today?	1
10	2025-07-16 17:55:10.694173+00	What did I do today that I am proud of?	1
11	2025-07-16 17:55:10.694173+00	How am I feeling today?	2
12	2025-07-16 17:55:10.694173+00	How does my body feel today?	2
13	2025-07-16 17:55:10.694173+00	What am I nervous or anxious about today?	2
14	2025-07-16 17:55:10.694173+00	What actions can I take on each of the things that make me nervous or anxious?	2
15	2025-07-16 17:55:10.694173+00	What are my top priorities for the day?	2
16	2025-07-16 17:55:10.694173+00	What’s something I can do to make today amazing?	2
17	2025-07-16 17:55:10.694173+00	What did I learn today? How can I apply this knowledge in the future?	2
18	2025-07-16 17:55:10.694173+00	What challenges did I face today? How did I overcome them? What can I learn from these experiences?	2
19	2025-07-16 17:55:10.694173+00	What did I do today that brought me joy or fulfillment? How can I incorporate more of these activities into my daily routine?	2
20	2025-07-16 17:55:10.694173+00	What was a moment of joy, delight, or contentment today?	2
21	2025-07-16 17:55:10.694173+00	What was a small detail I noticed today?	2
22	2025-07-16 17:55:10.694173+00	What was the weather like today?	2
23	2025-07-16 17:55:10.694173+00	What am I thankful for today?	2
24	2025-07-16 17:55:10.694173+00	What could I have done differently today?	2
25	2025-07-16 17:55:10.694173+00	How can I make tomorrow even better?	2
\.


--
-- Data for Name: journal_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."journal_entry" ("id", "created_at", "user_id", "journal_content_id", "journal_prompt_id", "emoji_id") FROM stdin;
1	2025-07-16 18:10:17.336377+00	example_user_id	1	1	12
\.


--
-- Data for Name: test_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_table" ("id", "created_at", "column_one") FROM stdin;
1	2025-07-17 11:40:46.798038+00	Sample text
\.


--
-- Data for Name: user_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_info" ("id", "created_at", "user_id", "email", "first_name", "last_name", "date_of_birth", "country", "journalling_goal") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 7, true);


--
-- Name: emoji_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."emoji_id_seq"', 21, true);


--
-- Name: journal_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."journal_entry_id_seq"', 1, true);


--
-- Name: journal_prompt_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."journal_prompt_category_id_seq"', 2, true);


--
-- Name: journal_prompt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."journal_prompt_id_seq"', 25, true);


--
-- Name: journal_text_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."journal_text_id_seq"', 1, true);


--
-- Name: test_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."test_table_id_seq"', 1, true);


--
-- Name: user_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."user_info_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
