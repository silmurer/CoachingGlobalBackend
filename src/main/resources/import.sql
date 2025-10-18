-- Table definitions

CREATE TABLE author (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  descr TEXT,
  profession VARCHAR(255) NOT NULL
);

CREATE TABLE app_user (
  id VARCHAR(100) PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  photo_url VARCHAR(512),
  email VARCHAR(255) NOT NULL
);

CREATE TABLE subject (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  parent_id BIGINT,
  FOREIGN KEY (parent_id) REFERENCES subject(id)
);

CREATE TABLE nugget (
  id VARCHAR(100) PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  youtube_url VARCHAR(512),
  description TEXT,
  author_id BIGINT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES author(id)
);

CREATE TABLE coachable_set (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  author_id BIGINT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES author(id)
);

CREATE TABLE coachable_set_nugget (
  coachable_set_id BIGINT NOT NULL,
  nugget_id VARCHAR(100) NOT NULL,
  PRIMARY KEY (coachable_set_id, nugget_id),
  FOREIGN KEY (coachable_set_id) REFERENCES coachable_set(id),
  FOREIGN KEY (nugget_id) REFERENCES nugget(id)
);

CREATE TABLE subject_coachable_set (
  subject_id BIGINT NOT NULL,
  coachable_set_id BIGINT NOT NULL,
  PRIMARY KEY (subject_id, coachable_set_id),
  FOREIGN KEY (subject_id) REFERENCES subject(id),
  FOREIGN KEY (coachable_set_id) REFERENCES coachable_set(id)
);

CREATE TABLE request (
  id VARCHAR(100) PRIMARY KEY,
  user_id VARCHAR(100) NOT NULL,
  coachable_set_id BIGINT NOT NULL,
  status VARCHAR(50) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES app_user(id),
  FOREIGN KEY (coachable_set_id) REFERENCES coachable_set(id)
);

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
  ('user1', 'Alice', 'Smith', 'https://example.com/photos/alice.jpg', 'alice@example.com'),
  ('user2', 'Bob', 'Jones', NULL, 'bob@example.com');

-- Subjects
INSERT INTO subject (id, title, description, parent_id) VALUES
  (1, 'Ich mit Gott', NULL, NULL),
  (2, 'Ich mit mir', NULL, NULL),
  (3, 'Ich mit anderen', NULL, NULL),
  (4, 'Ich und die Welt verändern', NULL, NULL),
  (5, 'Unsortiert', NULL, NULL);

-- Nuggets
INSERT INTO nugget (id, title, youtube_url, description, author_id) VALUES
  ('n1', 'Box Breathing Exercise', 'https://youtu.be/breath001', 'Guided 4-4-4-4 box breathing technique for immediate stress relief', 1),
  ('n2', 'Morning Meditation Practice', 'https://youtu.be/meditation001', '10-minute guided morning meditation to start your day mindfully', 1),
  ('n3', 'Body Scan Relaxation', 'https://youtu.be/bodyscan001', 'Progressive body scan for deep relaxation and awareness', 1),
  ('n4', 'Balanced Salad Building', 'https://youtu.be/salad001', 'How to create a nutritionally balanced salad with proper macros', 2),
  ('n5', 'Meal Prep Basics', 'https://youtu.be/mealprep001', 'Essential tips for weekly meal preparation and storage', 2),
  ('n6', 'Hydration Guide', NULL, 'Understanding daily water needs and hydration strategies', 2),
  ('n7', 'Active Listening Skills', 'https://youtu.be/listening001', 'Developing powerful active listening techniques for leaders', 3),
  ('n8', 'Delegation Mastery', 'https://youtu.be/delegate001', 'How to effectively delegate tasks and empower your team', 3),
  ('n9', '15-Minute HIIT Workout', 'https://youtu.be/hiit001', 'High-intensity interval training for busy schedules', 4),
  ('n10', 'Stretching Routine', 'https://youtu.be/stretch001', 'Essential daily stretches for flexibility and injury prevention', 4),
  ('n11', 'Resume Optimization', NULL, 'Key strategies for creating an ATS-friendly, impactful resume', 5),
  ('n12', 'Interview Preparation', 'https://youtu.be/interview001', 'Comprehensive guide to preparing for job interviews', 5),
  ('n13', 'Personal Branding 101', 'https://youtu.be/branding001', 'Building your professional brand on LinkedIn and beyond', 5);

-- Coachable Sets
INSERT INTO coachable_set (id, title, description, author_id) VALUES
  (1, 'Stress Management', 'Techniques to manage stress', 1),
  (2, 'Meal Planning', NULL, 2),
  (3, 'Leadership Essentials', 'Core leadership skills every manager needs to master', 3),
  (4, 'Quick Fitness Routines', 'Time-efficient workouts for busy professionals', 4),
  (5, 'Career Transition Guide', 'Navigate your career change with confidence', 5);

-- Join coachable_set ↔ nugget
INSERT INTO coachable_set_nugget (coachable_set_id, nugget_id) VALUES
  (1, 'n1'), (1, 'n2'), (1, 'n3'),
  (2, 'n4'), (2, 'n5'), (2, 'n6'),
  (3, 'n7'), (3, 'n8'),
  (4, 'n9'), (4, 'n10'),
  (5, 'n11'), (5, 'n12'), (5, 'n13');

-- Join subject ↔ coachable_set
INSERT INTO subject_coachable_set (subject_id, coachable_set_id) VALUES
  (1, 1), (1, 6),  -- example additional mapping
  (2, 2),
  (3, 3), (3, 7),
  (4, 4),
  (5, 5);

-- Requests
INSERT INTO request (id, user_id, coachable_set_id, status) VALUES
  ('r1', 'user1', 1, 'pending'),
  ('r2', 'user2', 2, 'accepted');
