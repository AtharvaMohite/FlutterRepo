class Info {
  double calseaten;
  double remaining;

  Info({this.calseaten = 0, this.remaining = 2500});
  Map<String, dynamic> toMap() {
    return {"calseaten": calseaten, "remaining": remaining};
  }
}

//tcs application id = DT20245307771

class Food {
  int? id;
  String? date;
  final String name;
  final double calories;
  final double carbohydrates;
  final double protein;
  final double fat;
  int? servings;

  Food(
      {this.id,
      this.date,
      required this.name,
      required this.calories,
      required this.protein,
      required this.carbohydrates,
      required this.fat,
      this.servings});

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "date": date,
      "name": name,
      "calories": calories,
      "protein": protein,
      "carbohydrates": carbohydrates,
      "fat": fat,
      "servings": servings
    };
  }
}

class FoodList {
  static List flist = [
    Food(name: "chapati", calories: 120, protein: 4, carbohydrates: 23, fat: 3),
    Food(
        name: "poha",
        calories: 158,
        protein: 2.9,
        carbohydrates: 34.8,
        fat: 0.2),
    Food(
        name: "Aloo Sabzi",
        calories: 141,
        protein: 3.5,
        carbohydrates: 27.2,
        fat: 2.7),
    Food(
        name: "Sandwich",
        calories: 140,
        protein: 0.6,
        carbohydrates: 0.5,
        fat: 3.9),
    Food(
        name: "Vada pav",
        calories: 308,
        protein: 4.7,
        carbohydrates: 32,
        fat: 17.9),
    Food(name: "Samosa", calories: 262, protein: 6, carbohydrates: 21, fat: 17),
    Food(
        name: "Butter Chicken",
        calories: 358,
        protein: 30,
        carbohydrates: 7,
        fat: 24),
    Food(
        name: "Chole Bhature",
        calories: 450,
        protein: 15,
        carbohydrates: 65,
        fat: 18),
    Food(
        name: "Pav Bhaji",
        calories: 396,
        protein: 9,
        carbohydrates: 70,
        fat: 9),
    Food(name: "Dosa", calories: 133, protein: 3, carbohydrates: 23, fat: 2),
    Food(name: "Idli", calories: 39, protein: 1, carbohydrates: 8, fat: 0.2),
    Food(name: "Biryani", calories: 290, protein: 6, carbohydrates: 47, fat: 8),
    Food(
        name: "Pani Puri",
        calories: 22,
        protein: 0.6,
        carbohydrates: 4.2,
        fat: 0.3),
    Food(
        name: "Rajma Chawal",
        calories: 300,
        protein: 9,
        carbohydrates: 46,
        fat: 7),
    Food(
        name: "Aloo Paratha",
        calories: 332,
        protein: 7,
        carbohydrates: 46,
        fat: 13),
    Food(
        name: "Chicken Curry",
        calories: 250,
        protein: 20.0,
        carbohydrates: 15.0,
        fat: 12.0),
    Food(
        name: "Vegetable Biryani",
        calories: 300,
        protein: 8.0,
        carbohydrates: 45.0,
        fat: 10.0),
    Food(
        name: "Fish Tikka",
        calories: 200,
        protein: 25.0,
        carbohydrates: 10.0,
        fat: 8.0),
    Food(
        name: "Paneer Tikka",
        calories: 180,
        protein: 15.0,
        carbohydrates: 10.0,
        fat: 10.0),
    Food(
        name: "Egg Bhurji",
        calories: 200,
        protein: 15.0,
        carbohydrates: 8.0,
        fat: 12.0),
    Food(
        name: "Vegetable Sandwich",
        calories: 150,
        protein: 5.0,
        carbohydrates: 25.0,
        fat: 6.0),
    Food(
        name: "Grilled Chicken Salad",
        calories: 180,
        protein: 20.0,
        carbohydrates: 10.0,
        fat: 8.0),
    Food(
        name: "Dal Tadka",
        calories: 200,
        protein: 10.0,
        carbohydrates: 20.0,
        fat: 8.0),
    Food(
        name: "Vegetable Pulao",
        calories: 280,
        protein: 6.0,
        carbohydrates: 40.0,
        fat: 10.0),
    Food(
        name: "Mixed Fruit Smoothie",
        calories: 150,
        protein: 3.0,
        carbohydrates: 30.0,
        fat: 2.0),
    Food(
        name: "Thalipeeth",
        calories: 250,
        protein: 5.0,
        carbohydrates: 35.0,
        fat: 10.0),
    Food(
        name: "Puran Poli",
        calories: 300,
        protein: 5.0,
        carbohydrates: 50.0,
        fat: 12.0),
    Food(
        name: "Bhaji Pav",
        calories: 300,
        protein: 8.0,
        carbohydrates: 40.0,
        fat: 15.0),
    Food(
        name: "Misal Pav",
        calories: 350,
        protein: 10.0,
        carbohydrates: 45.0,
        fat: 18.0),
    Food(
        name: "Usal Pav",
        calories: 320,
        protein: 7.0,
        carbohydrates: 35.0,
        fat: 16.0),
    Food(
        name: "Sabudana Khichdi",
        calories: 300,
        protein: 4.0,
        carbohydrates: 50.0,
        fat: 10.0),
    Food(
        name: "Kanda Poha",
        calories: 220,
        protein: 3.0,
        carbohydrates: 35.0,
        fat: 8.0),
    Food(
        name: "Masala Dosa",
        calories: 280,
        protein: 5.0,
        carbohydrates: 40.0,
        fat: 10.0),
    Food(
        name: "Sabudana Vada",
        calories: 200,
        protein: 3.0,
        carbohydrates: 30.0,
        fat: 10.0),
    Food(
        name: "Upma",
        calories: 250,
        protein: 5.0,
        carbohydrates: 35.0,
        fat: 12.0),
    Food(
        name: "Masala Chai",
        calories: 100,
        protein: 2.0,
        carbohydrates: 15.0,
        fat: 4.0),
    Food(
        name: "Shrikhand",
        calories: 220,
        protein: 4.0,
        carbohydrates: 30.0,
        fat: 10.0),
    Food(
        name: "Kaju Katli",
        calories: 150,
        protein: 3.0,
        carbohydrates: 20.0,
        fat: 7.0),
    Food(
        name: "Kothimbir Vadi",
        calories: 180,
        protein: 6.0,
        carbohydrates: 25.0,
        fat: 8.0),
    Food(
        name: "Rice",
        calories: 130,
        protein: 2.5,
        carbohydrates: 28.0,
        fat: 0.3),
    Food(
        name: "Roti (Chapati)",
        calories: 70,
        protein: 2.0,
        carbohydrates: 15.0,
        fat: 0.5),
    Food(
        name: "Vegetable Curry",
        calories: 120,
        protein: 3.0,
        carbohydrates: 15.0,
        fat: 6.0),
    Food(
        name: "Paneer Tikka Masala",
        calories: 250,
        protein: 12.0,
        carbohydrates: 10.0,
        fat: 15.0),
  ];

  // static var food = [
  //   "chapati",
  //   "poha",
  //   "red",
  //   "blue",
  //   "sandwich",
  //   "Misal",
  //   "Pav bhaji",
  //   "hello"
  // ];
}
