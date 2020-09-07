import 'package:FoodOrder/models/category.dart';
import 'package:FoodOrder/models/meal.dart';

import 'package:flutter/material.dart';

const DUMMY_CATEGORIES = const [
  CategoryFood(
    id: 'c0',
    title: 'All',
    color: Colors.purple,
  ),
  CategoryFood(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  CategoryFood(
    id: 'c2',
    title: 'Appeteasers',
    color: Colors.red,
  ),
  CategoryFood(
    id: 'c3',
    title: 'Burgers, pitas, wraps',
    color: Colors.orange,
  ),
  CategoryFood(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  CategoryFood(
    id: 'c5',
    title: 'Salads',
    color: Colors.blue,
  ),
  CategoryFood(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  CategoryFood(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  CategoryFood(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  CategoryFood(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  CategoryFood(
    id: 'c10',
    title: 'Dessert',
    color: Colors.teal,
  ),
];

// ignore: non_constant_identifier_names
var DUMMY_MEALS = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
      'c0',
    ],
    title: 'Spaghetti with Tomato Sauce',
    price: '3',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    counter: 0,
  ),
  Meal(
    id: 'm2',
    categories: ['c2', 'c0'],
    title: 'Toast Hawaii',
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    price: '4.3',
    counter: 0,
  ),
  Meal(
    id: 'm3',
    categories: ['c2', 'c3', 'c0'],
    title: 'Classic Hamburger',
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    price: '5.5',
    counter: 0,
  ),
  Meal(
    id: 'm4',
    categories: ['c4', 'c0'],
    title: 'Wiener Schnitzel',
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    price: '6.2',
    counter: 0,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2',
      'c5',
      'c0',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    price: '3.9',
    counter: 0,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c0',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    price: '2.6',
    counter: 0,
  ),
  Meal(
    id: 'm7',
    categories: ['c7', 'c0'],
    title: 'Pancakes',
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    price: '4.5',
    counter: 0,
  ),
  Meal(
    id: 'm8',
    categories: ['c8', 'c0'],
    title: 'Creamy Indian Chicken Curry',
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    price: '1.2',
    counter: 0,
  ),
  Meal(
    id: 'm9',
    categories: ['c9', 'c0'],
    title: 'Chocolate Souffle',
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    price: '2.3',
    counter: 0,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c0',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry',
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    price: '9.2',
    counter: 0,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c10',
      'c0',
    ],
    title: 'Caramel Cheese Cake',
    imageUrl:
        'https://www.lifeloveandsugar.com/wp-content/uploads/2019/01/Salted-Caramel-Cheesecake3-1.jpg',
    ingredients: [
      'This salted caramel cheesecake is seriously the best cheesecake recipe ever. It’s silky smooth, extra creamy, and covered in a delicious homemade salted caramel. '
    ],
    price: '5.2',
    counter: 0,
  ),
  Meal(
    id: 'm12',
    categories: [
      'c10',
      'c0',
    ],
    title: 'Lighten Up Chocolate Cake',
    imageUrl:
        'https://www.sugarandsoul.co/wp-content/uploads/2019/01/healthier-chocolate-yogurt-cake-recipe-1.jpg',
    ingredients: [
      'This Light Chocolate Yoghurt Cake is the perfect everyday cake! The addition of applesauce and Greek yogurt for moist texture and stevia for sweetness makes this easy Yogurt Cake a healthy dessert choice to feel good about.'
    ],
    price: '6.0',
    counter: 0,
  ),
  Meal(
    id: 'm13',
    categories: [
      'c10',
      'c0',
    ],
    title: 'New York Style Cheesecake',
    imageUrl:
        'https://butternutbakeryblog.com/wp-content/uploads/2018/07/MG_1282-4.jpg',
    ingredients: [
      'This New York Cheesecake is dense, creamy, and absolutely delicious. The recipe is full of tips to help you bake cheesecake like a pro!'
    ],
    price: '5.0',
    counter: 0,
  ),
  Meal(
    id: 'm14',
    categories: [
      'c10',
      'c0',
    ],
    title: 'Chocolate Cheesecake',
    imageUrl:
        'https://butternutbakeryblog.com/wp-content/uploads/2020/01/Chocolate-Cheesecake.jpg',
    ingredients: [
      'This is the PERFECT chocolate cheesecake recipe. It’s rich, creamy, and loaded with chocolate from top to bottom.'
    ],
    price: '6.5',
    counter: 0,
  ),
  Meal(
    id: 'm15',
    categories: [
      'c10',
      'c0',
    ],
    title: 'Malted Cookie Dough Cheesecake',
    imageUrl:
        'https://butternutbakeryblog.com/wp-content/uploads/2019/03/malted-cookie-dough-cheesecake-768x1368.jpg',
    ingredients: [
      'This malted cookie dough cheesecake is so creamy and decadent. It’s flavored with malted milk powder and molasses to give it a rich flavor. It’s definitely not your average chocolate chip cookie dough cheesecake!'
    ],
    price: '6.0',
    counter: 0,
  ),
  Meal(
    id: 'm16',
    categories: [
      'c10',
      'c0',
    ],
    title: 'Banana Bread Cheesecake Cups',
    imageUrl:
        'https://butternutbakeryblog.com/wp-content/uploads/2019/04/gluten-free-banana-bread-almond-flour-768x1368.jpg',
    ingredients: [
      'These banana bread cheesecake cups are made gluten AND dairy free and are so easy to make! They’re super creamy and have a moist banana bread bottom.'
    ],
    price: '4.5',
    counter: 0,
  ),
  Meal(
    id: 'm17',
    categories: [
      'c10',
      'c0',
    ],
    title: 'Coconut Mango Cheesecake Bars',
    imageUrl:
        'https://butternutbakeryblog.com/wp-content/uploads/2020/05/coconut-mango-cheesecake-bars-1024x1536.jpg',
    ingredients: [
      'Creamy coconut cheesecake baked on top of a coconut graham cracker crusted and swirled with a homemade mango curd.'
    ],
    price: '6.5',
    counter: 0,
  ),
  Meal(
    id: 'm18',
    categories: [
      'c10',
      'c0',
    ],
    title: 'Caramel Coconut Cream Pie',
    imageUrl:
        'https://butternutbakeryblog.com/wp-content/uploads/2018/05/MG_0253-2-768x1152.jpg',
    ingredients: ['Coconut cream pie with a hidden layer of salted caramel.'],
    price: '5.0',
    counter: 0,
  ),
  Meal(
    id: 'm19',
    categories: [
      'c5',
      'c0',
    ],
    title: 'Portuguese Salad',
    imageUrl:
        'https://www.recipegirl.com/wp-content/uploads/2007/09/unspecified-31-600x900.jpg',
    ingredients: [
      'Fresh Tomato, Peri-Olives, Mixed Peppers, Cucumber and Onion on A Bed of Crisp Lettuce'
    ],
    price: '10.0',
    counter: 0,
  ),
  Meal(
    id: 'm20',
    categories: [
      'c5',
      'c0',
    ],
    title: 'Mediterranean Salad',
    imageUrl:
        'https://www.culinaryhill.com/wp-content/uploads/2016/06/Mediterranean-Chopped-Salad-Recipe-Culinary-Hill-LR-04SQ-500x375.jpg',
    ingredients: [
      'Piccolo Tomato, Cucumber, Sweet Peppers and Mixed Leaves. Sprinkled with Olives and Feta Cheese'
    ],
    price: '10.0',
    counter: 0,
  ),
  Meal(
    id: 'm21',
    categories: [
      'c5',
      'c0',
    ],
    title: 'Caesar Salad',
    imageUrl:
        'https://www.jessicagavin.com/wp-content/uploads/2019/07/caesar-salad-10-1200.jpg',
    ingredients: [
      'Lettuce Sprinkled with Parmesan Cheese, Caesar Dressing and Crunchy Croutons'
    ],
    price: '12.0',
    counter: 0,
  ),
  Meal(
    id: 'm22',
    categories: [
      'c3',
      'c0',
    ],
    title: 'Chicken Wrap',
    imageUrl:
        'https://i2.wp.com/dinnersdishesanddesserts.com/wp-content/uploads/2018/07/Crunchy-Southwester-Chicken-Wrap-square.jpg?fit=622%2C600&ssl=1',
    ingredients: [
      'A Lightly Toasted Wrap, Generously Filled With Tender Chicken, Chili Jam, Green Leaf Lettuce and Tangy Yoghurt Sauce'
    ],
    price: '9.0',
    counter: 0,
  ),
  Meal(
    id: 'm23',
    categories: [
      'c3',
      'c0',
    ],
    title: 'Chicken Breast Burger',
    imageUrl:
        'https://www.recipetineats.com/wp-content/uploads/2017/07/Chicken-Burgers-4.jpg?w=500&h=375&crop=1',
    ingredients: [
      'Served on A Toasted Portuguese Roll with Fresh Rocket, Tomato, Pickled Red Onions and Perinaise'
    ],
    price: '11.0',
    counter: 0,
  ),
  Meal(
    id: 'm24',
    categories: [
      'c3',
      'c0',
    ],
    title: 'Chicken Caesar Wrap',
    imageUrl:
        'https://tastesbetterfromscratch.com/wp-content/uploads/2020/04/Chicken-Caesar-Wrap-1-500x500.jpg',
    ingredients: [
      'Served in A Toasted Wrap Full Of PERi-PERi Chicken, Crunchy Croutons, Parmesan Cheese and Sundried Tomatoes, All Smothered in Creamy Caesar Dressing'
    ],
    price: '10.0',
    counter: 0,
  ),
  Meal(
    id: 'm25',
    categories: [
      'c3',
      'c0',
    ],
    title: 'Chicken Pita',
    imageUrl:
        'https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Greek-Grilled-Chicken-Pitas_EXPS_MTCBBZ18_86339_B02_28_8b.jpg',
    ingredients: [
      'Served in A Lightly Toasted Pita, Stuffed With Chicken Tenders, Crisp Veggie Salad and Creamy Whip'
    ],
    price: '12.0',
    counter: 0,
  ),
  Meal(
    id: 'm26',
    categories: [
      'c2',
      'c0',
    ],
    title: '3 Chicken Wings',
    imageUrl:
        'https://www.wiltshirecountryfayre.co.uk/images/862/320/320/100/resizecrop/chicken-wings-3-joint-.jpg',
    ingredients: ['Tender, Spicy and Juicy. Original or Peri-Crusted'],
    price: '7.0',
    counter: 0,
  ),
  Meal(
    id: 'm27',
    categories: [
      'c2',
      'c0',
    ],
    title: 'Chicken Livers and Portuguese Roll',
    imageUrl:
        'https://s3.burpple.com/foods/310e2421eb63f8a5c3b61789475_original.?1569851818',
    ingredients: [
      'Chicken Livers Topped with PERi-PERi Sauce, Served with A Roll To Soak Up The Sauce'
    ],
    price: '9.5',
    counter: 0,
  ),
  Meal(
    id: 'm28',
    categories: [
      'c2',
      'c0',
    ],
    title: 'Spicy Mixed Olives',
    imageUrl:
        'https://www.sanjeevkapoor.com/UploadFiles/RecipeImages/Spicy_Green_Olives.jpg',
    ingredients: ['Co-Starring Garlic, Pepper and Chili'],
    price: '6.0',
    counter: 0,
  ),
  Meal(
    id: 'm29',
    categories: [
      'c2',
      'c0',
    ],
    title: 'Hummus with PERI-PERI Drizzle',
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/photo-s/07/b5/cd/44/hummus-with-peri-peri.jpg',
    ingredients: [
      'Pour Smoky PERi-PERi Oil Over Creamy Hummus and Dig in with Strips Of Warm Pita'
    ],
    price: '7.0',
    counter: 0,
  ),
  Meal(
    id: 'm30',
    categories: [
      'c2',
      'c0',
    ],
    title: 'Red Pepper Dip',
    imageUrl: 'https://pbs.twimg.com/media/BysuLFSIEAAiI-K.jpg',
    ingredients: [
      'Dive Into Temping Roasted Red Pepper and Chili Spice Dip with Warm Pita Strips'
    ],
    price: '6.0',
    counter: 0,
  ),
  Meal(
    id: 'm31',
    categories: [
      'c4',
      'c0',
    ],
    title: 'Spätzle – Traditional Swabian Egg Noodles',
    imageUrl:
        'https://www.movingto-germany.com/wp-content/uploads/2015/10/tn_Spaetzle-Lebensmittel-Berlin-Mitte-.jpg',
    ingredients: [
      'Spätzle are a kind of pasta, but the dough only consists of eggs, flour, salt and a hint of sparkling water'
    ],
    price: '12.0',
    counter: 0,
  ),
  Meal(
    id: 'm32',
    categories: [
      'c4',
      'c0',
    ],
    title: 'Bratwurst',
    imageUrl:
        'https://www.movingto-germany.com/wp-content/uploads/2015/10/Bratwurst.jpg',
    ingredients: [
      'Bratwurst is a fresh sausage of pork and veal, flavored with seasonings like caraway, coriander, and or nutmeg.'
    ],
    price: '8.0',
    counter: 0,
  ),
  Meal(
    id: 'm33',
    categories: [
      'c4',
      'c0',
    ],
    title: 'Bratkartoffeln',
    imageUrl:
        'https://www.movingto-germany.com/wp-content/uploads/2015/10/Bratkartoffeln.jpg',
    ingredients: [
      'Potatoes (usually cooked) cut into slices and roasted in a pan, roughly similar to home fries.'
    ],
    price: '6.0',
    counter: 0,
  ),
  Meal(
    id: 'm34',
    categories: [
      'c1',
      'c0',
    ],
    title: 'Caprese Salad with Pesto Sauce',
    imageUrl:
        'https://i.ndtvimg.com/i/2017-09/caprese-salad_625x350_51506417724.jpg',
    ingredients: [
      'This combination of juicy tomatoes and mozzarella cheese salad topped with freshly made pesto sauce is a distinct yet simple one. It offers a twist to the classic caprese salad.'
    ],
    price: '14.0',
    counter: 0,
  ),
  Meal(
    id: 'm35',
    categories: [
      'c1',
      'c0',
    ],
    title: 'Panzenella',
    imageUrl:
        'https://i.ndtvimg.com/i/2017-09/panzenella_600x300_71506417795.jpg',
    ingredients: [
      'Panzenella is a Tuscan bread salad, ideal for summer. This salad is great with a chilled glass of Prosecco and lots of sunshine!'
    ],
    price: '12.0',
    counter: 0,
  ),
  Meal(
    id: 'm36',
    categories: [
      'c1',
      'c0',
    ],
    title: 'Bruschetta',
    imageUrl:
        'https://i.ndtvimg.com/i/2017-09/bruschetta_625x350_71506417841.jpg',
    ingredients: [
      'An antipasto dish, bruschetta has grilled bread topped with veggies, rubbed garlic and tomato mix. A country bread sliced and topped with different toppings - the evergreen tomato-basil and an inventive mushroom-garlic. The classic Italian starter!'
    ],
    price: '13.0',
    counter: 0,
  ),
  Meal(
    id: 'm37',
    categories: [
      'c1',
      'c0',
    ],
    title: 'Focaccia Bread',
    imageUrl:
        'https://i.ndtvimg.com/i/2017-09/frocaccia_600x300_41506417893.jpg',
    ingredients: [
      'Fresh dough is topped with caramelized onions, olives, tomato slices, basil leaves, grated parmesan cheese and baked delicious!'
    ],
    price: '10.0',
    counter: 0,
  ),
  Meal(
    id: 'm38',
    categories: [
      'c1',
      'c0',
    ],
    title: 'Mushroom Risotto',
    imageUrl: 'https://i.ndtvimg.com/i/2017-09/risotto_625x350_81506418041.jpg',
    ingredients: [
      'A plateful of buttery risotto with the goodness of mushrooms. A healthy bowl of mushroom risotto has benefits more than you can think.'
    ],
    price: '10.0',
    counter: 0,
  ),
  Meal(
    id: 'm39',
    categories: [
      'c4',
      'c0',
    ],
    title: 'Rouladen',
    imageUrl:
        'https://www.expatica.com/app/uploads/sites/6/2014/05/Rouladen.jpg',
    ingredients: [
      'This typical German dish consists of bacon, onions, mustard, and pickles wrapped in thinly sliced beef or veal which is then cooked.'
    ],
    price: '15.0',
    counter: 0,
  ),
  Meal(
    id: 'm40',
    categories: [
      'c4',
      'c0',
    ],
    title: 'Eintopf',
    imageUrl:
        'https://www.expatica.com/app/uploads/sites/6/2014/05/Eintopf.jpg',
    ingredients: [
      'Eintopf is similar to Irish stew as it contains the same basic ingredients: broth, vegetables, potatoes or pulses, and pork, beef, chicken, or fish.'
    ],
    price: '11.0',
    counter: 0,
  ),
  Meal(
    id: 'm41',
    categories: [
      'c6',
      'c0',
    ],
    title: ' Easy Lentil Dahl',
    imageUrl: 'https://img.allw.mn/content/t9/hj/hn0ooal0_600x750.jpg',
    ingredients: [
      'This is one of the easy exotic meals that tastes so much better than you can ever imagine. For anyone who claims to not like lentils, we advise them to give this a try. They are made of red lentils, turmeric, ground cumin and onions.'
    ],
    price: '6.0',
    counter: 0,
  ),
  Meal(
    id: 'm42',
    categories: [
      'c6',
      'c0',
    ],
    title: ' Summer Rolls ',
    imageUrl: 'https://img.allw.mn/content/qa/j0/k1ag5k9d_600x805.jpg',
    ingredients: [
      'Summer rolls are the perfect warm weather meal. They are made of lettuce, basil, shredded carrot, bean sprouts and more! '
    ],
    price: '5.0',
    counter: 0,
  ),
  Meal(
    id: 'm43',
    categories: [
      'c6',
      'c0',
    ],
    title: 'Chawan Mushi',
    imageUrl: 'https://img.allw.mn/content/nc/dl/uuv6d7u6_600x900.jpg',
    ingredients: [
      'Nice and easy one packed with flavor of dashi powder, coarsely chopped salted and roasted cashew nuts, lump crab meat, shitake mushrooms, eggs and more.'
    ],
    price: '8.0',
    counter: 0,
  ),
  Meal(
    id: 'm44',
    categories: [
      'c6',
      'c0',
    ],
    title: 'Fish Teriyaki',
    imageUrl: 'https://img.allw.mn/content/c2/l1/ps888hek_448x560.jpg',
    ingredients: [
      'Teriyaki is the perfect glaze for a salmon fillet or a chunky piece of cod or any meaty flaky white fish.'
    ],
    price: '13.0',
    counter: 0,
  ),
  Meal(
    id: 'm45',
    categories: [
      'c6',
      'c0',
    ],
    title: 'Curried Pear Slaw',
    imageUrl: 'https://img.allw.mn/content/bn/r1/pu3v29zz_400x599.jpg',
    ingredients: [
      'If you want an interesting and tasty side dish to go with a grilled, lean protein, you can’t go wrong with this. It’s such a sexy alternative to standard slaw!'
    ],
    price: '13.5',
    counter: 0,
  ),
  Meal(
    id: 'm46',
    categories: [
      'c7',
      'c0',
    ],
    title: 'Blueberry French Toast',
    imageUrl:
        'https://www.tasteofhome.com/wp-content/uploads/2018/01/exps1821_C153811D09_09_8b-1-696x696.jpg',
    ingredients: [
      'With the cream cheese and berry combination, this blueberry french toast casserole reminds of a dessert.'
    ],
    price: '5.0',
    counter: 0,
  ),
  Meal(
    id: 'm47',
    categories: [
      'c7',
      'c0',
    ],
    title: 'Amish Breakfast Casserole',
    imageUrl:
        'https://www.tasteofhome.com/wp-content/uploads/2018/01/Amish-Breakfast-Casserole_EXPS_GHBZ18_17826_B08_08_5b-2-696x696.jpg',
    ingredients: [
      'This hearty casserole has bacon, eggs, hash browns, and three different cheeses all baked into a comforting breakfast dish'
    ],
    price: '7.0',
    counter: 0,
  ),
  Meal(
    id: 'm48',
    categories: [
      'c7',
      'c0',
    ],
    title: 'Cream Cheese & Chive Omelet',
    imageUrl:
        'https://www.tasteofhome.com/wp-content/uploads/2018/01/exps68617_MC163887B03_15_7b-696x696.jpg',
    ingredients: [
      'The first bite of creamy filling lets you know this isn’t any old omelet. Make it once, and we suspect you’ll be fixing it often.'
    ],
    price: '6.0',
    counter: 0,
  ),
  Meal(
    id: 'm49',
    categories: [
      'c7',
      'c0',
    ],
    title: 'True Belgian Waffles',
    imageUrl:
        'https://www.tasteofhome.com/wp-content/uploads/2018/01/True-Belgian-Waffles_EXPS_GHBZ18_4869_C08_09_2b-2-696x696.jpg',
    ingredients: [
      'Comes with any kind of topping you want: blueberries, strawberries, raspberries, fried apples, powdered sugar or whipped topping.'
    ],
    price: '8.0',
    counter: 0,
  ),
  Meal(
    id: 'm50',
    categories: [
      'c7',
      'c0',
    ],
    title: 'Eggs Florentine Casserole',
    imageUrl:
        'https://www.tasteofhome.com/wp-content/uploads/2018/01/exps146146_TH153345D07_21_5b-696x696.jpg',
    ingredients: [
      'Eggs florentine, with sausage and spinach for a snappy casserole.'
    ],
    price: '5.0',
    counter: 0,
  ),
  Meal(
    id: 'm51',
    categories: [
      'c8',
      'c0',
    ],
    title: 'Pan-fried duck breast with pak choi & asparagus',
    imageUrl:
        'https://img.jamieoliver.com/jamieoliver/recipe-database/106303454.jpg?tr=w-800,h-1066',
    ingredients: [
      'Duck works brilliantly with Asian flavours. The simple steamed greens, crispy chilli, ginger and garlic, and the tangy dressing provide the perfect backdrop for a perfectly cooked duck breast.'
    ],
    price: '15.0',
    counter: 0,
  ),
  Meal(
    id: 'm52',
    categories: [
      'c8',
      'c0',
    ],
    title: 'Chicken & tofu noodle soup',
    imageUrl:
        'https://img.jamieoliver.com/jamieoliver/recipe-database/46406470.jpg?tr=w-800,h-1066',
    ingredients: [
      'Fragrant and colourful, this old favourite gets a reboot. If you have time, prepare it a day ahead for next-level flavour. Also referred to as bean curd, tofu is a good source of protein, calcium and phosphorus, all of which are great for bones.'
    ],
    price: '13.0',
    counter: 0,
  ),
  Meal(
    id: 'm53',
    categories: [
      'c8',
      'c0',
    ],
    title: 'South Asian chicken curry',
    imageUrl:
        'https://img.jamieoliver.com/jamieoliver/recipe-database/46325044.jpg?tr=w-800,h-1066',
    ingredients: [
      'This curry over-delivers on big, bold flavour. Served with fluffy rice to soak up the lovely creamy coconut base, plus a good hit of protein from the tender chicken.'
    ],
    price: '14.0',
    counter: 0,
  ),
  Meal(
    id: 'm54',
    categories: [
      'c8',
      'c0',
    ],
    title: 'Asian salmon & sweet potato traybake',
    imageUrl:
        'https://img.jamieoliver.com/jamieoliver/recipe-database/52PsxSQ6adABT58ca-ar0X.jpg?tr=w-800,h-1066',
    ingredients: [
      'Bursting with fresh Asian flavours, this easy salmon traybake is our strong recommendation.'
    ],
    price: '15.0',
    counter: 0,
  ),
  Meal(
    id: 'm55',
    categories: [
      'c8',
      'c0',
    ],
    title: 'Sticky sesame prawns',
    imageUrl:
        'https://img.jamieoliver.com/jamieoliver/recipe-database/46209875.jpg?tr=w-800,h-1066',
    ingredients: [
      'Prawns and Asian flavours go so insanely well together, and the miso, ginger, sesame and chilli combo is super-tasty.'
    ],
    price: '14.0',
    counter: 0,
  ),
  Meal(
    id: 'm56',
    categories: [
      'c9',
      'c0',
    ],
    title: 'Chicken Basquaise',
    imageUrl:
        'https://www.saveur.com/resizer/Y9fkrojR1ugDRlLwhm_j7_kjGVE=/1293x970/filters:focal(1000x750:1001x751)/cloudfront-us-east-1.images.arcpublishing.com/bonnier/E42B54E7FHVCG2H7X5QAHSXESA.jpg',
    ingredients: [
      'This braised chicken recipe, adapted from chef Sébastien Gravé, is emblematic of the Basque regions affection for colorful, peppery stews. '
    ],
    price: '14.5',
    counter: 0,
  ),
  Meal(
    id: 'm57',
    categories: [
      'c9',
      'c0',
    ],
    title: 'Barigoule of Spring Vegetables',
    imageUrl:
        'https://www.saveur.com/resizer/ItSlHFi8djQgvwhHHHI3sL_6NCU=/1293x970/cloudfront-us-east-1.images.arcpublishing.com/bonnier/RTPDOIGTNUWU7DSKDPMLGYGAO4.jpg',
    ingredients: [
      'Crisp spring vegetables pair with a flavorful, vanilla-scented broth in this Provençal classic. '
    ],
    price: '15.0',
    counter: 0,
  ),
  Meal(
    id: 'm58',
    categories: [
      'c9',
      'c0',
    ],
    title: 'Alsatian Bacon and Onion Tart',
    imageUrl:
        'https://www.saveur.com/resizer/RlS9VKwzteqFZV2IGHlSW99OYR8=/938x938/filters:focal(375x375:376x376)/cloudfront-us-east-1.images.arcpublishing.com/bonnier/LXZKMKITMJSDCIAXFIBNTFAM2U.jpg',
    ingredients: [
      'Cooking on a very hot pizza stone gives this bacon and onion tart a shatteringly crispy crust.'
    ],
    price: '12.0',
    counter: 0,
  ),
  Meal(
    id: 'm59',
    categories: [
      'c9',
      'c0',
    ],
    title: 'Basque-Style Fish with Green Peppers and Manila Clams',
    imageUrl:
        'https://www.saveur.com/resizer/vVhsQ7HKZ51jcorgdWYPBa0wlr8=/1293x970/filters:focal(1000x750:1001x751)/cloudfront-us-east-1.images.arcpublishing.com/bonnier/6IDO5R26FHOQSV36E7BYDYGFNU.jpg',
    ingredients: [
      'This riff on Basque pipérade, a classic dish of stewed peppers, incorporates seafood from the French region. Hake is traditional, but mild, white-fleshed fish like striped bass or haddock make fine substitutes. Fresh clams offer a briny sweetness.'
    ],
    price: '18.0',
    counter: 0,
  ),
  Meal(
    id: 'm60',
    categories: [
      'c9',
      'c0',
    ],
    title: 'Steak Diane',
    imageUrl:
        'https://www.saveur.com/resizer/91n3p6C0DzWOWKvH0PedVdW6GvM=/938x938/cloudfront-us-east-1.images.arcpublishing.com/bonnier/7SXVPPU2VGH3IBR7DUSZOLAUWA.jpg',
    ingredients: [
      'A lean cut like filet mignon takes well to sautéeing in a little fat, as in this classic preparation with a simple pan sauce thats laced with brandy and set aflame.'
    ],
    price: '14.0',
    counter: 0,
  ),
];
