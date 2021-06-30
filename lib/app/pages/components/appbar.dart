import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HyperBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;

  HyperBar({this.title = 'HYP3RTEXT'}) : preferredSize = Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.cairo().copyWith(
              color: Colors.black,
              fontSize: 24.0,
            ),
          ),
          Spacer(),
          SvgPicture.asset('assets/images/user_profile.svg',
              width: 30.0, height: 30.0, semanticsLabel: 'Perfil do usuário'),
        ],
      ),
      elevation: 0.0,
    );
  }
}
