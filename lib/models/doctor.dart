class Doctor{
  String? doctorName;
  String? doctorSpecialty;
  String? doctorImage;
  String ? doctorAbout='';
  String ? doctorAddress='';
  String ? doctorDailyPractice='';
  String? doctorLocation='';



  Doctor({
    required this.doctorName,
    required this.doctorSpecialty,
    required this.doctorImage,
    this.doctorAbout,
    this.doctorAddress,
    this.doctorDailyPractice,
    this.doctorLocation
});

}