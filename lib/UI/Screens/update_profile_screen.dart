import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:task_manager/UI/Widgets/screen_background.dart';
import 'package:task_manager/UI/Widgets/t_m_app_bar.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(
        fromProfileScreen: true,
      ),
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32,
                ),
                Text(
                  "Update Profile",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 16,
                ),
                _buildPhotoPickerWidget(),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "First Name",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Last Name",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Mobile",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: _ontapSubmitButton,
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Colors.white,
                      size: 24,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPhotoPickerWidget() {
    return GestureDetector(
      onTap: _onTapPhotoPicker,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5)),
                color: Colors.black54,
              ),
              child: Text(
                "Photos",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(width: 3), // Adds spacing between the label and the input
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Select photo",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onTapPhotoPicker() {
    // Future<void> getLostData() async {
    //   final ImagePicker picker = ImagePicker();
    //   final LostDataResponse response = await picker.retrieveLostData();
    //   if (response.isEmpty) {
    //     return;
    //   }
    //   final List<XFile>? files = response.files;
    // }
  }

  _ontapSubmitButton() {}
}
