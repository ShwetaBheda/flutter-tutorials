import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_video_demoes/bloc_pattern/bloc/post_bloc.dart';
import 'package:youtube_video_demoes/bloc_pattern/bloc/post_event.dart';
import 'package:youtube_video_demoes/bloc_pattern/bloc/post_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => PostBloc()..add(FetchPosts()),
        child: PostPage(),
      ),
    );
  }
}

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is PostInitial) {
            return const Center(child: Text('Press the button to fetch posts'));
          } else if (state is PostLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PostLoaded) {
            return ListView.builder(
              itemCount: state.posts.length,
              itemBuilder: (context, index) {
                final post = state.posts[index];
                return Card(
                  color: Colors.grey[200],
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.body),
                  ),
                );
              },
            );
          } else if (state is PostError) {
            return Center(child: Text(state.message));
          }
          return Container();
        },
      ),
    );
  }
}
