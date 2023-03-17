INSERT INTO user (id, name, email_id, username, password, photo)
VALUES (1, 'Nisarg Patel', 'nisarg07@gmail.com', 'nisarg',
        '$2a$10$d4QFhHAiyapAj68gS5wKmODMs5s465.iWp37lYixN.LrMosMK1lLa', '1/nisarg.jpg');
INSERT INTO user (id, name, email_id, username, password, photo)
VALUES (2, 'Maitri Patel', 'maitri14@gmail.com', 'maitri',
        '$2a$10$RxB9nYk9D7szKsUR6.0ycuvCAJQNwnqjHV3k4QL6LtbVav3wZHN5O', '1/admin.png');

INSERT INTO recipe (id, recipe_name, prep_time, cook_time, total_time, instruction, date_added, user_id)
VALUES (1, 'Vegetable Pulav', 20, 10, 30,
        'Step  1 - Wash rice and soak it in water for 15-20 minutes. Drain and keep aside until needed.' ||
        'Step  2 - Heat ghee and oil together in a pressure cooker (2-liter capacity, stainless steel cooker) on low flame. Add bay leaf, cinnamon, clove, and sauté for 30 seconds. Add onion and sauté until it turns light brown or for approx. 2 minutes.' ||
        'Step  3 - Add chopped tomato, green peas, french beans and carrot.' ||
        'Step  4 - Stir-fry them for approx. 2 minutes.' ||
        'Step  5 - Add soaked (drained) rice, garam masala powder, turmeric powder, red chilli powder and salt.' ||
        'Step  6 - Stir-fry them for approx. 2 minutes.' ||
        'Step  7 - Add 1 cup water and mix well.' ||
        'Step  8 - Close the lid and cook over medium flame for 2 whistles. When 1st whistle is completed, reduce the flame to low and cook until another whistle. Turn off flame.' ||
        'Step  9 - Let it cool at room temperature until pressure inside cooker comes down naturally. Open the lid carefully and fluff the rice with a fork. Transfer it to a serving bowl and garnish with fresh coriander leaves.'
           ,
        '2022-10-5', 1);
INSERT INTO recipe (id, recipe_name, prep_time, cook_time, total_time, instruction, date_added, user_id)
VALUES (2, 'Black Bean Veggie Burgers', 15, 20, 35,
        'Step 1 - Preheat an outdoor grill for high heat. Lightly oil a sheet of aluminum foil with cooking spray.' ||
        'Step 2 - Mash black beans in a medium bowl with a fork until thick and pasty.' ||
        'Step 3 - Finely chop bell pepper, onion, and garlic in a food processor. Stir chopped vegetables into mashed beans.' ||
        'Step 4 - Stir together egg, chili powder, cumin, and chili sauce in a small bowl. Add to the mashed beans and stir to combine. Mix in bread crumbs until the mixture is sticky and holds together. Divide the mixture into four patties and place on the prepared foil.' ||
        'Step 5 - Grill on the preheated grill for about 8 minutes on each side.',
        '2022-10-7', 2);

INSERT INTO recipe (id, recipe_name, prep_time, cook_time, total_time, instruction, date_added, user_id)
VALUES (3, 'Indian Chai', 5, 5, 10,
        'Step 1 - Pour boiling water over chai tea bag in a mug; let steep 4 to 6 minutes. Remove and discard tea bag.' ||
        'Step 2 - Stir honey and sugar into tea to dissolve. Stir milk through tea to serve.',
        '2022-10-15', 1);

INSERT INTO ingredient(recipe_id, item)
VALUES (1, '1/2 cup Basmati Rice (long grained rice)');
INSERT INTO ingredient(recipe_id, item)
VALUES (1, '1 medium Onion, finely chopped');
INSERT INTO ingredient(recipe_id, item)
VALUES (1, '1 small Tomato, finely chopped');
INSERT INTO ingredient(recipe_id, item)
VALUES (1, '1/4 cup Green Peas (mutter), fresh or frozen');
INSERT INTO ingredient(recipe_id, item)
VALUES (1, '3 tablespoons finely chopped French Beans');
INSERT INTO ingredient(recipe_id, item)
VALUES (1, '1/4 cup finely chopped Carrot');
INSERT INTO ingredient(recipe_id, item)
VALUES (1, '1 small piece of Bay Leaf');
INSERT INTO ingredient(recipe_id, item)
VALUES (1, '1-inch piece of Cinnamon');
INSERT INTO ingredient(recipe_id, item)
VALUES (1, '2 Cloves');
INSERT INTO ingredient(recipe_id, item)
VALUES (1, '1/4 teaspoon Garam Masala Powder');
INSERT INTO ingredient(recipe_id, item)
VALUES (1, '1/8 teaspoon Turmeric Powder');
INSERT INTO ingredient(recipe_id, item)
VALUES (1, '1/2 teaspoon Red Chilli Powder');
INSERT INTO ingredient(recipe_id, item)
VALUES (1, '2 tablespoons finely chopped Coriander Leaves');
INSERT INTO ingredient(recipe_id, item)
VALUES (1, '2 tablespoons Oil');

INSERT INTO ingredient(recipe_id, item)
VALUES (2, 'cooking spray');
INSERT INTO ingredient(recipe_id, item)
VALUES (2, '1 (16 ounce) can black beans, drained and rinsed');
INSERT INTO ingredient(recipe_id, item)
VALUES (2, '½ green bell pepper, cut into 2 inch pieces');
INSERT INTO ingredient(recipe_id, item)
VALUES (2, '½ onion, cut into wedges');
INSERT INTO ingredient(recipe_id, item)
VALUES (2, '3 cloves garlic, peeled');
INSERT INTO ingredient(recipe_id, item)
VALUES (2, '1 egg');
INSERT INTO ingredient(recipe_id, item)
VALUES (2, '1 tablespoon chili powder');
INSERT INTO ingredient(recipe_id, item)
VALUES (2, '1 tablespoon cumin');
INSERT INTO ingredient(recipe_id, item)
VALUES (2, '1 teaspoon Thai chili sauce or hot sauce');
INSERT INTO ingredient(recipe_id, item)
VALUES (2, '½ cup bread crumbs');

INSERT INTO ingredient(recipe_id, item)
VALUES (3, '¾ cup boiling water');
INSERT INTO ingredient(recipe_id, item)
VALUES (3, '1 chai tea bag');
INSERT INTO ingredient(recipe_id, item)
VALUES (3, '1 ½ teaspoons honey');
INSERT INTO ingredient(recipe_id, item)
VALUES (3, '1 teaspoon white sugar');
INSERT INTO ingredient(recipe_id, item)
VALUES (3, '¾ cup milk');

INSERT INTO meal("ID", "DATE_TO_BE_MADE", "RECIPE_ID", "USER_ID")
VALUES (1, '2022-10-10', 1, 1);
INSERT INTO meal("ID", "DATE_TO_BE_MADE", "RECIPE_ID", "USER_ID")
VALUES (2, '2022-10-10', 2, 1);
INSERT INTO meal("ID", "DATE_TO_BE_MADE", "RECIPE_ID", "USER_ID")
VALUES (3, '2022-10-06', 2, 2);

INSERT INTO user_fav_recipe(recipe_id, user_id)
VALUES (3, 1);
INSERT INTO user_fav_recipe(recipe_id, user_id)
VALUES (1, 1);
INSERT INTO user_fav_recipe(recipe_id, user_id)
VALUES (2, 2);

INSERT INTO cart(ingredient_id, user_id)
VALUES (1, 1);
INSERT INTO cart(ingredient_id, user_id)
VALUES (3, 1);
INSERT INTO cart(ingredient_id, user_id)
VALUES (5, 1);
INSERT INTO cart(ingredient_id, user_id)
VALUES (7, 1);
INSERT INTO cart(ingredient_id, user_id)
VALUES (16, 2);
INSERT INTO cart(ingredient_id, user_id)
VALUES (17, 2);
INSERT INTO cart(ingredient_id, user_id)
VALUES (18, 2);