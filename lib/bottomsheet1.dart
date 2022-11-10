import 'package:flutter/cupertino.dart';

class homescreen extends StatelessWidget{

  void _show(BuildContext ctx){
    showModelBottomSheet(
    isScrollControlled: true,
    elavatio: 3,
    context: ctx,
    builder: (ctx) => Container(
      padding: EdgeInsets.only(
        top:15,
        left:15,
        bottom:15,
        bottom: MediaQuery.of(ctx).viewInsets.bottom + 100),
        child : Column(
          mains=MainAxisSize.min,
        ),
      ),
    );

  }
}
