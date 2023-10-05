import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInfo("50", "Posts"),
        _buildLine(),
        _buildInfo("10", "Likes"),
        _buildLine(),
        _buildInfo("3", "Share"),
      ],
    );
  }

  Widget _buildLine() {
    return Container(
      width: 2,
      height: 60,
      color: Colors.blue,
    );
  }

  Widget _buildInfo(String count, String title) {
    return Column(
      children: [
        Text("$count", style: const TextStyle(fontSize: 15)),
        const SizedBox(height: 2), // 이렇게 정적으로 데이터를 사용할 때는 const를 사용한다.
        Text("$title", style: const TextStyle(fontSize: 15)),
      ],
    );
  }
}
