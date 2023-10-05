import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        _buildHeaderAvatar(),
        SizedBox(width: 20),
        _buildHeaderProfile(),
      ],
    );
  }

  Widget _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        // CircleAvatar는 size를 설정할 수 없다.
        // 그래서 모든 위젯은 SizedBox로 위젯을 감싸서 사이즈를 지정할 수 있다.
        // 위젯 자체에 size를 지정할 수 있다면, SizedBox를 사용하지 말자.
        backgroundImage: AssetImage("assets/avatar.png"),
      ),
    );
  }

  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Getint there",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        Text(
          "프로그래머",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "메타코딩",
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
