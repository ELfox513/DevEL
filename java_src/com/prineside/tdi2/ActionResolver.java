package com.prineside.tdi2;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.audio.AudioDevice;
import com.badlogic.gdx.pay.PurchaseManager;
import com.badlogic.gdx.pay.Transaction;
import com.badlogic.gdx.scenes.scene2d.utils.FocusListener;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.ObjectMap;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.MusicManager;
import com.prineside.tdi2.managers.PurchaseManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.actors.TextFieldXPlatform;
import com.prineside.tdi2.utils.IntPair;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.util.Iterator;
import net.bytebuddy.dynamic.loading.ClassLoadingStrategy;
import p153p7.InterfaceC5371d;
/* loaded from: classes2.dex */
public interface ActionResolver {

    /* loaded from: classes2.dex */
    public static abstract class ActionResolverAdapter implements ActionResolver {

        /* renamed from: a */
        public InitConfigManager f8402a;

        @Override // com.prineside.tdi2.ActionResolver
        public void addNotification(int i, String str, String str2, long j) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public boolean canShowRewardAd() {
            return false;
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void clearNotification(int i) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public boolean eligibleForFreeDoubleGain() {
            return false;
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void generateDeviceReport(Json json) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public IntPair getBestScreenResolution() {
            return null;
        }

        @Override // com.prineside.tdi2.ActionResolver
        public ClassLoadingStrategy getByteBuddyClassLoadingStrategy() {
            return null;
        }

        @Override // com.prineside.tdi2.ActionResolver
        public MusicManager getCachedMusicManager() {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void getMobilePasswordInput(Input.TextInputListener textInputListener, String str, String str2, String str3) {
            throw new RuntimeException("Only for mobile devices");
        }

        @Override // com.prineside.tdi2.ActionResolver
        public PurchaseManager getPurchaseManager() {
            return null;
        }

        @Override // com.prineside.tdi2.ActionResolver
        public int[] getScreenSafeAreaInsets() {
            return new int[4];
        }

        @Override // com.prineside.tdi2.ActionResolver
        public int getSecondsTillCanShowRewardAd() {
            return -1;
        }

        @Override // com.prineside.tdi2.ActionResolver
        public int getWindowsGraphicsScale() {
            return -1;
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void handleTextFieldFocus(FocusListener.FocusEvent focusEvent, TextFieldXPlatform textFieldXPlatform, boolean z) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void handleThreadExceptions(Thread thread) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public boolean hasGoogleAuth() {
            return false;
        }

        @Override // com.prineside.tdi2.ActionResolver
        public boolean hasNotifications() {
            return false;
        }

        @Override // com.prineside.tdi2.ActionResolver
        public boolean isAppModified() {
            return false;
        }

        @Override // com.prineside.tdi2.ActionResolver
        public boolean isSignedInWithGoogle() {
            return false;
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void logCurrencyReceived(String str, int i) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void logCurrencySpent(String str, String str2, int i) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void logCustomEvent(String str, String[] strArr) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void logIAP(Config.ProductId productId, Transaction transaction) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void logLogined(String str) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void logRewardedVideoViewed(PurchaseManager.RewardingAdsType rewardingAdsType) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void logSignedUp(String str) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public AudioDevice newAudioDevice(int i, boolean z) {
            return Gdx.audio.newAudioDevice(i, z);
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void onExit() {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void openHandbook() {
            Gdx.f38302net.openURI(Game.f8589i.settingsManager.getDynamicSetting(SettingsManager.DynamicSetting.WIKI_URL));
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void requestGoogleAuth(ObjectRetriever<String> objectRetriever) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void requestLogin() {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public boolean rewardAdsAvailable() {
            return false;
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void setFpsLimit(int i) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void showPersonalCenterOverlay() {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void showRewardAd(ObjectRetriever<Boolean> objectRetriever, PurchaseManager.RewardingAdsType rewardingAdsType) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void signOutGoogle() {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void unlockAchievement(AchievementType achievementType) {
        }

        @Override // com.prineside.tdi2.ActionResolver
        public InitConfigManager getInitConfigManager() {
            if (this.f8402a == null) {
                this.f8402a = new InitConfigManager();
            }
            return this.f8402a;
        }

        @Override // com.prineside.tdi2.ActionResolver
        public void openSupportPage() {
            Gdx.f38302net.openURI("https://prineside.com/support.html");
            Gdx.app.getClipboard().setContents(Config.FEEDBACK_EMAIL);
            Game game = Game.f8589i;
            game.uiManager.notifications.add("Contact us: sup.prineside@gmail.com", game.assetManager.getDrawable("icon-check"), MaterialColor.GREEN.P800, StaticSoundType.NOTIFICATION);
        }
    }

    /* loaded from: classes2.dex */
    public static class InitConfigManager {
        public static final String INIT_CONFIG_FILE = "i2-config.json";

        /* renamed from: a */
        public int[] f8403a;

        /* renamed from: b */
        public boolean f8404b;

        /* renamed from: c */
        public final void m22213c() {
            SettingsManager.InitConfig[] initConfigArr;
            this.f8404b = false;
            Json json = new Json(JsonWriter.OutputType.json);
            StringWriter stringWriter = new StringWriter();
            json.setWriter(stringWriter);
            json.writeObjectStart();
            int[] m22214a = m22214a();
            for (SettingsManager.InitConfig initConfig : SettingsManager.InitConfig.values) {
                int i = m22214a[initConfig.ordinal()];
                if (i != getDefault(initConfig)) {
                    json.writeValue(initConfig.name(), Integer.valueOf(i));
                }
            }
            json.writeObjectEnd();
            mo22044d(stringWriter.toString());
            Logger.log("ActionResolver", "saved init configs");
        }

        public int get(SettingsManager.InitConfig initConfig) {
            return m22214a()[initConfig.ordinal()];
        }

        public int getDefault(SettingsManager.InitConfig initConfig) {
            return 0;
        }

        public boolean isAvailable(SettingsManager.InitConfig initConfig) {
            return false;
        }

        /* renamed from: a */
        public final int[] m22214a() {
            if (this.f8403a == null) {
                SettingsManager.InitConfig[] initConfigArr = SettingsManager.InitConfig.values;
                int[] iArr = new int[initConfigArr.length];
                for (SettingsManager.InitConfig initConfig : initConfigArr) {
                    iArr[initConfig.ordinal()] = getDefault(initConfig);
                }
                JsonValue parse = new JsonReader().parse(mo22045b());
                if (parse != null) {
                    Iterator<JsonValue> iterator2 = parse.iterator2();
                    while (iterator2.hasNext()) {
                        JsonValue next = iterator2.next();
                        try {
                            iArr[SettingsManager.InitConfig.valueOf(next.name).ordinal()] = next.asInt();
                        } catch (Exception unused) {
                            Logger.error("ActionResolver", "unknown init config key or value is invalid: " + next.name);
                        }
                    }
                }
                this.f8403a = iArr;
            }
            return this.f8403a;
        }

        /* renamed from: b */
        public String mo22045b() {
            try {
                File file = new File(INIT_CONFIG_FILE);
                if (file.exists()) {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
                    StringBuilder sb = new StringBuilder();
                    for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                        sb.append(readLine);
                        sb.append("\n");
                    }
                    return sb.toString();
                }
                return "{}";
            } catch (Exception e) {
                Logger.error("ActionResolver", "loadConfigsJsonFromFile failed", e);
                return "{}";
            }
        }

        /* renamed from: d */
        public void mo22044d(String str) {
            try {
                FileWriter fileWriter = new FileWriter(new File(INIT_CONFIG_FILE));
                fileWriter.write(str);
                fileWriter.close();
            } catch (Exception e) {
                Logger.error("ActionResolver", "failed to save init configs", e);
            }
        }

        public void saveIfRequired() {
            if (this.f8404b) {
                m22213c();
            }
        }

        public void set(SettingsManager.InitConfig initConfig, int i) {
            if (m22214a()[initConfig.ordinal()] != i) {
                m22214a()[initConfig.ordinal()] = i;
                this.f8404b = true;
            }
        }
    }

    void addNotification(int i, String str, String str2, long j);

    boolean canShowRewardAd();

    void clearNotification(int i);

    boolean eligibleForFreeDoubleGain();

    void generateDeviceReport(Json json);

    IntPair getBestScreenResolution();

    ClassLoadingStrategy getByteBuddyClassLoadingStrategy();

    MusicManager getCachedMusicManager();

    ObjectMap<String, String> getDeviceInfo();

    InitConfigManager getInitConfigManager();

    void getMobilePasswordInput(Input.TextInputListener textInputListener, String str, String str2, String str3);

    InterfaceC5371d getOkJoySDK();

    com.badlogic.gdx.pay.PurchaseManager getPurchaseManager();

    int[] getScreenSafeAreaInsets();

    int getSecondsTillCanShowRewardAd();

    String getShortDeviceInfo();

    int getWindowsGraphicsScale();

    String glGetStringi(int i, int i2);

    void handleTextFieldFocus(FocusListener.FocusEvent focusEvent, TextFieldXPlatform textFieldXPlatform, boolean z);

    void handleThreadExceptions(Thread thread);

    boolean hasGoogleAuth();

    boolean hasNotifications();

    boolean isAppModified();

    boolean isSignedInWithGoogle();

    void logCurrencyReceived(String str, int i);

    void logCurrencySpent(String str, String str2, int i);

    void logCustomEvent(String str, String[] strArr);

    void logIAP(Config.ProductId productId, Transaction transaction);

    void logLogined(String str);

    void logRewardedVideoViewed(PurchaseManager.RewardingAdsType rewardingAdsType);

    void logSignedUp(String str);

    AudioDevice newAudioDevice(int i, boolean z);

    void onExit();

    void openHandbook();

    void openSupportPage();

    void requestGoogleAuth(ObjectRetriever<String> objectRetriever);

    void requestLogin();

    boolean rewardAdsAvailable();

    void setFpsLimit(int i);

    void showPersonalCenterOverlay();

    void showRewardAd(ObjectRetriever<Boolean> objectRetriever, PurchaseManager.RewardingAdsType rewardingAdsType);

    void signOutGoogle();

    void unlockAchievement(AchievementType achievementType);
}
