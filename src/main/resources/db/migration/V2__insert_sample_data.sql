INSERT INTO users (email, password, name, role)
VALUES ('admin@gmail.com', 'admin', 'Administrator', 'ROLE_ADMIN'),
       ('siva@gmail.com', 'secret', 'Siva', 'ROLE_USER');

INSERT INTO short_urls (short_key, original_url, created_by, created_at, expires_at, is_private, click_count)
VALUES ('rs1Aed', 'https://neetcode.io/roadmap', 1, TIMESTAMP '2024-07-15', NULL, FALSE,
        0),
       ('ertcbn', 'https://neetcode.io/practice/practice/blind75', 1, TIMESTAMP '2024-07-17', NULL, FALSE,
        0),
       ('edfrtg', 'https://leetcode.com/problem-list/m0ys24j7/', 1, TIMESTAMP '2024-07-18',
        NULL, TRUE, 0),
       ('vbgtyh', 'https://leetcode.com/problems/find-median-from-data-stream/description/', 1, TIMESTAMP '2024-07-19', NULL, FALSE,
        0),
       ('rtyfgb', 'https://www.youtube.com/watch?v=hGJgMy2tPwo', 1, TIMESTAMP '2024-07-25',
        NULL, FALSE, 0),
       ('rtvbop', 'https://www.youtube.com/watch?v=9PoPWMMcIs4', 1,
        TIMESTAMP '2024-07-26', NULL, FALSE, 0),
       ('2wedfg', 'https://www.youtube.com/watch?v=066tDE9AT-A&t=166s', 1, TIMESTAMP '2024-07-27', NULL,
        TRUE, 0),
       ('6yfrd4', 'https://www.youtube.com/watch?v=0_Sakq2LdL8&t=446s', 1,
        TIMESTAMP '2024-07-28', NULL, FALSE, 0),
       ('r5t4tt', 'https://www.youtube.com/watch?v=53gcbJPP5eA', 1, TIMESTAMP '2024-07-29', NULL, FALSE,
        0),

       ('ffr4rt', 'https://letterboxd.com/film/tropic-thunder/reviews/by/activity/', 1,
        TIMESTAMP '2024-08-10', NULL, FALSE, 0),
       ('9oui7u', 'https://letterboxd.com/film/the-other-guys/reviews/by/activity/', 1,
        TIMESTAMP '2024-08-11', NULL, FALSE, 0),
       ('cvbg5t', 'https://letterboxd.com/film/the-nice-guys/reviews/by/activity/', 1, TIMESTAMP '2024-08-12', NULL, FALSE,
        0),
       ('nm6ytf', 'https://letterboxd.com/film/chungking-express/reviews/by/activity/', 1,
        TIMESTAMP '2024-08-13', NULL, FALSE, 0),

       ('tt5y6r', 'https://letterboxd.com/film/aavesham-2024/reviews/by/activity/', 1,
        TIMESTAMP '2024-08-14', NULL, FALSE, 0),
       ('fgghty', 'https://letterboxd.com/film/from-beijing-with-love/reviews/by/activity/', 1,
        TIMESTAMP '2024-08-15', NULL, FALSE, 0),
       ('f45tre', 'https://github.com/karpathy', 1, TIMESTAMP '2024-08-16', NULL,
        FALSE, 0),
       ('54rt54', 'https://github.com/affaan-m/everything-claude-code/tree/main', 1, TIMESTAMP '2024-08-17', NULL,
        FALSE, 0)
;