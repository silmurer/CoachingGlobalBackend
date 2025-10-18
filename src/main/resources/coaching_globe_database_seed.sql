
-- ========================================
-- COACHING GLOBE BACKEND - DATABASE SEED
-- ========================================

-- Clear existing data (in reverse order of dependencies)
DELETE FROM request;
DELETE FROM subject_coachable_set;
DELETE FROM coachable_set_nugget;
DELETE FROM coachable_set;
DELETE FROM nugget;
DELETE FROM subject;
DELETE FROM app_user;
DELETE FROM author;

-- ========================================
-- AUTHORS
-- ========================================
INSERT INTO author (author_id, descr, profession) VALUES
  (1, 'Senior life coach with 10 years of experience specializing in mindfulness and stress management. Certified by the International Coach Federation.', 'Life Coach'),
  (2, 'Certified nutrition specialist with expertise in plant-based diets and meal planning. Masters degree in Nutritional Science.', 'Nutritionist'),
  (3, 'Executive business coach focusing on leadership development and team building. Former Fortune 500 executive.', 'Business Coach'),
  (4, 'Fitness trainer and wellness coach with 15 years of experience in holistic health approaches.', 'Fitness Coach'),
  (5, 'Career development coach specializing in professional transitions and personal branding.', 'Career Coach');

-- ========================================
-- USERS
-- ========================================
INSERT INTO app_user (user_id, first_name, last_name, photo_url, email) VALUES
  ('user1', 'Alice', 'Smith', 'https://example.com/photos/alice.jpg', 'alice@example.com'),
  ('user2', 'Bob', 'Jones', 'https://example.com/photos/bob.jpg', 'bob@example.com'),
  ('user3', 'Charlie', 'Brown', 'https://example.com/photos/charlie.jpg', 'charlie@example.com'),
  ('user4', 'Diana', 'Prince', 'https://example.com/photos/diana.jpg', 'diana@example.com'),
  ('user5', 'Ethan', 'Hunt', NULL, 'ethan@example.com');

-- ========================================
-- SUBJECTS (Hierarchical Structure)
-- ========================================
-- Root level subjects
INSERT INTO subject (subject_id, title, description, parent_id) VALUES
  (1, 'Personal Development', 'Self-improvement and personal growth topics', NULL),
  (2, 'Health & Wellness', 'Physical and mental health practices', NULL),
  (3, 'Professional Growth', 'Career and business development', NULL);

-- Child subjects under Personal Development
INSERT INTO subject (subject_id, title, description, parent_id) VALUES
  (11, 'Mindfulness', 'Practices for present-moment awareness and meditation', 1),
  (12, 'Goal Setting', 'Techniques for setting and achieving personal goals', 1),
  (13, 'Time Management', 'Strategies for effective time utilization', 1);

-- Child subjects under Health & Wellness
INSERT INTO subject (subject_id, title, description, parent_id) VALUES
  (21, 'Nutrition', 'Healthy eating and dietary guidance', 2),
  (22, 'Fitness', 'Exercise routines and physical training', 2),
  (23, 'Mental Health', 'Emotional well-being and stress management', 2);

-- Child subjects under Professional Growth
INSERT INTO subject (subject_id, title, description, parent_id) VALUES
  (31, 'Leadership', 'Leadership skills and team management', 3),
  (32, 'Communication', 'Professional communication and presentation skills', 3),
  (33, 'Career Planning', 'Career path development and transitions', 3);

-- ========================================
-- NUGGETS (Content Pieces)
-- ========================================
INSERT INTO nugget (nugget_id, title, youtube_url, description, author_id) VALUES
  -- Mindfulness nuggets
  ('n1', 'Box Breathing Exercise', 'https://youtu.be/breath001', 'Guided 4-4-4-4 box breathing technique for immediate stress relief', 1),
  ('n2', 'Morning Meditation Practice', 'https://youtu.be/meditation001', '10-minute guided morning meditation to start your day mindfully', 1),
  ('n3', 'Body Scan Relaxation', 'https://youtu.be/bodyscan001', 'Progressive body scan for deep relaxation and awareness', 1),
  
  -- Nutrition nuggets
  ('n4', 'Balanced Salad Building', 'https://youtu.be/salad001', 'How to create a nutritionally balanced salad with proper macros', 2),
  ('n5', 'Meal Prep Basics', 'https://youtu.be/mealprep001', 'Essential tips for weekly meal preparation and storage', 2),
  ('n6', 'Hydration Guide', NULL, 'Understanding daily water needs and hydration strategies', 2),
  
  -- Leadership nuggets
  ('n7', 'Active Listening Skills', 'https://youtu.be/listening001', 'Developing powerful active listening techniques for leaders', 3),
  ('n8', 'Delegation Mastery', 'https://youtu.be/delegate001', 'How to effectively delegate tasks and empower your team', 3),
  
  -- Fitness nuggets
  ('n9', '15-Minute HIIT Workout', 'https://youtu.be/hiit001', 'High-intensity interval training for busy schedules', 4),
  ('n10', 'Stretching Routine', 'https://youtu.be/stretch001', 'Essential daily stretches for flexibility and injury prevention', 4),
  
  -- Career nuggets
  ('n11', 'Resume Optimization', NULL, 'Key strategies for creating an ATS-friendly, impactful resume', 5),
  ('n12', 'Interview Preparation', 'https://youtu.be/interview001', 'Comprehensive guide to preparing for job interviews', 5),
  ('n13', 'Personal Branding 101', 'https://youtu.be/branding001', 'Building your professional brand on LinkedIn and beyond', 5);

-- ========================================
-- COACHABLE SETS (Curated Collections)
-- ========================================
INSERT INTO coachable_set (coachable_set_id, title, description, author_id) VALUES
  (1, 'Stress Management Fundamentals', 'Complete toolkit for managing daily stress through mindfulness and breathing techniques', 1),
  (2, 'Healthy Eating Starter Pack', 'Foundation course for building sustainable healthy eating habits', 2),
  (3, 'Leadership Essentials', 'Core leadership skills every manager needs to master', 3),
  (4, 'Quick Fitness Routines', 'Time-efficient workouts for busy professionals', 4),
  (5, 'Career Transition Guide', 'Navigate your career change with confidence', 5),
  (6, 'Mindful Living Program', 'Comprehensive 30-day mindfulness journey', 1),
  (7, 'Executive Presence', 'Develop commanding presence and communication skills', 3);

-- ========================================
-- COACHABLE SET ↔ NUGGET MAPPING
-- ========================================
INSERT INTO coachable_set_nugget (coachable_set_id, nugget_id) VALUES
  -- Stress Management Fundamentals
  (1, 'n1'), (1, 'n2'), (1, 'n3'),
  
  -- Healthy Eating Starter Pack
  (2, 'n4'), (2, 'n5'), (2, 'n6'),
  
  -- Leadership Essentials
  (3, 'n7'), (3, 'n8'),
  
  -- Quick Fitness Routines
  (4, 'n9'), (4, 'n10'),
  
  -- Career Transition Guide
  (5, 'n11'), (5, 'n12'), (5, 'n13'),
  
  -- Mindful Living Program
  (6, 'n1'), (6, 'n2'), (6, 'n3'),
  
  -- Executive Presence
  (7, 'n7'), (7, 'n8');

-- ========================================
-- SUBJECT ↔ COACHABLE SET MAPPING
-- ========================================
INSERT INTO subject_coachable_set (subject_id, coachable_set_id) VALUES
  -- Mindfulness subject
  (11, 1), (11, 6),
  
  -- Nutrition subject
  (21, 2),
  
  -- Leadership subject
  (31, 3), (31, 7),
  
  -- Fitness subject
  (22, 4),
  
  -- Career Planning subject
  (33, 5),
  
  -- Mental Health subject (stress management)
  (23, 1), (23, 6);

-- ========================================
-- REQUESTS (User Coaching Requests)
-- ========================================
INSERT INTO request (request_id, user_id, coachable_set_id, status) VALUES
  ('r1', 'user1', 1, 'pending'),
  ('r2', 'user2', 2, 'accepted'),
  ('r3', 'user3', 3, 'in_progress'),
  ('r4', 'user1', 6, 'completed'),
  ('r5', 'user4', 5, 'pending'),
  ('r6', 'user5', 4, 'accepted'),
  ('r7', 'user2', 3, 'rejected'),
  ('r8', 'user3', 2, 'completed');

-- ========================================
-- END OF SEED DATA
-- ========================================
