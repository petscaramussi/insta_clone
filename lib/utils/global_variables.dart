import 'package:flutter/material.dart';
import 'package:insta_clone/screens/feed_screen.dart';

import '../screens/add_post_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  Text('seach'),
  AddPostScreen(),
  Text('notif'),
  Text('profile')
];