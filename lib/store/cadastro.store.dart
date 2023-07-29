import 'package:mobx/mobx.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'cadastro.store.g.dart';

class CadastroStore = CadastroStoreBase with _$CadastroStore;

abstract class CadastroStoreBase with Store {
  CadastroStoreBase();

  @observable
  var formGroup = FormGroup({
    'nm_nome': FormControl<String>(validators: [Validators.required]),
    'nm_cpf': FormControl<String>(validators: [Validators.required]),
    'nm_telefone': FormControl<String>(validators: [Validators.required]),
    'nm_email': FormControl<String>(validators: [Validators.required]),
    'nm_senha': FormControl<String>(validators: [Validators.required]),
    'nm_confirmacao': FormControl<String>(validators: [Validators.required]),
    'nm_sexo_feminino': FormControl<String>(validators: [Validators.required]),
    'nm_sexo_masculino': FormControl<String>(validators: [Validators.required]),
  });

  @computed
  get value => formGroup.value;

  @observable
  bool nmsexofeminino = false;

  @action
  void switchLgEstrangeiro(bool? value) {
    nmsexofeminino = value ?? false;
  }
}
