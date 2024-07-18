import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(

      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(top: 20,),
        child: Text(
          'Route',
          style: TextStyle(color: Color(0xFF004086), fontWeight: FontWeight.w800,fontSize: 30), // تغيير لون النص إلى الأسود
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: IconButton(
            icon: Icon(Icons.shopping_cart, color: Color(0xFF004086),size: 30,), // تغيير لون الأيقونة إلى الأسود
            onPressed: () {},
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'what do you search for?',
              prefixIcon: Icon(Icons.search, color: Color(0xFF004086)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Color(0xFF004086)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Color(0xFF004086)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Color(0xFF004086)),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(140);
}
