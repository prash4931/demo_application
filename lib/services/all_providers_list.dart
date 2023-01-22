import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../providers/movies/movies_provider.dart';

List<SingleChildWidget> allproviderList() {
  return [ChangeNotifierProvider(create: (_) => MoviesHomePageProvider())];
}
