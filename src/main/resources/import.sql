-- Initial data imports

-- Authors
INSERT INTO author (id, descr, profession) VALUES
  (1, 'Senior life coach with 10 years of experience specializing in mindfulness and stress management. Certified by the International Coach Federation.', 'Life Coach'),
  (2, 'Certified nutrition specialist with expertise in plant-based diets and meal planning. Masters degree in Nutritional Science.', 'Nutritionist'),
  (3, 'Executive business coach focusing on leadership development and team building. Former Fortune 500 executive.', 'Business Coach'),
  (4, 'Fitness trainer and wellness coach with 15 years of experience in holistic health approaches.', 'Fitness Coach'),
  (5, 'Career development coach specializing in professional transitions and personal branding.', 'Career Coach');

-- Users
INSERT INTO app_user (id, first_name, last_name, photo_url, email) VALUES
  (1, 'Alice', 'Smith', 'https://example.com/photos/alice.jpg', 'alice@example.com'),
  (2, 'Bob', 'Jones', '', 'bob@example.com');


-- 1) Subjekte mit deutschen, professionellen Beschreibungen
INSERT INTO subject (id, title, description) VALUES
  (1, 'Ich mit Gott', 'Vertiefe deine persönliche Beziehung zu Gott durch Gebet, Anbetung und kontemplatives Bibelstudium. Finde Orientierung und Stärkung im Alltag.'),
  (2, 'Gott kennenlernen', 'Erfahre Gottes Charakter und Wesen durch biblische Impulse und persönliche Erfahrungen.'),
  (3, 'Bibel lesen', 'Entwickle eine nachhaltige Lese- und Studienpraxis, um die biblische Botschaft in dein Leben zu integrieren.'),
  (4, 'Beten', 'Lerne vielfältige Formen des Gebets kennen und baue eine beständige Gebetspraxis auf.'),
  (5, 'Meinen Auftrag erkennen', 'Entdecke Gottes Berufung für dein Leben und setze konkrete Schritte zur Erfüllung deines Lebensauftrags.'),
  (6, 'Religiöses Leistungsdenken', 'Reflektiere Erwartungen und Druck im Glaubensalltag und finde Freiheit in Gottes Gnade.'),
  (7, 'Schuld und Vergebung', 'Verstehe die Bedeutung von Vergebung und erfahre Heilung durch die befreiende Kraft der Versöhnung.'),
  (8, 'Ich mit anderen', 'Stärke zwischenmenschliche Beziehungen durch Empathie, Konfliktfähigkeit und gemeinschaftliches Miteinander.'),
  (9, 'Gemeinschaftlich Wohnen', 'Gestalte gemeinschaftliche Wohnformen als lebendigen Ort von christlicher Nächstenliebe und Unterstützung.'),
  (10, 'Konfliktfähigkeit', 'Erwirb Fähigkeiten, Konflikte konstruktiv anzusprechen und zu klären, ohne Beziehung zu belasten.'),
  (11, 'Soziale Gesundheit', 'Fördere seelisches Wohlbefinden und zwischenmenschliche Balance innerhalb deiner Gemeinschaft.'),
  (12, 'Vergebungsbereitschaft', 'Lerne, vergeben zu können und so Heilung für dich und andere zu ermöglichen.'),
  (13, 'Authentisch sein', 'Entfalte deine Persönlichkeit im Einklang mit Werten und Überzeugungen – echt und glaubwürdig.'),
  (14, 'Empathie für andere', 'Schule deine Fähigkeit, Mitmenschen in ihren Gefühlen zu verstehen und wertschätzend zu begleiten.'),
  (15, 'Gemeinschaften gründen', 'Erhalte praxisnahe Anleitungen zum Aufbau und zur Leitung lebendiger Haus- und Kleingruppen.'),
  (16, 'Sprachen der Liebe', 'Entdecke unterschiedliche Ausdrucksformen von Liebe und lerne, sie bewusst anzuwenden.'),
  (17, 'Gesund abgrenzen', 'Setze klare Grenzen zum Schutz deiner Ressourcen und fördere damit deine persönliche Balance.'),
  (18, 'Kommunikation', 'Verbessere deine Ausdrucks- und Zuhörkompetenzen für effektiven und wertschätzenden Dialog.'),
  (19, 'Ich und die Welt verändern', 'Setze deinen Glauben praktisch um durch soziales Engagement, Beruf und tagesaktives Zeugnis.'),
  (20, 'Kleingruppen', 'Erlange Methoden für die Gestaltung inspirierender und verbindender Kleingruppen-Treffen.'),
  (21, 'Jüngerschaft', 'Vertiefe deinen Glauben und begleite andere auf dem Weg gemeinsamer Nachfolge.'),
  (22, 'Business for Kingdom', 'Nutze berufliche Kompetenzen, um christliche Werte in Wirtschaft und Gesellschaft wirksam zu vertreten.'),
  (23, 'Unsortiert', 'Themen und Ideen ohne feste Zuordnung, offen für neue Impulse und künftige Einordnung.');

-- 2) Selbstreferenzierende Beziehungen
INSERT INTO subject_relations (subject_id, related_subject_id) VALUES
(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),
(8,9),(8,10),(8,11),(8,12),(8,13),(8,14),(8,15),(8,16),(8,17),(8,18),
(19,20),(19,21),(19,22);

-- Coachable Sets mit christlich-jüngerischem Fokus und passenden deutschen Beschreibungen
INSERT INTO coachable_set (id, title, description, author_id) VALUES
  (1, 'Grundlagen der Jüngerschaft', 'Intensives Einführungsprogramm für neue Nachfolger, mit Bibelstudium, Gebetsrhythmen und persönlichem Mentoring.', 1),
  (2, 'Gebetsleben vertiefen', 'Praktische Anleitung zum Aufbau einer beständigen Gebetspraxis, inklusive Fürbitte und Lobpreis.', 1),
  (3, 'Gemeinschaft im Alltag', 'Strategien zum Aufbau von Hauskreisen, gelebter Gemeinschaft und gegenseitiger Unterstützung.', 2),
  (4, 'Zeugnis im Beruf', 'Impulse und Übungen, um im Arbeitsumfeld glaubwürdig von Christus zu erzählen und christliche Werte zu leben.', 1),
  (5, 'Gaben entdecken und einsetzen', 'Entwicklung und praktische Anwendung geistlicher Gaben im Dienst der Gemeinde und im persönlichen Umfeld.', 2);


-- Nuggets mit deutschem, christlichem Fokus und Einheitlichem YouTube-Link
INSERT INTO nugget (id, title, youtube_url, description, author_id) VALUES
  -- Grundlagen der Jüngerschaft
  (1, 'Was bedeutet Nachfolge?', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Grundlegende biblische Perspektiven zur Jüngerschaft und persönlichen Berufung in Christus.', 1),
  (2, 'Tägliche Stille Zeit gestalten', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Praktische Anleitung für regelmäßiges Gebet und Bibelstudium im Alltag.', 1),
  (3, 'Geistliche Disziplinen einüben', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Fasten, Meditation und weitere klassische Übungen zur Vertiefung des Glaubens.', 3),

  -- Gebetsleben vertiefen
  (4, 'Verschiedene Gebetsformen entdecken', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Fürbitte, Anbetung, Klage und Dank – vielfältige Wege der Kommunikation mit Gott.', 1),
  (5, 'Gebetserhörungen erkennen', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Sensibilität für Gottes Wirken und Antworten im persönlichen Gebetsleben entwickeln.', 3),
  (6, 'Gemeinsam beten lernen', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Praktische Tipps für Gebetsgemeinschaft in Kleingruppen und Partnerschaften.', 1),

  -- Gemeinschaft im Alltag
  (7, 'Hauskreis gründen und leiten', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Schritte zur Bildung einer lebendigen Kleingruppe mit Bibelstudium und Gemeinschaft.', 2),
  (8, 'Konflikte christlich lösen', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Biblische Prinzipien für wertschätzende Konfliktbearbeitung und Versöhnung.', 2),
  (9, 'Gastfreundschaft praktizieren', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Die geistliche Gabe der Gastfreundschaft als Dienst und Zeugnis leben.', 3),

  -- Zeugnis im Beruf
  (10, 'Christliche Werte im Arbeitsplatz', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Integrität, Ehrlichkeit und Nächstenliebe konkret im Berufsleben umsetzen.', 5),
  (11, 'Evangelisation ohne Worte', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Durch authentisches Leben und dienende Haltung ein glaubwürdiges Zeugnis geben.', 4),
  (12, 'Beruf als Berufung verstehen', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Theologische Reflexion über Arbeit als Teilhabe an Gottes Schöpfungsauftrag.', 5),

  -- Gaben entdecken und einsetzen
  (13, 'Geistliche Gaben identifizieren', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Biblische Grundlagen und praktische Tests zur Entdeckung persönlicher Begabungen.', 4),
  (14, 'Dienst in der Gemeinde finden', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Wege zur sinnvollen Integration der eigenen Gaben in das Gemeindeleben.', 4),
  (15, 'Gaben zur Ehre Gottes einsetzen', 'https://www.youtube.com/watch?v=b5t5efGBTps&t=452s', 'Motivation und praktische Hinweise für den selbstlosen Einsatz der eigenen Fähigkeiten.', 3);

INSERT INTO coachable_set_nugget (coachable_set_id, nugget_id) VALUES
  -- Grundlagen der Jüngerschaft
  (1, 1), (1, 2), (1, 3),
  -- Gebetsleben vertiefen
  (2, 4), (2, 5), (2, 6),
  -- Gemeinschaft im Alltag
  (3, 7), (3, 8), (3, 9),
  -- Zeugnis im Beruf
  (4, 10), (4, 11), (4, 12),
  -- Gaben entdecken und einsetzen
  (5, 13), (5, 14), (5, 15);
-- Zuordnung Subjects ↔ Coachable Sets
INSERT INTO subject_coachable_set (subject_id, coachable_set_id) VALUES
  -- 'Ich mit Gott'
  (1, 2),
  -- 'Ich mit anderen'
  (1, 3),
  -- 'Ich und die Welt verändern'
  (4, 4),
  -- 'Jüngerschaft'
  (2, 1),
  -- 'Gemeinschaften gründen'
  (15, 3),
  -- 'Sprachen der Liebe' (Gaben entdecken)
  (16, 5);

-- Requests
--INSERT INTO request (id, user_id, coachable_set_id, status) VALUES
--  ('r1', 'user1', 1, 'pending'),
--  ('r2', 'user2', 2, 'accepted');
