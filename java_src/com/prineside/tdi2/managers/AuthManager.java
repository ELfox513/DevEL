package com.prineside.tdi2.managers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.Timer;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.screens.AccountScreen;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.TextureRegionConfig;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Iterator;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class AuthManager extends Manager.ManagerWithListeners<AuthManagerListener> {
    public static final ObjectRetriever<InUpSignInResult> AUTO_SIGN_UP_HANDLER = new ObjectRetriever<InUpSignInResult>() { // from class: com.prineside.tdi2.managers.AuthManager.1
        @Override // com.prineside.tdi2.utils.ObjectRetriever
        public void retrieved(InUpSignInResult inUpSignInResult) {
            if (inUpSignInResult == InUpSignInResult.OTHER_ERROR) {
                Game game = Game.f8589i;
                game.uiManager.notifications.add(game.localeManager.i18n.get("unknown_error"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
            } else if (inUpSignInResult == InUpSignInResult.SUCCESS_NEW_ACCOUNT) {
                Logger.log("AuthManager", "new auto-created account, showing overlay");
                Game.f8589i.screenManager.goToAccountScreen(AccountScreen.ScreenType.AUTO_SIGN_UP_DETAILS);
            }
        }
    };

    /* renamed from: C */
    public NewsResponse f9591C;

    /* renamed from: D */
    public boolean f9592D;
    public float bonusLevelXpCoeff;
    public String bonusXpLevel;
    public int bonusXpRemaining;
    public int currentLevelXp;

    /* renamed from: d */
    public String f9597d;

    /* renamed from: k */
    public boolean f9598k;
    public int lastStateUpdateTimestamp;
    public boolean loadedAnyStateFromServer;
    public int maxProfileLevel;
    public int nextLevelXp;
    public int nextXpRefreshTimestamp;
    public boolean ofMeritPrestigeAvailable;

    /* renamed from: p */
    public String f9599p;
    public float playedLevelXpCoeff;
    public int profileLevel;

    /* renamed from: q */
    public String f9600q;

    /* renamed from: r */
    public String f9601r;
    public int regularXpRemaining;

    /* renamed from: s */
    public String f9602s;

    /* renamed from: t */
    public String f9603t;
    public int tempXp;

    /* renamed from: u */
    public long f9604u;

    /* renamed from: v */
    public String f9605v;

    /* renamed from: w */
    public boolean f9606w;

    /* renamed from: x */
    public boolean f9607x;

    /* renamed from: z */
    public int f9609z;

    /* renamed from: b */
    public SignInStatus f9596b = SignInStatus.NOT_SIGNED_IN;
    public XpStatus xpStatus = XpStatus.NORMAL;
    public Array<String> xpPlayedLevels = new Array<>(String.class);
    public Array<String> localXpPlayedLevels = new Array<>(String.class);

    /* renamed from: y */
    public int f9608y = -1;

    /* renamed from: A */
    public boolean f9589A = false;

    /* renamed from: B */
    public Array<ObjectRetriever<NewsResponse>> f9590B = new Array<>();

    /* renamed from: E */
    public float f9593E = 0.0f;
    public boolean gameUpdateNotificationShown = false;

    /* renamed from: F */
    public HttpQueuedRequest f9594F = null;

    /* renamed from: G */
    public Array<HttpQueuedRequest> f9595G = new Array<>(true, 1, HttpQueuedRequest.class);

    /* renamed from: com.prineside.tdi2.managers.AuthManager$21 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C173521 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9634a;

        static {
            int[] iArr = new int[SignInStatus.values().length];
            f9634a = iArr;
            try {
                iArr[SignInStatus.SIGNED_IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9634a[SignInStatus.SIGNED_IN_OFFLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface AuthManagerListener {

        /* loaded from: classes2.dex */
        public static abstract class AuthManagerListenerAdapter implements AuthManagerListener {
            @Override // com.prineside.tdi2.managers.AuthManager.AuthManagerListener
            public void autoSaveModeChanged() {
            }

            @Override // com.prineside.tdi2.managers.AuthManager.AuthManagerListener
            public void signInStatusUpdated() {
            }

            @Override // com.prineside.tdi2.managers.AuthManager.AuthManagerListener
            public void stateUpdated() {
            }
        }

        void autoSaveModeChanged();

        void signInStatusUpdated();

        void stateUpdated();
    }

    /* loaded from: classes2.dex */
    public enum InUpSignInResult {
        SUCCESS,
        SUCCESS_NEW_ACCOUNT,
        OTHER_ERROR
    }

    /* loaded from: classes2.dex */
    public static class NewsResponse {
        public String body;
        public int cachedAt;

        /* renamed from: id */
        public int f9667id;
        public int lastVersion;
        public int networkRequiredVersion;
        public int seasonPlayerCount;
        public int seasonPosition;
        public String title;
        public int seasonNumber = 1;
        public Array<IssuedItems> itemsFromServer = new Array<>(IssuedItems.class);
    }

    /* loaded from: classes2.dex */
    public enum PasswordResetResult {
        USER_NOT_FOUND,
        SUCCESS,
        OTHER_ERROR
    }

    /* loaded from: classes2.dex */
    public class ReceivedIssuedItemsResponse {
        public Array<IssuedItems> items = new Array<>(IssuedItems.class);

        public ReceivedIssuedItemsResponse() {
        }
    }

    /* loaded from: classes2.dex */
    public enum SaveGameResult {
        MAX_SLOTS_USED,
        INVALID_SLOT_ID,
        SUCCESS,
        OTHER_ERROR
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<AuthManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public AuthManager read() {
            return Game.f8589i.authManager;
        }
    }

    /* loaded from: classes2.dex */
    public enum SignInResult {
        USER_NOT_FOUND,
        WRONG_PASSWORD,
        SUCCESS,
        PASSWORD_NOT_SET,
        OTHER_ERROR
    }

    /* loaded from: classes2.dex */
    public enum SignInStatus {
        NOT_SIGNED_IN,
        SIGNED_IN,
        SIGNED_IN_OFFLINE
    }

    /* loaded from: classes2.dex */
    public enum SignUpResult {
        INVALID_LOGIN,
        INVALID_PASSWORD,
        INVALID_EMAIL,
        TOO_MANY_ATTEMPTS,
        NICKNAME_ALREADY_EXISTS,
        EMAIL_ALREADY_EXISTS,
        SUCCESS,
        OTHER_ERROR
    }

    /* loaded from: classes2.dex */
    public enum XpStatus {
        BONUS,
        NORMAL,
        REDUCED;
        
        public static final XpStatus[] values = values();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public /* synthetic */ void m21701M(final String str, final Runnable runnable, boolean z, String str2) {
        if (z) {
            try {
                if (m21703K()) {
                    Logger.log("AuthManager", str2);
                }
                JsonValue parse = new JsonReader().parse(str2);
                if (parse.getString("status").equals("success")) {
                    final JsonValue jsonValue = parse.get("sessionData");
                    m21704J(jsonValue.getString("playerid"), new Runnable() { // from class: com.prineside.tdi2.managers.AuthManager.9
                        @Override // java.lang.Runnable
                        public void run() {
                            AuthManager.this.lastStateUpdateTimestamp = Game.getTimestampSeconds();
                            AuthManager.this.f9606w = jsonValue.getBoolean("hasPfp", false);
                            AuthManager.this.f9607x = jsonValue.getBoolean("passwordSet", true);
                            AuthManager.this.f9605v = jsonValue.getString("nickname");
                            AuthManager.this.f9603t = jsonValue.getString("emailHint", "");
                            AuthManager.this.f9604u = Game.getTimestampMillis();
                            AuthManager.this.f9600q = jsonValue.getString("playerid");
                            AuthManager.this.f9601r = jsonValue.getString("inviteCode", null);
                            AuthManager.this.f9602s = jsonValue.getString("invitedBy", null);
                            JsonValue jsonValue2 = jsonValue.get("xp");
                            if (jsonValue2 != null) {
                                AuthManager.this.currentLevelXp = jsonValue2.get("current").getInt("level-xp");
                                AuthManager.this.bonusXpRemaining = jsonValue2.getInt("bonusXpRemaining", 0);
                                AuthManager.this.regularXpRemaining = jsonValue2.getInt("regularXpRemaining", 0);
                                AuthManager.this.nextXpRefreshTimestamp = jsonValue2.getInt("nextXpRefresh", Game.getTimestampSeconds() + 432000);
                                AuthManager.this.tempXp = jsonValue2.getInt("temp");
                                AuthManager.this.ofMeritPrestigeAvailable = jsonValue2.get("current").getBoolean("prestige-available", false);
                                AuthManager.this.nextLevelXp = jsonValue2.get("current").getInt("next-level");
                                AuthManager.this.profileLevel = jsonValue2.get("current").getInt("level");
                                AuthManager.this.maxProfileLevel = jsonValue2.get("current").getInt("maxLevel");
                                AuthManager.this.playedLevelXpCoeff = jsonValue2.get("dailyXp").getFloat("playedLevelXpCoeff");
                                AuthManager.this.bonusLevelXpCoeff = jsonValue2.get("dailyXp").getFloat("bonusLevelXpCoeff");
                                AuthManager.this.bonusXpLevel = jsonValue2.get("dailyXp").getString("bonusLevel");
                                AuthManager.this.xpPlayedLevels.clear();
                                Iterator<JsonValue> iterator2 = jsonValue2.get("dailyXp").get("playedToday").iterator2();
                                while (iterator2.hasNext()) {
                                    AuthManager.this.xpPlayedLevels.add(iterator2.next().asString());
                                }
                                AuthManager.this.xpStatus = XpStatus.NORMAL;
                                if (jsonValue2.getString("status").equals("bonus")) {
                                    AuthManager.this.xpStatus = XpStatus.BONUS;
                                } else if (jsonValue2.getString("status").equals("reduced")) {
                                    AuthManager.this.xpStatus = XpStatus.REDUCED;
                                }
                            }
                            String string = jsonValue.getString("newSession", null);
                            if (string == null) {
                                AuthManager.this.f9599p = str;
                            } else {
                                if (AuthManager.this.m21703K()) {
                                    Logger.log("AuthManager", "session refreshed");
                                }
                                AuthManager.this.f9599p = string;
                            }
                            AuthManager authManager = AuthManager.this;
                            if (authManager.tempXp == 0) {
                                authManager.localXpPlayedLevels.clear();
                            }
                            AuthManager.this.save();
                            AuthManager.this.m21695S(SignInStatus.SIGNED_IN);
                            AuthManager.this.loadedAnyStateFromServer = true;
                            Runnable runnable2 = runnable;
                            if (runnable2 != null) {
                                runnable2.run();
                            }
                            Timer.schedule(new Timer.Task() { // from class: com.prineside.tdi2.managers.AuthManager.9.1
                                @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                                public void run() {
                                    AuthManager.this.m21705I();
                                }
                            }, 2.0f);
                            AuthManager.this.f8742a.begin();
                            for (int i = 0; i < AuthManager.this.f8742a.size; i++) {
                                ((AuthManagerListener) AuthManager.this.f8742a.get(i)).stateUpdated();
                            }
                            AuthManager.this.f8742a.end();
                        }
                    });
                    return;
                }
                Logger.error("AuthManager", "can't load session: " + str2);
                m21695S(SignInStatus.NOT_SIGNED_IN);
                this.loadedAnyStateFromServer = true;
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            } catch (Exception e) {
                Logger.error("AuthManager", "Exception: " + e.getMessage(), e);
                fallBackToOfflineCache();
                this.loadedAnyStateFromServer = true;
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
        }
        Logger.error("AuthManager", "Error continuing session");
        fallBackToOfflineCache();
        this.loadedAnyStateFromServer = true;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N */
    public /* synthetic */ void m21700N() {
        loadStateFromServer(null, null);
    }

    /* renamed from: K */
    public final boolean m21703K() {
        SettingsManager settingsManager;
        Game game = Game.f8589i;
        return game != null && (settingsManager = game.settingsManager) != null && settingsManager.isInDebugMode() && Game.f8589i.settingsManager.isInDebugDetailedMode();
    }

    @Override // com.prineside.tdi2.Manager
    public void clearPools() {
    }

    public int getCloudSaveSlotId() {
        return this.f9608y;
    }

    public String getEmailHint() {
        return this.f9603t;
    }

    public String getInviteCode() {
        return this.f9601r;
    }

    public String getInvitedById() {
        return this.f9602s;
    }

    public Array<TextureRegionConfig> getProfileLevelTextures(int i) {
        if (i < 1) {
            i = 1;
        }
        Array<TextureRegionConfig> array = new Array<>(true, 1, TextureRegionConfig.class);
        if (i <= 30) {
            AssetManager assetManager = Game.f8589i.assetManager;
            array.add(new TextureRegionConfig(assetManager.getTextureRegion("player-level-" + i)));
        } else {
            array.add(new TextureRegionConfig(Game.f8589i.assetManager.getTextureRegion("player-level-max")));
            String valueOf = String.valueOf(i);
            float length = ((64 - (valueOf.length() * 12)) * 0.5f) - 2.0f;
            for (int i2 = 0; i2 < valueOf.length(); i2++) {
                char charAt = valueOf.charAt(i2);
                AssetManager assetManager2 = Game.f8589i.assetManager;
                array.add(new TextureRegionConfig(assetManager2.getTextureRegion("player-level-digit-" + charAt), ((i2 * 12.0f) + length) * 0.015625f, 0.296875f, 0.125f, 0.171875f, 0.25f, 0.34375f));
            }
        }
        return array;
    }

    public String getSessionId() {
        return this.f9599p;
    }

    public SignInStatus getSignInStatus() {
        return this.f9596b;
    }

    public boolean hasUnsavedProgressForCloud() {
        return this.f9589A;
    }

    public boolean isAutoSavesEnabled() {
        return this.f9598k && !Game.f8589i.progressManager.isDeveloperModeEnabled();
    }

    public boolean isPasswordSet() {
        return this.f9607x;
    }

    public boolean isSignedIn() {
        SignInStatus signInStatus = this.f9596b;
        return signInStatus == SignInStatus.SIGNED_IN || signInStatus == SignInStatus.SIGNED_IN_OFFLINE;
    }

    public void onSteamAuthFinished() {
    }

    public void reloadPlayerId() {
        this.f9600q = null;
    }

    /* loaded from: classes2.dex */
    public static class HttpQueuedRequest {

        /* renamed from: a */
        public String f9663a;

        /* renamed from: b */
        public Net.HttpRequest f9664b;

        /* renamed from: c */
        public Listener f9665c;

        /* loaded from: classes2.dex */
        public interface Listener {
            void finished(boolean z, String str);
        }

        public HttpQueuedRequest(String str, Net.HttpRequest httpRequest, Listener listener) {
            this.f9663a = str;
            this.f9664b = httpRequest;
            this.f9665c = listener;
        }
    }

    public AuthManager() {
        fallBackToOfflineCache();
    }

    /* renamed from: L */
    public static /* synthetic */ void m21702L(boolean z, String str) {
        if (z) {
            Logger.log("AuthManager", "progress backup: response: " + str);
            return;
        }
        Logger.error("AuthManager", "progress backup: failed");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O */
    public /* synthetic */ void m21699O(boolean z, String str) {
        if (z) {
            if (m21703K()) {
                Logger.log("AuthManager", "Response: " + str + "");
            }
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.e
                @Override // java.lang.Runnable
                public final void run() {
                    AuthManager.this.m21700N();
                }
            });
            return;
        }
        Logger.error("AuthManager", "Failed to get of merit badge");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P */
    public /* synthetic */ void m21698P(final ObjectRetriever objectRetriever, boolean z, String str) {
        if (z) {
            try {
                if (m21703K()) {
                    Logger.log("AuthManager", "Response: " + str + "");
                }
                JsonValue parse = new JsonReader().parse(str);
                if (parse.getString("status").equals("success")) {
                    Game.f8589i.actionResolver.logSignedUp("password");
                    loadStateFromServer(parse.getString("sessionid"), new Runnable() { // from class: com.prineside.tdi2.managers.AuthManager.18
                        @Override // java.lang.Runnable
                        public void run() {
                            AuthManager.this.setAutoSavesEnabled(true);
                            ObjectRetriever objectRetriever2 = objectRetriever;
                            if (objectRetriever2 != null) {
                                objectRetriever2.retrieved(SignUpResult.SUCCESS);
                            }
                        }
                    });
                    return;
                }
                Logger.error("AuthManager", "failed to sign up: " + str);
                signOut();
                if (objectRetriever != null) {
                    try {
                        objectRetriever.retrieved(SignUpResult.valueOf(parse.getString("signUpResult")));
                        return;
                    } catch (Exception unused) {
                        objectRetriever.retrieved(SignUpResult.OTHER_ERROR);
                        return;
                    }
                }
                return;
            } catch (Exception e) {
                Logger.error("AuthManager", "Failed to parse response", e);
                signOut();
                objectRetriever.retrieved(SignUpResult.OTHER_ERROR);
                return;
            }
        }
        Logger.error("AuthManager", "Failed to sign up");
        signOut();
        objectRetriever.retrieved(SignUpResult.OTHER_ERROR);
    }

    /* renamed from: G */
    public final void m21707G() {
        Game.f8589i.assertInMainThread();
        try {
            HttpQueuedRequest httpQueuedRequest = this.f9594F;
            if (httpQueuedRequest != null) {
                Gdx.f38302net.cancelHttpRequest(httpQueuedRequest.f9664b);
                this.f9594F = null;
            }
            this.f9595G.clear();
        } catch (Exception e) {
            Logger.error("AuthManager", "failed to cancel all requests", e);
        }
    }

    /* renamed from: H */
    public final void m21706H() {
        Game.f8589i.assertInMainThread();
        if (!Game.f8589i.progressManager.existsAnyProgress()) {
            getCloudSavedGamesList(new ObjectRetriever<JsonValue>() { // from class: com.prineside.tdi2.managers.AuthManager.4
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public void retrieved(JsonValue jsonValue) {
                    if (jsonValue == null) {
                        return;
                    }
                    int i = 0;
                    Iterator<JsonValue> iterator2 = jsonValue.iterator2();
                    final int i2 = -1;
                    while (iterator2.hasNext()) {
                        JsonValue next = iterator2.next();
                        int i3 = next.getInt("slotId");
                        int i4 = next.getInt("slotTimestamp");
                        if (i4 > i) {
                            i = i4;
                            i2 = i3;
                        }
                    }
                    if (i2 != -1) {
                        Game game = Game.f8589i;
                        game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("load_from_cloud_confirm"), new Runnable() { // from class: com.prineside.tdi2.managers.AuthManager.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AuthManager.this.loadSavedGameFromServer(i2);
                            }
                        });
                    }
                }
            });
        }
    }

    /* renamed from: J */
    public final void m21704J(String str, Runnable runnable) {
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        String str2 = preferencesManager.get("authProgressOwnerId", null);
        if (str2 != null && !str2.equals(str)) {
            Logger.error("AuthManager", "owner id: " + str2);
            Game.f8589i.uiManager.dialog.showAlert(Game.f8589i.localeManager.i18n.format("current_progress_owner_mismatch_alert", preferencesManager.get("authProgressOwnerNickname", str2)));
            return;
        }
        Logger.log("AuthManager", "preferences owner confirmed: " + str2);
        runnable.run();
    }

    /* renamed from: Q */
    public final void m21697Q() {
        this.f9608y = -1;
        this.f9609z = 0;
        this.f9598k = false;
        this.f9589A = false;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        try {
            String str = preferencesManager.get("cloudSaveSlot", null);
            if (str != null) {
                JsonValue parse = new JsonReader().parse(str);
                this.f9608y = parse.getInt("id");
                this.f9609z = parse.getInt("timestamp");
            }
            this.f9598k = Boolean.parseBoolean(preferencesManager.get("authAutoSaves", "false"));
            this.f9589A = Boolean.parseBoolean(preferencesManager.get("hasUnsavedProgressForCloud", "false"));
        } catch (Exception e) {
            Logger.error("AuthManager", e.getMessage(), e);
        }
        loadStateFromServer(null, null);
    }

    /* renamed from: R */
    public final void m21696R(int i, int i2) {
        Game.f8589i.assertInMainThread();
        this.f9608y = i;
        this.f9609z = i2;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeObjectStart();
        json.writeValue("id", Integer.valueOf(i));
        json.writeValue("timestamp", Integer.valueOf(i2));
        json.writeObjectEnd();
        preferencesManager.set("cloudSaveSlot", stringWriter.toString());
        preferencesManager.flush();
    }

    /* renamed from: S */
    public final void m21695S(SignInStatus signInStatus) {
        DelayedRemovalArray<T> delayedRemovalArray;
        String str;
        Game.f8589i.assertInMainThread();
        SignInStatus signInStatus2 = this.f9596b;
        this.f9596b = signInStatus;
        if (signInStatus == SignInStatus.SIGNED_IN) {
            m21693U();
        }
        if (signInStatus2 == signInStatus) {
            return;
        }
        if (m21703K()) {
            Logger.log("AuthManager", "signIn status: " + String.valueOf(signInStatus));
        }
        this.f8742a.begin();
        int i = 0;
        while (true) {
            delayedRemovalArray = this.f8742a;
            if (i >= delayedRemovalArray.size) {
                break;
            }
            ((AuthManagerListener) delayedRemovalArray.get(i)).signInStatusUpdated();
            i++;
        }
        delayedRemovalArray.end();
        UiManager uiManager = Game.f8589i.uiManager;
        if (uiManager != null && uiManager.notifications != null) {
            int i2 = C173521.f9634a[signInStatus.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    str = Game.f8589i.localeManager.i18n.get("not_signed_in");
                } else {
                    str = Game.f8589i.localeManager.i18n.get("signed_in_offline_as") + " " + getNickname();
                }
            } else {
                str = Game.f8589i.localeManager.i18n.get("signed_in_online_as") + " " + getNickname();
            }
            Game game = Game.f8589i;
            game.uiManager.notifications.add(str, game.assetManager.getDrawable("icon-user"), null, StaticSoundType.NOTIFICATION);
        }
    }

    /* renamed from: T */
    public final void m21694T() {
        Game.f8589i.assertInMainThread();
        if (this.f9595G.size > 0) {
            HttpQueuedRequest httpQueuedRequest = this.f9594F;
            if (httpQueuedRequest != null) {
                Gdx.f38302net.cancelHttpRequest(httpQueuedRequest.f9664b);
            }
            this.f9594F = this.f9595G.removeIndex(0);
            if (m21703K()) {
                Logger.log("AuthManager", "Net: starting request: " + this.f9594F.f9663a);
            }
            final HttpQueuedRequest httpQueuedRequest2 = this.f9594F;
            Gdx.f38302net.sendHttpRequest(httpQueuedRequest2.f9664b, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.managers.AuthManager.3
                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void cancelled() {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.AuthManager.3.3
                        @Override // java.lang.Runnable
                        public void run() {
                            Logger.error("AuthManager", "Net: canceled: " + httpQueuedRequest2.f9663a);
                            httpQueuedRequest2.f9665c.finished(false, null);
                            AuthManager.this.f9594F = null;
                            AuthManager.this.m21694T();
                        }
                    });
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void failed(final Throwable th) {
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.AuthManager.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            Logger.error("AuthManager", "Net: failed: " + AuthManager.this.f9594F.f9663a, th);
                            httpQueuedRequest2.f9665c.finished(false, null);
                            AuthManager.this.f9594F = null;
                            AuthManager.this.m21694T();
                        }
                    });
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void handleHttpResponse(Net.HttpResponse httpResponse) {
                    final String resultAsString = httpResponse.getResultAsString();
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.AuthManager.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (AuthManager.this.m21703K()) {
                                Logger.log("AuthManager", "Net: success: " + httpQueuedRequest2.f9663a + ", " + resultAsString);
                            }
                            httpQueuedRequest2.f9665c.finished(true, resultAsString);
                            AuthManager.this.f9594F = null;
                            AuthManager.this.m21694T();
                        }
                    });
                }
            });
        }
    }

    /* renamed from: U */
    public final void m21693U() {
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        String str = preferencesManager.get("authProgressOwnerId", null);
        if (str != null && str.length() == getPlayerId().length()) {
            Logger.log("AuthManager", "owner id not changed: " + getPlayerId());
            return;
        }
        preferencesManager.set("authProgressOwnerId", getPlayerId());
        preferencesManager.set("authProgressOwnerNickname", getNickname());
        preferencesManager.flush();
        Logger.log("AuthManager", "owner id saved in preferences: " + getPlayerId());
    }

    public boolean anyRequestRunning() {
        Game.f8589i.assertInMainThread();
        if (this.f9594F == null && this.f9595G.size == 0) {
            return false;
        }
        return true;
    }

    public void backupProgressToServer() {
        try {
            Game.f8589i.assertInMainThread();
            if (this.f9596b != SignInStatus.SIGNED_IN) {
                Logger.log("AuthManager", "progress backup: canceled, not signed in");
            }
            if (Game.f8589i.progressManager.isDeveloperModeEnabled()) {
                Logger.log("AuthManager", "progress backup: canceled, dev mode");
            } else if (Config.isHeadless()) {
            } else {
                if (Game.f8589i.preferencesManager.isTemporarySettingsApplied()) {
                    Logger.log("AuthManager", "progress backup: canceled, temp settings");
                } else if (Game.f8589i.progressManager.getAllItems().size == 0) {
                    Logger.log("AuthManager", "progress backup: canceled, no items");
                } else {
                    if (!Game.f8589i.actionResolver.isAppModified() && !Config.isModdingMode()) {
                        Game.f8589i.settingsManager.saveIfRequired();
                        Game.f8589i.progressManager.saveIfRequired();
                        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                        httpRequest.setUrl(Config.AUTH_BACKUP_PROGRESS_URL);
                        HashMap hashMap = new HashMap();
                        hashMap.put("sessionid", String.valueOf(this.f9599p));
                        hashMap.put("gameStartHash", Game.f8589i.settingsManager.getGameStartHash());
                        hashMap.put("progress", Game.f8589i.preferencesManager.saveSnapshotAsString(new Array<>(Config.PREFERENCES_NAMES)));
                        httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                        queueRequest(new HttpQueuedRequest("backupProgressToServer", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.d
                            @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                            public final void finished(boolean z, String str) {
                                AuthManager.m21702L(z, str);
                            }
                        }));
                        return;
                    }
                    Logger.log("AuthManager", "progress backup: canceled, modified game");
                }
            }
        } catch (Exception e) {
            Logger.error("AuthManager", "backupProgressToServer failed", e);
        }
    }

    public void fallBackToOfflineCache() {
        Game.f8589i.assertInMainThread();
        String str = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS).get("authSession", null);
        if (str != null) {
            try {
                JsonValue parse = new JsonReader().parse(str);
                this.f9599p = parse.getString("id");
                this.f9605v = parse.getString("nickname");
                this.f9604u = parse.getLong("updateTimestamp");
                this.f9600q = parse.getString("playerId");
                this.f9601r = parse.getString("inviteCode", null);
                this.f9602s = parse.getString("invitedBy", null);
                this.f9607x = true;
                this.f9603t = "";
                this.xpStatus = XpStatus.values[parse.getInt("xpStatus", XpStatus.NORMAL.ordinal())];
                this.currentLevelXp = parse.getInt("currentLevelXp", 0);
                this.bonusXpRemaining = parse.getInt("bonusXpRemaining", 0);
                this.regularXpRemaining = parse.getInt("regularXpRemaining", 0);
                this.nextXpRefreshTimestamp = parse.getInt("nextXpRefresh", Game.getTimestampSeconds() + 432000);
                this.tempXp = parse.getInt("tempXp", 0);
                this.ofMeritPrestigeAvailable = false;
                this.nextLevelXp = parse.getInt("nextLevelXp", CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
                this.profileLevel = parse.getInt("profileLevel", 1);
                this.maxProfileLevel = parse.getInt("maxProfileLevel", 30);
                this.playedLevelXpCoeff = parse.getFloat("playedLevelXpCoeff", 0.5f);
                this.bonusLevelXpCoeff = parse.getFloat("bonusLevelXpCoeff", 1.5f);
                this.bonusXpLevel = parse.getString("bonusXpLevel", null);
                if (parse.get("xpPlayedLevels") != null) {
                    Iterator<JsonValue> iterator2 = parse.get("xpPlayedLevels").iterator2();
                    while (iterator2.hasNext()) {
                        this.xpPlayedLevels.add(iterator2.next().asString());
                    }
                }
                m21695S(SignInStatus.SIGNED_IN_OFFLINE);
                if (m21703K()) {
                    Logger.log("AuthManager", "offline mode");
                }
            } catch (Exception e) {
                Logger.error("AuthManager", "failed to parse cached authSession", e);
                signOut();
            }
        }
    }

    public TextureRegion getAvatar(int i) {
        if (i != 32 && i != 64 && i != 128) {
            i = 64;
        }
        SignInStatus signInStatus = this.f9596b;
        if ((signInStatus == SignInStatus.SIGNED_IN || signInStatus == SignInStatus.SIGNED_IN_OFFLINE) && this.f9606w && this.f9600q != null) {
            AssetManager assetManager = Game.f8589i.assetManager;
            return assetManager.loadWebTexture(Config.AVATAR_WEB_TEXTURES_URL + this.f9600q + "-" + i + ".png", true);
        }
        return Game.f8589i.assetManager.getTextureRegion("icon-user");
    }

    public int getCloudSaveSlotTimestamp() {
        if (this.f9608y == -1) {
            return -1;
        }
        return this.f9609z;
    }

    public String getPlayerId() {
        Game.f8589i.assertInMainThread();
        if (isSignedIn()) {
            return this.f9600q;
        }
        if (this.f9597d == null) {
            try {
                PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
                if (preferencesManager.contains("playerid")) {
                    String str = preferencesManager.get("playerid", null);
                    this.f9597d = str;
                    if (str.length() > 32) {
                        Logger.report("Invalid playerid: " + this.f9597d);
                        preferencesManager.remove("playerid");
                        this.f9597d = null;
                    }
                }
            } catch (Exception e) {
                Logger.error("AuthManager", "Failed to load offline player ID", e);
                this.f9597d = null;
            }
            if (this.f9597d == null) {
                this.f9597d = "G-" + FastRandom.generateUniqueDistinguishableId();
                try {
                    PreferencesManager.SafePreferences preferencesManager2 = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
                    preferencesManager2.set("playerid", this.f9597d);
                    preferencesManager2.flush();
                } catch (Exception unused) {
                }
            }
            Logger.log("AuthManager", "playerId: " + this.f9597d);
        }
        return this.f9597d;
    }

    public void loadStateFromServer(final String str, final Runnable runnable) {
        String str2;
        if (!Game.f8589i.actionResolver.isAppModified() && !Config.isHeadless() && !Config.isModdingMode()) {
            Game.f8589i.assertInMainThread();
            PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
            if (str == null && (str2 = preferencesManager.get("authSession", null)) != null) {
                str = new JsonReader().parse(str2).getString("id");
            }
            if (str != null) {
                Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                httpRequest.setUrl(Config.AUTH_GET_SESSION_INFO_URL);
                HashMap hashMap = new HashMap();
                hashMap.put("sessionid", str);
                httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                if (m21703K()) {
                    Logger.log("AuthManager", "getting status of session " + str);
                }
                queueRequest(new HttpQueuedRequest("loadStateFromServer", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.c
                    @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                    public final void finished(boolean z, String str3) {
                        AuthManager.this.m21701M(str, runnable, z, str3);
                    }
                }));
                return;
            }
            m21695S(SignInStatus.NOT_SIGNED_IN);
            this.loadedAnyStateFromServer = true;
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        Logger.log("AuthManager", "loadStateFromServer - app is modified or headless");
        this.loadedAnyStateFromServer = true;
    }

    public void notifyNeedCloudSave(boolean z) {
        String str;
        if (this.f9589A != z) {
            this.f9589A = z;
            PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
            if (z) {
                str = "true";
            } else {
                str = "false";
            }
            preferencesManager.set("hasUnsavedProgressForCloud", str);
            preferencesManager.flush();
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerWithListeners, com.prineside.tdi2.Manager
    public void postRender(float f) {
        this.f9593E += f;
        if ((getSignInStatus() == SignInStatus.SIGNED_IN || this.f9593E > 7.0f) && this.f9590B.size != 0 && !this.f9592D) {
            this.f9592D = true;
            if (m21703K()) {
                Logger.log("AuthManager", "requesting latest news...");
            }
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.GET_LATEST_NEWS_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("locale", Game.f8589i.localeManager.getLocale());
            if (getSessionId() != null) {
                hashMap.put("sessionid", getSessionId());
            }
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            queueRequest(new HttpQueuedRequest("getLatestNews", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.AuthManager.7
                @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                public void finished(boolean z, String str) {
                    if (z) {
                        try {
                            if (AuthManager.this.m21703K()) {
                                Logger.log("AuthManager", str);
                            }
                            JsonValue parse = new JsonReader().parse(str);
                            if (parse.getString("status").equals("success")) {
                                try {
                                    NewsResponse newsResponse = new NewsResponse();
                                    newsResponse.cachedAt = Game.getTimestampSeconds();
                                    newsResponse.body = parse.get("news").getString("body");
                                    newsResponse.title = parse.get("news").getString("title");
                                    newsResponse.f9667id = parse.get("news").getInt("id", 0);
                                    newsResponse.networkRequiredVersion = parse.getInt("network_min_required_version");
                                    newsResponse.lastVersion = parse.getInt("last_version");
                                    newsResponse.seasonNumber = parse.getInt("season_number", 1);
                                    newsResponse.seasonPosition = parse.getInt("season_position", 0);
                                    newsResponse.seasonPlayerCount = parse.getInt("season_player_count", 0);
                                    JsonValue jsonValue = parse.get("issuedItems");
                                    if (jsonValue != null) {
                                        Iterator<JsonValue> iterator2 = jsonValue.iterator2();
                                        while (iterator2.hasNext()) {
                                            newsResponse.itemsFromServer.add(IssuedItems.fromJson(iterator2.next()));
                                        }
                                    }
                                    AuthManager.this.f9591C = newsResponse;
                                    for (int i = 0; i < AuthManager.this.f9590B.size; i++) {
                                        ((ObjectRetriever) AuthManager.this.f9590B.get(i)).retrieved(newsResponse);
                                    }
                                } catch (Exception e) {
                                    Logger.error("AuthManager", "failed to parse news", e);
                                }
                                AuthManager.this.f9592D = false;
                                AuthManager.this.f9590B.clear();
                                return;
                            }
                            Logger.error("AuthManager", "can't retrieve news: " + str);
                            AuthManager.this.f9592D = false;
                            AuthManager.this.f9590B.clear();
                            return;
                        } catch (Exception e2) {
                            Logger.error("AuthManager", "Failed to parse response", e2);
                            AuthManager.this.f9592D = false;
                            AuthManager.this.f9590B.clear();
                            return;
                        }
                    }
                    Logger.error("AuthManager", "can't retrieve news");
                    AuthManager.this.f9592D = false;
                    AuthManager.this.f9590B.clear();
                }
            }));
        }
    }

    public void queueRequest(HttpQueuedRequest httpQueuedRequest) {
        Game.f8589i.assertInMainThread();
        if (m21703K()) {
            Logger.log("AuthManager", "Net: queueRequest: " + httpQueuedRequest.f9663a);
        }
        if (!anyRequestRunning()) {
            if (m21703K()) {
                Logger.log("AuthManager", "     queueRequest: starting request");
            }
            this.f9595G.add(httpQueuedRequest);
            m21694T();
            return;
        }
        this.f9595G.add(httpQueuedRequest);
        if (m21703K()) {
            Logger.log("AuthManager", "     queueRequest: other request in progress, waiting");
        }
    }

    public void resetPassword(String str, final ObjectRetriever<PasswordResetResult> objectRetriever) {
        if (!Game.f8589i.actionResolver.isAppModified() && !Config.isModdingMode()) {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.AUTH_PASSWORD_RESET_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("emailOrNickname", str);
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            queueRequest(new HttpQueuedRequest("resetPassword", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.AuthManager.15
                @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                public void finished(boolean z, String str2) {
                    if (z) {
                        try {
                            if (AuthManager.this.m21703K()) {
                                Logger.log("AuthManager", "Response: " + str2 + "");
                            }
                            JsonValue parse = new JsonReader().parse(str2);
                            if (parse.getString("status").equals("success")) {
                                ObjectRetriever objectRetriever2 = objectRetriever;
                                if (objectRetriever2 != null) {
                                    objectRetriever2.retrieved(PasswordResetResult.SUCCESS);
                                    return;
                                }
                                return;
                            }
                            Logger.error("AuthManager", "failed to reset password: " + str2);
                            ObjectRetriever objectRetriever3 = objectRetriever;
                            if (objectRetriever3 != null) {
                                try {
                                    objectRetriever3.retrieved(PasswordResetResult.valueOf(parse.getString("passwordResetResult")));
                                    return;
                                } catch (Exception unused) {
                                    objectRetriever.retrieved(PasswordResetResult.OTHER_ERROR);
                                    return;
                                }
                            }
                            return;
                        } catch (Exception e) {
                            Logger.error("AuthManager", "Failed to parse response", e);
                            objectRetriever.retrieved(PasswordResetResult.OTHER_ERROR);
                            return;
                        }
                    }
                    Logger.error("AuthManager", "Failed to reset password");
                    objectRetriever.retrieved(PasswordResetResult.OTHER_ERROR);
                }
            }));
            return;
        }
        Game game = Game.f8589i;
        game.uiManager.notifications.add(game.localeManager.i18n.get("app_is_modified"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
    }

    public void save() {
        Game.f8589i.assertInMainThread();
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeObjectStart();
        json.writeValue("id", this.f9599p);
        json.writeValue("nickname", this.f9605v);
        json.writeValue("playerId", this.f9600q);
        json.writeValue("emailHint", this.f9603t);
        String str = this.f9601r;
        if (str != null) {
            json.writeValue("inviteCode", str);
        }
        String str2 = this.f9602s;
        if (str2 != null) {
            json.writeValue("invitedBy", str2);
        }
        json.writeValue("updateTimestamp", Long.valueOf(this.f9604u));
        json.writeValue("xpStatus", Integer.valueOf(this.xpStatus.ordinal()));
        json.writeValue("currentLevelXp", Integer.valueOf(this.currentLevelXp));
        json.writeValue("tempXp", Integer.valueOf(this.tempXp));
        json.writeValue("nextLevelXp", Integer.valueOf(this.nextLevelXp));
        json.writeValue("profileLevel", Integer.valueOf(this.profileLevel));
        json.writeValue("maxProfileLevel", Integer.valueOf(this.maxProfileLevel));
        json.writeValue("playedLevelXpCoeff", Float.valueOf(this.playedLevelXpCoeff));
        json.writeValue("bonusLevelXpCoeff", Float.valueOf(this.bonusLevelXpCoeff));
        String str3 = this.bonusXpLevel;
        if (str3 != null) {
            json.writeValue("bonusXpLevel", str3);
        }
        json.writeValue("bonusXpRemaining", Integer.valueOf(this.bonusXpRemaining));
        json.writeValue("regularXpRemaining", Integer.valueOf(this.regularXpRemaining));
        json.writeValue("nextXpRefresh", Integer.valueOf(this.nextXpRefreshTimestamp));
        json.writeArrayStart("xpPlayedLevels");
        int i = 0;
        while (true) {
            Array<String> array = this.xpPlayedLevels;
            if (i < array.size) {
                json.writeValue(array.items[i]);
                i++;
            } else {
                json.writeArrayEnd();
                json.writeObjectEnd();
                preferencesManager.set("authSession", stringWriter.toString());
                preferencesManager.flush();
                return;
            }
        }
    }

    public void saveGameToServer(int i, final ObjectRetriever<SaveGameResult> objectRetriever) {
        Game.f8589i.assertInMainThread();
        if (Game.f8589i.progressManager.isDeveloperModeEnabled()) {
            Game game = Game.f8589i;
            game.uiManager.notifications.add("Could not save game to cloud while being in Developer mode, please reset your progress first", game.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
        } else if (Config.isHeadless()) {
        } else {
            if (Game.f8589i.preferencesManager.isTemporarySettingsApplied()) {
                Logger.log("AuthManager", "temporary settings enabled, skipped save to cloud");
            } else if (Game.f8589i.progressManager.getAllItems().size == 0) {
                Logger.error("AuthManager", "empty items, save to cloud disabled");
            } else if (this.f9596b == SignInStatus.SIGNED_IN) {
                if (!Game.f8589i.actionResolver.isAppModified() && !Config.isModdingMode()) {
                    Game.f8589i.settingsManager.saveIfRequired();
                    Game.f8589i.progressManager.saveIfRequired();
                    Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                    httpRequest.setUrl(Config.AUTH_SAVE_GAME_URL);
                    HashMap hashMap = new HashMap();
                    hashMap.put("sessionid", this.f9599p);
                    hashMap.put("gameStartHash", Game.f8589i.settingsManager.getGameStartHash());
                    hashMap.put("timeInGame", String.valueOf(Game.f8589i.settingsManager.getTimeSpentInGameSinceStart()));
                    if (i != -1) {
                        hashMap.put("slotId", String.valueOf(i));
                    }
                    hashMap.put("data", Game.f8589i.preferencesManager.saveSnapshotAsString(new Array<>(Config.PREFERENCES_NAMES)));
                    String convertHttpParameters = HttpParametersUtils.convertHttpParameters(hashMap);
                    Logger.log("AuthManager", convertHttpParameters);
                    httpRequest.setContent(convertHttpParameters);
                    queueRequest(new HttpQueuedRequest("saveGameToServer", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.AuthManager.10
                        @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                        public void finished(boolean z, String str) {
                            SaveGameResult valueOf;
                            if (z) {
                                try {
                                    Logger.log("AuthManager", "save response: " + str);
                                    JsonValue parse = new JsonReader().parse(str);
                                    if (parse.getString("status").equals("success")) {
                                        AuthManager.this.m21696R(parse.getInt("slotId"), parse.getInt("slotTimestamp"));
                                        AuthManager.this.loadStateFromServer(null, null);
                                        ObjectRetriever objectRetriever2 = objectRetriever;
                                        if (objectRetriever2 != null) {
                                            objectRetriever2.retrieved(SaveGameResult.SUCCESS);
                                        }
                                        Game game2 = Game.f8589i;
                                        game2.uiManager.notifications.add(game2.localeManager.i18n.get("game_saved_to_cloud"), Game.f8589i.assetManager.getDrawable("icon-info"), MaterialColor.GREEN.P800, StaticSoundType.NOTIFICATION);
                                        AuthManager.this.notifyNeedCloudSave(false);
                                        return;
                                    }
                                    Logger.error("AuthManager", "can't save game: " + str);
                                    if (objectRetriever != null) {
                                        SaveGameResult saveGameResult = SaveGameResult.OTHER_ERROR;
                                        try {
                                            valueOf = SaveGameResult.valueOf(parse.getString("saveGameResult"));
                                        } catch (Exception unused) {
                                        }
                                        objectRetriever.retrieved(valueOf);
                                        return;
                                    }
                                    return;
                                } catch (Exception e) {
                                    Logger.error("AuthManager", "Failed to parse response", e);
                                    ObjectRetriever objectRetriever3 = objectRetriever;
                                    if (objectRetriever3 != null) {
                                        objectRetriever3.retrieved(SaveGameResult.OTHER_ERROR);
                                        return;
                                    }
                                    return;
                                }
                            }
                            Logger.error("AuthManager", "Error while saving game");
                            ObjectRetriever objectRetriever4 = objectRetriever;
                            if (objectRetriever4 != null) {
                                objectRetriever4.retrieved(SaveGameResult.OTHER_ERROR);
                            }
                        }
                    }));
                    return;
                }
                Game game2 = Game.f8589i;
                game2.uiManager.notifications.add(game2.localeManager.i18n.get("app_is_modified"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
            } else {
                Logger.error("AuthManager", "can't save game to cloud, not signed in");
                if (objectRetriever != null) {
                    objectRetriever.retrieved(SaveGameResult.OTHER_ERROR);
                }
            }
        }
    }

    public void setAutoSavesEnabled(boolean z) {
        DelayedRemovalArray<T> delayedRemovalArray;
        this.f9598k = z;
        Game.f8589i.assertInMainThread();
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        preferencesManager.set("authAutoSaves", String.valueOf(z));
        preferencesManager.flush();
        this.f8742a.begin();
        int i = 0;
        while (true) {
            delayedRemovalArray = this.f8742a;
            if (i >= delayedRemovalArray.size) {
                break;
            }
            ((AuthManagerListener) delayedRemovalArray.get(i)).autoSaveModeChanged();
            i++;
        }
        delayedRemovalArray.end();
        if (z) {
            Game game = Game.f8589i;
            game.uiManager.notifications.add(game.localeManager.i18n.get("auto_saves_enabled"), Game.f8589i.assetManager.getDrawable("icon-info"), MaterialColor.GREEN.P800, StaticSoundType.NOTIFICATION);
            return;
        }
        Game game2 = Game.f8589i;
        game2.uiManager.notifications.add(game2.localeManager.i18n.get("auto_saves_disabled"), Game.f8589i.assetManager.getDrawable("icon-info"), MaterialColor.AMBER.P800, StaticSoundType.NOTIFICATION);
    }

    public void setSessionIdForced(String str) {
        Game.f8589i.assertInMainThread();
        this.f9599p = str;
        save();
    }

    @Override // com.prineside.tdi2.Manager.ManagerWithListeners, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.AuthManager.2
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                AuthManager.this.m21697Q();
            }
        });
        m21697Q();
    }

    public void signInWithGoogle(String str, final ObjectRetriever<InUpSignInResult> objectRetriever) {
        Game.f8589i.assertInMainThread();
        int i = 0;
        while (true) {
            Array<HttpQueuedRequest> array = this.f9595G;
            if (i < array.size) {
                if (array.items[i].f9663a.equals("signInWithGoogle")) {
                    Logger.error("AuthManager", "skipped signInWithGoogle - request already queued");
                    return;
                }
                i++;
            } else {
                Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                httpRequest.setUrl(Config.AUTH_SIGN_IN_GOOGLE_URL);
                HashMap hashMap = new HashMap();
                hashMap.put("token", str);
                httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                queueRequest(new HttpQueuedRequest("signInWithGoogle", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.AuthManager.6
                    @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                    public void finished(boolean z, String str2) {
                        if (z) {
                            try {
                                if (AuthManager.this.m21703K()) {
                                    Logger.log("AuthManager", "Response: " + str2 + "");
                                }
                                JsonValue parse = new JsonReader().parse(str2);
                                if (parse.getString("status").equals("success")) {
                                    Game.f8589i.actionResolver.logLogined("google");
                                    final boolean z2 = parse.getBoolean("justSignedUp");
                                    if (z2) {
                                        Game.f8589i.actionResolver.logSignedUp("google");
                                    }
                                    AuthManager.this.loadStateFromServer(parse.getString("sessionid"), new Runnable() { // from class: com.prineside.tdi2.managers.AuthManager.6.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            ObjectRetriever objectRetriever2 = objectRetriever;
                                            if (objectRetriever2 != null) {
                                                if (z2) {
                                                    objectRetriever2.retrieved(InUpSignInResult.SUCCESS_NEW_ACCOUNT);
                                                } else {
                                                    objectRetriever2.retrieved(InUpSignInResult.SUCCESS);
                                                }
                                            }
                                            AuthManager.this.m21706H();
                                        }
                                    });
                                    return;
                                }
                                Logger.error("AuthManager", "failed to sign in: " + str2);
                                AuthManager.this.signOut();
                                ObjectRetriever objectRetriever2 = objectRetriever;
                                if (objectRetriever2 != null) {
                                    try {
                                        objectRetriever2.retrieved(InUpSignInResult.valueOf(parse.getString("signInResult")));
                                        return;
                                    } catch (Exception unused) {
                                        objectRetriever.retrieved(InUpSignInResult.OTHER_ERROR);
                                        return;
                                    }
                                }
                                return;
                            } catch (Exception e) {
                                Logger.error("AuthManager", "Failed to parse response", e);
                                AuthManager.this.signOut();
                                objectRetriever.retrieved(InUpSignInResult.OTHER_ERROR);
                                return;
                            }
                        }
                        Logger.error("AuthManager", "Error while signing in");
                        AuthManager.this.signOut();
                        objectRetriever.retrieved(InUpSignInResult.OTHER_ERROR);
                    }
                }));
                return;
            }
        }
    }

    public void signInWithOkJoy(String str, String str2, String str3, final ObjectRetriever<InUpSignInResult> objectRetriever) {
        Logger.log("AuthManager", "signInWithOkJoy " + str + " " + str2 + " " + str3);
        Game.f8589i.assertInMainThread();
        int i = 0;
        while (true) {
            Array<HttpQueuedRequest> array = this.f9595G;
            if (i < array.size) {
                if (array.items[i].f9663a.equals("signInWithOkJoy")) {
                    Logger.log("AuthManager", "ERR: skipped signInWithOkJoy - request already queued");
                    return;
                }
                i++;
            } else {
                Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                httpRequest.setUrl(Config.AUTH_SIGN_IN_OKJOY_URL);
                HashMap hashMap = new HashMap();
                hashMap.put("token", (str == null || str.length() < 10) ? "testusertoken" : "testusertoken");
                hashMap.put("userid", str2);
                hashMap.put("username", str3);
                httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                Game game = Game.f8589i;
                game.uiManager.notifications.add(game.localeManager.i18n.get("signing_in..."), null, null, null);
                queueRequest(new HttpQueuedRequest("signInWithOkJoy", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.AuthManager.5
                    @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                    public void finished(boolean z, String str4) {
                        if (z) {
                            try {
                                if (AuthManager.this.m21703K()) {
                                    Logger.log("AuthManager", "Response: " + str4 + "");
                                }
                                JsonValue parse = new JsonReader().parse(str4);
                                if (parse.getString("status").equals("success")) {
                                    Game.f8589i.actionResolver.logLogined("okjoy");
                                    final boolean z2 = parse.getBoolean("justSignedUp");
                                    if (z2) {
                                        Game.f8589i.actionResolver.logSignedUp("okjoy");
                                    }
                                    AuthManager.this.loadStateFromServer(parse.getString("sessionid"), new Runnable() { // from class: com.prineside.tdi2.managers.AuthManager.5.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            ObjectRetriever objectRetriever2 = objectRetriever;
                                            if (objectRetriever2 != null) {
                                                if (z2) {
                                                    objectRetriever2.retrieved(InUpSignInResult.SUCCESS_NEW_ACCOUNT);
                                                } else {
                                                    objectRetriever2.retrieved(InUpSignInResult.SUCCESS);
                                                }
                                            }
                                            AuthManager.this.m21706H();
                                        }
                                    });
                                    return;
                                }
                                Logger.error("AuthManager", "failed to sign in: " + str4);
                                AuthManager.this.signOut();
                                ObjectRetriever objectRetriever2 = objectRetriever;
                                if (objectRetriever2 != null) {
                                    try {
                                        objectRetriever2.retrieved(InUpSignInResult.valueOf(parse.getString("signInResult")));
                                        return;
                                    } catch (Exception unused) {
                                        objectRetriever.retrieved(InUpSignInResult.OTHER_ERROR);
                                        return;
                                    }
                                }
                                return;
                            } catch (Exception e) {
                                Logger.error("AuthManager", "Failed to parse response", e);
                                AuthManager.this.signOut();
                                objectRetriever.retrieved(InUpSignInResult.OTHER_ERROR);
                                return;
                            }
                        }
                        Logger.error("AuthManager", "Error while signing in");
                        AuthManager.this.signOut();
                        objectRetriever.retrieved(InUpSignInResult.OTHER_ERROR);
                    }
                }));
                return;
            }
        }
    }

    /* renamed from: I */
    public final void m21705I() {
        if (getCloudSaveSlotId() != -1) {
            getCloudSavedGamesList(new ObjectRetriever<JsonValue>() { // from class: com.prineside.tdi2.managers.AuthManager.8
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public void retrieved(JsonValue jsonValue) {
                    boolean z;
                    if (jsonValue == null) {
                        Logger.error("AuthManager", "failed to load saved games list in checkIfCloudSaveGameDiffers");
                        return;
                    }
                    Iterator<JsonValue> iterator2 = jsonValue.iterator2();
                    while (true) {
                        if (!iterator2.hasNext()) {
                            z = false;
                            break;
                        }
                        JsonValue next = iterator2.next();
                        final int i = next.getInt("slotId");
                        if (AuthManager.this.getCloudSaveSlotId() == i) {
                            z = true;
                            if (next.getInt("slotTimestamp") > AuthManager.this.getCloudSaveSlotTimestamp()) {
                                Game game = Game.f8589i;
                                game.uiManager.dialog.showConfirm(game.localeManager.i18n.get("newer_cloud_save_load_confirm"), new Runnable() { // from class: com.prineside.tdi2.managers.AuthManager.8.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AuthManager.this.loadSavedGameFromServer(i);
                                    }
                                }, new Runnable() { // from class: com.prineside.tdi2.managers.AuthManager.8.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AuthManager.this.m21696R(-1, 0);
                                        Game game2 = Game.f8589i;
                                        game2.uiManager.dialog.showAlert(game2.localeManager.i18n.get("auto_saves_disabled_select_slot"));
                                    }
                                });
                            }
                        }
                    }
                    if (z) {
                        return;
                    }
                    AuthManager.this.m21696R(-1, 0);
                    Logger.error("AuthManager", "locally cached saved game slot ID not found");
                }
            });
        }
    }

    public void deleteGameFromServer(int i, final ObjectRetriever<Boolean> objectRetriever) {
        if (Config.isHeadless()) {
            return;
        }
        if (this.f9596b == SignInStatus.SIGNED_IN) {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.AUTH_DELETE_GAME_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("sessionid", this.f9599p);
            hashMap.put("slotId", String.valueOf(i));
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            queueRequest(new HttpQueuedRequest("deleteGameFromServer", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.AuthManager.11
                @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                public void finished(boolean z, String str) {
                    if (z) {
                        try {
                            if (AuthManager.this.m21703K()) {
                                Logger.log("AuthManager", str);
                            }
                            if (new JsonReader().parse(str).getString("status").equals("success")) {
                                objectRetriever.retrieved(Boolean.TRUE);
                                return;
                            }
                            Logger.error("AuthManager", "can't delete game: " + str);
                            objectRetriever.retrieved(Boolean.FALSE);
                            return;
                        } catch (Exception e) {
                            Logger.error("AuthManager", "Failed to parse response", e);
                            objectRetriever.retrieved(Boolean.FALSE);
                            return;
                        }
                    }
                    Logger.error("AuthManager", "Error while deleting game");
                    objectRetriever.retrieved(Boolean.FALSE);
                }
            }));
            return;
        }
        Logger.error("AuthManager", "not signed in, can't delete saved game");
        objectRetriever.retrieved(Boolean.FALSE);
    }

    public void getCloudSavedGamesList(final ObjectRetriever<JsonValue> objectRetriever) {
        if (Config.isHeadless()) {
            return;
        }
        if (this.f9596b != SignInStatus.SIGNED_IN) {
            Logger.error("AuthManager", "unable to load list of cloud saved games while not signed in");
            if (objectRetriever != null) {
                objectRetriever.retrieved(null);
                return;
            }
            return;
        }
        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
        httpRequest.setUrl(Config.GET_SAVED_GAMES_LIST_URL);
        HashMap hashMap = new HashMap();
        String str = this.f9599p;
        if (str != null) {
            hashMap.put("sessionid", str);
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            queueRequest(new HttpQueuedRequest("getCloudSavedGamesList", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.AuthManager.17
                @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                public void finished(boolean z, String str2) {
                    if (z) {
                        try {
                            if (AuthManager.this.m21703K()) {
                                Logger.log("AuthManager", "Response: " + str2 + "");
                            }
                            JsonValue parse = new JsonReader().parse(str2);
                            if (parse.getString("status").equals("success")) {
                                ObjectRetriever objectRetriever2 = objectRetriever;
                                if (objectRetriever2 != null) {
                                    objectRetriever2.retrieved(parse.get("savedGames"));
                                    return;
                                }
                                return;
                            }
                            Logger.error("AuthManager", "failed to load saved games: " + str2);
                            ObjectRetriever objectRetriever3 = objectRetriever;
                            if (objectRetriever3 != null) {
                                objectRetriever3.retrieved(null);
                                return;
                            }
                            return;
                        } catch (Exception e) {
                            Logger.error("AuthManager", "Failed to parse response", e);
                            ObjectRetriever objectRetriever4 = objectRetriever;
                            if (objectRetriever4 != null) {
                                objectRetriever4.retrieved(null);
                                return;
                            }
                            return;
                        }
                    }
                    Logger.error("AuthManager", "Failed to get cloud saves");
                    ObjectRetriever objectRetriever5 = objectRetriever;
                    if (objectRetriever5 != null) {
                        objectRetriever5.retrieved(null);
                    }
                }
            }));
            return;
        }
        throw new RuntimeException("sessionId is null");
    }

    public void getNews(ObjectRetriever<NewsResponse> objectRetriever) {
        if (Config.isHeadless()) {
            return;
        }
        Game.f8589i.assertInMainThread();
        if (this.f9591C != null) {
            int timestampSeconds = Game.getTimestampSeconds();
            NewsResponse newsResponse = this.f9591C;
            if (timestampSeconds - newsResponse.cachedAt < 600) {
                objectRetriever.retrieved(newsResponse);
                return;
            }
            this.f9591C = null;
        }
        this.f9590B.add(objectRetriever);
    }

    public String getNickname() {
        if (!isSignedIn()) {
            return "Guest";
        }
        return this.f9605v;
    }

    public String getPlayerIdCached() {
        if (isSignedIn()) {
            return this.f9600q;
        }
        return this.f9597d;
    }

    public void handleAutoSave() {
        if (isAutoSavesEnabled()) {
            saveGameToServer(getCloudSaveSlotId(), new ObjectRetriever<SaveGameResult>() { // from class: com.prineside.tdi2.managers.AuthManager.13
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public void retrieved(SaveGameResult saveGameResult) {
                    if (saveGameResult == SaveGameResult.MAX_SLOTS_USED || saveGameResult == SaveGameResult.INVALID_SLOT_ID) {
                        AuthManager.this.setAutoSavesEnabled(false);
                    }
                }
            });
        }
        backupProgressToServer();
    }

    public void loadSavedGameFromServer(int i) {
        if (Config.isHeadless()) {
            return;
        }
        if (Game.f8589i.progressManager.isDeveloperModeEnabled()) {
            Game game = Game.f8589i;
            game.uiManager.notifications.add("Could not load game while being in Developer mode, please reset your progress first", game.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
        } else if (this.f9596b == SignInStatus.SIGNED_IN) {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.AUTH_LOAD_GAME_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("sessionid", this.f9599p);
            hashMap.put("slotId", String.valueOf(i));
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            queueRequest(new HttpQueuedRequest("loadSavedGameFromServer", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.AuthManager.12
                @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                public void finished(boolean z, String str) {
                    if (z) {
                        try {
                            if (AuthManager.this.m21703K()) {
                                Logger.log("AuthManager", str);
                            }
                            JsonValue parse = new JsonReader().parse(str);
                            if (parse.getString("status").equals("success")) {
                                if (parse.get("savedGame").getInt("gameBuild") > 184) {
                                    Game game2 = Game.f8589i;
                                    game2.uiManager.notifications.add(game2.localeManager.i18n.get("cant_load_from_cloud_need_update"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
                                    return;
                                }
                                String sessionId = Game.f8589i.authManager.getSessionId();
                                if (AuthManager.this.m21703K()) {
                                    Logger.log("AuthManager", "current session: " + sessionId);
                                }
                                JsonValue jsonValue = parse.get("savedGame").get("data");
                                if (AuthManager.this.m21703K()) {
                                    Logger.log("AuthManager", "loading saved game from compact base64 " + jsonValue.asString());
                                }
                                Game.f8589i.preferencesManager.loadFromCompactBase64(jsonValue.asString(), true);
                                AuthManager.this.m21696R(parse.get("savedGame").getInt("slotId"), parse.get("savedGame").getInt("slotTimestamp"));
                                AuthManager.this.setSessionIdForced(sessionId);
                                Game.f8589i.preferencesManager.reapplyAllPreferences();
                                Game.f8589i.authManager.loadStateFromServer(sessionId, null);
                                Game.f8589i.screenManager.goToAccountScreen();
                                Game.f8589i.progressManager.requireDelayedSave();
                                AuthManager.this.f9589A = false;
                                if (AuthManager.this.m21703K()) {
                                    Logger.log("AuthManager", "new session: " + Game.f8589i.authManager.getSessionId());
                                }
                                Game game3 = Game.f8589i;
                                game3.uiManager.notifications.add(game3.localeManager.i18n.get("game_loaded_from_cloud"), Game.f8589i.assetManager.getDrawable("icon-info"), null, StaticSoundType.NOTIFICATION);
                                return;
                            }
                            Logger.error("AuthManager", "can't load game: " + str);
                            return;
                        } catch (Exception e) {
                            Logger.error("AuthManager", "Failed to parse response", e);
                            return;
                        }
                    }
                    Logger.error("AuthManager", "Failed to load saved game from server");
                }
            }));
        } else {
            Logger.error("AuthManager", "not signed in, can't load saved game");
        }
    }

    public void receiveIssuedItemsFromServer(final ObjectRetriever<ReceivedIssuedItemsResponse> objectRetriever) {
        if (!Config.isHeadless() && getSessionId() != null) {
            Game.f8589i.assertInMainThread();
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.RECEIVE_ISSUED_ITEMS_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("sessionid", getSessionId());
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            queueRequest(new HttpQueuedRequest("receiveIssuedItemsFromServer", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.AuthManager.20
                @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                public void finished(boolean z, String str) {
                    if (z) {
                        try {
                            if (AuthManager.this.m21703K()) {
                                Logger.log("AuthManager", str);
                            }
                            JsonValue parse = new JsonReader().parse(str);
                            if (parse.getString("status").equals("success")) {
                                try {
                                    ReceivedIssuedItemsResponse receivedIssuedItemsResponse = new ReceivedIssuedItemsResponse();
                                    JsonValue jsonValue = parse.get("issuedItems");
                                    if (jsonValue != null) {
                                        Iterator<JsonValue> iterator2 = jsonValue.iterator2();
                                        while (iterator2.hasNext()) {
                                            receivedIssuedItemsResponse.items.add(IssuedItems.fromJson(iterator2.next()));
                                        }
                                    }
                                    if (AuthManager.this.f9591C != null) {
                                        AuthManager.this.f9591C.itemsFromServer.clear();
                                    }
                                    objectRetriever.retrieved(receivedIssuedItemsResponse);
                                    return;
                                } catch (Exception e) {
                                    Logger.error("AuthManager", "failed to parse receiveIssuedItemsFromServer", e);
                                    return;
                                }
                            }
                            Logger.error("AuthManager", "can't retrieve receiveIssuedItemsFromServer: " + str);
                            return;
                        } catch (Exception e2) {
                            Logger.error("AuthManager", "Failed to parse response", e2);
                            return;
                        }
                    }
                    Logger.error("AuthManager", "can't retrieve receiveIssuedItemsFromServer");
                }
            }));
        }
    }

    public void requestNicknameChange(String str, final ObjectRetriever<Boolean> objectRetriever) {
        if (getSessionId() == null) {
            if (objectRetriever != null) {
                objectRetriever.retrieved(Boolean.FALSE);
                return;
            }
            return;
        }
        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
        httpRequest.setUrl(Config.AUTH_NICKNAME_CHANGE_URL);
        HashMap hashMap = new HashMap();
        hashMap.put("nickname", str);
        if (getSessionId() != null) {
            hashMap.put("sessionid", getSessionId());
        }
        httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
        queueRequest(new HttpQueuedRequest("changeNickname", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.AuthManager.14
            @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
            public void finished(boolean z, String str2) {
                Runnable runnable;
                if (z) {
                    try {
                        if (AuthManager.this.m21703K()) {
                            Logger.log("AuthManager", "Response: " + str2 + "");
                        }
                        JsonValue parse = new JsonReader().parse(str2);
                        if (parse.getString("status").equals("success")) {
                            AuthManager authManager = AuthManager.this;
                            if (objectRetriever != null) {
                                runnable = new Runnable() { // from class: com.prineside.tdi2.managers.AuthManager.14.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        objectRetriever.retrieved(Boolean.TRUE);
                                    }
                                };
                            } else {
                                runnable = null;
                            }
                            authManager.loadStateFromServer(null, runnable);
                            return;
                        }
                        Logger.error("AuthManager", "failed to change nickname: " + str2);
                        Game game = Game.f8589i;
                        game.uiManager.notifications.add(parse.getString("message", game.localeManager.i18n.get("unknown_error")), null, MaterialColor.RED.P800, StaticSoundType.FAIL);
                        ObjectRetriever objectRetriever2 = objectRetriever;
                        if (objectRetriever2 != null) {
                            objectRetriever2.retrieved(Boolean.FALSE);
                            return;
                        }
                        return;
                    } catch (Exception e) {
                        Logger.error("AuthManager", "Failed to parse response", e);
                        Game game2 = Game.f8589i;
                        game2.uiManager.notifications.add(game2.localeManager.i18n.get("unknown_error"), null, MaterialColor.RED.P800, StaticSoundType.FAIL);
                        ObjectRetriever objectRetriever3 = objectRetriever;
                        if (objectRetriever3 != null) {
                            objectRetriever3.retrieved(Boolean.FALSE);
                            return;
                        }
                        return;
                    }
                }
                Logger.error("AuthManager", "Failed to get cloud saves");
                Game game3 = Game.f8589i;
                game3.uiManager.notifications.add(game3.localeManager.i18n.get("unknown_error"), null, MaterialColor.RED.P800, StaticSoundType.FAIL);
                ObjectRetriever objectRetriever4 = objectRetriever;
                if (objectRetriever4 != null) {
                    objectRetriever4.retrieved(Boolean.FALSE);
                }
            }
        }));
    }

    public void requestOfMeritPrestige() {
        if (Config.isHeadless()) {
            return;
        }
        if (this.f9596b != SignInStatus.SIGNED_IN) {
            Logger.error("AuthManager", "requestOfMeritPrestige - not signed in");
            return;
        }
        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
        httpRequest.setUrl(Config.REQUEST_OF_MERIT_BADGE);
        HashMap hashMap = new HashMap();
        String str = this.f9599p;
        if (str != null) {
            hashMap.put("sessionid", str);
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            queueRequest(new HttpQueuedRequest("requestOfMeritPrestige", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.b
                @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                public final void finished(boolean z, String str2) {
                    AuthManager.this.m21699O(z, str2);
                }
            }));
            return;
        }
        throw new RuntimeException("sessionId is null");
    }

    public void sendAutoSignUpDetails(String str, String str2, final ObjectRetriever<SignUpResult> objectRetriever) {
        if (Config.isHeadless()) {
            return;
        }
        if (!Game.f8589i.actionResolver.isAppModified() && !Config.isModdingMode()) {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.AUTH_AUT_SIGN_UP_DETAILS_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("nickname", str);
            hashMap.put("inviteCode", str2);
            hashMap.put("sessionid", getSessionId());
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            queueRequest(new HttpQueuedRequest("sendAutoSignUpDetails", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.AuthManager.19
                @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                public void finished(boolean z, String str3) {
                    if (z) {
                        try {
                            if (AuthManager.this.m21703K()) {
                                Logger.log("AuthManager", "Response: " + str3 + "");
                            }
                            JsonValue parse = new JsonReader().parse(str3);
                            if (parse.getString("status").equals("success")) {
                                AuthManager.this.loadStateFromServer(null, new Runnable() { // from class: com.prineside.tdi2.managers.AuthManager.19.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ObjectRetriever objectRetriever2 = objectRetriever;
                                        if (objectRetriever2 != null) {
                                            objectRetriever2.retrieved(SignUpResult.SUCCESS);
                                        }
                                    }
                                });
                                return;
                            }
                            Logger.error("AuthManager", "failed to send details data: " + str3);
                            ObjectRetriever objectRetriever2 = objectRetriever;
                            if (objectRetriever2 != null) {
                                try {
                                    objectRetriever2.retrieved(SignUpResult.valueOf(parse.getString("signUpResult")));
                                    return;
                                } catch (Exception unused) {
                                    objectRetriever.retrieved(SignUpResult.OTHER_ERROR);
                                    return;
                                }
                            }
                            return;
                        } catch (Exception e) {
                            Logger.error("AuthManager", "Failed to parse response", e);
                            objectRetriever.retrieved(SignUpResult.OTHER_ERROR);
                            return;
                        }
                    }
                    Logger.error("AuthManager", "Failed to sign up");
                    objectRetriever.retrieved(SignUpResult.OTHER_ERROR);
                }
            }));
            return;
        }
        Game game = Game.f8589i;
        game.uiManager.notifications.add(game.localeManager.i18n.get("app_is_modified"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
    }

    public void signIn(String str, String str2, final ObjectRetriever<SignInResult> objectRetriever) {
        if (Config.isHeadless()) {
            return;
        }
        if (!Game.f8589i.actionResolver.isAppModified() && !Config.isModdingMode()) {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.AUTH_SIGN_IN_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("login", str);
            hashMap.put("password", str2);
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            queueRequest(new HttpQueuedRequest("signIn", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.AuthManager.16
                @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                public void finished(boolean z, String str3) {
                    if (z) {
                        try {
                            if (AuthManager.this.m21703K()) {
                                Logger.log("AuthManager", "Response: " + str3 + "");
                            }
                            JsonValue parse = new JsonReader().parse(str3);
                            if (parse.getString("status").equals("success")) {
                                Game.f8589i.actionResolver.logLogined("password");
                                AuthManager.this.loadStateFromServer(parse.getString("sessionid"), new Runnable() { // from class: com.prineside.tdi2.managers.AuthManager.16.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ObjectRetriever objectRetriever2 = objectRetriever;
                                        if (objectRetriever2 != null) {
                                            objectRetriever2.retrieved(SignInResult.SUCCESS);
                                        }
                                        AuthManager.this.m21706H();
                                    }
                                });
                                return;
                            }
                            Logger.error("AuthManager", "failed to sign in: " + str3);
                            AuthManager.this.signOut();
                            ObjectRetriever objectRetriever2 = objectRetriever;
                            if (objectRetriever2 != null) {
                                try {
                                    objectRetriever2.retrieved(SignInResult.valueOf(parse.getString("signInResult")));
                                    return;
                                } catch (Exception unused) {
                                    objectRetriever.retrieved(SignInResult.OTHER_ERROR);
                                    return;
                                }
                            }
                            return;
                        } catch (Exception e) {
                            Logger.error("AuthManager", "Failed to parse response", e);
                            AuthManager.this.signOut();
                            objectRetriever.retrieved(SignInResult.OTHER_ERROR);
                            return;
                        }
                    }
                    Logger.error("AuthManager", "Failed to sign in");
                    AuthManager.this.signOut();
                    objectRetriever.retrieved(SignInResult.OTHER_ERROR);
                }
            }));
            return;
        }
        Game game = Game.f8589i;
        game.uiManager.notifications.add(game.localeManager.i18n.get("app_is_modified"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
    }

    public void signOut() {
        if (Config.isHeadless()) {
            return;
        }
        if (Game.f8589i.preferencesManager.isTemporarySettingsApplied()) {
            if (m21703K()) {
                Logger.log("AuthManager", "temporary settings enabled, skipped sign out");
                return;
            }
            return;
        }
        Game.f8589i.assertInMainThread();
        if (m21703K()) {
            Logger.log("AuthManager", "cancel requests (signOut)");
        }
        m21707G();
        if (isSignedIn()) {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.AUTH_SIGN_OUT_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("sessionid", this.f9599p);
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            Gdx.f38302net.sendHttpRequest(httpRequest, null);
        }
        Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS).remove("authSession");
        m21695S(SignInStatus.NOT_SIGNED_IN);
        Game.f8589i.actionResolver.signOutGoogle();
    }

    public void signUp(String str, String str2, String str3, String str4, final ObjectRetriever<SignUpResult> objectRetriever) {
        if (Config.isHeadless()) {
            return;
        }
        if (!Game.f8589i.actionResolver.isAppModified() && !Config.isModdingMode()) {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.AUTH_SIGN_UP_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("login", str);
            hashMap.put("password", str2);
            hashMap.put("email", str3);
            hashMap.put("inviteCode", str4);
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            queueRequest(new HttpQueuedRequest("signUp", httpRequest, new HttpQueuedRequest.Listener() { // from class: com.prineside.tdi2.managers.a
                @Override // com.prineside.tdi2.managers.AuthManager.HttpQueuedRequest.Listener
                public final void finished(boolean z, String str5) {
                    AuthManager.this.m21698P(objectRetriever, z, str5);
                }
            }));
            return;
        }
        Game game = Game.f8589i;
        game.uiManager.notifications.add(game.localeManager.i18n.get("app_is_modified"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
    }
}
