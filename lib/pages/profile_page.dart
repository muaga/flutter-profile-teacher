import 'package:flutter/material.dart';
import 'package:flutter_profile/components/profile_buttons.dart';
import 'package:flutter_profile/components/profile_count_info.dart';
import 'package:flutter_profile/components/profile_drawer.dart';
import 'package:flutter_profile/components/profile_header.dart';
import 'package:flutter_profile/components/profile_tab.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 페이지 화면
      endDrawer: ProfileDrawer(),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Profile"),
        centerTitle: true, // appbar의 title을 가운데로
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverList(
                // 스크롤이 없는 함수
                delegate: SliverChildListDelegate([
              ProfileHeader(),
              ProfileCountInfo(),
              ProfileButtons(),
            ]))
          ]; // 배열 리턴
        },
        body: Expanded(child: ProfileTab()), // 스크롤이 있는 함수
      ),
    );
  }
}
