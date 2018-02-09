/**
 */
package in.evantob.CordovaTestExample;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaInterface;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CordovaWebView;
import org.apache.cordova.PluginResult;
import org.apache.cordova.PluginResult.Status;
import org.json.JSONObject;
import org.json.JSONArray;
import org.json.JSONException;

import android.util.Log;

import java.util.Date;

public class CordovaTestExample extends CordovaPlugin {
  private static final String TAG = "CordovaTestExample";

  public void initialize(CordovaInterface cordova, CordovaWebView webView) {
    super.initialize(cordova, webView);

    Log.d(TAG, "Initializing CordovaTestExample");
  }

  public boolean execute(String action, JSONArray args, final CallbackContext callbackContext) throws JSONException {
    if(action.equals("echo")) {
      String phrase = args.getString(0);

      final PluginResult result = new PluginResult(PluginResult.Status.OK, echo(phrase));
      callbackContext.sendPluginResult(result);
    }

    return true;
  }

  public String echo(String phrase) {
    Log.d(TAG, phrase);
    return phrase;
  }

}