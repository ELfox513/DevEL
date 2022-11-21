package com.prineside.tdi2.managers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.shared.Dialog;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class SecretCodeManager extends Manager.ManagerAdapter {

    /* renamed from: a */
    public final Array<String> f10094a = new Array<>();

    /* loaded from: classes2.dex */
    public static class CodeValidationResult {
        public CodeValidationResultCode code;
        public Array<ItemStack> contents;
        public String message;
    }

    /* loaded from: classes2.dex */
    public enum CodeValidationResultCode {
        NOT_EXISTS,
        APPLIED,
        ALREADY_USED,
        PROCESSING,
        ERROR,
        GAME_BUILD_MISMATCH
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<SecretCodeManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public SecretCodeManager read() {
            return Game.f8589i.secretCodeManager;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public boolean isBuildCompatible(int i) {
        return 184 >= i && i >= 18;
    }

    /* renamed from: c */
    public final boolean m21494c(String str) {
        Array.ArrayIterator<String> it = this.f10094a.iterator();
        while (it.hasNext()) {
            if (it.next().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public final void reload() {
        this.f10094a.clear();
        String str = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS).get("appliedSecretCodes", null);
        if (str != null) {
            try {
                Iterator<JsonValue> iterator2 = new JsonReader().parse(str).iterator2();
                while (iterator2.hasNext()) {
                    this.f10094a.add(iterator2.next().asString());
                }
            } catch (Exception e) {
                Logger.error("SecretCodeManager", "failed to parse applied codes", e);
            }
        }
    }

    public final void save() {
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeArrayStart();
        int i = 0;
        while (true) {
            Array<String> array = this.f10094a;
            if (i < array.size) {
                json.writeValue(array.get(i));
                i++;
            } else {
                json.writeArrayEnd();
                preferencesManager.set("appliedSecretCodes", stringWriter.toString());
                preferencesManager.flush();
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.SecretCodeManager.1
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                SecretCodeManager.this.reload();
            }
        });
        reload();
    }

    public void applyCode(String str) {
        if (Config.isHeadless()) {
            return;
        }
        if (str.equals("unlocklocales")) {
            Game.f8589i.settingsManager.setCustomValue(SettingsManager.CustomValueType.UNLOCK_ALL_LOCALES, 1.0d);
            Game.f8589i.uiManager.dialog.showAlert("All locales unlocked");
        } else if (!str.matches("[A-Za-z0-9]+")) {
            Game game = Game.f8589i;
            game.uiManager.dialog.showAlert(game.localeManager.i18n.get("code_not_exists"));
        } else {
            final String lowerCase = str.toLowerCase(Locale.ENGLISH);
            try {
                if (m21494c(lowerCase)) {
                    Game game2 = Game.f8589i;
                    game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("code_already_used"));
                } else {
                    try {
                        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                        httpRequest.setUrl(Config.SECRET_CODE_APPLICATION_URL);
                        HashMap hashMap = new HashMap();
                        hashMap.put("code", lowerCase);
                        hashMap.put("playerid", Game.f8589i.authManager.getPlayerId());
                        hashMap.put("locale", Game.f8589i.localeManager.getLocale());
                        httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                        Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.managers.SecretCodeManager.2
                            @Override // com.badlogic.gdx.Net.HttpResponseListener
                            public void cancelled() {
                                Logger.log("SecretCodeManager", "Timeout while redeeming secret code");
                                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.SecretCodeManager.2.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Game.f8589i.uiManager.dialog.showAlert("Error, please try again later");
                                    }
                                });
                            }

                            @Override // com.badlogic.gdx.Net.HttpResponseListener
                            public void failed(Throwable th) {
                                Logger.log("SecretCodeManager", "Error redeeming secret code: " + th.getMessage());
                                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.SecretCodeManager.2.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Game.f8589i.uiManager.dialog.showAlert("Error, please try again later");
                                    }
                                });
                            }

                            @Override // com.badlogic.gdx.Net.HttpResponseListener
                            public void handleHttpResponse(Net.HttpResponse httpResponse) {
                                try {
                                    final String resultAsString = httpResponse.getResultAsString();
                                    Logger.log("SecretCodeManager", resultAsString);
                                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.SecretCodeManager.2.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            final JsonValue parse = new JsonReader().parse(resultAsString);
                                            if (parse.getString("status").equals("success")) {
                                                if (SecretCodeManager.this.isBuildCompatible(parse.getInt("build"))) {
                                                    C18712 c18712 = C18712.this;
                                                    SecretCodeManager.this.m21493d(lowerCase);
                                                    JsonValue jsonValue = parse.get("contents");
                                                    Array array = new Array();
                                                    Iterator<JsonValue> iterator2 = jsonValue.iterator2();
                                                    while (iterator2.hasNext()) {
                                                        ItemStack fromJson = ItemStack.fromJson(iterator2.next());
                                                        Game.f8589i.progressManager.addItems(fromJson);
                                                        array.add(fromJson);
                                                    }
                                                    Array<? extends ItemStack> array2 = new Array<>();
                                                    int i = 0;
                                                    while (true) {
                                                        boolean z = true;
                                                        if (i < array.size) {
                                                            ItemStack itemStack = (ItemStack) array.get(i);
                                                            int i2 = 0;
                                                            while (true) {
                                                                if (i2 < array2.size) {
                                                                    if (array2.get(i2).getItem().sameAs(itemStack.getItem())) {
                                                                        array2.get(i2).setCount(PMath.addWithoutOverflow(array2.get(i2).getCount(), itemStack.getCount()));
                                                                        break;
                                                                    }
                                                                    i2++;
                                                                } else {
                                                                    z = false;
                                                                    break;
                                                                }
                                                            }
                                                            if (!z) {
                                                                array2.add(new ItemStack(itemStack));
                                                            }
                                                            i++;
                                                        } else {
                                                            IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.SECRET_CODE, Game.getTimestampSeconds());
                                                            issuedItems.items.addAll(array2);
                                                            issuedItems.secretCode = lowerCase;
                                                            issuedItems.secretCodeDescription = parse.getString("message", "Success!");
                                                            Game.f8589i.progressManager.addIssuedPrizes(issuedItems, true);
                                                            Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                                                            Game.f8589i.actionResolver.logCustomEvent("secret_code", new String[]{"code", lowerCase});
                                                            return;
                                                        }
                                                    }
                                                } else {
                                                    Game game3 = Game.f8589i;
                                                    game3.uiManager.dialog.showAlert(game3.localeManager.i18n.get("code_is_deprecated"));
                                                }
                                            } else {
                                                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.SecretCodeManager.2.1.1
                                                    @Override // java.lang.Runnable
                                                    public void run() {
                                                        String string = parse.getString("message", "Unknown error");
                                                        Dialog dialog = Game.f8589i.uiManager.dialog;
                                                        dialog.showAlert(Game.f8589i.localeManager.i18n.get("error") + ": " + string);
                                                    }
                                                });
                                            }
                                        }
                                    });
                                } catch (Exception e) {
                                    Logger.error("SecretCodeManager", "Exception: " + e.getMessage(), e);
                                }
                            }
                        });
                    } catch (Exception e) {
                        Logger.error("SecretCodeManager", "Failed", e);
                        Game.f8589i.uiManager.dialog.showAlert("Error, please try again later");
                    }
                }
            } catch (Exception unused) {
                Game game3 = Game.f8589i;
                game3.uiManager.dialog.showAlert(game3.localeManager.i18n.get("code_not_exists"));
            }
        }
    }

    /* renamed from: d */
    public final void m21493d(String str) {
        if (m21494c(str)) {
            return;
        }
        this.f10094a.add(str.toLowerCase(Locale.ENGLISH));
        save();
    }
}
