import 'package:flutter/material.dart';
import 'package:instant_task21_clinic_app/models/doctor.dart';
import 'package:instant_task21_clinic_app/screens/doctor_page.dart';

class DoctorsList extends StatefulWidget {
  const DoctorsList({super.key});

  @override
  State<StatefulWidget> createState() {
    return DoctorsListState();
  }
}

class DoctorsListState extends State<DoctorsList> {

  List<Doctor> doctor = [
    Doctor(
      doctorName: 'Dr.Kelly Seamen',
      doctorSpecialty: 'Heart Specialist',
      doctorImage: 'assets/doc.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xffFFE8D3),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          // doctor image
          Image.asset('${doctor[0].doctorImage}',),
          // doctor name and him specialty
          Column(
            children: [
              Text(
                  '   ${doctor[0].doctorName}',
                style:const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffDD6C04)
                ),
              ),
              Text(
                '${doctor[0].doctorSpecialty}',
                style:const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff514D4D)
                ),
              ),
            ],
          ),
          const Spacer(),
          // call icon => navigate me to doctor info screen
          Container(
            padding:const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color:const Color(0xffF58B29),
            ),
            child:InkWell(
              onTap:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoctorPage(),
                  ),
                );
              },
              child: const Text(
                'Call',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
