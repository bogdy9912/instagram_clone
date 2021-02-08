import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/containers/auth/index.dart';
import 'package:instagram_clone/src/containers/auth/users_container.dart';
import 'package:instagram_clone/src/containers/posts/post_comments_container.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:instagram_clone/src/models/posts/index.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({Key key, @required this.post}) : super(key: key);

  final Post post;

  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final TextEditingController _comment = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    StoreProvider.of<AppState>(context).dispatch(GetComments(widget.post.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments'),
      ),
      body: UserContainer(
        builder: (BuildContext context, AppUser currentUser) {
          return UsersContainer(
            builder: (BuildContext context, Map<String, AppUser> users) {
              return PostCommentsContainer(
                builder: (BuildContext context, Map<String, Comment> mapOfComments) {
                  final List<Comment> comments = mapOfComments.values.toList();
                  return Column(
                    children: <Widget>[
                      ListTile(
                        leading: users[widget.post.uid].photoUrl != null
                            ? CircleAvatar(backgroundImage: NetworkImage(users[widget.post.uid].photoUrl))
                            : CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Text(users[widget.post.uid].username[0].toUpperCase()),
                              ),
                        title: Text.rich(
                          TextSpan(
                            text: '${users[widget.post.uid].username}: ',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                text: widget.post.description,
                                style: const TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(),
                      Expanded(
                        child: ListView.builder(
                          itemCount: comments.length,
                          itemBuilder: (BuildContext context, int index) {
                            final AppUser user = users[comments[index].userId];
                            final bool isLiked = comments[index].likes.contains(currentUser.uid);
                            return ListTile(
                              leading: user.photoUrl != null
                                  ? CircleAvatar(backgroundImage: NetworkImage(user.photoUrl))
                                  : CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      child: Text(user.username[0].toUpperCase()),
                                    ),
                              title: Text.rich(
                                TextSpan(
                                  text: '${user.username}: ',
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: comments[index].text,
                                      style: const TextStyle(fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                              subtitle:
                                  comments[index].likes.isNotEmpty ? Text('${comments[index].likes.length} likes') : null,
                              trailing: IconButton(
                                icon: Icon(isLiked ? Icons.favorite : Icons.favorite_outline),
                                onPressed: () {
                                  if (isLiked) {
                                    StoreProvider.of<AppState>(context).dispatch(UpdateLikeComments(
                                        id: comments[index].id, postId: widget.post.id, remove: currentUser.uid));
                                  } else {
                                    StoreProvider.of<AppState>(context).dispatch(UpdateLikeComments(
                                        id: comments[index].id, postId: widget.post.id, add: currentUser.uid));
                                  }
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        child: Row(
                          children: <Widget>[
                            if (users[widget.post.uid].photoUrl != null)
                              CircleAvatar(backgroundImage: NetworkImage(users[widget.post.uid].photoUrl))
                            else
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Text(users[widget.post.uid].username[0].toUpperCase()),
                              ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: TextField(
                                  controller: _comment,
                                  decoration: const InputDecoration(
                                    hintText: 'add a comment',
                                    border: InputBorder.none,
                                  ),
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.send,
                                  onSubmitted: (String value) {
                                    StoreProvider.of<AppState>(context).dispatch(
                                        PostComment(postId: widget.post.id, text: _comment.text, uid: currentUser.uid));
                                    _comment.clear();
                                  },
                                  autofocus: true,
                                ),
                              ),
                            ),
                            FlatButton(
                              onPressed: () {
                                StoreProvider.of<AppState>(context).dispatch(
                                    PostComment(postId: widget.post.id, text: _comment.text, uid: currentUser.uid));
                                _comment.clear();
                              },
                              child: const Text(
                                'Post',
                                style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  color: Colors.lightBlueAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
