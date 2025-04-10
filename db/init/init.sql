DROP TABLE IF EXISTS number_romaji_kanji;

CREATE TABLE number_romaji_kanji (
    num INT PRIMARY KEY,
    romaji VARCHAR(50),
    kanji VARCHAR(10)
);

INSERT INTO number_romaji_kanji (num, romaji, kanji) VALUES
(1, 'ichi', '一'), (2, 'ni', '二'), (3, 'san', '三'), (4, 'yon', '四'), (5, 'go', '五'),
(6, 'roku', '六'), (7, 'nana', '七'), (8, 'hachi', '八'), (9, 'kyuu', '九'), (10, 'juu', '十'),
(11, 'juuichi', '十一'), (12, 'juuni', '十二'), (13, 'juusan', '十三'), (14, 'juuyon', '十四'), (15, 'juugo', '十五'),
(16, 'juuroku', '十六'), (17, 'juunana', '十七'), (18, 'juuhachi', '十八'), (19, 'juukyuu', '十九'), (20, 'nijuu', '二十'),
(21, 'nijuuichi', '二十一'), (22, 'nijuuni', '二十二'), (23, 'nijuusan', '二十三'), (24, 'nijuuyon', '二十四'), (25, 'nijuugo', '二十五'),
(26, 'nijuuroku', '二十六'), (27, 'nijuunana', '二十七'), (28, 'nijuuhachi', '二十八'), (29, 'nijuukyuu', '二十九'), (30, 'sanjuu', '三十'),
(31, 'sanjuuichi', '三十一'), (32, 'sanjuuni', '三十二'), (33, 'sanjuusan', '三十三'), (34, 'sanjuuyon', '三十四'), (35, 'sanjuugo', '三十五'),
(36, 'sanjuuroku', '三十六'), (37, 'sanjuunana', '三十七'), (38, 'sanjuuhachi', '三十八'), (39, 'sanjuukyuu', '三十九'), (40, 'yonjuu', '四十'),
(41, 'yonjuuichi', '四十一'), (42, 'yonjuuni', '四十二'), (43, 'yonjuusan', '四十三'), (44, 'yonjuuyon', '四十四'), (45, 'yonjuugo', '四十五'),
(46, 'yonjuuroku', '四十六'), (47, 'yonjuunana', '四十七'), (48, 'yonjuuhachi', '四十八'), (49, 'yonjuukyuu', '四十九'), (50, 'gojuu', '五十'),
(51, 'gojuuichi', '五十一'), (52, 'gojuuni', '五十二'), (53, 'gojuusan', '五十三'), (54, 'gojuuyon', '五十四'), (55, 'gojuugo', '五十五'),
(56, 'gojuuroku', '五十六'), (57, 'gojuunana', '五十七'), (58, 'gojuuhachi', '五十八'), (59, 'gojuukyuu', '五十九'), (60, 'rokujuu', '六十'),
(61, 'rokujuuichi', '六十一'), (62, 'rokujuuni', '六十二'), (63, 'rokujuusan', '六十三'), (64, 'rokujuuyon', '六十四'), (65, 'rokujuugo', '六十五'),
(66, 'rokujuuroku', '六十六'), (67, 'rokujuunana', '六十七'), (68, 'rokujuuhachi', '六十八'), (69, 'rokujuukyuu', '六十九'), (70, 'nanajuu', '七十'),
(71, 'nanajuuichi', '七十一'), (72, 'nanajuuni', '七十二'), (73, 'nanajuusan', '七十三'), (74, 'nanajuuyon', '七十四'), (75, 'nanajuugo', '七十五'),
(76, 'nanajuuroku', '七十六'), (77, 'nanajuunana', '七十七'), (78, 'nanajuuhachi', '七十八'), (79, 'nanajuukyuu', '七十九'), (80, 'hachijuu', '八十'),
(81, 'hachijuuichi', '八十一'), (82, 'hachijuuni', '八十二'), (83, 'hachijuusan', '八十三'), (84, 'hachijuuyon', '八十四'), (85, 'hachijuugo', '八十五'),
(86, 'hachijuuroku', '八十六'), (87, 'hachijuunana', '八十七'), (88, 'hachijuuhachi', '八十八'), (89, 'hachijuukyuu', '八十九'), (90, 'kyuujuu', '九十'),
(91, 'kyuujuuichi', '九十一'), (92, 'kyuujuuni', '九十二'), (93, 'kyuujuusan', '九十三'), (94, 'kyuujuuyon', '九十四'), (95, 'kyuujuugo', '九十五'),
(96, 'kyuujuuroku', '九十六'), (97, 'kyuujuunana', '九十七'), (98, 'kyuujuuhachi', '九十八'), (99, 'kyuujuukyuu', '九十九'), (100, 'hyaku', '百');