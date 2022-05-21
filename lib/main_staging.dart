// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:test_lime_commerce/app/app.dart';
import 'package:test_lime_commerce/bootstrap.dart';
import 'package:test_lime_commerce/core/config/build_config.dart';

void main() {
  BuildConfig.setEnvironment(Env.staging);
  bootstrap(() => const App(), Env.staging.name);
}
