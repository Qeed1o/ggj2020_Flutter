import 'package:flutter/material.dart';
import 'package:flutter_app/dto/pipe_dto.dart';
import 'package:flutter_app/util/pipe_assets_map.dart';

class PipeWidget extends StatefulWidget {
  final PipeDto _pipeDto;
  final Function emitTap;


  PipeWidget(this._pipeDto, {this.emitTap});

  _handleTap() {
    if (emitTap != null) {
      emitTap();
    }
  }

  @override
  State<StatefulWidget> createState() {
    return _PipeWidgetState(_handleTap, _pipeDto);
  }
}

class _PipeWidgetState extends State<PipeWidget> {
  final Function emitTap;
  bool chosen = false;
  final PipeDto pipeDto;

  _PipeWidgetState(this.emitTap, this.pipeDto);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => this.emitTap != null ? this.emitTap : null,
        child: Image(
          image: AssetImage(pipeAssetsMap[pipeDto]),
          width: 32,
          height: 32,
          color: chosen ? Color.fromARGB(127, 200, 127, 0) : null,
          colorBlendMode: BlendMode.lighten,
        ));
  }

  _handleTap() {
    if (!chosen) {
      chosen = true;
    }
  }
}
