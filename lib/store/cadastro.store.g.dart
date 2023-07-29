// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CadastroStore on CadastroStoreBase, Store {
  Computed<dynamic>? _$valueComputed;

  @override
  dynamic get value => (_$valueComputed ??=
          Computed<dynamic>(() => super.value, name: 'CadastroStoreBase.value'))
      .value;

  late final _$formGroupAtom =
      Atom(name: 'CadastroStoreBase.formGroup', context: context);

  @override
  FormGroup get formGroup {
    _$formGroupAtom.reportRead();
    return super.formGroup;
  }

  @override
  set formGroup(FormGroup value) {
    _$formGroupAtom.reportWrite(value, super.formGroup, () {
      super.formGroup = value;
    });
  }

  late final _$nmsexofemininoAtom =
      Atom(name: 'CadastroStoreBase.nmsexofeminino', context: context);

  @override
  bool get nmsexofeminino {
    _$nmsexofemininoAtom.reportRead();
    return super.nmsexofeminino;
  }

  @override
  set nmsexofeminino(bool value) {
    _$nmsexofemininoAtom.reportWrite(value, super.nmsexofeminino, () {
      super.nmsexofeminino = value;
    });
  }

  late final _$CadastroStoreBaseActionController =
      ActionController(name: 'CadastroStoreBase', context: context);

  @override
  void switchLgEstrangeiro(bool? value) {
    final _$actionInfo = _$CadastroStoreBaseActionController.startAction(
        name: 'CadastroStoreBase.switchLgEstrangeiro');
    try {
      return super.switchLgEstrangeiro(value);
    } finally {
      _$CadastroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
formGroup: ${formGroup},
nmsexofeminino: ${nmsexofeminino},
value: ${value}
    ''';
  }
}
