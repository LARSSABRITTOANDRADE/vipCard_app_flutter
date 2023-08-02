// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MenuStore on MenuStoreBase, Store {
  Computed<dynamic>? _$valueComputed;

  @override
  dynamic get value => (_$valueComputed ??=
          Computed<dynamic>(() => super.value, name: 'MenuStoreBase.value'))
      .value;

  late final _$formGroupAtom =
      Atom(name: 'MenuStoreBase.formGroup', context: context);

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

  @override
  String toString() {
    return '''
formGroup: ${formGroup},
value: ${value}
    ''';
  }
}
