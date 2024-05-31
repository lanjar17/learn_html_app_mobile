import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/project_page_data.dart';

final pageViewProvider = StateProvider.autoDispose((ref) => 0);

final pageViewItemsProvider =
    StateNotifierProvider<PageViewItems, List<PageViewItem>>(
  (ref) => PageViewItems(),
);

final codeOutput = StateProvider<String>((ref) => "");
