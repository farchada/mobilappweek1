import 'package:flutter/material.dart';
import 'package:mobileappweek1/backend/database.dart';
import 'package:mobileappweek1/config/constant.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password, conpassword;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  txtName(),
                  surName(),
                  mail(),
                  txtPassword(),
                  conPassword(),
                  btnSubmit(),
                ],
              ),
            )),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 15, 15, 10),
      child: TextFormField(
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          labelText: 'Name',
          icon: Icon(Icons.account_circle),
          hintText: 'Input your name',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาป้อนข้อมูล';
          } else if (value.length < 6) {
            return 'กรุณาป้อนข้อมูลมากกว่า 6 ตัวอักษร';
          }
        },
        onSaved: (value) {
          name = value;
        },
      ),
    );
  }

  Widget surName() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: TextFormField(
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          labelText: 'Surname',
          icon: Icon(Icons.add_reaction_sharp),
          hintText: 'Input your surname',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาใส่ข้อมูล';
          } else if (value.length < 2) {
            return '';
          }
        },
        onSaved: (value) {
          surname = value;
        },
      ),
    );
  }

  Widget mail() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          labelText: 'Email',
          icon: Icon(Icons.email),
          hintText: 'Input your Email',
        ),
        validator: (value) {
          if (!(value!.contains('@'))) {
            return 'กรุณาป้อน @ ตามรูปแบบ Email';
          } else if (!(value.contains('.'))) {
            return 'กรุณาป้อน . ตามรูปแบบ Email';
          }
        },
        onSaved: (value) {
          email = value;
        },
      ),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: TextFormField(
        obscureText: true,
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          labelText: 'Password',
          icon: Icon(Icons.lock),
          hintText: 'Input your Password',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาป้อนรหัส';
          } else if (value.length < 8) {
            return 'กรุณาป้อนรหัสมากกว่า 8 ตัวอักษร';
          }
        },
        onChanged: (value) {
          password = value;
        },
        onSaved: (value) {
          password = value;
        },
      ),
    );
  }

  Widget conPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: TextFormField(
        obscureText: true,
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          labelText: 'ComfirmPassword',
          icon: Icon(Icons.lock),
          hintText: 'Input your ComfirmPassword',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณาป้อนรหัส';
          } else if (value.length < 6) {
            return 'กรุณาป้อนรหัสมากกว่า 6 ตัวอักษร';
          } else if (value != password) {
            return 'รหัสผ่านไม่ตรงกัน';
          }
        },
        onSaved: (value) {
          password = value;
        },
      ),
    );
  }

  Widget btnSubmit() => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: pColor,
        ),
        onPressed: () {
          print("Hello");

          var local = new DBLocal();

          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            local.register(name, surname, email, password);
            formKey.currentState!.reset();
            Navigator.pushNamed(context, 'Login');
          }
        },
        child: Text('Submit'),
      );
}
