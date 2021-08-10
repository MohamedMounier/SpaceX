
import 'package:flutter/material.dart';
import 'package:prefinal_aff/Widgets/SharedPref%20items.dart';
class TextFormPassword extends StatefulWidget {
  const TextFormPassword({
    this.inputAction,this.inputType,@required this.icon1, @required this.hint,this.passControl,
    Key key,
  }) : super(key: key);

  final IconData icon1;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final TextEditingController passControl;

  @override
  _TextFormPasswordState createState() => _TextFormPasswordState();
}

class _TextFormPasswordState extends State<TextFormPassword> {
  bool showPass=true;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: (15)),
      child: Center(
        child: Container(
          margin: EdgeInsets.all(4),
          height: 70,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.grey[500].withOpacity(.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: TextFormField(

              validator: (value){
                if(value.isEmpty){
                  return 'Password must not be empty';
                }
                return null;
              },
              controller: widget.passControl,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.hint,
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: (10)),
                    child: Icon(widget.icon1,size: 30, color: Colors.white,
                 ),
                  ),
                suffixIcon:IconButton( icon:showPass?Icon(Icons.visibility):Icon(Icons.visibility_off),onPressed: (){
                  setState(() {
                    showPass=!showPass;
                  });
                },),
              ),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
              keyboardType: widget.inputType,
              textInputAction: widget.inputAction,
              obscureText: showPass,
            ),
          ),
        ),
      ),
    );
  }
}
class TextFormFieldEmail extends StatelessWidget {
  const TextFormFieldEmail({
    @required this.hint,@required this.icon1,this.inputType,this.inputAction,this.emailControl,
    Key key,
  }) : super(key: key);

  final TextEditingController emailControl;
  final IconData icon1;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: (15)),
      child: Center(
        child: Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.all(4),
          height: 70,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.grey[500].withOpacity(.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: TextFormField(
              validator: (value){
                if(value.isEmpty){
                  return 'Email must not be null';
                }
                  return null;

              },
              controller: emailControl,
              decoration: InputDecoration(

                  border: InputBorder.none,
                  hintText: 'Email',
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: (10)),
                    child: Icon(Icons.email_outlined,size: 30, color: Colors.white,
                    ),
                  )
              ),
              style: TextStyle(
                  color: Colors.white60.withOpacity(.9),
                  fontSize: 20
              ),
              keyboardType: inputType,
              textInputAction: inputAction,
            ),
          ),
        ),
      ),
    );
  }
}
//------------------------------------------------------
// Register screen TextFormFields
//1- Enter user Id
class TextRegisterID extends StatelessWidget {
  const TextRegisterID({
    this.inputAction,this.inputType,@required this.icon1, @required this.hint,
    Key key,
  }) : super(key: key);

  final IconData icon1;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: (15)),
      child: Center(
        child: Container(
          margin: EdgeInsets.all(4),
          height: 70,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.grey[500].withOpacity(.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hint,
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: (10)),
                    child: Icon(icon1,size: 30, color: Colors.white,
                    ),
                  )
              ),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
              keyboardType: inputType,
              textInputAction: inputAction,
              obscureText: true,
            ),
          ),
        ),
      ),
    );
  }
}

// 2 Enter your email
class TextRegisterEmail extends StatelessWidget {
  const TextRegisterEmail({
  this.inputType,this.inputAction,
    Key key,
  }) : super(key: key);

  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: (15)),
      child: Center(
        child: Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.all(4),
          height: 70,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.grey[500].withOpacity(.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: (10)),
                    child: Icon(Icons.email_outlined,size: 30, color: Colors.white,
                    ),
                  )
              ),
              style: TextStyle(
                  color: Colors.white60.withOpacity(.9),
                  fontSize: 20
              ),
              keyboardType: inputType,
              textInputAction: inputAction,
            ),
          ),
        ),
      ),
    );
  }
}
//----------------------------------------
// 2 - Enter your Password
class TextRegisterPassword extends StatelessWidget {
  const TextRegisterPassword({
    this.inputAction,this.inputType,@required this.icon1, @required this.hint,
    Key key,
  }) : super(key: key);

  final IconData icon1;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: (15)),
      child: Center(
        child: Container(
          margin: EdgeInsets.all(4),
          height: 70,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.grey[500].withOpacity(.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hint,
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: (10)),
                    child: Icon(icon1,size: 30, color: Colors.white,
                    ),
                  )
              ),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
              keyboardType: inputType,
              textInputAction: inputAction,
              obscureText: true,
            ),
          ),
        ),
      ),
    );
  }
}

