
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreenController extends GetxController{
  Rx<DateTime?> selectedDate = Rx<DateTime?>(DateTime.now());

  // Method to update the selected date
  void updateSelectedDate(DateTime date) {
    selectedDate.value = date;
  }

  @override
  void onInit() {
    // TODO: implement onInit
   // _eventList;
    super.onInit();

  }
 /* void onSelected(value){
    imagePath.value =value;
    update();
  }*/

  RxString imagePath = ''.obs;


  Future getImage() async{
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null){
      imagePath.value = image.path??'';
    }
  }


  }

  /*final List<NeatCleanCalendarEvent> _eventList = [
    NeatCleanCalendarEvent('MultiDay Event A',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 10, 0),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 12, 0),
        color: Colors.orange,
        isMultiDay: true),
    NeatCleanCalendarEvent('Allday Event B',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day - 2, 14, 30),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 17, 0),
        color: Colors.pink,
        isAllDay: true),
    NeatCleanCalendarEvent('Normal Event D',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 14, 30),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 17, 0),
        color: Colors.indigo),
  ];*/






 /* Widget childContainer() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.yellow,
            width: 4,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }*/


