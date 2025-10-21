INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Green', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Curso de HTML', 'https://upload.wikimedia.org/wikipedia/commons/d/de/HTML5_oval_logo.png', 'https://freesvg.org/img/1643312539html5.png');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP '2020-11-20T03:00:00Z', TIMESTAMP '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP '2021-12-20T03:00:00Z', TIMESTAMP '2022-11-20T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Trilha de HTML', 'Trilha principal do curso de HTML', 1, 'https://upload.wikimedia.org/wikipedia/commons/d/de/HTML5_oval_logo.png', 1, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Forum', 'Forum de discussão do curso', 2, 'https://upload.wikimedia.org/wikipedia/commons/d/de/HTML5_oval_logo.png', 2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Lives', 'Transmissões ao vivo do curso', 3, 'https://upload.wikimedia.org/wikipedia/commons/d/de/HTML5_oval_logo.png', 0, 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Introdução ao HTML', 1, 'https://upload.wikimedia.org/wikipedia/commons/d/de/HTML5_oval_logo.png', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Marcadores mais usados do HTML', 2, 'https://upload.wikimedia.org/wikipedia/commons/d/de/HTML5_oval_logo.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Projeto prático', 3, 'https://upload.wikimedia.org/wikipedia/commons/d/de/HTML5_oval_logo.png', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP '2020-11-20T13:00:00Z', null, 1, 0);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP '2020-11-20T13:00:00Z', null, 1, 0);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 1', 1, 1);
INSERT INTO tb_content (text_content, video_uri, id) VALUES ('Material de apoio do capítulo 1: ', 'https://www.youtube.com/watch?v=Ot9TGgKA3eA', 1);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capítulo 1', 1, 1);
INSERT INTO tb_content (text_content, video_uri, id) VALUES ('', 'https://www.youtube.com/watch?v=Ot9TGgKA3eA', 2);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capítulo 1', 1, 1);
INSERT INTO tb_content (text_content, video_uri, id) VALUES ('', 'https://www.youtube.com/watch?v=Ot9TGgKA3eA', 3);
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Fazer o projeto de HTML', 5, 4, 1.0, TIMESTAMP '2020-11-20T03:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP '2020-12-10T13:00:00Z', 1, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP '2020-12-12T13:00:00Z', 1, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP '2020-12-14T13:00:00Z', 1, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);