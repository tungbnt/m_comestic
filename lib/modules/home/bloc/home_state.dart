part of 'home_cubit.dart';

abstract class HomeState extends Equatable{
  const HomeState();

  @override
  List<Object> get props => [];

}
class HomeInitial extends HomeState {
  const HomeInitial();

}
class HomeLoading extends HomeState {
  const HomeLoading();
}

class HomeSuccess extends HomeState {
  const HomeSuccess({required this.listWidget, required this.listBannerTop,});

  final List<Widget> listWidget;
  final List<Banners> listBannerTop;

  @override
  List<Object> get props => [listWidget,listBannerTop];
}
