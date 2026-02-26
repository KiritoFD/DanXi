import { BusinessError, pasteboard } from "@kit.BasicServicesKit";
import { abilityAccessCtrl } from "@kit.AbilityKit";
import FlutterManager from "../embedding/ohos/FlutterManager";
import Log from "./Log";

export class PasteboardUtils {
  private static TAG = "PasteboardUtils";

  static setCopyData(text: string) { // copy date to the ohos pasteboard
    const pasteData = pasteboard.createData(pasteboard.MIMETYPE_TEXT_PLAIN, text);
    const systemPasteboard: pasteboard.SystemPasteboard = pasteboard.getSystemPasteboard();
    try {
      systemPasteboard.setDataSync(pasteData);
    } catch (err) {
      Log.w(PasteboardUtils.TAG, "Failed to set PasteData. Cause: " + JSON.stringify(err));
    }
  }

  static getPasteDataAsync(): Promise<string> { // paste data from the ohos pasteboard
    return new Promise((resolve) => {
      let atManager = abilityAccessCtrl.createAtManager();
      // request the ohos paste operation authority
      atManager.requestPermissionsFromUser(FlutterManager.getInstance().getUIAbility().context,
        ['ohos.permission.READ_PASTEBOARD']).then((data) => {
        enum AuthResultStatus {
          NOT_CONFIGURED = -1,
          GRANTED = 0,
          INVALID_REQ = 2
        }

        const authResult: number = data.authResults[0];
        switch (authResult) {
          case AuthResultStatus.GRANTED: {
            let systemPasteboard: pasteboard.SystemPasteboard = pasteboard.getSystemPasteboard();
            systemPasteboard.getData().then(async (pasteData: pasteboard.PasteData) => {
              let pasteText: string = '';
              const recordCount: number = pasteData.getRecordCount();
              for (let i = 0; i < recordCount; i++) {
                const record = pasteData.getRecord(i);
                let text: string = '';
                if (typeof record.getValidTypes === 'function') {
                  // For api14 and above, click here. More formats are supported
                  text = await PasteboardUtils.getTargetTypesData(record);
                } else if (record.mimeType === pasteboard.MIMETYPE_TEXT_HTML) {
                  const htmlText: StyledString = await StyledString.fromHtml(record.htmlText);
                  text = htmlText.getString();
                } else if (record.mimeType === pasteboard.MIMETYPE_TEXT_PLAIN) {
                  text = record.plainText;
                }
                pasteText += text;
              }
              resolve(pasteText);
            }).catch((err: BusinessError) => {
              Log.e(PasteboardUtils.TAG, "Failed to get PasteData. Cause: " + JSON.stringify(err));
            });
            break;
          }
          case AuthResultStatus.NOT_CONFIGURED:
          case AuthResultStatus.INVALID_REQ:
          default: {
            Log.e(PasteboardUtils.TAG, "error code: " + authResult);
            break;
          }
        }
      }).catch((err: BusinessError) => {
        Log.e(PasteboardUtils.TAG, "Failed to request permissions from user. Cause: " + JSON.stringify(err));
      })
    });
  }
  static async getTargetTypesData(record: pasteboard.PasteDataRecord): Promise<string> {
    let targetTypes: string[] = [
      pasteboard.MIMETYPE_TEXT_PLAIN,
      pasteboard.MIMETYPE_TEXT_HTML
    ];
    let tmpTypes: string[] = record.getValidTypes(targetTypes);
    let str: string = '';
    for (let j = 0; j < tmpTypes.length; j++) {
      let value = '';
      try {
        value = await record.getData(tmpTypes[j]) as string;
      } catch (error) {
        Log.e(PasteboardUtils.TAG, "Failed to record.getData: " + JSON.stringify(error));
      }
      if (value) {
        if (tmpTypes[j] === pasteboard.MIMETYPE_TEXT_HTML) {
          try {
            const htmlText: StyledString = await StyledString.fromHtml(value);
            str = htmlText.getString();
          } catch (error) {
            Log.e(PasteboardUtils.TAG, "Failed to record.getData: " + JSON.stringify(error));
          }
        } else {
          str = value
        }
        break;
      }
    }
    return str;
  }
}