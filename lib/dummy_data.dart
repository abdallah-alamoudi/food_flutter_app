import 'package:flutter/material.dart';
import 'package:food/models/food_category.dart';
import 'package:food/models/meal.dart';

final List<FoodCategory> categories = [
  FoodCategory(id: "c1", title: "Italian", color: Colors.red[200]),
  FoodCategory(id: "c2", title: "Chinese", color: Colors.orange[200]),
  FoodCategory(id: "c3", title: "Mexican", color: Colors.green[200]),
  FoodCategory(id: "c4", title: "Indian", color: Colors.deepOrange[200]),
  FoodCategory(id: "c5", title: "French", color: Colors.blue[200]),
  FoodCategory(id: "c6", title: "Japanese", color: Colors.purple[200]),
];

final List<Meal> meals = [
  Meal(
    id: 'm1',
    categoryId: 'c1',
    title: 'Spaghetti Carbonara',
    description:
        'A creamy pasta dish made with eggs, cheese, pancetta, and pepper.',
    ingredients: [
      'Spaghetti',
      'Eggs',
      'Parmesan cheese',
      'Pancetta',
      'Black pepper'
    ],
    steps: ['Cook pasta', 'Fry pancetta', 'Mix eggs and cheese', 'Combine all'],
    imageUrl:
        'https://img.taste.com.au/sE-X5HqY/taste/2024/03/5-ingredient-turbo-charged-spaghetti-recipe-196959-1.jpg',
    complexity: Complexity.Challenging,
    affordability: Affordability.Luxurious,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm2',
    categoryId: 'c1',
    title: 'Margherita Pizza',
    description:
        'Classic Neapolitan pizza with tomatoes, mozzarella, and basil.',
    ingredients: ['Pizza dough', 'Tomato sauce', 'Mozzarella', 'Basil'],
    steps: ['Prepare dough', 'Add toppings', 'Bake in oven'],
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWwNz-YV88e3LFP6iisBcZT-loky1VotV4aQ&s',
    complexity: Complexity.Hard,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm3',
    categoryId: 'c1',
    title: 'Lasagna',
    description: 'Layered pasta with meat sauce and béchamel.',
    ingredients: [
      'Lasagna noodles',
      'Ground beef',
      'Tomato sauce',
      'Béchamel',
      'Cheese'
    ],
    steps: ['Cook meat sauce', 'Layer ingredients', 'Bake in oven'],
    imageUrl:
        'https://assets.bonappetit.com/photos/656f48d75b552734225041ba/1:1/w_3129,h_3129,c_limit/20231120-WEB-Lasanga-6422.jpg',
    complexity: Complexity.Hard,
    affordability: Affordability.Luxurious,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm4',
    categoryId: 'c1',
    title: 'Risotto',
    description: 'Creamy rice dish often made with mushrooms or seafood.',
    ingredients: ['Arborio rice', 'Onions', 'Stock', 'Parmesan', 'Butter'],
    steps: [
      'Sauté onions',
      'Add rice',
      'Gradually add stock',
      'Stir until creamy'
    ],
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4UcnrX7s33U9sv3tsJ21FQJsjA3AoyGvbQw&s',
    complexity: Complexity.Simple,
    affordability: Affordability.Luxurious,
    isGlutenFree: true,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm5',
    categoryId: 'c1',
    title: 'Tiramisu',
    description:
        'Layered dessert with coffee-soaked ladyfingers and mascarpone.',
    ingredients: [
      'Ladyfingers',
      'Coffee',
      'Mascarpone',
      'Eggs',
      'Cocoa powder'
    ],
    steps: [
      'Dip ladyfingers',
      'Layer with mascarpone mix',
      'Chill and dust with cocoa'
    ],
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpiRjt4A-TRZSmORiY_YiHwruO-I1TBpw42A&s',
    complexity: Complexity.Simple,
    affordability: Affordability.Luxurious,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm6',
    categoryId: 'c2',
    title: 'Kung Pao Chicken',
    description: 'Spicy stir-fry with chicken, peanuts, and vegetables.',
    ingredients: [
      'Chicken',
      'Peanuts',
      'Bell peppers',
      'Chili peppers',
      'Garlic'
    ],
    steps: [
      'Marinate chicken',
      'Stir-fry ingredients',
      'Add sauce and peanuts'
    ],
    imageUrl: 'https://example.com/kungpao.jpg',
    complexity: Complexity.Hard,
    affordability: Affordability.Affordable,
    isGlutenFree: false, // typically contains soy sauce (gluten)
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm7',
    categoryId: 'c2',
    title: 'Sweet and Sour Pork',
    description: 'Fried pork in a tangy sweet and sour sauce.',
    ingredients: ['Pork', 'Pineapple', 'Bell peppers', 'Vinegar', 'Sugar'],
    steps: ['Fry pork', 'Prepare sauce', 'Combine all ingredients'],
    imageUrl: 'https://example.com/sweetandsour.jpg',
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: false, // batter or soy sauce may contain gluten
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm8',
    categoryId: 'c2',
    title: 'Mapo Tofu',
    description: 'Spicy Sichuan tofu dish with ground pork.',
    ingredients: [
      'Tofu',
      'Ground pork',
      'Sichuan peppercorn',
      'Chili bean paste',
      'Garlic'
    ],
    steps: ['Cook pork', 'Add spices and tofu', 'Simmer in sauce'],
    imageUrl: 'https://example.com/mapotofu.jpg',
    complexity: Complexity.Simple,
    affordability: Affordability.Luxurious,
    isGlutenFree: false, // chili bean paste often contains wheat
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm9',
    categoryId: 'c2',
    title: 'Peking Duck',
    description: 'Crispy roast duck served with pancakes and hoisin sauce.',
    ingredients: ['Duck', 'Hoisin sauce', 'Cucumbers', 'Scallions', 'Pancakes'],
    steps: ['Roast duck', 'Slice meat', 'Serve with condiments and pancakes'],
    imageUrl: 'https://example.com/pekingduck.jpg',
    complexity: Complexity.Challenging,
    affordability: Affordability.Affordable,
    isGlutenFree: false, // pancakes and hoisin sauce contain gluten
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm10',
    categoryId: 'c2',
    title: 'Dim Sum',
    description: 'Assorted small Chinese dishes served with tea.',
    ingredients: ['Dumplings', 'Buns', 'Spring rolls', 'Shrimp', 'Vegetables'],
    steps: ['Steam or fry items', 'Serve in bamboo baskets', 'Enjoy with tea'],
    imageUrl: 'https://example.com/dimsum.jpg',
    complexity: Complexity.Hard,
    affordability: Affordability.Affordable,
    isGlutenFree: false, // most dim sum wrappers contain wheat
    isLactoseFree: true,
    isVegan: false, // contains shrimp and possibly meat
    isVegetarian: false,
  ),
  Meal(
    id: 'm11',
    categoryId: 'c3',
    title: 'Tacos Al Pastor',
    description: 'Mexican tacos filled with marinated pork and pineapple.',
    ingredients: ['Pork', 'Pineapple', 'Corn tortillas', 'Onion', 'Cilantro'],
    steps: ['Marinate pork', 'Grill and slice', 'Assemble tacos with toppings'],
    imageUrl: 'https://example.com/tacosalpastor.jpg',
    complexity: Complexity.Challenging,
    affordability: Affordability.Affordable,
    isGlutenFree: true, // corn tortillas are gluten-free
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm12',
    categoryId: 'c3',
    title: 'Chiles Rellenos',
    description:
        'Stuffed peppers filled with cheese or meat, battered and fried.',
    ingredients: [
      'Poblano peppers',
      'Cheese or meat',
      'Eggs',
      'Flour',
      'Tomato sauce'
    ],
    steps: [
      'Roast peppers',
      'Stuff with filling',
      'Dip in batter',
      'Fry and serve with sauce'
    ],
    imageUrl: 'https://example.com/chilesrellenos.jpg',
    complexity: Complexity.Hard,
    affordability: Affordability.Pricey,
    isGlutenFree: false, // battered with wheat flour
    isLactoseFree: false, // if cheese is used
    isVegan: false,
    isVegetarian: true, // if cheese is used (meat-free version)
  ),
  Meal(
    id: 'm13',
    categoryId: 'c3',
    title: 'Guacamole',
    description: 'Avocado dip made with lime, onion, and cilantro.',
    ingredients: ['Avocados', 'Lime juice', 'Onion', 'Cilantro', 'Salt'],
    steps: ['Mash avocados', 'Mix in ingredients', 'Serve fresh'],
    imageUrl: 'https://example.com/guacamole.jpg',
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm14',
    categoryId: 'c3',
    title: 'Enchiladas',
    description: 'Tortillas rolled around filling and covered with sauce.',
    ingredients: ['Tortillas', 'Chicken or beef', 'Cheese', 'Enchilada sauce'],
    steps: [
      'Fill and roll tortillas',
      'Add sauce and cheese',
      'Bake until bubbly'
    ],
    imageUrl: 'https://example.com/enchiladas.jpg',
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false, // depends on type of tortilla
    isLactoseFree: false, // contains cheese
    isVegan: false,
    isVegetarian: false, // includes meat and cheese
  ),
  Meal(
    id: 'm15',
    categoryId: 'c3',
    title: 'Tamales',
    description: 'Corn dough wrapped in husks with meat or vegetable filling.',
    ingredients: ['Masa', 'Corn husks', 'Chicken or pork', 'Chili sauce'],
    steps: ['Prepare masa and filling', 'Wrap in husks', 'Steam until cooked'],
    imageUrl: 'https://example.com/tamales.jpg',
    complexity: Complexity.Hard,
    affordability: Affordability.Luxurious,
    isGlutenFree: true, // masa is corn-based
    isLactoseFree: true,
    isVegan: false, // meat-based filling
    isVegetarian: false,
  ),
  Meal(
    id: 'm16',
    categoryId: 'c4',
    title: 'Butter Chicken',
    description: 'Creamy Indian chicken dish with tomato-based sauce.',
    ingredients: ['Chicken', 'Tomatoes', 'Cream', 'Butter', 'Spices'],
    steps: ['Marinate chicken', 'Cook in sauce', 'Simmer and serve'],
    imageUrl: 'https://example.com/butterchicken.jpg',
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: true, // no gluten in typical ingredients
    isLactoseFree: false, // contains cream and butter
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm17',
    categoryId: 'c4',
    title: 'Palak Paneer',
    description: 'Spinach curry with cubes of Indian cheese.',
    ingredients: ['Spinach', 'Paneer', 'Garlic', 'Ginger', 'Spices'],
    steps: ['Cook spinach', 'Blend and season', 'Add paneer cubes'],
    imageUrl: 'https://example.com/palakpaneer.jpg',
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: true,
    isLactoseFree: false, // paneer is dairy
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm18',
    categoryId: 'c4',
    title: 'Biryani',
    description: 'Fragrant rice dish layered with meat and spices.',
    ingredients: ['Basmati rice', 'Chicken or lamb', 'Yogurt', 'Spices'],
    steps: ['Cook meat and rice separately', 'Layer and steam cook'],
    imageUrl: 'https://example.com/biryani.jpg',
    complexity: Complexity.Challenging,
    affordability: Affordability.Luxurious,
    isGlutenFree: true, // all ingredients naturally gluten-free
    isLactoseFree: false, // includes yogurt
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm19',
    categoryId: 'c4',
    title: 'Chole Bhature',
    description: 'Spiced chickpea curry with deep-fried bread.',
    ingredients: ['Chickpeas', 'Tomatoes', 'Onions', 'Spices', 'Flour'],
    steps: ['Cook chickpeas with gravy', 'Make dough', 'Fry bhature'],
    imageUrl: 'https://example.com/cholebhature.jpg',
    complexity: Complexity.Hard,
    affordability: Affordability.Affordable,
    isGlutenFree: false, // bhature made from wheat flour
    isLactoseFree: true, // typically dairy-free
    isVegan: true, // no animal products in basic version
    isVegetarian: true,
  ),
  Meal(
    id: 'm20',
    categoryId: 'c4',
    title: 'Masala Dosa',
    description: 'Crispy rice crepe filled with spicy potato mix.',
    ingredients: ['Rice batter', 'Potatoes', 'Mustard seeds', 'Curry leaves'],
    steps: ['Make batter', 'Cook dosa', 'Add filling and serve'],
    imageUrl: 'https://example.com/masaladosa.jpg',
    complexity: Complexity.Hard,
    affordability: Affordability.Affordable,
    isGlutenFree: true, // rice and urad dal batter is gluten-free
    isLactoseFree: true,
    isVegan: true, // no dairy, egg, or meat
    isVegetarian: true,
  ),
  Meal(
    id: 'm21',
    categoryId: 'c5',
    title: 'Sushi',
    description: 'Japanese dish with vinegared rice and various fillings.',
    ingredients: [
      'Sushi rice',
      'Nori',
      'Fish or vegetables',
      'Vinegar',
      'Soy sauce'
    ],
    steps: ['Prepare rice', 'Assemble rolls', 'Slice and serve'],
    imageUrl: 'https://example.com/sushi.jpg',
    complexity: Complexity.Hard,
    affordability: Affordability.Luxurious,
    isGlutenFree: false, // soy sauce usually contains gluten
    isLactoseFree: true,
    isVegan: false, // not vegan if it includes fish
    isVegetarian: false, // unless specifically made vegetarian
  ),
  Meal(
    id: 'm22',
    categoryId: 'c5',
    title: 'Ramen',
    description: 'Noodle soup with broth, meat, and toppings.',
    ingredients: ['Ramen noodles', 'Broth', 'Pork', 'Egg', 'Scallions'],
    steps: ['Prepare broth', 'Cook noodles', 'Assemble and serve'],
    imageUrl: 'https://example.com/ramen.jpg',
    complexity: Complexity.Hard,
    affordability: Affordability.Luxurious,
    isGlutenFree: false, // ramen noodles and soy sauce may contain gluten
    isLactoseFree: true,
    isVegan: false, // contains pork and egg
    isVegetarian: false,
  ),
  Meal(
    id: 'm23',
    categoryId: 'c5',
    title: 'Tempura',
    description: 'Lightly battered and deep-fried seafood or vegetables.',
    ingredients: ['Shrimp or vegetables', 'Flour', 'Egg', 'Cold water', 'Oil'],
    steps: ['Make batter', 'Dip items', 'Deep-fry and serve'],
    imageUrl: 'https://example.com/tempura.jpg',
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: false, // batter is made with flour
    isLactoseFree: true,
    isVegan: false, // uses egg, and often shrimp
    isVegetarian: false, // not if seafood is used
  ),
  Meal(
    id: 'm24',
    categoryId: 'c5',
    title: 'Okonomiyaki',
    description: 'Savory Japanese pancake with cabbage and various toppings.',
    ingredients: [
      'Flour',
      'Eggs',
      'Cabbage',
      'Pork or seafood',
      'Okonomiyaki sauce'
    ],
    steps: ['Mix ingredients', 'Cook like pancake', 'Add toppings'],
    imageUrl: 'https://example.com/okonomiyaki.jpg',
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false, // contains wheat flour and sauce may contain gluten
    isLactoseFree: true,
    isVegan: false, // contains egg and meat
    isVegetarian: false,
  ),
  Meal(
    id: 'm25',
    categoryId: 'c5',
    title: 'Donburi',
    description: 'Rice bowl with various toppings such as meat or tempura.',
    ingredients: ['Rice', 'Chicken or beef', 'Eggs', 'Soy sauce', 'Onions'],
    steps: ['Cook meat and sauce', 'Place over rice', 'Serve hot'],
    imageUrl: 'https://example.com/donburi.jpg',
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false, // soy sauce usually contains gluten
    isLactoseFree: true,
    isVegan: false, // contains meat and eggs
    isVegetarian: false,
  ),
  Meal(
    id: 'm26',
    categoryId: 'c6',
    title: 'Croissant',
    description: 'Flaky, buttery pastry perfect for breakfast.',
    ingredients: ['Flour', 'Butter', 'Yeast', 'Milk', 'Sugar'],
    steps: ['Prepare dough', 'Fold in butter layers', 'Shape and bake'],
    imageUrl: 'https://example.com/croissant.jpg',
    complexity: Complexity.Challenging,
    affordability: Affordability.Luxurious,
    isGlutenFree: false, // contains wheat flour
    isLactoseFree: false, // contains butter and milk
    isVegan: false, // contains butter and milk
    isVegetarian: true, // no meat
  ),
  Meal(
    id: 'm27',
    categoryId: 'c6',
    title: 'Ratatouille',
    description: 'Stewed vegetable dish from Provence.',
    ingredients: ['Zucchini', 'Eggplant', 'Tomatoes', 'Onions', 'Peppers'],
    steps: ['Chop vegetables', 'Sauté and layer', 'Bake or simmer'],
    imageUrl: 'https://example.com/ratatouille.jpg',
    complexity: Complexity.Hard,
    affordability: Affordability.Pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm28',
    categoryId: 'c6',
    title: 'Coq au Vin',
    description: 'Chicken braised with wine, mushrooms, and garlic.',
    ingredients: ['Chicken', 'Red wine', 'Mushrooms', 'Garlic', 'Onions'],
    steps: [
      'Marinate chicken',
      'Brown and simmer in wine',
      'Serve with garnish'
    ],
    imageUrl: 'https://example.com/coqauvin.jpg',
    complexity: Complexity.Hard,
    affordability: Affordability.Luxurious,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm29',
    categoryId: 'c6',
    title: 'Quiche Lorraine',
    description: 'Savory pie with eggs, cream, and bacon.',
    ingredients: ['Pie crust', 'Eggs', 'Cream', 'Bacon', 'Cheese'],
    steps: ['Prepare crust', 'Mix filling', 'Bake until golden'],
    imageUrl: 'https://example.com/quichelorraine.jpg',
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: false, // crust typically contains gluten
    isLactoseFree: false, // contains cream and cheese
    isVegan: false, // contains eggs, dairy, and meat
    isVegetarian: false, // contains bacon
  ),
  Meal(
    id: 'm30',
    categoryId: 'c6',
    title: 'Crêpes',
    description: 'Thin pancakes filled with sweet or savory ingredients.',
    ingredients: ['Flour', 'Eggs', 'Milk', 'Butter', 'Sugar'],
    steps: ['Mix batter', 'Cook on skillet', 'Add fillings and fold'],
    imageUrl: 'https://example.com/crepes.jpg',
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false, // contains flour
    isLactoseFree: false, // contains milk and butter
    isVegan: false, // contains eggs and milk
    isVegetarian: true, // no meat by default
  ),
];
