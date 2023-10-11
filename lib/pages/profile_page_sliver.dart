import 'package:flutter/material.dart';
import 'package:flutter_profile/components/profile_buttons.dart';
import 'package:flutter_profile/components/profile_count_info.dart';
import 'package:flutter_profile/components/profile_drawer.dart';
import 'package:flutter_profile/components/profile_header.dart';
import 'package:flutter_profile/components/profile_tab.dart';

class ProfliePageSliver extends StatelessWidget {
  const ProfliePageSliver({
    super.key,
  });

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
      body: CustomScrollView(
        slivers: [
          SliverList(
            // 스크롤이 없는 함수
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 10),
                ProfileHeader(),
                SizedBox(height: 10),
                ProfileCountInfo(),
                SizedBox(height: 10),
                ProfileButtons(),
                SizedBox(height: 10),
              ],
            ),
          ),
          SliverFillRemaining(
            // sliver의 남은 공간을 차지 = expended
            // 일반 위젯이랑 사용할 때, 스크롤을 공유하지 않는다.
            // 즉, 일반 위젯 속 스크롤이 있는데, 일반 위젯은 스크롤을 하면 안될 때
            // SliverFillRemaining을 한다.
            child: ProfileTab(),
            //   SliverToBoxAdapter(
            //     // tab의 크기 자체가 지정되지 않으니, 화면에 모두 나오지 않는다.
            //     // ProfileTab이 Expended를 가지고 있기 때문에 무한으로 늘어난다.
            //     // Sliver는 Expended를 허용하지 않기 때문에 화면에 모두 나오지 않았다.
            //     // 그래서 SizedBox로 감싸서 크기를 지정해줘야 한다.
            //     // 스크롤에 화면제약을 줘야 할 때 사용한다.
            //     child: SizedBox(height: 500, child: ProfileTab()), // 스크롤이 있는 함수
          )
        ],
      ),
    );
  }
}
