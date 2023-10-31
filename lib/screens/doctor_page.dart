import 'package:flutter/material.dart';
import 'package:instant_task21_clinic_app/models/doctor.dart';
import 'package:instant_task21_clinic_app/screens/home_page.dart';

class DoctorPage extends StatelessWidget {
   DoctorPage({Key? key}) : super(key: key);

  final List<Doctor> doctor = [
    Doctor(
      doctorName: 'Dr.Kelly Seamen',
      doctorSpecialty: 'Heart Specialist',
      doctorImage: 'assets/doc.png',
      doctorAbout: 'Dr.Kelly Seamen, A specialist in the field of cardiology, focusing on the diagnosis, treatment, and prevention of diseases and conditions related to the heart and cardiovascular system.',
      doctorAddress: 'House-2,Road-1 Dhanmondi,Dhaka',
      doctorDailyPractice: 'Monday-Friday Open till 7pm',
      doctorLocation: 'assets/map.png'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight= MediaQuery.of(context).size.height;
    final screenWidth= MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute (
                  builder: (BuildContext context) => const HomePage(),
                ),);
              },
              icon: Image.asset('assets/Vector..png'),
            ),
            doctorInfoSection(screenHeight,screenWidth),
            const SizedBox(height: 5,),
            const Text(
              ' About',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(
                ' ${doctor[0].doctorAbout}',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey[900]
                ),
            ),
             ),
            const SizedBox(height: 10,),
            addressAndDailyPracticeInfo(screenHeight,screenWidth),
            const SizedBox(height: 30,),
            const Text(
              '  Activity',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w500,
              ),
            ),
           const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:const Color(0xffFFB168),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: Size(screenWidth * 0.44, screenHeight * 0.08)
                  ),
                    child:const Row(
                      children: [
                        Icon(Icons.featured_play_list,color: Colors.black54,),
                        Text('   List of\n   Schedule',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
                      ],
                    ),
                ),
              //  const Spacer(),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor:const Color(0xff9F9B9B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(screenWidth * 0.44, screenHeight * 0.08)
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/medical-stethoscope-variant.png',height: 30,width: 30,),
                      const Text('   Doctor’s \n   Daily post',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
                    ],
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }

  Widget doctorInfoSection(screenHeight,screenWidth){
    return SizedBox(
      height: screenHeight * 0.25,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(28),
            child: Image.asset(
              '${doctor[0].doctorImage}',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '   ${doctor[0].doctorName}',
                style: TextStyle(
                    fontSize: screenWidth* 0.06,
                    fontWeight: FontWeight.w400,
                    color:const Color(0xffDD6C04)
                ),
              ),
              Text(
                '${doctor[0].doctorSpecialty}\n',
                style:const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff514D4D)
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: 10,),
                  Image.asset('assets/Massage.png'),
                  const SizedBox(width: 10,),
                  Image.asset('assets/Phone.png'),
                  const SizedBox(width: 10,),
                  Image.asset('assets/Videocall.png'),
                  const SizedBox(width: 10,),
                ],
              )
            ],
          ),
        ],
      ),
    );

  }
  Widget addressAndDailyPracticeInfo(screenHeight,screenWidth){
    return  Row(
      children: [
        // address & daily practice
        SizedBox(
          width: screenWidth * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //address title info
              Row(
                children: [
                  const Icon(Icons.location_on),
                  Text(
                    ' Address',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[900]
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22,top: 10),
                child: Text(
                  '${doctor[0].doctorAddress}',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey[900]
                  ),
                ),
              ),
              //daily practice info
              const SizedBox(height: 20,),
              Row(
                children: [
                  const Icon(Icons.schedule),
                  Text(
                    ' Daily Practice',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[900]

                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22,top: 10),
                child: Text(
                  '${doctor[0].doctorAddress}',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey[900]
                  ),
                ),
              ),
            ],
          ),
        ),
        //map
        SizedBox(
          width: screenWidth * 0.4,
          child: Image.asset(
            '${doctor[0].doctorLocation}',
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }
}
