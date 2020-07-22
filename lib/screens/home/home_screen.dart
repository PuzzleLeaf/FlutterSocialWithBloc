import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social/blocs/home/home_bloc.dart';
import 'package:flutter_social/screens/conversation/conversation_screen.dart';
import 'package:flutter_social/screens/profile/profile_screen.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController(initialPage: 0);
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(45),
              topLeft: Radius.circular(45),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Theme.of(context).primaryColor,
              currentIndex: state.page,
              onTap: (idx) {
                _pageController.jumpToPage(idx);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.message,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  title: Container(
                    height: 0.0,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  title: Container(
                    height: 0.0,
                  ),
                ),
              ],
            ),
          ),
          body: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: (idx) {
              if (idx == 0) {
                context.bloc<HomeBloc>().add(ChangeProfile());
              } else {
                context.bloc<HomeBloc>().add(ChangeConversation());
              }
              _pageController.jumpToPage(idx);
            },
            children: <Widget>[
              ProfileScreen(),
              ConversationScreen(),
            ],
          ),
        );
      },
    );
  }
}
