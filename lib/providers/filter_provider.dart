import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testing/providers/meal_provider.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FilterMealNotifier extends StateNotifier<Map<Filter, bool>> {
  FilterMealNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegan: false,
          Filter.vegetarian: false,
        });

  void setFiltes(Map<Filter, bool> filters) {
    state = filters;
  }

  void setFilter(Filter filter, bool isActive) {
    state = {...state, filter: isActive};
  }
}

final filterProvider =
    StateNotifierProvider<FilterMealNotifier, Map<Filter, bool>>((ref) {
  return FilterMealNotifier();
});

final filterMealProvider = Provider(
  (ref) {
    final meal = ref.watch(mealProvider);
    final selectedFilters = ref.watch(filterProvider);
    return meal.where((meal) {
      if (selectedFilters[Filter.glutenFree]! && !meal.isGlutenFree) {
        return false;
      }
      if (selectedFilters[Filter.lactoseFree]! && !meal.isLactoseFree) {
        return false;
      }
      if (selectedFilters[Filter.vegetarian]! && !meal.isVegetarian) {
        return false;
      }
      if (selectedFilters[Filter.vegan]! && !meal.isVegan) {
        return false;
      }
      return true;
    }).toList();
  },
);
