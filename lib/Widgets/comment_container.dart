import 'package:flutter/material.dart';

class CommentContainer extends StatelessWidget {
  final String userName;
  final String userAvatarUrl;
  final String commentText;
  final DateTime commentDate;
  final VoidCallback onReplyPressed;

  CommentContainer({
    required this.userName,
    required this.userAvatarUrl,
    required this.commentText,
    required this.commentDate,
    required this.onReplyPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(userAvatarUrl),
                radius: 24,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      commentText,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '${commentDate.day}/${commentDate.month}/${commentDate.year}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.visibility, color: Colors.blue, size: 20),
                label: Text(
                  'View',
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
              ),
              TextButton.icon(
                onPressed: onReplyPressed,
                icon: Icon(Icons.reply, color: Colors.blue, size: 20),
                label: Text(
                  'Reply',
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
