module Counters where

import qualified Data.Map as Map
import qualified Data.Set as Set

-- map of numeral counters
counters :: Map String String
-- kanji (hiragana) / romaji
counters = Map.fromList [("cylindricalObjects", "本 (ほん) / hon"), 
                         ("books", "冊 (さつ/satsu)"), 
                         ("smallAnimals", "匹 (ひき) / hiki"),
                         ("largeAnimals", "頭 (とう) / tou"),
                         ("people", "人 (にん) / nin"),
                         ("thinFlatObjects", "枚 (まい) / mai"),
                         ("vehiclesAndDevices", "台 (だい) / dai"),
                         ("age", "歳 (さい) / sai")]

numberToRomaji :: Map Int String
numberToRomaji = Map.fromList [
    (1, "ichi"), (2, "ni"), (3, "san"), (4, "yon"), (5, "go"),
    (6, "roku"), (7, "nana"), (8, "hachi"), (9, "kyuu"), (10, "juu"),
    (11, "juuichi"), (12, "juuni"), (13, "juusan"), (14, "juuyon"), (15, "juugo"),
    (16, "juuroku"), (17, "juunana"), (18, "juuhachi"), (19, "juukyuu"), (20, "nijuu"),
    (21, "nijuuichi"), (22, "nijuuni"), (23, "nijuusan"), (24, "nijuuyon"), (25, "nijuugo"),
    (26, "nijuuroku"), (27, "nijuunana"), (28, "nijuuhachi"), (29, "nijuukyuu"), (30, "sanjuu"),
    (31, "sanjuuichi"), (32, "sanjuuni"), (33, "sanjuusan"), (34, "sanjuuyon"), (35, "sanjuugo"),
    (36, "sanjuuroku"), (37, "sanjuunana"), (38, "sanjuuhachi"), (39, "sanjuukyuu"), (40, "yonjuu"),
    (41, "yonjuuichi"), (42, "yonjuuni"), (43, "yonjuusan"), (44, "yonjuuyon"), (45, "yonjuugo"),
    (46, "yonjuuroku"), (47, "yonjuunana"), (48, "yonjuuhachi"), (49, "yonjuukyuu"), (50, "gojuu"),
    (51, "gojuuichi"), (52, "gojuuni"), (53, "gojuusan"), (54, "gojuuyon"), (55, "gojuugo"),
    (56, "gojuuroku"), (57, "gojuunana"), (58, "gojuuhachi"), (59, "gojuukyuu"), (60, "rokujuu"),
    (61, "rokujuuichi"), (62, "rokujuuni"), (63, "rokujuusan"), (64, "rokujuuyon"), (65, "rokujuugo"),
    (66, "rokujuuroku"), (67, "rokujuunana"), (68, "rokujuuhachi"), (69, "rokujuukyuu"), (70, "nanajuu"),
    (71, "nanajuuichi"), (72, "nanajuuni"), (73, "nanajuusan"), (74, "nanajuuyon"), (75, "nanajuugo"),
    (76, "nanajuuroku"), (77, "nanajuunana"), (78, "nanajuuhachi"), (79, "nanajuukyuu"), (80, "hachijuu"),
    (81, "hachijuuichi"), (82, "hachijuuni"), (83, "hachijuusan"), (84, "hachijuuyon"), (85, "hachijuugo"),
    (86, "hachijuuroku"), (87, "hachijuu nana"), (88, "hachijuuhachi"), (89, "hachijuukyuu"), (90, "kyuujuu"),
    (91, "kyuujuuichi"), (92, "kyuujuuni"), (93, "kyuujuusan"), (94, "kyuujuuyon"), (95, "kyuujuugo"),
    (96, "kyuujuuroku"), (97, "kyuujuunana"), (98, "kyuujuuhachi"), (99, "kyuujuukyuu"), (100, "hyaku")
    ]

-- categories
cylindricalObjects = Set.fromList ["pens", "bottles", "chopsticks", "candles"]
books = Set.fromList ["books", "magazines", "leaflets", "notebooks", "comics"]
smallAnimals = Set.fromList ["cats", "dogs", "rabbits", "hamsters", "mice"]
largeAnimals = Set.fromList ["cows", "horses", "elephants", "whales", "bears"]
people = Set.fromList ["children", "adults", "students", "workers", "family members"]
thinFlatObjects = Set.fromList ["paper", "plates", "cards", "tickets", "cloths"]
vehiclesAndDevices = Set.fromList ["cars", "bicycles", "trucks", "washing machines", "computers"]
age = Set.fromList ["years old", "years"]
