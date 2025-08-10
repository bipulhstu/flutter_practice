import 'package:flutter/material.dart';
import 'package:hello_world/stateful_widgets/CustomRadioButton.dart';
import 'package:hello_world/stateful_widgets/Details.dart';

//for radio button
//enum ProductTypeEnum { Downloadable, Deliverable }

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  //Constructor of the class
  _MyFormState() {
    _selectedVal = _productSizesList.first;
  }

  var _productName;
  final _productController = TextEditingController();

  bool? _isChecked, _listTileCheckBox = false;
  ProductTypeEnum? _productTypeEnum;

  // for dropdown
  final _productSizesList = ["Small", "Medium", "Large", "XLarge"];
  String? _selectedVal;

  @override
  void initState() {
    super.initState();

    _productController.addListener(_updateText);
  }

  @override
  void dispose() {
    _productController.dispose();
    super.dispose();
  }

  void _updateText() {
    setState(() {
      _productName = _productController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form"), backgroundColor: Colors.blueAccent),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            TextFormField(
              /*onChanged: (value){
                _updateText(value);
              },*/
              controller: _productController,
              decoration: InputDecoration(
                labelText: "Product Name",
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
              ),
            ),

            Text("Product Name is: ${_productController.text}"),

            //Two types of checkbox...

            // 1. Checkbox
            Checkbox(
              activeColor: Colors.deepPurple,
              checkColor: Colors.white,
              tristate: true,
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value;
                });
                print("Checkbox value: $value");
              },
            ),

            //2. Checkbox List Tile
            CheckboxListTile(
              value: _listTileCheckBox,
              title: Text("Checkbox List Tile"),
              onChanged: (value) {
                setState(() {
                  _listTileCheckBox = value;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),

            //Radio Button
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    value: ProductTypeEnum.Deliverable,
                    groupValue: _productTypeEnum,
                    tileColor: Colors.deepPurple.shade50,
                    dense: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    title: Text(ProductTypeEnum.Deliverable.name),
                    onChanged: (value) {
                      setState(() {
                        _productTypeEnum = value;
                      });
                    },
                  ),
                ),

                SizedBox(width: 5.0),

                Expanded(
                  child: RadioListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    value: ProductTypeEnum.Downloadable,
                    groupValue: _productTypeEnum,
                    tileColor: Colors.deepPurple.shade50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    dense: true,
                    title: Text(ProductTypeEnum.Downloadable.name),
                    onChanged: (value) {
                      setState(() {
                        _productTypeEnum = value;
                      });
                    },
                  ),
                ),
              ],
            ),

            SizedBox(height: 15.0),

            Row(
              children: [
                MyRadioButton(
                  title: ProductTypeEnum.Deliverable.name,
                  value: ProductTypeEnum.Deliverable,
                  productTypeEnum: _productTypeEnum,
                  onChanged: (value) {
                    setState(() {
                      _productTypeEnum = value;
                    });
                  },
                ),

                SizedBox(width: 5.0),

                MyRadioButton(
                  title: ProductTypeEnum.Downloadable.name,
                  value: ProductTypeEnum.Downloadable,
                  productTypeEnum: _productTypeEnum,
                  onChanged: (value) {
                    setState(() {
                      _productTypeEnum = value;
                    });
                  },
                ),
              ],
            ),

            SizedBox(height: 10.0),

            DropdownButton(
              value: _selectedVal,
              items: _productSizesList.map((e) {
                return DropdownMenuItem(value: e, child: Text(e));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedVal = value;
                });
              },
            ),

            DropdownButtonFormField(
              value: _selectedVal,
              items: _productSizesList.map((e) {
                return DropdownMenuItem(value: e, child: Text(e));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedVal = value;
                });
              },
              icon: Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.deepPurple,
              ),
              dropdownColor: Colors.deepPurple.shade50,
              decoration: InputDecoration(
                labelText: "Select Product Size",
                prefixIcon: Icon(
                  Icons.accessibility_new_rounded,
                  color: Colors.deepPurple,
                ),
                border: OutlineInputBorder()
              ),
            ),

            SizedBox(height: 20.0),

            submitFormButton(context),
          ],
        ),
      ),
    );
  }

  OutlinedButton submitFormButton(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return FormDetails(productName: _productController.text);
            },
          ),
        );
      },
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      child: Text(
        "Submit Form".toUpperCase(),
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
