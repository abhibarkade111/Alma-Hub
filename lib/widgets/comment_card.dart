import 'package:alma_hub/providers/user_provider.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatefulWidget {
  const CommentCard({Key? key}) : super(key: key);

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 16,
      ),
      child:Row(
        children:[
        CircleAvatar(
          backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1661956601349-f61c959a8fd4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
          ),
          radius: 18,
        ),
        Expanded(
        child:Padding(
          padding: const EdgeInsets.only(left: 16,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text:'username',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:' Some Description here',
                  ),
                ]
              ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:4),
                child: Text('DD-MM-YYYY',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
              )
            ],
          ),
        ),
        ),
        Container(
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.favorite,size:16),
        ),
        ],
      ),
    );
  }
}
