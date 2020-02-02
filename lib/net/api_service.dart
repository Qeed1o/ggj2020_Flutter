import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_app/dto/Role.dart';
import 'package:flutter_app/dto/game_field_state_dto.dart';
import 'package:flutter_app/dto/pipe_dto.dart';
import 'package:flutter_app/environment/environment.dart';

class ApiService {
  static final instance = ApiService();

  final String _baseUrl =
      "${Environment.HOST_ADDRESS}:${Environment.HOST_PORT}";

  Future<GameFieldDto> coachGameField() async {
    print("[ApiService] coachGameField: starting");
    final url = "$_ENDPOINT_PROTOCOL://$_baseUrl$_ENDPOINT_COACH_GAME_FIELD";
    print("[ApiService] coachGameField: getting by $url...");

    Response<String> response = await Dio().get(url);
    print("[ApiService] coachGameField: awaited, data=${response.data}");
    GameFieldDto gameFieldDto =
        GameFieldDto.fromJson(jsonDecode(response.data));
    print("[ApiService] coachGameField: gameFieldDto=$gameFieldDto");
    return gameFieldDto;
  }

  Future<GameFieldDto> getRandomGameField() async {
    print("[ApiService] getRandomGameField: starting");
    final url = "$_ENDPOINT_PROTOCOL://$_baseUrl$_ENDPOINT_RANDOM_GAME_FIELD";
    print("[ApiService] getRandomGameField: getting by $url...");

    Response<String> response = await Dio().get(url);
    print("[ApiService] getRandomGameField: awaited, data=${response.data}");
    GameFieldDto gameFieldDto =
        GameFieldDto.fromJson(jsonDecode(response.data));
    print("[ApiService] getRandomGameField: gameFieldDto=$gameFieldDto");
    return gameFieldDto;
  }

  Future<Role> getRole() async {
    print("[ApiService] getRole: starting");
    final url = "$_ENDPOINT_PROTOCOL://$_baseUrl$_ENDPOINT_GET_ROLE";
    print("[ApiService] getRole: getting by $url...");
    Response<bool> response = await Dio().get(url);
    print("[ApiService] getRole: awaited, data=${response.data}");
    final role = RoleExtension.fromBoolean(response.data);
    print("[ApiService] getRole: awaited, role=$role");
    return role;
  }

//  Future<void> update(UpdateCommand command) {
//
//  }
}

class GetGameFieldResponse {
  List<List<PipeResponse>> rows;

  GameFieldDto convertToDto() {
    return GameFieldDto(rows.map((row) => row.map((cell) =>
        PipeDto.byEntryCodes(cell.entryPositions[0], cell.entryPositions[1]))));
  }
}

class PipeResponse {
  int id;
  List<int> entryPositions;
}

const String _ENDPOINT_PROTOCOL = "http";
const String _ENDPOINT_COACH_GAME_FIELD = "/coachGameField";
const String _ENDPOINT_RANDOM_GAME_FIELD = "/getRandomGameField";
const String _ENDPOINT_GET_ROLE = "/getRole";
