import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:{{name.snakeCase()}}/data/dto/user_dto.dart';
import 'package:{{name.snakeCase()}}/domain/models/user.dart';

part 'mapping_class.g.dart';

@AutoMappr([
  MapType<UserDto, User>(),
])
class Mappr extends $Mappr {}
