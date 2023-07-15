import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldDecorationDemo extends StatefulWidget {
  const TextFieldDecorationDemo({super.key});

  @override
  State<TextFieldDecorationDemo> createState() =>
      _TextFieldDecorationDemoState();
}

class _TextFieldDecorationDemoState extends State<TextFieldDecorationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.red,
                cursorHeight: 20,
                cursorWidth: 5,
                cursorOpacityAnimates: true,
                maxLines: null,
                // minLines: null,
                // maxLength: 100,
                keyboardType: TextInputType.visiblePassword,
                // obscureText: true,
                // obscuringCharacter: '#',
                // enabled: true,
                // readOnly: true,
                // contextMenuBuilder: (context, editableTextState) {
                //   return AdaptiveTextSelectionToolbar.buttonItems(
                //       buttonItems: [
                //         ContextMenuButtonItem(onPressed: () {}, label: 'Submit'),
                //       ],
                //       anchors: const TextSelectionToolbarAnchors(
                //           primaryAnchor: Offset(0, 0)));
                // },
                cursorRadius: const Radius.circular(
                  10,
                ),

                style: const TextStyle(
                  color: Colors.red,
                ),
                // textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                autocorrect: true,
                textCapitalization: TextCapitalization.characters,
                textDirection: TextDirection.ltr,
                textInputAction: TextInputAction.go,
                // minLines: 2,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                // expands: true,

                decoration: const InputDecoration(
                  // prefix: const Text('Mobile No'),
                  prefixIcon: Icon(
                    Icons.abc,
                  ),
                  prefixIconColor: Colors.amber,
                  prefixText: 'Mobile No',
                  prefixStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  // suffix: Text('Mobile No'),
                  suffixText: 'Mobile No',
                  icon: Icon(
                    Icons.contact_emergency,
                  ),
                  iconColor: Colors.black,
                  hintText: 'Enter your Mobile Nos',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 75,
                  ),
                  suffixStyle: TextStyle(
                    color: Colors.indigo,
                  ),
                  suffixIcon: Icon(
                    Icons.add,
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        50,
                      ),
                    ),
                  ),
                  focusColor: Colors.red,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        50,
                      ),
                    ),
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  label: Text(
                    'Enter mobile no here',
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        50,
                      ),
                    ),
                  ),
                  label: Text(
                    'Enter mobile no here',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

          // cursorRadius: , 
          // style: , 
          // textAlign: , 
          // textAlignVertical:  ,
          // textCapitalization: , 
          // textDirection:  ,
          // textInputAction: , 
          // minLines:  , 
          // inputFormatters: [ ], 
          // expands: ,
          // autocorrect: ,


          // disabledBorder: , 
          // enabledBorder: , 
          // errorBorder:  , 
          // focusedBorder: , 
          // focusedErrorBorder:  , 
                  
          // helperMaxLines: , 
          // helperStyle: , 
          // helperText: , 
          // hintMaxLines: ,
          // hintTextDirection: , 
          // hoverColor: , 
          // isCollapsed: , 
          // label: , 
          // labelStyle: ,
          // labelText: ,
          // alignLabelWithHint: ,
          // errorStyle: , 
          // errorMaxLines: , 
          // enabled: , 
          // fillColor:  ,
          // filled:  ,
          // floatingLabelAlignment: , 
          // floatingLabelStyle: ,    
              