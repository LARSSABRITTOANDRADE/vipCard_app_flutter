// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignInStore on SignInStoreBase, Store {
  Computed<dynamic>? _$valueComputed;

  @override
  dynamic get value => (_$valueComputed ??=
          Computed<dynamic>(() => super.value, name: 'SignInStoreBase.value'))
      .value;

  late final _$formGroupAtom =
      Atom(name: 'SignInStoreBase.formGroup', context: context);

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

  late final _$validAtom =
      Atom(name: 'SignInStoreBase.valid', context: context);

  @override
  bool get valid {
    _$validAtom.reportRead();
    return super.valid;
  }

  @override
  set valid(bool value) {
    _$validAtom.reportWrite(value, super.valid, () {
      super.valid = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: 'SignInStoreBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  @override
  String toString() {
    return '''
formGroup: ${formGroup},
valid: ${valid},
loading: ${loading},
value: ${value}
    ''';
  }
}
