import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'pageb_controller.g.dart';

@Injectable()
class PagebController = _PagebControllerBase with _$PagebController;

abstract class _PagebControllerBase with Store {
  @observable
  String text = 'AKFPCOSckap29571DJa@%&IT';

  @action
  void change() {
    this.text = 'TESTE';
  }
}
