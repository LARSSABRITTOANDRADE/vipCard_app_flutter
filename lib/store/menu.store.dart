import 'package:mobx/mobx.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'menu.store.g.dart';

class MenuStore = MenuStoreBase with _$MenuStore;

abstract class MenuStoreBase with Store {
  MenuStoreBase();

  @observable
  var formGroup = FormGroup({
    'id_usuario': FormControl<String>(validators: [Validators.required]),
    'nm_nome': FormControl<String>(validators: [Validators.required]),
    'nm_dependente': FormControl<String>(validators: [Validators.required]),
    'nm_email': FormControl<String>(validators: [Validators.required]),
    'nm_cpf': FormControl<String>(validators: [Validators.required]),
  });

  @computed
  get value => formGroup.value;
}
