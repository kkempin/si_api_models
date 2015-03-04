--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: bookings; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE bookings (
    id integer NOT NULL,
    campaign_id integer,
    social_media_profile_id integer,
    status character varying(255),
    comment character varying(255),
    price numeric,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: bookings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE bookings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bookings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE bookings_id_seq OWNED BY bookings.id;


--
-- Name: campaigns; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE campaigns (
    id integer NOT NULL,
    name character varying(255),
    status character varying(255),
    budget integer,
    starts_at timestamp without time zone,
    ends_at timestamp without time zone,
    brand character varying(255),
    description text,
    campaign_type character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: campaigns_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE campaigns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: campaigns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE campaigns_id_seq OWNED BY campaigns.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: social_media_profiles; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE social_media_profiles (
    id integer NOT NULL,
    user_id integer,
    profile_name character varying(255),
    status character varying(255),
    description text,
    followers_count character varying(255),
    city character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: social_media_profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE social_media_profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: social_media_profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE social_media_profiles_id_seq OWNED BY social_media_profiles.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY bookings ALTER COLUMN id SET DEFAULT nextval('bookings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY campaigns ALTER COLUMN id SET DEFAULT nextval('campaigns_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY social_media_profiles ALTER COLUMN id SET DEFAULT nextval('social_media_profiles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: bookings; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO bookings VALUES (1, 1, 77, 'expired', 'Vel eos similique illo voluptatem debitis.', 73.32, '2015-03-04 10:02:40.266116', '2015-03-04 10:02:40.266116');
INSERT INTO bookings VALUES (2, 1, 17, 'offered', 'Porro veniam numquam labore aperiam blanditiis omnis at.', 10.19, '2015-03-04 10:02:40.270585', '2015-03-04 10:02:40.270585');
INSERT INTO bookings VALUES (3, 1, 82, 'accepted', 'Qui tempora est odit quisquam.', 78.04, '2015-03-04 10:02:40.27356', '2015-03-04 10:02:40.27356');
INSERT INTO bookings VALUES (4, 1, 7, 'declined', 'Veritatis eligendi minima consequatur dicta delectus.', 28.53, '2015-03-04 10:02:40.276658', '2015-03-04 10:02:40.276658');
INSERT INTO bookings VALUES (5, 1, 58, 'declined', 'Quia nemo et debitis dolores velit vero.', 81.05, '2015-03-04 10:02:40.279869', '2015-03-04 10:02:40.279869');
INSERT INTO bookings VALUES (6, 1, 43, 'accepted', 'Ut ut officiis sit culpa.', 66.85, '2015-03-04 10:02:40.283096', '2015-03-04 10:02:40.283096');
INSERT INTO bookings VALUES (7, 2, 33, 'declined', 'Velit iste delectus dolore.', 92.7, '2015-03-04 10:02:40.292937', '2015-03-04 10:02:40.292937');
INSERT INTO bookings VALUES (8, 2, 91, 'accepted', 'Cum voluptatem officia vel.', 9.38, '2015-03-04 10:02:40.29623', '2015-03-04 10:02:40.29623');
INSERT INTO bookings VALUES (9, 2, 69, 'declined', 'Odit quia eligendi impedit et et repudiandae debitis esse.', 48.23, '2015-03-04 10:02:40.304678', '2015-03-04 10:02:40.304678');
INSERT INTO bookings VALUES (10, 2, 60, 'expired', 'Eligendi enim qui molestias quia temporibus veniam.', 53.33, '2015-03-04 10:02:40.308135', '2015-03-04 10:02:40.308135');
INSERT INTO bookings VALUES (11, 2, 20, 'accepted', 'Dolorem et nostrum iure ullam ut aut cupiditate dolores.', 52.15, '2015-03-04 10:02:40.311184', '2015-03-04 10:02:40.311184');
INSERT INTO bookings VALUES (12, 2, 5, 'accepted', 'Vel totam beatae quis.', 0.55, '2015-03-04 10:02:40.314244', '2015-03-04 10:02:40.314244');
INSERT INTO bookings VALUES (13, 3, 58, 'expired', 'Et aliquid totam mollitia perspiciatis esse consectetur voluptatem.', 7.12, '2015-03-04 10:02:40.323712', '2015-03-04 10:02:40.323712');
INSERT INTO bookings VALUES (14, 3, 12, 'declined', 'Aut aut dolores enim nemo molestias nostrum voluptas nihil.', 85.42, '2015-03-04 10:02:40.326832', '2015-03-04 10:02:40.326832');
INSERT INTO bookings VALUES (15, 3, 85, 'declined', 'Impedit rerum perferendis ipsam consequatur sed vel.', 76.05, '2015-03-04 10:02:40.329768', '2015-03-04 10:02:40.329768');
INSERT INTO bookings VALUES (16, 3, 53, 'offered', 'Incidunt architecto repudiandae et.', 79.46, '2015-03-04 10:02:40.332764', '2015-03-04 10:02:40.332764');
INSERT INTO bookings VALUES (17, 4, 20, 'expired', 'Vitae optio aut itaque quis atque.', 18.84, '2015-03-04 10:02:40.342204', '2015-03-04 10:02:40.342204');
INSERT INTO bookings VALUES (18, 4, 3, 'expired', 'Mollitia ea ipsa ipsam dolor vero quo cumque hic.', 33.68, '2015-03-04 10:02:40.345643', '2015-03-04 10:02:40.345643');
INSERT INTO bookings VALUES (19, 4, 94, 'accepted', 'Necessitatibus nihil laudantium et voluptatem architecto et.', 50.59, '2015-03-04 10:02:40.348712', '2015-03-04 10:02:40.348712');
INSERT INTO bookings VALUES (20, 5, 7, 'declined', 'Aut ut dolore molestiae dicta aliquid ullam nostrum.', 1.38, '2015-03-04 10:02:40.358642', '2015-03-04 10:02:40.358642');
INSERT INTO bookings VALUES (21, 5, 55, 'declined', 'Voluptate eum aspernatur pariatur.', 21.19, '2015-03-04 10:02:40.362218', '2015-03-04 10:02:40.362218');
INSERT INTO bookings VALUES (22, 5, 24, 'offered', 'Consequuntur magni labore sint voluptatem.', 78.93, '2015-03-04 10:02:40.365375', '2015-03-04 10:02:40.365375');
INSERT INTO bookings VALUES (23, 5, 72, 'accepted', 'Consequuntur culpa quia nesciunt esse et exercitationem quis.', 43.83, '2015-03-04 10:02:40.368664', '2015-03-04 10:02:40.368664');
INSERT INTO bookings VALUES (24, 5, 71, 'accepted', 'Sapiente possimus ipsa qui et esse culpa sint sint.', 40.93, '2015-03-04 10:02:40.371752', '2015-03-04 10:02:40.371752');
INSERT INTO bookings VALUES (25, 5, 20, 'accepted', 'Est cupiditate ab placeat magnam mollitia ex et quos.', 82.37, '2015-03-04 10:02:40.374873', '2015-03-04 10:02:40.374873');
INSERT INTO bookings VALUES (26, 5, 56, 'expired', 'Optio alias architecto placeat quis.', 4.85, '2015-03-04 10:02:40.377844', '2015-03-04 10:02:40.377844');
INSERT INTO bookings VALUES (27, 6, 42, 'expired', 'Id animi non hic.', 43.8, '2015-03-04 10:02:40.387078', '2015-03-04 10:02:40.387078');
INSERT INTO bookings VALUES (28, 6, 91, 'accepted', 'Voluptatibus ex quia ab consequatur tempora voluptas et vitae.', 32.23, '2015-03-04 10:02:40.390363', '2015-03-04 10:02:40.390363');
INSERT INTO bookings VALUES (29, 6, 70, 'offered', 'Est ullam quia porro.', 46.11, '2015-03-04 10:02:40.394087', '2015-03-04 10:02:40.394087');
INSERT INTO bookings VALUES (30, 7, 90, 'accepted', 'Pariatur atque et et qui reiciendis omnis ut.', 46.49, '2015-03-04 10:02:40.403685', '2015-03-04 10:02:40.403685');
INSERT INTO bookings VALUES (31, 7, 37, 'offered', 'Minus deserunt debitis perferendis voluptas voluptatibus quia.', 51.15, '2015-03-04 10:02:40.4068', '2015-03-04 10:02:40.4068');
INSERT INTO bookings VALUES (32, 7, 70, 'offered', 'Suscipit voluptatem laboriosam vero adipisci id assumenda.', 75.48, '2015-03-04 10:02:40.409861', '2015-03-04 10:02:40.409861');
INSERT INTO bookings VALUES (33, 8, 61, 'offered', 'Fugit est consequatur vitae tenetur.', 14.09, '2015-03-04 10:02:40.419199', '2015-03-04 10:02:40.419199');
INSERT INTO bookings VALUES (34, 8, 14, 'offered', 'Consequatur voluptatem minus repellat nisi nam in.', 4.69, '2015-03-04 10:02:40.422342', '2015-03-04 10:02:40.422342');
INSERT INTO bookings VALUES (35, 8, 76, 'offered', 'Quod magnam nihil nemo iste voluptas.', 33.04, '2015-03-04 10:02:40.425385', '2015-03-04 10:02:40.425385');
INSERT INTO bookings VALUES (36, 8, 34, 'accepted', 'Laudantium ab consequatur sed.', 2.16, '2015-03-04 10:02:40.428353', '2015-03-04 10:02:40.428353');
INSERT INTO bookings VALUES (37, 9, 69, 'expired', 'Minus et temporibus doloremque.', 90.3, '2015-03-04 10:02:40.437821', '2015-03-04 10:02:40.437821');
INSERT INTO bookings VALUES (38, 9, 94, 'accepted', 'Dolorem est asperiores voluptatem.', 37.46, '2015-03-04 10:02:40.440922', '2015-03-04 10:02:40.440922');
INSERT INTO bookings VALUES (39, 9, 59, 'accepted', 'Porro laborum modi unde distinctio quia.', 14.99, '2015-03-04 10:02:40.444041', '2015-03-04 10:02:40.444041');
INSERT INTO bookings VALUES (40, 9, 18, 'accepted', 'Ipsa vero consequuntur minus sunt.', 37.56, '2015-03-04 10:02:40.447034', '2015-03-04 10:02:40.447034');
INSERT INTO bookings VALUES (41, 9, 103, 'declined', 'Consequuntur autem perferendis culpa pariatur.', 0.29, '2015-03-04 10:02:40.449949', '2015-03-04 10:02:40.449949');
INSERT INTO bookings VALUES (42, 10, 86, 'declined', 'Corporis velit quis odio.', 88.68, '2015-03-04 10:02:40.460334', '2015-03-04 10:02:40.460334');
INSERT INTO bookings VALUES (43, 10, 75, 'accepted', 'Voluptatem ratione inventore nulla hic.', 10.82, '2015-03-04 10:02:40.463554', '2015-03-04 10:02:40.463554');
INSERT INTO bookings VALUES (44, 10, 84, 'declined', 'Delectus sit consequatur alias.', 64.99, '2015-03-04 10:02:40.46702', '2015-03-04 10:02:40.46702');
INSERT INTO bookings VALUES (45, 10, 8, 'offered', 'Qui dignissimos eum voluptas.', 11.21, '2015-03-04 10:02:40.470119', '2015-03-04 10:02:40.470119');
INSERT INTO bookings VALUES (46, 10, 22, 'expired', 'Quo veritatis omnis voluptatibus et ea at adipisci sunt.', 45.13, '2015-03-04 10:02:40.473185', '2015-03-04 10:02:40.473185');
INSERT INTO bookings VALUES (47, 11, 54, 'accepted', 'Est sit quia neque.', 44.22, '2015-03-04 10:02:40.482785', '2015-03-04 10:02:40.482785');
INSERT INTO bookings VALUES (48, 11, 14, 'declined', 'Aliquam ut voluptatibus non.', 25.87, '2015-03-04 10:02:40.485973', '2015-03-04 10:02:40.485973');
INSERT INTO bookings VALUES (49, 11, 35, 'expired', 'Aliquid fugiat velit a.', 12.02, '2015-03-04 10:02:40.489071', '2015-03-04 10:02:40.489071');
INSERT INTO bookings VALUES (50, 11, 95, 'offered', 'Natus totam perspiciatis neque.', 87.02, '2015-03-04 10:02:40.492158', '2015-03-04 10:02:40.492158');
INSERT INTO bookings VALUES (51, 11, 26, 'declined', 'Molestiae tenetur ad qui.', 99.04, '2015-03-04 10:02:40.495105', '2015-03-04 10:02:40.495105');
INSERT INTO bookings VALUES (52, 11, 64, 'offered', 'Accusamus id ratione voluptatem.', 23.61, '2015-03-04 10:02:40.498156', '2015-03-04 10:02:40.498156');
INSERT INTO bookings VALUES (53, 12, 59, 'offered', 'Aut provident dolores voluptatem cupiditate commodi nesciunt tenetur voluptatem.', 92.68, '2015-03-04 10:02:40.531507', '2015-03-04 10:02:40.531507');
INSERT INTO bookings VALUES (54, 12, 25, 'offered', 'Accusantium rem eveniet quia qui blanditiis dolorem.', 80.47, '2015-03-04 10:02:40.538761', '2015-03-04 10:02:40.538761');
INSERT INTO bookings VALUES (55, 12, 97, 'accepted', 'Soluta sint inventore ipsum minus ratione.', 18.9, '2015-03-04 10:02:40.542709', '2015-03-04 10:02:40.542709');
INSERT INTO bookings VALUES (56, 12, 70, 'expired', 'Vitae voluptatum possimus dolore necessitatibus eos.', 39.37, '2015-03-04 10:02:40.54632', '2015-03-04 10:02:40.54632');
INSERT INTO bookings VALUES (57, 13, 94, 'declined', 'Rerum saepe ullam voluptates.', 25.23, '2015-03-04 10:02:40.556957', '2015-03-04 10:02:40.556957');
INSERT INTO bookings VALUES (58, 13, 55, 'offered', 'Cum nisi deserunt aliquam officia voluptatem.', 6.72, '2015-03-04 10:02:40.560122', '2015-03-04 10:02:40.560122');
INSERT INTO bookings VALUES (59, 13, 73, 'expired', 'Perspiciatis explicabo alias adipisci asperiores.', 78.31, '2015-03-04 10:02:40.563346', '2015-03-04 10:02:40.563346');
INSERT INTO bookings VALUES (60, 14, 21, 'declined', 'Exercitationem perferendis rerum velit dolorem culpa et est voluptatem.', 87.73, '2015-03-04 10:02:40.573478', '2015-03-04 10:02:40.573478');
INSERT INTO bookings VALUES (61, 14, 81, 'accepted', 'Quasi aliquid harum sed assumenda et earum illo omnis.', 7.9, '2015-03-04 10:02:40.576675', '2015-03-04 10:02:40.576675');
INSERT INTO bookings VALUES (62, 14, 87, 'expired', 'Impedit officia nam numquam dolores porro id.', 63.67, '2015-03-04 10:02:40.579764', '2015-03-04 10:02:40.579764');
INSERT INTO bookings VALUES (63, 14, 4, 'accepted', 'Incidunt laboriosam sit et.', 64.58, '2015-03-04 10:02:40.583082', '2015-03-04 10:02:40.583082');
INSERT INTO bookings VALUES (64, 14, 86, 'offered', 'Et officiis cumque et.', 97.8, '2015-03-04 10:02:40.586248', '2015-03-04 10:02:40.586248');
INSERT INTO bookings VALUES (65, 14, 8, 'expired', 'Unde laudantium velit assumenda est nesciunt voluptatem.', 38.42, '2015-03-04 10:02:40.589238', '2015-03-04 10:02:40.589238');
INSERT INTO bookings VALUES (66, 15, 11, 'declined', 'Nihil nostrum corporis nam voluptatem molestiae exercitationem quis.', 76.81, '2015-03-04 10:02:40.598952', '2015-03-04 10:02:40.598952');
INSERT INTO bookings VALUES (67, 15, 102, 'offered', 'Qui voluptatem omnis voluptatem consectetur sit dolorum.', 27.96, '2015-03-04 10:02:40.602847', '2015-03-04 10:02:40.602847');
INSERT INTO bookings VALUES (68, 15, 76, 'offered', 'Aut est consectetur blanditiis enim hic.', 16.36, '2015-03-04 10:02:40.606443', '2015-03-04 10:02:40.606443');
INSERT INTO bookings VALUES (69, 15, 20, 'offered', 'Sunt placeat possimus omnis a quo id repudiandae.', 3.55, '2015-03-04 10:02:40.609395', '2015-03-04 10:02:40.609395');
INSERT INTO bookings VALUES (70, 16, 77, 'expired', 'Ut ratione earum impedit vel neque.', 78.43, '2015-03-04 10:02:40.618886', '2015-03-04 10:02:40.618886');
INSERT INTO bookings VALUES (71, 16, 30, 'offered', 'Perspiciatis molestiae dicta consequatur doloremque.', 5.37, '2015-03-04 10:02:40.622288', '2015-03-04 10:02:40.622288');
INSERT INTO bookings VALUES (72, 16, 36, 'accepted', 'Alias cumque ipsa dolor.', 64.88, '2015-03-04 10:02:40.625172', '2015-03-04 10:02:40.625172');
INSERT INTO bookings VALUES (73, 16, 58, 'offered', 'Delectus natus explicabo sed.', 82.97, '2015-03-04 10:02:40.628116', '2015-03-04 10:02:40.628116');
INSERT INTO bookings VALUES (74, 16, 76, 'offered', 'Enim consequatur excepturi nihil id occaecati.', 79.55, '2015-03-04 10:02:40.631203', '2015-03-04 10:02:40.631203');
INSERT INTO bookings VALUES (75, 16, 42, 'expired', 'Id eum consequatur illo libero qui adipisci.', 82.01, '2015-03-04 10:02:40.634352', '2015-03-04 10:02:40.634352');
INSERT INTO bookings VALUES (76, 16, 32, 'accepted', 'Dicta nisi fugit veritatis.', 77.23, '2015-03-04 10:02:40.637347', '2015-03-04 10:02:40.637347');
INSERT INTO bookings VALUES (77, 17, 75, 'expired', 'Sunt voluptas harum facere cupiditate sed qui.', 12.5, '2015-03-04 10:02:40.646963', '2015-03-04 10:02:40.646963');
INSERT INTO bookings VALUES (78, 17, 63, 'declined', 'Nesciunt et in commodi culpa.', 82.8, '2015-03-04 10:02:40.650248', '2015-03-04 10:02:40.650248');
INSERT INTO bookings VALUES (79, 17, 2, 'accepted', 'Explicabo nihil aut iusto soluta rerum veniam.', 13.23, '2015-03-04 10:02:40.653603', '2015-03-04 10:02:40.653603');
INSERT INTO bookings VALUES (80, 17, 29, 'declined', 'Quod perspiciatis rerum sunt.', 99.2, '2015-03-04 10:02:40.656746', '2015-03-04 10:02:40.656746');
INSERT INTO bookings VALUES (81, 17, 21, 'declined', 'Possimus quia voluptatem sit.', 79.78, '2015-03-04 10:02:40.659866', '2015-03-04 10:02:40.659866');
INSERT INTO bookings VALUES (82, 18, 59, 'declined', 'Vel voluptas nisi ipsa sit a incidunt blanditiis.', 7.63, '2015-03-04 10:02:40.670141', '2015-03-04 10:02:40.670141');
INSERT INTO bookings VALUES (83, 18, 87, 'offered', 'Totam porro ea consequatur dolores aliquid tempore.', 94.89, '2015-03-04 10:02:40.674367', '2015-03-04 10:02:40.674367');
INSERT INTO bookings VALUES (84, 18, 81, 'offered', 'Aut magnam at eum assumenda dolore fuga culpa repellendus.', 83.62, '2015-03-04 10:02:40.677913', '2015-03-04 10:02:40.677913');
INSERT INTO bookings VALUES (85, 18, 78, 'accepted', 'Minima ut et tempore possimus.', 67.34, '2015-03-04 10:02:40.681616', '2015-03-04 10:02:40.681616');
INSERT INTO bookings VALUES (86, 18, 52, 'accepted', 'Rerum repellendus aut voluptate officiis.', 0.01, '2015-03-04 10:02:40.685172', '2015-03-04 10:02:40.685172');
INSERT INTO bookings VALUES (87, 18, 45, 'declined', 'Optio eveniet ad rerum aut inventore consequatur.', 80.86, '2015-03-04 10:02:40.688762', '2015-03-04 10:02:40.688762');
INSERT INTO bookings VALUES (88, 19, 81, 'accepted', 'Sed corrupti ut aspernatur.', 94.1, '2015-03-04 10:02:40.698851', '2015-03-04 10:02:40.698851');
INSERT INTO bookings VALUES (89, 19, 76, 'accepted', 'Laudantium qui molestiae soluta aliquid corporis velit.', 59.4, '2015-03-04 10:02:40.702623', '2015-03-04 10:02:40.702623');
INSERT INTO bookings VALUES (90, 19, 55, 'accepted', 'Et sed ducimus est ea.', 6.3, '2015-03-04 10:02:40.70634', '2015-03-04 10:02:40.70634');
INSERT INTO bookings VALUES (91, 19, 24, 'accepted', 'Sed quis rem autem omnis animi autem commodi.', 31.39, '2015-03-04 10:02:40.70974', '2015-03-04 10:02:40.70974');
INSERT INTO bookings VALUES (92, 19, 64, 'offered', 'Rerum commodi numquam quisquam accusantium.', 50.58, '2015-03-04 10:02:40.713628', '2015-03-04 10:02:40.713628');
INSERT INTO bookings VALUES (93, 19, 80, 'accepted', 'Quia velit atque sunt est dolorum.', 31.32, '2015-03-04 10:02:40.717566', '2015-03-04 10:02:40.717566');
INSERT INTO bookings VALUES (94, 19, 90, 'accepted', 'Ut ducimus doloremque quia.', 20.61, '2015-03-04 10:02:40.721046', '2015-03-04 10:02:40.721046');
INSERT INTO bookings VALUES (95, 19, 22, 'accepted', 'Commodi corrupti nam autem debitis.', 64.68, '2015-03-04 10:02:40.724456', '2015-03-04 10:02:40.724456');
INSERT INTO bookings VALUES (96, 20, 15, 'accepted', 'Earum in qui aliquam.', 12.46, '2015-03-04 10:02:40.735501', '2015-03-04 10:02:40.735501');
INSERT INTO bookings VALUES (97, 20, 12, 'accepted', 'Quaerat ad rerum quas doloremque voluptatem blanditiis tempora.', 42.7, '2015-03-04 10:02:40.739067', '2015-03-04 10:02:40.739067');
INSERT INTO bookings VALUES (98, 20, 54, 'accepted', 'Officiis itaque ut autem.', 16.89, '2015-03-04 10:02:40.742562', '2015-03-04 10:02:40.742562');
INSERT INTO bookings VALUES (99, 20, 93, 'declined', 'Quos pariatur ea id eveniet in officia.', 5.6, '2015-03-04 10:02:40.746181', '2015-03-04 10:02:40.746181');
INSERT INTO bookings VALUES (100, 20, 72, 'offered', 'Ad quo possimus deserunt non doloribus cum.', 32.53, '2015-03-04 10:02:40.749691', '2015-03-04 10:02:40.749691');


--
-- Name: bookings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('bookings_id_seq', 100, true);


--
-- Data for Name: campaigns; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO campaigns VALUES (1, 'Rustic Concrete Chair', 'active', 1500, '2014-11-26 00:00:00', '2014-12-16 00:00:00', 'Spencer-Hilpert', 'Tenetur totam tempora culpa reprehenderit.', 'photos_seeding', '2015-03-04 10:02:40.237873', '2015-03-04 10:02:40.237873');
INSERT INTO campaigns VALUES (2, 'Awesome Rubber Pants', 'finished', 2900, '2014-12-25 00:00:00', '2015-01-14 00:00:00', 'Tillman, Fay and Feest', 'Qui dolore rerum et et iure ipsum in.', 'contest', '2015-03-04 10:02:40.285982', '2015-03-04 10:02:40.285982');
INSERT INTO campaigns VALUES (3, 'Rustic Steel Table', 'draft', 3600, '2015-01-24 00:00:00', '2015-02-13 00:00:00', 'Wilkinson, Toy and Cole', 'Et voluptas nobis aut.', 'contest', '2015-03-04 10:02:40.317097', '2015-03-04 10:02:40.317097');
INSERT INTO campaigns VALUES (4, 'Incredible Rubber Hat', 'finished', 8000, '2015-02-27 00:00:00', '2015-03-19 00:00:00', 'Ward, Schmeler and Zulauf', 'Qui aperiam molestias harum sunt.', 'photos_seeding', '2015-03-04 10:02:40.335655', '2015-03-04 10:02:40.335655');
INSERT INTO campaigns VALUES (5, 'Sleek Rubber Computer', 'draft', 9600, '2015-01-19 00:00:00', '2015-02-08 00:00:00', 'Heidenreich Inc', 'Sequi voluptatem neque aut et quo.', 'photos_seeding', '2015-03-04 10:02:40.351342', '2015-03-04 10:02:40.351342');
INSERT INTO campaigns VALUES (6, 'Sleek Concrete Gloves', 'archived', 9600, '2014-10-31 00:00:00', '2014-11-20 00:00:00', 'Conn Inc', 'Eos dolores debitis et quasi dolor iusto aliquam.', 'product_placement', '2015-03-04 10:02:40.380627', '2015-03-04 10:02:40.380627');
INSERT INTO campaigns VALUES (7, 'Ergonomic Rubber Shoes', 'finished', 5500, '2015-02-16 00:00:00', '2015-03-08 00:00:00', 'Stracke Group', 'Incidunt error dolores delectus.', 'product_placement', '2015-03-04 10:02:40.397256', '2015-03-04 10:02:40.397256');
INSERT INTO campaigns VALUES (8, 'Intelligent Plastic Pants', 'archived', 6000, '2014-10-16 00:00:00', '2014-11-05 00:00:00', 'Rohan-Stokes', 'Laborum quaerat sed quam amet est.', 'contest', '2015-03-04 10:02:40.412716', '2015-03-04 10:02:40.412716');
INSERT INTO campaigns VALUES (9, 'Gorgeous Granite Pants', 'finished', 7500, '2015-01-01 00:00:00', '2015-01-21 00:00:00', 'Gleichner Group', 'Occaecati in quia ea.', 'contest', '2015-03-04 10:02:40.431219', '2015-03-04 10:02:40.431219');
INSERT INTO campaigns VALUES (10, 'Ergonomic Plastic Shirt', 'finished', 2500, '2015-01-19 00:00:00', '2015-02-08 00:00:00', 'Runolfsson, Ritchie and Wisoky', 'Nostrum quo omnis ipsum voluptatem perferendis est.', 'photos_seeding', '2015-03-04 10:02:40.45319', '2015-03-04 10:02:40.45319');
INSERT INTO campaigns VALUES (11, 'Practical Steel Table', 'archived', 9200, '2015-02-18 00:00:00', '2015-03-10 00:00:00', 'Parker-Miller', 'Sint aut nisi dolores tenetur doloremque omnis.', 'product_placement', '2015-03-04 10:02:40.476139', '2015-03-04 10:02:40.476139');
INSERT INTO campaigns VALUES (12, 'Ergonomic Wooden Table', 'draft', 5400, '2014-11-20 00:00:00', '2014-12-10 00:00:00', 'Streich, Robel and MacGyver', 'Aliquid consectetur non quia fugit.', 'product_placement', '2015-03-04 10:02:40.501162', '2015-03-04 10:02:40.501162');
INSERT INTO campaigns VALUES (13, 'Practical Steel Car', 'finished', 2100, '2014-12-02 00:00:00', '2014-12-22 00:00:00', 'Howell-Zboncak', 'Vero eius sed qui.', 'contest', '2015-03-04 10:02:40.549758', '2015-03-04 10:02:40.549758');
INSERT INTO campaigns VALUES (14, 'Rustic Steel Shirt', 'draft', 8300, '2014-12-09 00:00:00', '2014-12-29 00:00:00', 'Nader, Kilback and Eichmann', 'Et nam itaque repellendus est optio ea.', 'photos_seeding', '2015-03-04 10:02:40.566366', '2015-03-04 10:02:40.566366');
INSERT INTO campaigns VALUES (15, 'Small Concrete Gloves', 'draft', 8900, '2014-12-28 00:00:00', '2015-01-17 00:00:00', 'Gleason Group', 'Quis ducimus quaerat expedita facilis.', 'contest', '2015-03-04 10:02:40.592124', '2015-03-04 10:02:40.592124');
INSERT INTO campaigns VALUES (16, 'Practical Granite Hat', 'active', 1300, '2015-02-09 00:00:00', '2015-03-01 00:00:00', 'Christiansen LLC', 'Dolorem repudiandae autem explicabo reprehenderit eum numquam.', 'photos_seeding', '2015-03-04 10:02:40.612238', '2015-03-04 10:02:40.612238');
INSERT INTO campaigns VALUES (17, 'Incredible Plastic Table', 'archived', 400, '2015-01-14 00:00:00', '2015-02-03 00:00:00', 'Bergnaum, Braun and Steuber', 'Voluptatem iure minus occaecati omnis.', 'photos_seeding', '2015-03-04 10:02:40.640066', '2015-03-04 10:02:40.640066');
INSERT INTO campaigns VALUES (18, 'Fantastic Concrete Hat', 'finished', 500, '2014-10-22 00:00:00', '2014-11-11 00:00:00', 'Cronin-Hermiston', 'Mollitia corrupti doloremque aut tempora iste vitae unde.', 'photos_seeding', '2015-03-04 10:02:40.662756', '2015-03-04 10:02:40.662756');
INSERT INTO campaigns VALUES (19, 'Fantastic Steel Gloves', 'active', 2000, '2014-11-04 00:00:00', '2014-11-24 00:00:00', 'Dach-Nolan', 'Sed quis est commodi eaque ea.', 'product_placement', '2015-03-04 10:02:40.691961', '2015-03-04 10:02:40.691961');
INSERT INTO campaigns VALUES (20, 'Small Steel Shoes', 'finished', 900, '2014-11-05 00:00:00', '2014-11-25 00:00:00', 'Hegmann LLC', 'Iusto nam beatae est.', 'contest', '2015-03-04 10:02:40.727545', '2015-03-04 10:02:40.727545');


--
-- Name: campaigns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('campaigns_id_seq', 20, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO schema_migrations VALUES ('20150304090504');
INSERT INTO schema_migrations VALUES ('20150304090740');
INSERT INTO schema_migrations VALUES ('20150304090926');
INSERT INTO schema_migrations VALUES ('20150304091105');


--
-- Data for Name: social_media_profiles; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO social_media_profiles VALUES (1, 1, 'marisa', 'active', 'Sint voluptatem incidunt quidem sint quos aliquam iure.', '1733', 'Kaneton', '2015-03-04 10:02:39.799346', '2015-03-04 10:02:39.799346');
INSERT INTO social_media_profiles VALUES (2, 2, 'jewel', 'active', 'Occaecati perferendis sed omnis dolorum sit vel.', '5806', 'Nienowport', '2015-03-04 10:02:39.80582', '2015-03-04 10:02:39.80582');
INSERT INTO social_media_profiles VALUES (3, 2, 'ramona', 'active', 'Ipsam culpa tenetur aut architecto ad sit veritatis.', '2532', 'Bednarfort', '2015-03-04 10:02:39.808576', '2015-03-04 10:02:39.808576');
INSERT INTO social_media_profiles VALUES (4, 3, 'lily', 'active', 'Eos quia voluptatem tempora ut.', '2262', 'West Emilieview', '2015-03-04 10:02:39.812511', '2015-03-04 10:02:39.812511');
INSERT INTO social_media_profiles VALUES (5, 3, 'nina.larson', 'active', 'Eveniet laborum molestias dolorem deserunt minima blanditiis ipsa quod.', '7486', 'Jordynside', '2015-03-04 10:02:39.814816', '2015-03-04 10:02:39.814816');
INSERT INTO social_media_profiles VALUES (6, 6, 'coleman_moriette', 'active', 'Aut temporibus quia quas numquam.', '3734', 'Ziemestad', '2015-03-04 10:02:39.822166', '2015-03-04 10:02:39.822166');
INSERT INTO social_media_profiles VALUES (7, 6, 'lorena.upton', 'active', 'Et in aut velit tempore.', '8636', 'New Gene', '2015-03-04 10:02:39.824906', '2015-03-04 10:02:39.824906');
INSERT INTO social_media_profiles VALUES (8, 7, 'kirsten', 'active', 'Cupiditate laboriosam itaque ducimus quo nesciunt amet autem aut.', '5245', 'Blickview', '2015-03-04 10:02:39.829084', '2015-03-04 10:02:39.829084');
INSERT INTO social_media_profiles VALUES (9, 7, 'samson.ritchie', 'active', 'Facilis delectus expedita ratione dolor corrupti et rerum.', '6182', 'Hermistonberg', '2015-03-04 10:02:39.831317', '2015-03-04 10:02:39.831317');
INSERT INTO social_media_profiles VALUES (10, 9, 'brian', 'active', 'Hic est reiciendis accusamus.', '5105', 'Sisterton', '2015-03-04 10:02:39.842964', '2015-03-04 10:02:39.842964');
INSERT INTO social_media_profiles VALUES (11, 11, 'brett_eichmann', 'active', 'Voluptatibus in ut quia nemo enim.', '3885', 'Port Alessandra', '2015-03-04 10:02:39.848414', '2015-03-04 10:02:39.848414');
INSERT INTO social_media_profiles VALUES (12, 15, 'matt', 'active', 'Excepturi a minima recusandae.', '5766', 'Corkeryhaven', '2015-03-04 10:02:39.857146', '2015-03-04 10:02:39.857146');
INSERT INTO social_media_profiles VALUES (13, 15, 'santa_white', 'active', 'Sequi incidunt repellendus dolores vero quaerat delectus quam.', '3561', 'New Arnulfo', '2015-03-04 10:02:39.859536', '2015-03-04 10:02:39.859536');
INSERT INTO social_media_profiles VALUES (14, 17, 'hubert.ferry', 'active', 'Placeat dolor in quo voluptates culpa consequuntur aliquam.', '7012', 'Lake Jeanette', '2015-03-04 10:02:39.865807', '2015-03-04 10:02:39.865807');
INSERT INTO social_media_profiles VALUES (15, 18, 'suzanne', 'active', 'Quidem ea voluptas autem ullam.', '2693', 'West Elenorborough', '2015-03-04 10:02:39.869895', '2015-03-04 10:02:39.869895');
INSERT INTO social_media_profiles VALUES (16, 18, 'gilda_carter', 'active', 'Dicta velit et beatae iste quis necessitatibus veniam.', '2681', 'Lake Alberthaberg', '2015-03-04 10:02:39.872351', '2015-03-04 10:02:39.872351');
INSERT INTO social_media_profiles VALUES (17, 19, 'sandra', 'active', 'Veritatis ut debitis nihil voluptas culpa a ab.', '8431', 'Haneborough', '2015-03-04 10:02:39.877156', '2015-03-04 10:02:39.877156');
INSERT INTO social_media_profiles VALUES (18, 20, 'yadira', 'active', 'Eum aut odio quia explicabo nisi numquam nobis aut.', '2395', 'Amaliaport', '2015-03-04 10:02:39.881204', '2015-03-04 10:02:39.881204');
INSERT INTO social_media_profiles VALUES (19, 21, 'lavonne', 'active', 'Temporibus voluptatem quis culpa ut.', '3623', 'West Cletusmouth', '2015-03-04 10:02:39.88519', '2015-03-04 10:02:39.88519');
INSERT INTO social_media_profiles VALUES (20, 21, 'mike', 'active', 'Rerum magni qui quod.', '8336', 'Kaydenport', '2015-03-04 10:02:39.887452', '2015-03-04 10:02:39.887452');
INSERT INTO social_media_profiles VALUES (21, 24, 'gertrude.harris', 'active', 'Deserunt qui voluptate ipsa aut quidem est.', '2725', 'Lake Rickmouth', '2015-03-04 10:02:39.894545', '2015-03-04 10:02:39.894545');
INSERT INTO social_media_profiles VALUES (22, 24, 'elsie.hackett', 'active', 'Voluptates id et nihil nihil.', '8598', 'West Merleside', '2015-03-04 10:02:39.897036', '2015-03-04 10:02:39.897036');
INSERT INTO social_media_profiles VALUES (23, 26, 'duncan', 'active', 'Velit aspernatur illum tempora similique sequi consequatur saepe.', '7361', 'South Juana', '2015-03-04 10:02:39.902401', '2015-03-04 10:02:39.902401');
INSERT INTO social_media_profiles VALUES (24, 27, 'sydnee_franecki', 'active', 'Placeat voluptatem eligendi alias sapiente soluta.', '1882', 'West Morganville', '2015-03-04 10:02:39.906432', '2015-03-04 10:02:39.906432');
INSERT INTO social_media_profiles VALUES (25, 27, 'april', 'active', 'Et est quis qui est placeat.', '2792', 'East Derrickstad', '2015-03-04 10:02:39.908833', '2015-03-04 10:02:39.908833');
INSERT INTO social_media_profiles VALUES (26, 29, 'carmela', 'active', 'Officia beatae doloribus ratione laboriosam esse minima et qui.', '6817', 'North Alliechester', '2015-03-04 10:02:39.91423', '2015-03-04 10:02:39.91423');
INSERT INTO social_media_profiles VALUES (27, 32, 'vesta_gislason', 'active', 'Eligendi sint exercitationem doloribus nam sunt rerum.', '8571', 'New Joan', '2015-03-04 10:02:39.921046', '2015-03-04 10:02:39.921046');
INSERT INTO social_media_profiles VALUES (28, 32, 'laurence', 'active', 'Unde nam maxime voluptatum magni quo commodi.', '7012', 'Elianeview', '2015-03-04 10:02:39.923194', '2015-03-04 10:02:39.923194');
INSERT INTO social_media_profiles VALUES (29, 33, 'jeff', 'active', 'Amet asperiores magnam quia et quo exercitationem illo.', '1636', 'Altenwerthport', '2015-03-04 10:02:39.926874', '2015-03-04 10:02:39.926874');
INSERT INTO social_media_profiles VALUES (30, 33, 'etha.roberts', 'active', 'Autem deleniti ut et et.', '1424', 'Adaside', '2015-03-04 10:02:39.929083', '2015-03-04 10:02:39.929083');
INSERT INTO social_media_profiles VALUES (31, 37, 'pete_bahringer', 'active', 'Voluptatibus iusto omnis quos eum quibusdam.', '7459', 'South Lane', '2015-03-04 10:02:39.938223', '2015-03-04 10:02:39.938223');
INSERT INTO social_media_profiles VALUES (32, 37, 'fabian_kozey', 'active', 'Architecto et ipsam et sit culpa ut natus.', '6917', 'Domenicton', '2015-03-04 10:02:39.941358', '2015-03-04 10:02:39.941358');
INSERT INTO social_media_profiles VALUES (33, 39, 'ashtyn.watsica', 'active', 'Voluptas ad reprehenderit consequatur et sit.', '5800', 'Quigleychester', '2015-03-04 10:02:39.946658', '2015-03-04 10:02:39.946658');
INSERT INTO social_media_profiles VALUES (34, 39, 'rollin', 'active', 'Cumque iusto reprehenderit modi ut qui.', '8854', 'Starkfort', '2015-03-04 10:02:39.948965', '2015-03-04 10:02:39.948965');
INSERT INTO social_media_profiles VALUES (35, 40, 'vern.dooley', 'active', 'Veritatis nihil deleniti eos sit.', '8536', 'Crystalhaven', '2015-03-04 10:02:39.953122', '2015-03-04 10:02:39.953122');
INSERT INTO social_media_profiles VALUES (36, 40, 'sonya_bauch', 'active', 'Est dolor deleniti necessitatibus.', '6484', 'West Vivianstad', '2015-03-04 10:02:39.955888', '2015-03-04 10:02:39.955888');
INSERT INTO social_media_profiles VALUES (37, 41, 'jamey', 'active', 'Quis nihil dolorem minus.', '8252', 'Reynoldsberg', '2015-03-04 10:02:39.960193', '2015-03-04 10:02:39.960193');
INSERT INTO social_media_profiles VALUES (38, 41, 'bennie_mclaughlin', 'active', 'Non voluptatum asperiores eaque.', '9756', 'New Richie', '2015-03-04 10:02:39.962491', '2015-03-04 10:02:39.962491');
INSERT INTO social_media_profiles VALUES (39, 42, 'deborah', 'active', 'Porro velit dolorem ut dicta iure harum aut.', '8737', 'Pacochastad', '2015-03-04 10:02:39.966873', '2015-03-04 10:02:39.966873');
INSERT INTO social_media_profiles VALUES (40, 42, 'mason', 'active', 'Doloribus totam voluptatem optio.', '4687', 'West Hectorfort', '2015-03-04 10:02:39.969118', '2015-03-04 10:02:39.969118');
INSERT INTO social_media_profiles VALUES (41, 43, 'jazmin.toy', 'active', 'Maiores provident magni nihil.', '7887', 'Dannieborough', '2015-03-04 10:02:39.973306', '2015-03-04 10:02:39.973306');
INSERT INTO social_media_profiles VALUES (42, 44, 'anna', 'active', 'Quasi repudiandae incidunt deserunt et modi magnam quis expedita.', '5674', 'Lake Kolbyport', '2015-03-04 10:02:39.977623', '2015-03-04 10:02:39.977623');
INSERT INTO social_media_profiles VALUES (43, 44, 'isobel.grady', 'active', 'Asperiores esse consequatur mollitia rerum eos beatae.', '3326', 'Archchester', '2015-03-04 10:02:39.98005', '2015-03-04 10:02:39.98005');
INSERT INTO social_media_profiles VALUES (44, 45, 'josiah', 'active', 'Ut quos ut doloribus.', '7692', 'Andersonport', '2015-03-04 10:02:39.984218', '2015-03-04 10:02:39.984218');
INSERT INTO social_media_profiles VALUES (45, 45, 'marco.cremin', 'active', 'Eum rerum et et voluptatem recusandae est possimus quasi.', '5256', 'Kyrashire', '2015-03-04 10:02:39.986503', '2015-03-04 10:02:39.986503');
INSERT INTO social_media_profiles VALUES (46, 46, 'nash', 'active', 'Consequatur veritatis dolorum sit.', '4504', 'Joneshaven', '2015-03-04 10:02:39.990508', '2015-03-04 10:02:39.990508');
INSERT INTO social_media_profiles VALUES (47, 47, 'michael', 'active', 'Maxime est tempora voluptas dolore dolorem.', '2130', 'Teresafurt', '2015-03-04 10:02:39.994362', '2015-03-04 10:02:39.994362');
INSERT INTO social_media_profiles VALUES (48, 48, 'adaline', 'active', 'Cumque repellendus accusamus atque ut magni qui asperiores.', '4854', 'South Kyleebury', '2015-03-04 10:02:39.99835', '2015-03-04 10:02:39.99835');
INSERT INTO social_media_profiles VALUES (49, 48, 'stevie', 'active', 'Et quia odio dolor omnis facilis cum.', '0273', 'Lake Isadoreborough', '2015-03-04 10:02:40.00071', '2015-03-04 10:02:40.00071');
INSERT INTO social_media_profiles VALUES (50, 49, 'adelia', 'active', 'Vel deserunt explicabo quibusdam animi et sit.', '4225', 'Port Margret', '2015-03-04 10:02:40.004805', '2015-03-04 10:02:40.004805');
INSERT INTO social_media_profiles VALUES (51, 50, 'alfredo.nader', 'active', 'Ut atque autem eos nam veniam unde aspernatur.', '4114', 'West Nia', '2015-03-04 10:02:40.008794', '2015-03-04 10:02:40.008794');
INSERT INTO social_media_profiles VALUES (52, 51, 'owen.torp', 'active', 'Quidem porro fugiat culpa non adipisci autem nemo omnis.', '4189', 'Goyettemouth', '2015-03-04 10:02:40.012611', '2015-03-04 10:02:40.012611');
INSERT INTO social_media_profiles VALUES (53, 51, 'virgie', 'active', 'Saepe expedita et qui dolorem nulla minus inventore quam.', '3327', 'Hegmannbury', '2015-03-04 10:02:40.01493', '2015-03-04 10:02:40.01493');
INSERT INTO social_media_profiles VALUES (54, 52, 'zion_cruickshank', 'active', 'Quaerat ipsum sunt aut consequuntur.', '7718', 'East Isabella', '2015-03-04 10:02:40.019239', '2015-03-04 10:02:40.019239');
INSERT INTO social_media_profiles VALUES (55, 53, 'dolly', 'active', 'Nobis ut minus quos voluptate.', '2257', 'Caitlynton', '2015-03-04 10:02:40.023433', '2015-03-04 10:02:40.023433');
INSERT INTO social_media_profiles VALUES (56, 53, 'orion', 'active', 'Ex illo accusamus dolores eos explicabo eos magni cumque.', '3537', 'Kochborough', '2015-03-04 10:02:40.025693', '2015-03-04 10:02:40.025693');
INSERT INTO social_media_profiles VALUES (57, 54, 'jordon_zulauf', 'active', 'Enim facilis quod saepe autem excepturi cumque.', '5131', 'South Naomistad', '2015-03-04 10:02:40.029804', '2015-03-04 10:02:40.029804');
INSERT INTO social_media_profiles VALUES (58, 55, 'kali_prohaska', 'active', 'Eligendi rerum est facilis omnis quia animi.', '1641', 'Lake Sallieport', '2015-03-04 10:02:40.034048', '2015-03-04 10:02:40.034048');
INSERT INTO social_media_profiles VALUES (59, 56, 'tanya_kuhic', 'active', 'Voluptatem veritatis accusamus aut.', '5175', 'Beattyview', '2015-03-04 10:02:40.038201', '2015-03-04 10:02:40.038201');
INSERT INTO social_media_profiles VALUES (60, 56, 'waino_grant', 'active', 'Possimus sit sed sunt eius eum et.', '2453', 'Berniershire', '2015-03-04 10:02:40.040577', '2015-03-04 10:02:40.040577');
INSERT INTO social_media_profiles VALUES (61, 57, 'willis.pacocha', 'active', 'Omnis et voluptas voluptatem.', '7562', 'New Tremaineshire', '2015-03-04 10:02:40.044742', '2015-03-04 10:02:40.044742');
INSERT INTO social_media_profiles VALUES (62, 57, 'alan', 'active', 'Saepe sunt atque totam minima.', '2132', 'Port Janisberg', '2015-03-04 10:02:40.047569', '2015-03-04 10:02:40.047569');
INSERT INTO social_media_profiles VALUES (63, 58, 'eugene.ohara', 'active', 'Consectetur incidunt maiores molestias dicta.', '7573', 'Kristopherton', '2015-03-04 10:02:40.051909', '2015-03-04 10:02:40.051909');
INSERT INTO social_media_profiles VALUES (64, 59, 'rosanna', 'active', 'Saepe hic culpa quis est repellendus nihil totam ut.', '7821', 'Justonland', '2015-03-04 10:02:40.056167', '2015-03-04 10:02:40.056167');
INSERT INTO social_media_profiles VALUES (65, 59, 'laurence.kshlerin', 'active', 'Quo et sed nihil quis.', '5173', 'Keeblermouth', '2015-03-04 10:02:40.05867', '2015-03-04 10:02:40.05867');
INSERT INTO social_media_profiles VALUES (66, 60, 'iliana', 'active', 'Eius qui assumenda cum.', '8306', 'Lake Garrisonport', '2015-03-04 10:02:40.062778', '2015-03-04 10:02:40.062778');
INSERT INTO social_media_profiles VALUES (67, 63, 'mittie_durgan', 'active', 'Quae quasi a id omnis modi aspernatur iure ipsam.', '3464', 'West Rose', '2015-03-04 10:02:40.070138', '2015-03-04 10:02:40.070138');
INSERT INTO social_media_profiles VALUES (68, 64, 'hilda_kertzmann', 'active', 'Voluptates ullam facere necessitatibus sit tenetur et.', '5418', 'South Eileenhaven', '2015-03-04 10:02:40.074228', '2015-03-04 10:02:40.074228');
INSERT INTO social_media_profiles VALUES (69, 64, 'fredy', 'active', 'Assumenda voluptas est alias sint.', '6824', 'Zemlakside', '2015-03-04 10:02:40.079589', '2015-03-04 10:02:40.079589');
INSERT INTO social_media_profiles VALUES (70, 65, 'maddison.bashirian', 'active', 'Quia ipsum occaecati labore.', '7107', 'Port Gladycestad', '2015-03-04 10:02:40.083925', '2015-03-04 10:02:40.083925');
INSERT INTO social_media_profiles VALUES (71, 65, 'nico', 'active', 'Qui quam qui facere dicta inventore et rem.', '8782', 'North Nyasia', '2015-03-04 10:02:40.0861', '2015-03-04 10:02:40.0861');
INSERT INTO social_media_profiles VALUES (72, 66, 'fausto.goyette', 'active', 'Eius ut repellat qui impedit.', '2898', 'Jabarishire', '2015-03-04 10:02:40.090057', '2015-03-04 10:02:40.090057');
INSERT INTO social_media_profiles VALUES (73, 66, 'jarvis', 'active', 'Qui aut eligendi omnis quisquam iure reiciendis magni sed.', '8938', 'Rohanfurt', '2015-03-04 10:02:40.092386', '2015-03-04 10:02:40.092386');
INSERT INTO social_media_profiles VALUES (74, 68, 'dayne_feeney', 'active', 'Praesentium optio rerum rerum.', '7358', 'North Della', '2015-03-04 10:02:40.097915', '2015-03-04 10:02:40.097915');
INSERT INTO social_media_profiles VALUES (75, 69, 'sarah', 'active', 'Amet nisi quaerat eveniet aut ut.', '2488', 'Antonettemouth', '2015-03-04 10:02:40.101997', '2015-03-04 10:02:40.101997');
INSERT INTO social_media_profiles VALUES (76, 69, 'maryam', 'active', 'Autem illo atque vero.', '5601', 'North Marlen', '2015-03-04 10:02:40.104422', '2015-03-04 10:02:40.104422');
INSERT INTO social_media_profiles VALUES (77, 70, 'miouri_little', 'active', 'Tenetur cupiditate voluptates unde officiis minus.', '8987', 'North Rafaelamouth', '2015-03-04 10:02:40.108323', '2015-03-04 10:02:40.108323');
INSERT INTO social_media_profiles VALUES (78, 70, 'jon', 'active', 'Quam commodi quaerat tempora et.', '2634', 'East Michealtown', '2015-03-04 10:02:40.11073', '2015-03-04 10:02:40.11073');
INSERT INTO social_media_profiles VALUES (79, 71, 'esmeralda.schuster', 'active', 'Delectus fugiat mollitia vero.', '2259', 'Port Krista', '2015-03-04 10:02:40.114715', '2015-03-04 10:02:40.114715');
INSERT INTO social_media_profiles VALUES (80, 73, 'carey_rau', 'active', 'Rem voluptatibus labore ipsa autem.', '0183', 'New Freddychester', '2015-03-04 10:02:40.120279', '2015-03-04 10:02:40.120279');
INSERT INTO social_media_profiles VALUES (81, 77, 'amy', 'active', 'Eveniet voluptatem dignissimos rem cum eum itaque.', '8848', 'West Garth', '2015-03-04 10:02:40.130524', '2015-03-04 10:02:40.130524');
INSERT INTO social_media_profiles VALUES (82, 81, 'marlee.ortiz', 'active', 'Iste error id laborum dicta reprehenderit.', '0311', 'South Cathrynview', '2015-03-04 10:02:40.138421', '2015-03-04 10:02:40.138421');
INSERT INTO social_media_profiles VALUES (83, 81, 'felton', 'active', 'Qui rem accusamus voluptatem aspernatur esse quis non.', '7545', 'West Dejuan', '2015-03-04 10:02:40.140772', '2015-03-04 10:02:40.140772');
INSERT INTO social_media_profiles VALUES (84, 83, 'vernice', 'active', 'Quo eos vel voluptas qui rem accusamus.', '3542', 'Goldnerchester', '2015-03-04 10:02:40.146385', '2015-03-04 10:02:40.146385');
INSERT INTO social_media_profiles VALUES (85, 83, 'susie_buckridge', 'active', 'Ratione autem quia culpa.', '4306', 'Lake Joy', '2015-03-04 10:02:40.148692', '2015-03-04 10:02:40.148692');
INSERT INTO social_media_profiles VALUES (86, 84, 'taryn_medhurst', 'active', 'Aut libero voluptate doloribus vero perferendis.', '5576', 'Orinfort', '2015-03-04 10:02:40.152702', '2015-03-04 10:02:40.152702');
INSERT INTO social_media_profiles VALUES (87, 85, 'joelle.fadel', 'active', 'Molestiae possimus porro et qui dolorum vitae.', '4656', 'South Ginabury', '2015-03-04 10:02:40.156638', '2015-03-04 10:02:40.156638');
INSERT INTO social_media_profiles VALUES (88, 85, 'carolyne.farrell', 'active', 'Sint tempore eos qui voluptatem.', '4533', 'Aileenside', '2015-03-04 10:02:40.158849', '2015-03-04 10:02:40.158849');
INSERT INTO social_media_profiles VALUES (89, 87, 'maximillian_moriette', 'active', 'Sequi illo aperiam fugit voluptatem nisi.', '4155', 'Beerland', '2015-03-04 10:02:40.164286', '2015-03-04 10:02:40.164286');
INSERT INTO social_media_profiles VALUES (90, 88, 'vinnie.greenholt', 'active', 'Dolor vitae provident consequuntur ipsa.', '7515', 'Krajcikhaven', '2015-03-04 10:02:40.168453', '2015-03-04 10:02:40.168453');
INSERT INTO social_media_profiles VALUES (91, 89, 'christ_stoltenberg', 'active', 'Quo ut voluptas alias sapiente soluta aut libero dolorem.', '8738', 'West Darrenton', '2015-03-04 10:02:40.172572', '2015-03-04 10:02:40.172572');
INSERT INTO social_media_profiles VALUES (92, 90, 'kelley', 'active', 'Vel vitae atque harum sit aspernatur accusantium libero reprehenderit.', '2951', 'East Rossie', '2015-03-04 10:02:40.17668', '2015-03-04 10:02:40.17668');
INSERT INTO social_media_profiles VALUES (93, 91, 'corine.ward', 'active', 'Atque iure quae voluptas sit.', '3487', 'Port Jennyferland', '2015-03-04 10:02:40.180848', '2015-03-04 10:02:40.180848');
INSERT INTO social_media_profiles VALUES (94, 91, 'celestine', 'active', 'Possimus praesentium eos totam placeat sint.', '5642', 'North Aglaefurt', '2015-03-04 10:02:40.183231', '2015-03-04 10:02:40.183231');
INSERT INTO social_media_profiles VALUES (95, 92, 'anibal_daniel', 'active', 'Placeat maiores temporibus magnam.', '5489', 'Donnellyside', '2015-03-04 10:02:40.187269', '2015-03-04 10:02:40.187269');
INSERT INTO social_media_profiles VALUES (96, 93, 'laurie', 'active', 'Hic dignissimos omnis aspernatur id.', '7369', 'Kasandraport', '2015-03-04 10:02:40.191287', '2015-03-04 10:02:40.191287');
INSERT INTO social_media_profiles VALUES (97, 93, 'bud_schuster', 'active', 'Dolore vel labore voluptatem quo impedit.', '4342', 'Port Cassandraburgh', '2015-03-04 10:02:40.193698', '2015-03-04 10:02:40.193698');
INSERT INTO social_media_profiles VALUES (98, 94, 'maureen_hettinger', 'active', 'Asperiores explicabo veniam culpa est sint.', '2181', 'West Kobe', '2015-03-04 10:02:40.197853', '2015-03-04 10:02:40.197853');
INSERT INTO social_media_profiles VALUES (99, 97, 'cleve', 'active', 'Non eligendi voluptatem quos magnam eaque.', '4157', 'Jastbury', '2015-03-04 10:02:40.204302', '2015-03-04 10:02:40.204302');
INSERT INTO social_media_profiles VALUES (100, 97, 'devyn', 'active', 'Sunt accusantium deserunt voluptates qui voluptatibus enim ad.', '1544', 'North Reed', '2015-03-04 10:02:40.206564', '2015-03-04 10:02:40.206564');
INSERT INTO social_media_profiles VALUES (101, 99, 'buddy', 'active', 'Dolore a et qui officiis.', '7879', 'Rashadmouth', '2015-03-04 10:02:40.211774', '2015-03-04 10:02:40.211774');
INSERT INTO social_media_profiles VALUES (102, 100, 'lillie', 'active', 'Aut et tempore sit possimus sed ea ducimus dolores.', '6366', 'Lake Lillianstad', '2015-03-04 10:02:40.215869', '2015-03-04 10:02:40.215869');
INSERT INTO social_media_profiles VALUES (103, 100, 'tyrese', 'active', 'Dolor provident ratione aut dignissimos expedita nihil.', '1863', 'West Jess', '2015-03-04 10:02:40.218082', '2015-03-04 10:02:40.218082');


--
-- Name: social_media_profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('social_media_profiles_id_seq', 103, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO users VALUES (1, 'Arnoldo', 'Parisian', 'luz@gutmannbednar.info', '2015-03-04 10:02:39.762047', '2015-03-04 10:02:39.762047');
INSERT INTO users VALUES (2, 'Connor', 'Schaden', 'julius.vonrueden@stroman.com', '2015-03-04 10:02:39.802545', '2015-03-04 10:02:39.802545');
INSERT INTO users VALUES (3, 'Daisy', 'Casper', 'barrett@jenkins.name', '2015-03-04 10:02:39.810226', '2015-03-04 10:02:39.810226');
INSERT INTO users VALUES (4, 'Albin', 'Cummerata', 'chanelle@glover.name', '2015-03-04 10:02:39.816478', '2015-03-04 10:02:39.816478');
INSERT INTO users VALUES (5, 'Darrin', 'Lynch', 'emerald.vandervort@bernier.info', '2015-03-04 10:02:39.817944', '2015-03-04 10:02:39.817944');
INSERT INTO users VALUES (6, 'Jayden', 'Marquardt', 'cindy.walker@oconnell.net', '2015-03-04 10:02:39.819543', '2015-03-04 10:02:39.819543');
INSERT INTO users VALUES (7, 'Joaquin', 'Gerlach', 'alayna_bednar@auer.com', '2015-03-04 10:02:39.826693', '2015-03-04 10:02:39.826693');
INSERT INTO users VALUES (8, 'Gaston', 'Cremin', 'makayla@wiza.name', '2015-03-04 10:02:39.832871', '2015-03-04 10:02:39.832871');
INSERT INTO users VALUES (9, 'Brandyn', 'Cruickshank', 'dimitri_krajcik@fisher.com', '2015-03-04 10:02:39.840216', '2015-03-04 10:02:39.840216');
INSERT INTO users VALUES (10, 'Keely', 'Yundt', 'frida_leffler@barton.org', '2015-03-04 10:02:39.844696', '2015-03-04 10:02:39.844696');
INSERT INTO users VALUES (11, 'Nikita', 'Koelpin', 'george_baumbach@torphy.biz', '2015-03-04 10:02:39.846136', '2015-03-04 10:02:39.846136');
INSERT INTO users VALUES (12, 'Richie', 'Halvorson', 'agustin@schneiderkling.name', '2015-03-04 10:02:39.850057', '2015-03-04 10:02:39.850057');
INSERT INTO users VALUES (13, 'Natasha', 'Langosh', 'marlee@romaguera.info', '2015-03-04 10:02:39.851533', '2015-03-04 10:02:39.851533');
INSERT INTO users VALUES (14, 'Robbie', 'Stehr', 'lisa_schaefer@dachnikolaus.info', '2015-03-04 10:02:39.852934', '2015-03-04 10:02:39.852934');
INSERT INTO users VALUES (15, 'Tremayne', 'Ankunding', 'pearlie_glover@christiansenwiza.com', '2015-03-04 10:02:39.854331', '2015-03-04 10:02:39.854331');
INSERT INTO users VALUES (16, 'Abigayle', 'Gaylord', 'ania.cormier@macgyver.net', '2015-03-04 10:02:39.861547', '2015-03-04 10:02:39.861547');
INSERT INTO users VALUES (17, 'Alejandrin', 'Schuster', 'kennedi@fadel.biz', '2015-03-04 10:02:39.863352', '2015-03-04 10:02:39.863352');
INSERT INTO users VALUES (18, 'Osborne', 'Gutmann', 'violette_block@howe.biz', '2015-03-04 10:02:39.86752', '2015-03-04 10:02:39.86752');
INSERT INTO users VALUES (19, 'Paris', 'Corwin', 'jody@mooreframi.com', '2015-03-04 10:02:39.874074', '2015-03-04 10:02:39.874074');
INSERT INTO users VALUES (20, 'Leonard', 'Johnson', 'amara.ferry@dare.name', '2015-03-04 10:02:39.878829', '2015-03-04 10:02:39.878829');
INSERT INTO users VALUES (21, 'Dejon', 'Rath', 'shanna_mcglynn@morar.net', '2015-03-04 10:02:39.882843', '2015-03-04 10:02:39.882843');
INSERT INTO users VALUES (22, 'Jailyn', 'Swaniawski', 'gerson.langosh@pagacrunte.com', '2015-03-04 10:02:39.88921', '2015-03-04 10:02:39.88921');
INSERT INTO users VALUES (23, 'Heloise', 'Purdy', 'webster.davis@halvorson.biz', '2015-03-04 10:02:39.890739', '2015-03-04 10:02:39.890739');
INSERT INTO users VALUES (24, 'Oliver', 'Simonis', 'rod@oberbrunner.biz', '2015-03-04 10:02:39.892213', '2015-03-04 10:02:39.892213');
INSERT INTO users VALUES (25, 'Nyah', 'Altenwerth', 'wilton@schroederoconnell.org', '2015-03-04 10:02:39.89863', '2015-03-04 10:02:39.89863');
INSERT INTO users VALUES (26, 'Mekhi', 'Wintheiser', 'trinity.gerlach@koch.net', '2015-03-04 10:02:39.900122', '2015-03-04 10:02:39.900122');
INSERT INTO users VALUES (27, 'Kiarra', 'Rowe', 'minerva@west.org', '2015-03-04 10:02:39.904002', '2015-03-04 10:02:39.904002');
INSERT INTO users VALUES (28, 'Dan', 'Waters', 'berniece@wyman.name', '2015-03-04 10:02:39.910475', '2015-03-04 10:02:39.910475');
INSERT INTO users VALUES (29, 'Jedediah', 'Walter', 'thelma.padberg@hickle.com', '2015-03-04 10:02:39.911858', '2015-03-04 10:02:39.911858');
INSERT INTO users VALUES (30, 'Kiley', 'Stark', 'elbert@keeling.biz', '2015-03-04 10:02:39.916137', '2015-03-04 10:02:39.916137');
INSERT INTO users VALUES (31, 'Kirstin', 'Becker', 'phyllis@cole.com', '2015-03-04 10:02:39.917509', '2015-03-04 10:02:39.917509');
INSERT INTO users VALUES (32, 'Braxton', 'Feest', 'elvera@bartell.org', '2015-03-04 10:02:39.918848', '2015-03-04 10:02:39.918848');
INSERT INTO users VALUES (33, 'Josefa', 'Moen', 'gay@hoeger.name', '2015-03-04 10:02:39.924747', '2015-03-04 10:02:39.924747');
INSERT INTO users VALUES (34, 'August', 'VonRueden', 'leslie_emmerich@hayesdickens.info', '2015-03-04 10:02:39.931103', '2015-03-04 10:02:39.931103');
INSERT INTO users VALUES (35, 'Vickie', 'Bergstrom', 'tracy_leffler@cole.com', '2015-03-04 10:02:39.933032', '2015-03-04 10:02:39.933032');
INSERT INTO users VALUES (36, 'Kimberly', 'Anderson', 'maximillian@hammes.com', '2015-03-04 10:02:39.934451', '2015-03-04 10:02:39.934451');
INSERT INTO users VALUES (37, 'Freda', 'Fadel', 'katherine@schamberger.org', '2015-03-04 10:02:39.935901', '2015-03-04 10:02:39.935901');
INSERT INTO users VALUES (38, 'Sylvester', 'Kub', 'tyrique@wildermancormier.org', '2015-03-04 10:02:39.943092', '2015-03-04 10:02:39.943092');
INSERT INTO users VALUES (39, 'Zion', 'Wisozk', 'liza@friesen.net', '2015-03-04 10:02:39.944479', '2015-03-04 10:02:39.944479');
INSERT INTO users VALUES (40, 'Roberta', 'Rogahn', 'nedra@ondricka.info', '2015-03-04 10:02:39.950675', '2015-03-04 10:02:39.950675');
INSERT INTO users VALUES (41, 'Jaleel', 'Goodwin', 'rosella.walter@king.org', '2015-03-04 10:02:39.957532', '2015-03-04 10:02:39.957532');
INSERT INTO users VALUES (42, 'Christa', 'Ortiz', 'valerie.aufderhar@upton.com', '2015-03-04 10:02:39.964302', '2015-03-04 10:02:39.964302');
INSERT INTO users VALUES (43, 'Vernie', 'Nienow', 'reba@considine.name', '2015-03-04 10:02:39.970846', '2015-03-04 10:02:39.970846');
INSERT INTO users VALUES (44, 'Jessyca', 'Mayer', 'agustin_feil@feeney.biz', '2015-03-04 10:02:39.974957', '2015-03-04 10:02:39.974957');
INSERT INTO users VALUES (45, 'Janice', 'Schuppe', 'anthony.stroman@adamsgutkowski.com', '2015-03-04 10:02:39.981671', '2015-03-04 10:02:39.981671');
INSERT INTO users VALUES (46, 'Margarette', 'Ferry', 'louisa@ratke.name', '2015-03-04 10:02:39.988261', '2015-03-04 10:02:39.988261');
INSERT INTO users VALUES (47, 'Damien', 'Armstrong', 'maggie_gerhold@hickle.biz', '2015-03-04 10:02:39.992132', '2015-03-04 10:02:39.992132');
INSERT INTO users VALUES (48, 'Devan', 'Armstrong', 'erna@waelchi.biz', '2015-03-04 10:02:39.996001', '2015-03-04 10:02:39.996001');
INSERT INTO users VALUES (49, 'Gustave', 'Hessel', 'lew@baileybartoletti.org', '2015-03-04 10:02:40.002426', '2015-03-04 10:02:40.002426');
INSERT INTO users VALUES (50, 'Buford', 'Bartoletti', 'dejon.hayes@pfefferhirthe.info', '2015-03-04 10:02:40.006447', '2015-03-04 10:02:40.006447');
INSERT INTO users VALUES (51, 'Dangelo', 'Johns', 'elenora@emmerichmaggio.net', '2015-03-04 10:02:40.010361', '2015-03-04 10:02:40.010361');
INSERT INTO users VALUES (52, 'Adelbert', 'Pollich', 'shayne.goyette@osinskileannon.name', '2015-03-04 10:02:40.016771', '2015-03-04 10:02:40.016771');
INSERT INTO users VALUES (53, 'Presley', 'Spencer', 'lempi.hettinger@watsica.net', '2015-03-04 10:02:40.020916', '2015-03-04 10:02:40.020916');
INSERT INTO users VALUES (54, 'Cary', 'Hegmann', 'milton@predovicbogan.name', '2015-03-04 10:02:40.027325', '2015-03-04 10:02:40.027325');
INSERT INTO users VALUES (55, 'William', 'Fahey', 'kaitlin@becker.name', '2015-03-04 10:02:40.031495', '2015-03-04 10:02:40.031495');
INSERT INTO users VALUES (56, 'Freida', 'Koch', 'mozelle@mcdermott.info', '2015-03-04 10:02:40.035795', '2015-03-04 10:02:40.035795');
INSERT INTO users VALUES (57, 'Juston', 'Yost', 'montana@king.org', '2015-03-04 10:02:40.042211', '2015-03-04 10:02:40.042211');
INSERT INTO users VALUES (58, 'Al', 'Leuschke', 'micaela@walsh.net', '2015-03-04 10:02:40.049258', '2015-03-04 10:02:40.049258');
INSERT INTO users VALUES (59, 'Bobby', 'Rodriguez', 'jordy@franecki.info', '2015-03-04 10:02:40.053669', '2015-03-04 10:02:40.053669');
INSERT INTO users VALUES (60, 'Diego', 'Funk', 'ralph_vandervort@koeppspinka.name', '2015-03-04 10:02:40.060288', '2015-03-04 10:02:40.060288');
INSERT INTO users VALUES (61, 'Dena', 'Hettinger', 'emanuel_grimes@jones.name', '2015-03-04 10:02:40.064633', '2015-03-04 10:02:40.064633');
INSERT INTO users VALUES (62, 'Maryam', 'Armstrong', 'vivian@effertz.com', '2015-03-04 10:02:40.06613', '2015-03-04 10:02:40.06613');
INSERT INTO users VALUES (63, 'Michale', 'Kub', 'simeon@vandervort.biz', '2015-03-04 10:02:40.067664', '2015-03-04 10:02:40.067664');
INSERT INTO users VALUES (64, 'Jessyca', 'Kreiger', 'trystan@pourospurdy.com', '2015-03-04 10:02:40.071897', '2015-03-04 10:02:40.071897');
INSERT INTO users VALUES (65, 'Soledad', 'Gleason', 'cortney.langosh@metzrobel.biz', '2015-03-04 10:02:40.081392', '2015-03-04 10:02:40.081392');
INSERT INTO users VALUES (66, 'Alanna', 'Leffler', 'kim@spinka.com', '2015-03-04 10:02:40.087667', '2015-03-04 10:02:40.087667');
INSERT INTO users VALUES (67, 'Jude', 'Swaniawski', 'fred.mcdermott@streich.name', '2015-03-04 10:02:40.094215', '2015-03-04 10:02:40.094215');
INSERT INTO users VALUES (68, 'Curtis', 'Gaylord', 'ubaldo_schmeler@dicki.info', '2015-03-04 10:02:40.095688', '2015-03-04 10:02:40.095688');
INSERT INTO users VALUES (69, 'Clovis', 'Wehner', 'elinore.feest@nicolas.com', '2015-03-04 10:02:40.09959', '2015-03-04 10:02:40.09959');
INSERT INTO users VALUES (70, 'Kieran', 'Lebsack', 'ladarius_brekke@dach.com', '2015-03-04 10:02:40.106027', '2015-03-04 10:02:40.106027');
INSERT INTO users VALUES (71, 'Maverick', 'Hand', 'shania@hudsonkovacek.org', '2015-03-04 10:02:40.112365', '2015-03-04 10:02:40.112365');
INSERT INTO users VALUES (72, 'Kelsie', 'Durgan', 'marvin_wehner@sawayn.org', '2015-03-04 10:02:40.116457', '2015-03-04 10:02:40.116457');
INSERT INTO users VALUES (73, 'Mckenzie', 'Berge', 'jarret_predovic@bartell.name', '2015-03-04 10:02:40.117997', '2015-03-04 10:02:40.117997');
INSERT INTO users VALUES (74, 'Zula', 'Beer', 'arch@eichmann.net', '2015-03-04 10:02:40.121904', '2015-03-04 10:02:40.121904');
INSERT INTO users VALUES (75, 'Guillermo', 'Miller', 'delilah@tillman.org', '2015-03-04 10:02:40.123343', '2015-03-04 10:02:40.123343');
INSERT INTO users VALUES (76, 'Nathanial', 'Dooley', 'nickolas@bartellhilll.info', '2015-03-04 10:02:40.124633', '2015-03-04 10:02:40.124633');
INSERT INTO users VALUES (77, 'Dejah', 'Schinner', 'liliane@huels.name', '2015-03-04 10:02:40.125941', '2015-03-04 10:02:40.125941');
INSERT INTO users VALUES (78, 'Ora', 'Boyer', 'xavier@dietrich.com', '2015-03-04 10:02:40.132226', '2015-03-04 10:02:40.132226');
INSERT INTO users VALUES (79, 'Jared', 'Tremblay', 'alexandrea@nader.name', '2015-03-04 10:02:40.133583', '2015-03-04 10:02:40.133583');
INSERT INTO users VALUES (80, 'Delmer', 'Spinka', 'misty_littel@ritchiejacobi.info', '2015-03-04 10:02:40.134878', '2015-03-04 10:02:40.134878');
INSERT INTO users VALUES (81, 'Fausto', 'Lemke', 'eulah@pouros.org', '2015-03-04 10:02:40.136103', '2015-03-04 10:02:40.136103');
INSERT INTO users VALUES (82, 'Mikayla', 'Lueilwitz', 'ubaldo_hills@legrosparker.biz', '2015-03-04 10:02:40.142476', '2015-03-04 10:02:40.142476');
INSERT INTO users VALUES (83, 'Brent', 'Considine', 'kevon@powlowski.net', '2015-03-04 10:02:40.143955', '2015-03-04 10:02:40.143955');
INSERT INTO users VALUES (84, 'Betsy', 'Hilpert', 'jaron_orn@sipesfadel.name', '2015-03-04 10:02:40.150318', '2015-03-04 10:02:40.150318');
INSERT INTO users VALUES (85, 'Adrian', 'Goyette', 'kyleigh.mraz@goldner.net', '2015-03-04 10:02:40.154271', '2015-03-04 10:02:40.154271');
INSERT INTO users VALUES (86, 'Devante', 'Koss', 'doug@heaney.info', '2015-03-04 10:02:40.160566', '2015-03-04 10:02:40.160566');
INSERT INTO users VALUES (87, 'Monica', 'Harvey', 'velda.little@feest.com', '2015-03-04 10:02:40.161898', '2015-03-04 10:02:40.161898');
INSERT INTO users VALUES (88, 'Connie', 'Strosin', 'peter@funk.biz', '2015-03-04 10:02:40.165978', '2015-03-04 10:02:40.165978');
INSERT INTO users VALUES (89, 'Vern', 'Zulauf', 'mckenna_leuschke@orn.name', '2015-03-04 10:02:40.170119', '2015-03-04 10:02:40.170119');
INSERT INTO users VALUES (90, 'Kristopher', 'Weber', 'dora@weber.name', '2015-03-04 10:02:40.174309', '2015-03-04 10:02:40.174309');
INSERT INTO users VALUES (91, 'Myron', 'Littel', 'sage.sporer@franecki.net', '2015-03-04 10:02:40.178284', '2015-03-04 10:02:40.178284');
INSERT INTO users VALUES (92, 'Gaetano', 'Hoppe', 'cleta_gutkowski@hermanngusikowski.net', '2015-03-04 10:02:40.184815', '2015-03-04 10:02:40.184815');
INSERT INTO users VALUES (93, 'Era', 'Gaylord', 'jordy@corwin.net', '2015-03-04 10:02:40.18888', '2015-03-04 10:02:40.18888');
INSERT INTO users VALUES (94, 'Brandon', 'Roberts', 'leopold@stammcollins.com', '2015-03-04 10:02:40.195344', '2015-03-04 10:02:40.195344');
INSERT INTO users VALUES (95, 'Loren', 'Herman', 'percival@walker.org', '2015-03-04 10:02:40.199439', '2015-03-04 10:02:40.199439');
INSERT INTO users VALUES (96, 'Javonte', 'Kutch', 'garnet_keeling@walker.biz', '2015-03-04 10:02:40.200776', '2015-03-04 10:02:40.200776');
INSERT INTO users VALUES (97, 'Piper', 'O''Keefe', 'angus@wiegand.biz', '2015-03-04 10:02:40.202079', '2015-03-04 10:02:40.202079');
INSERT INTO users VALUES (98, 'Ruthie', 'Ernser', 'helena@mertz.com', '2015-03-04 10:02:40.208139', '2015-03-04 10:02:40.208139');
INSERT INTO users VALUES (99, 'Wilburn', 'Marks', 'zackery_heaney@harris.com', '2015-03-04 10:02:40.209567', '2015-03-04 10:02:40.209567');
INSERT INTO users VALUES (100, 'Johnathon', 'Friesen', 'ian.douglas@kreigerbecker.com', '2015-03-04 10:02:40.21351', '2015-03-04 10:02:40.21351');


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('users_id_seq', 100, true);


--
-- Name: bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY bookings
    ADD CONSTRAINT bookings_pkey PRIMARY KEY (id);


--
-- Name: campaigns_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY campaigns
    ADD CONSTRAINT campaigns_pkey PRIMARY KEY (id);


--
-- Name: social_media_profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY social_media_profiles
    ADD CONSTRAINT social_media_profiles_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_bookings_on_campaign_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_bookings_on_campaign_id ON bookings USING btree (campaign_id);


--
-- Name: index_bookings_on_social_media_profile_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_bookings_on_social_media_profile_id ON bookings USING btree (social_media_profile_id);


--
-- Name: index_social_media_profiles_on_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_social_media_profiles_on_user_id ON social_media_profiles USING btree (user_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

