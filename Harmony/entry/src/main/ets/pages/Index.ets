import { FlutterPage, FlutterView } from '@ohos/flutter_ohos';
import { ComFlutterEntry } from '../flutter/ComFlutterEntry';

@Entry
@Component
struct Index {
  private flutterEntry: ComFlutterEntry | null = null;
  private flutterView?: FlutterView;

  aboutToAppear() {
    this.flutterEntry = new ComFlutterEntry(getContext(this), { 'route': '/home' });
    this.flutterEntry.aboutToAppear();
    this.flutterView = this.flutterEntry.getFlutterView();
  }

  aboutToDisappear() {
    this.flutterEntry?.aboutToDisappear();
  }

  onPageShow() {
    this.flutterEntry?.onPageShow();
  }

  onPageHide() {
    this.flutterEntry?.onPageHide();
  }

  build() {
    Stack() {
      FlutterPage({ viewId: this.flutterView?.getId() })
    }
  }
}
