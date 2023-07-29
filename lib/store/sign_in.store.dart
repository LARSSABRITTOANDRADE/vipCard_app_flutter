import 'package:mobx/mobx.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'sign_in.store.g.dart';

class SignInStore = SignInStoreBase with _$SignInStore;

abstract class SignInStoreBase with Store {
  SignInStoreBase();

  @observable
  var formGroup = FormGroup({
    'nm_cpf': FormControl<String>(validators: [Validators.required]),
    'nm_senha': FormControl<String>(validators: [Validators.required]),
  });

  @computed
  get value => formGroup.value;

  @observable
  bool valid = false;

  @observable
  bool loading = false;
}
