import 'package:flutter/material.dart';
import 'package:todo_application/core/custom_text_form_field.dart';

class BottomSheetWidget extends StatelessWidget {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Add new Task",
              style:
                  theme.textTheme.titleLarge!.copyWith(color: Colors.black),
            ),
            CustomTextFormField(
              title: "Enter your Task Title",
              controller: titleController,
              maxLines: 2,
              validator: (String? value) {
                if (value == null || value.trim().isEmpty) {
                  return "You must provide Task Title";
                } else if (value.length < 10) {
                  return "You must enter at least 10 charachter";
                } else {
                  return null;
                }
              },
            ),

            CustomTextFormField(
                title: "Enter your task description",
                controller: descriptionController,
                validator:  (String? value) {
                  if (value == null || value.trim().isEmpty) {
                    return "You must provide Task Title";
                  } else if (value.length < 10) {
                    return "You must enter at least 10 charachter";
                  } else {
                    return null;
                  }
                }, maxLines: 2,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Select time",
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: Colors.black),
                ),
                GestureDetector(
                  onTap: (){
                    showCalendar(context);
                  },
                  child: Text(
                    "25 October 2024",
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: theme.primaryColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF5D9CEC),
                shape: RoundedRectangleBorder(), // background
              ),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  print(titleController.text);
                }
              },
              child: Text(
                "Add Task",
                style:
                    theme.textTheme.bodyMedium!.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showCalendar(context) {
    showDatePicker(context: context, firstDate: DateTime.now(), lastDate: DateTime.now().add(Duration(days: 365),),);
  }
}
