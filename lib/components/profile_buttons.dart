import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(),
        _buildMessageButton(),
      ],
    );
  }

  OutlinedButton _buildMessageButton() {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        "Message",
        style: TextStyle(color: Colors.black),
      ),
      style: OutlinedButton.styleFrom(
        minimumSize: Size(150, 40),
      ),
    );
  }

  Widget _buildFollowButton() {
    // ElevaedButton : onPressed(행위), child(디자인)
    return ElevatedButton(
      onPressed: () {
        // 버튼이 눌려지면, {} 안의 행위가 실행이 된다.
      },
      child: const Text(
        "Follow",
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        minimumSize: Size(150, 40),
      ),
      // ★ button 디자인은 [자기 위젯 이름.styleFrom()] 해주는 것이 정석
    );
  }
}
