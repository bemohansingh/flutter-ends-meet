import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:endsmeet/api/api_client.dart';
import 'package:endsmeet/features/home_screen/provider/category_api_provider.dart';
import 'package:endsmeet/features/home_screen/provider/home_provider.dart';
import 'package:endsmeet/helper/device_helper.dart';
import 'package:endsmeet/models/category.dart';
import 'package:endsmeet/models/error_model.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryApiProvider? _apiProvider;

  CategoryBloc() : super(CategoryInitial()) {
    _apiProvider = CategoryApiProvider(apiClient: ApiClient(Dio(), DeviceHelper()));
  }

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    if(event is LoadCategoryFromAPIEvent) {
      yield IndicatorShowState();
     var response = await _apiProvider!.getCategories();
      yield IndicatorHideState();
     if(response is ErrorModel) {
       yield ErrorState(error: response);
     } else if(response is List<Category>){
       yield CategoryFetchedCompletedState(categories: response);
     }
    }
  }
}
