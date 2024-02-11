import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final String image;
  final String name;
  final String location;

  const UserProfile({super.key, required  this.image, required  this.name, required  this.location });

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 17, fontFamily: 'Poppins',),
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/Location.png",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    location,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            padding:
            const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), 
            ),
          ),
          child: const Text('Follow'),
        ),
      ],
    );
  }
}
