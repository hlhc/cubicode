import 'package:authentication_repository/authentication_repository.dart';
import 'package:cubicode/app/app.dart';
import 'package:cubicode/bootstrap.dart';

void main() {
  bootstrap(
    (AuthenticationRepository authenticationRepository) =>
        App(authenticationRepository: authenticationRepository),
  );
}
