
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFF009588),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCircleAvatar(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Nikel Maharjan",
                    style: GoogleFonts.dancingScript(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900)),
                  ),
                ),
                const Text("FLUTTER DEVELOPER", style: TextStyle(letterSpacing: 3, color: Color(0xFFB2DFDB), fontSize: 16, fontWeight: FontWeight.w600),),
                const SizedBox(width: 180, child: Divider(color: Colors.white,)),
                buildPhoneAndEmail(Icons.phone, "+ 9888787878"),
                const SizedBox(height: 10,),
                buildPhoneAndEmail(Icons.email, "nikel@gmail.com"),
              ],
            ),
          )),
    );
  }

  Widget buildCircleAvatar() {
    return const CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 50,
      backgroundImage:
          NetworkImage('https://www.woolha.com/media/2020/03/eevee.png'),
    );
  }

  Widget buildPhoneAndEmail(IconData icon, String text) {
    return Card(
      child: SizedBox(
        height: 50,
        width: 300,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 18),
              child: Icon(
                icon,
                color: const Color(0xFF1B5F53),
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.w400, color: Color(0xFF1B5F53)),
            )
          ],
        ),
      ),
    );
  }
}
