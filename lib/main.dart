import 'package:flutter/material.dart';
import 'package:flutter_application_kounaizu/kounaizu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  
  void onTextChanged(text){
    setState(() {
      classroomName = text;
      if(classroomName=='ミーティングA'||classroomName=='ミーティングB'){
        imageAsset = a;
        comment = '$classroomNameは2号館の1階にあります。';
      }else if(classroomName=='CAL'||classroomName=='LL2'||classroomName=='BL4'){
        imageAsset = b;
        comment = '$classroomNameは2号館の3階にあります。';
      }else if(classroomName=='LL1'||classroomName=='BL2'||classroomName=='BL3'){
        imageAsset = c;
        comment = '$classroomNameは2号館の5階にあります。';
      }else if(classroomName=='102'||classroomName=='104'||classroomName=='105'){
        imageAsset = d;
        comment = '$classroomNameは3号館の1階にあります。';
      }else if(classroomName=='210'||classroomName=='211'||classroomName=='212'
        ||classroomName=='213'||classroomName=='214'){
        imageAsset = e;
        comment = '$classroomNameは3号館の2階にあります。';
      }else if(classroomName=='301'||classroomName=='303'||classroomName=='BL1'
        ||classroomName=='305'||classroomName=='307'||classroomName=='308'){
        imageAsset = f;
        comment = '$classroomNameは3号館の3階にあります。';
      }else if(classroomName=='401'||classroomName=='406'||classroomName=='407'
        ||classroomName=='413'){
        imageAsset = g;
        comment = '$classroomNameは3号館の4階にあります。';
      }else if(classroomName=='コラボルーム'||classroomName=='ミーティング室'
        ||classroomName=='160'||classroomName=='CL'){
        imageAsset = h;
        comment = '$classroomNameは4号館の1階にあります。';
      }else if(classroomName=='251'||classroomName=='253'){
        imageAsset = i;
        comment = '$classroomNameは4号館の2階にあります。';
      }else if(classroomName=='171'||classroomName=='172'||classroomName=='174'){
        imageAsset = j;
        comment = '$classroomNameは5号館の1階にあります。';
      }else if(classroomName=='272'||classroomName=='274'){
        imageAsset = k;
        comment = '$classroomNameは5号館の2階にあります。';
      }else if(classroomName=='370'){
        imageAsset = l;
        comment = '$classroomNameは5号館の3階にあります。';
      }else if(classroomName=='470'){
        imageAsset = m;
        comment = '$classroomNameは5号館の4階にあります。';
      }else{
        imageAsset = n;
        comment = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('小樽商大教室検索'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: '教室名を入力してください',
                    helperText: '数字は半角で入力してください'
                  ),
                  //controller: inputController,
                  onChanged: onTextChanged
                ),
              ),
              Text(
                '$comment',
                style: TextStyle(
                  fontSize: 40,
                ),),
              Image.asset(
                imageAsset,
                width: 450,
                height: 450,
              ),
              //Text(classroomName),
            ]
          ),
        ),
      ),
    );
  }
}