import 'package:dargon2/dargon2.dart';

class Argon2Helper {
  final List<int> saltBytes;

  Argon2Helper(this.saltBytes);

  Future<DArgon2Result> hashPasswordString(String password) =>
      argon2.hashPasswordString(
        password,
        salt: Salt(saltBytes),
        memory: 64 * 1024,
        iterations: 1,
        parallelism: 4,
        type: Argon2Type.id,
      );
}
