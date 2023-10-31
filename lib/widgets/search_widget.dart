import 'package:flutter/material.dart';
class SearchTextField extends StatelessWidget {
  SearchTextField({Key? key}) : super(key: key);

  final searchController = TextEditingController();
  Color color = const Color(0xffFCF1E8);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: searchController,
      decoration: InputDecoration(
        filled: true,
        fillColor: color,
        hintText: 'Search ...',
        hintStyle:const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: IconButton(
          icon: const Icon(Icons.search,size: 30,),
          onPressed: () {},
        ),
        border:const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(10, 10),
          ),
        ),
        enabledBorder:const  OutlineInputBorder(
          borderSide: BorderSide(
              color: Color(0xffFCF1E8)
          ),
        ),
        focusedBorder: const  OutlineInputBorder(
          borderSide: BorderSide(
              color: Color(0xffFCF1E8)
          ),
        ),
      ),
    );
  }
}
