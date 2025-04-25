import 'package:flutter_riverpod/flutter_riverpod.dart';

// アプリ全体で使用されるプロバイダー（例：RepositoryやService）をここに定義

final Provider<String> exampleServiceProvider = Provider<String>((
  ProviderRef<String> ref,
) {
  // 仮のサービス注入
  return 'Injected Service';
});
