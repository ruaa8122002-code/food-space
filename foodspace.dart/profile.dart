import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class profileScr extends StatefulWidget {
  @override
  State<profileScr> createState() => _profileScrState();
}

class _profileScrState extends State<profileScr> {
  String _selectedMethod = 'Card';
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  var name = "Farah Saleh";
  var address = "No 15 jalaa street jdaidet artouz Damascus Syria";
  var phone = "+963 945623597";
  void _show(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (_) => AlertDialog(
              title: const Text(
                'Personal details',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      label: Text("NAME"),
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      hintText: "The new name",
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      label: Text("PHONE"),
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      hintText: "The new phone",
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: addressController,
                    decoration: InputDecoration(
                      label: Text("ADDRESS"),
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      hintText: "The new address",
                    ),
                  ),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () => Navigator.of(ctx).pop(),
                          child: const Text(
                            'Close ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xff0000FF)),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  name = nameController.text;
                                  phone = phoneController.text;
                                  address = addressController.text;
                                });
                                Navigator.of(ctx).pop();
                              },
                              child: Center(
                                child: Text(
                                  'Update',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'Personal details',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: TextButton(
                        onPressed: () {
                          _show(context);
                        },
                        child: Text(
                          "Change",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: CircleAvatar(
                          maxRadius: 50,
                          backgroundImage: NetworkImage(
                              'https://th.bing.com/th/id/OIP.6R2QoDkrHSUIxuJgi95_KQAAAA?pid=ImgDet&w=355&h=355&rs=1'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 70),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 25, right: 25),
                              child: Text(
                                name,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 1.5,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Text(
                                phone,
                                style: TextStyle(
                                    color: Colors.grey[700], fontSize: 16),
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              address,
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 16),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text(
                  "Payment method",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ListTile(
                      leading: Radio<String>(
                        value: 'Card',
                        groupValue: _selectedMethod,
                        onChanged: (value) {
                          setState(() {
                            _selectedMethod = value!;
                          });
                        },
                      ),
                      title: Text(
                        'Card',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                    ),
                    ListTile(
                      leading: Radio<String>(
                        value: 'Bank account',
                        groupValue: _selectedMethod,
                        onChanged: (value) {
                          setState(() {
                            _selectedMethod = value!;
                          });
                        },
                      ),
                      title: Text(
                        'Bank account',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Help",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 230),
                        child: IconButton(
                            iconSize: 30,
                            onPressed: () {},
                            icon: Icon(Icons.arrow_right)),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
    ;
  }
}
