// statefulWidget : build 메소드가 여러번 실행될 수 있다. = 상태 변경
import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
  // ProfileTab이 실행되면 => _ProfileTabState()가 실행된다.
}

// TabController = TabBar와 TabBarView를 호출하는 Controller
// SingleTickerProviderStateMixin : 컴포지션 코드로 상속이 아닌 가져오는 것이다.(with = 컴포지션 코드)
class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  // _ProfileTabState()가 실행될 때, _tabController 객체를 초기화 한다.

// ctrl + o
// initState() : _ProfileTabState()가 최초에 실행될 때 초기화 하는 메소드(오브젝트 초기화 메소드)
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    // length : 탭 갯수
    // vsync : 어떤 위젯이 다시 그려져야 하는 가? = _ProfileTabState() = this(내가 지금 떠 있는 heap 공간)
    print("initState() 초기화 됨");
  }

  @override
  Widget build(BuildContext context) {
    print("빌드 다시 실행됨"); // build가 다시 될 때마다 실행되었는 지 콘솔에서 확인할 수 있다.
    return Column(
      children: [
        TabBar(
          // TabBar의 크기 = 아이콘 크기
          controller: _tabController, // controller와 연결
          tabs: [
            Tab(
              icon: Icon(Icons.directions_car),
            ),
            Tab(
              icon: Icon(Icons.directions_transit),
            ),
          ],
        ),
        Expanded(
          // Scaffold에서 Expanded를 한 상태에서(ProfileTab), TabBarview의 Expanded를 직접 명시 해줘야 한다.(TabBarview)
          child: TabBarView(
            controller: _tabController, // controller와 연결
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 50,
                itemBuilder: (context, index) =>
                    Image.network("https://picsum.photos/id/${index}/200/200"),
              ),
              Container(color: Colors.green),
            ],
          ),
        ),
      ],
    );
  }
}
