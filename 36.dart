import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>();
  final lastNameController = TextEditingController();
  GenderEnum gender = GenderEnum.male;
  bool isChecked=false;

  void onSubmit() {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(lastNameController.text),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("homepage"),
      ),
      body: Center(
        child: Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    controller: lastNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "хоосон байж болохгүй";
                      }
                    },
                    decoration: InputDecoration(
                      label: Text("Овог"),
                      hintText: "Энд бичнэ үү",
                    ),
                  ),
                  DropdownButtonFormField(
                    validator: (value) {
                      if (value == "1") {
                        return "1 baij bolohgui";
                      }
                      return null;
                    },
                    items: [
                      DropdownMenuItem(
                        value: "1",
                        child: Text("dgr1"),
                      ),
                      DropdownMenuItem(
                        value: "2",
                        child: Text("adf2"),
                      ),
                      DropdownMenuItem(
                        value: "3",
                        child: Text("ds3"),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                  Row(
                    children: [
                      Radio(
                        value: GenderEnum.male,
                        groupValue: gender,
                        onChanged: (value) {
                          if (value != null)
                            setState(() {
                              gender = value;
                            });
                        },
                      ),
                      Text("male"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: GenderEnum.female,
                        groupValue: gender,
                        onChanged: (value) {
                          if (value != null)
                            setState(() {
                              gender = value;
                            });
                        },
                      ),
                      Text("female"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: isChecked,
                        onChanged: (val){
                        setState(() {
                          isChecked=!isChecked;
                        });
                        },
                      ),
                      Text("Үйлчилгээний нөхцөл зөвшөөрч буй эсэх"),
                    ],
                  ),


                  ElevatedButton(onPressed: onSubmit, child: Text("Илгээх")),
                ],
              ),
            )),
      ),
    );
  }
}

enum GenderEnum {
  male,
  female;
}
