import 'package:endsmeet/constants/size_height_width_constants.dart';
import 'package:endsmeet/features/home_screen/bloc/category_bloc.dart';
import 'package:endsmeet/features/home_screen/provider/home_provider.dart';
import 'package:endsmeet/widgets/cards/category_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  Widget nabbar;
  HomeScreen({required this.nabbar});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CategoryBloc? _categoryBloc;
  bool _isLoading = false;
  HomeProvider _homeProvider = HomeProvider();
  @override
  void initState() {
    super.initState();
    _categoryBloc = BlocProvider.of<CategoryBloc>(context);
    _categoryBloc!.add(LoadCategoryFromAPIEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: widget.nabbar,
        preferredSize: Size.fromHeight(HeightConstant.navbarHeight.h),
      ),
      body: BlocListener<CategoryBloc, CategoryState>(
        listener: _handleBlocListner,
        child: SafeArea(
          child: _isLoading
              ? Text("loading")
              : SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                        _homeProvider.homeCategories.length,
                        (index) => InkWell(
                          onTap: (){print('clicked');},
                          child: CategoryCard(

                              title: _homeProvider.homeCategories[index].name,
                              subtitle: _homeProvider.homeCategories[index].desc,
                              image: _homeProvider.homeCategories[index].pic),
                        )),
                  ),
                ),
        ),
      ),
    );
  }

  _handleBlocListner(BuildContext context, CategoryState state) async {
    if (state is IndicatorShowState) {
      setState(() {
        _isLoading = true;
      });
    } else if (state is IndicatorHideState) {
      setState(() {
        _isLoading = false;
      });
    } else if (state is CategoryFetchedCompletedState) {
      setState(() {
        _homeProvider.homeCategories = state.categories;
      });
    } else if (state is ErrorState) {}
  }
}
