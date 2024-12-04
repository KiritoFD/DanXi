import Ability from '@ohos.app.ability.UIAbility';
import Window from '@ohos.window';
import { GlobalContext } from '../common/utils/GlobalContext';

export default class EntryAbility extends Ability {
  onCreate(want, launchParam) {
    GlobalContext.getContext().setObject('ability', this);
  }

  onDestroy() {
  }

  onWindowStageCreate(windowStage: Window.WindowStage) {
    windowStage.loadContent('pages/Index');
  }

  onWindowStageDestroy() {
  }

  onForeground() {
  }

  onBackground() {
  }
}
