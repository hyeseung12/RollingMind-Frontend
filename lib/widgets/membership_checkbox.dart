import 'package:flutter/material.dart';

class MembershipCheckbox extends StatefulWidget {
  @override
  _MembershipCheckboxState createState() => _MembershipCheckboxState();
}

class _MembershipCheckboxState extends State<MembershipCheckbox> {
  bool chAll = false;
  bool ch1 = false;
  bool ch2 = false;
  bool ch3 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.all(10.0),
              child: Checkbox(
                value: chAll,
                activeColor: Color.fromRGBO(253, 146, 139, 1),
                onChanged: (val) {
                  setState(() {
                    chAll = val!;
                    ch1 = val;
                    ch2 = val;
                    ch3 = val;
                  });
                },
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text('전체 약관 동의'),
          ],
        ),
        Container(
          height: 2,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    value: ch1,
                    activeColor: Color.fromRGBO(253, 146, 139, 1),
                    onChanged: (val) {
                      setState(() {
                        ch1 = val!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('[필수] 개인정보 수집 및 이용동의'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: ch2,
                    activeColor: Color.fromRGBO(253, 146, 139, 1),
                    onChanged: (val) {
                      setState(() {
                        ch2 = val!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('[필수] 이용약관 동의'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: ch3,
                    activeColor: Color.fromRGBO(253, 146, 139, 1),
                    onChanged: (val) {
                      setState(() {
                        ch3 = val!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('[선택] 이벤트성 정보 수신 동의'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}