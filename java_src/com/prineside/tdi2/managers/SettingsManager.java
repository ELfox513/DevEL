package com.prineside.tdi2.managers;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.IntPair;
import com.prineside.tdi2.utils.REGS;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class SettingsManager extends Manager.ManagerAdapter {
    public static final int[][] DEFAULT_HOT_KEYS;

    /* renamed from: N */
    public static final Array<HotkeyAction> f10105N;

    /* renamed from: A */
    public boolean f10106A;

    /* renamed from: B */
    public boolean f10107B;

    /* renamed from: C */
    public boolean f10108C;

    /* renamed from: D */
    public boolean f10109D;

    /* renamed from: E */
    public boolean f10110E;

    /* renamed from: G */
    public boolean f10111G;

    /* renamed from: H */
    public boolean f10112H;

    /* renamed from: I */
    public float f10113I;

    /* renamed from: J */
    public double[] f10114J;

    /* renamed from: K */
    public double[] f10115K;

    /* renamed from: L */
    public PreferencesManager.PreferencesManagerListener f10116L;

    /* renamed from: M */
    public final DelayedRemovalArray<SettingsManagerListener> f10117M;

    /* renamed from: a */
    public final String[] f10118a;

    /* renamed from: b */
    public final String[] f10119b;

    /* renamed from: d */
    public int f10120d;

    /* renamed from: k */
    public int[] f10121k;

    /* renamed from: p */
    public IntArray f10122p;

    /* renamed from: q */
    public IntArray f10123q;

    /* renamed from: r */
    public final int[][] f10124r;

    /* renamed from: s */
    public boolean f10125s;

    /* renamed from: t */
    public boolean f10126t;

    /* renamed from: u */
    public boolean f10127u;

    /* renamed from: v */
    public boolean f10128v;

    /* renamed from: w */
    public boolean f10129w;

    /* renamed from: x */
    public boolean f10130x;

    /* renamed from: y */
    public boolean f10131y;

    /* renamed from: z */
    public boolean f10132z;

    /* renamed from: com.prineside.tdi2.managers.SettingsManager$3 */
    /* loaded from: classes2.dex */
    public class C18783 implements Net.HttpResponseListener {
        public C18783() {
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void cancelled() {
            Logger.log("SettingsManager", "canceled loading dynamic settings from server");
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void failed(Throwable th) {
            Logger.log("SettingsManager", "failed to load dynamic settings from server", th);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m21481b(String str) {
            try {
                Gdx.files.local("cache/dynamic-settings.json").writeString(str, false, "UTF-8");
            } catch (Exception e) {
                Logger.error("SettingsManager", "failed to cache dynamic settings locally", e);
            }
            try {
                SettingsManager.this.m21486f(new JsonReader().parse(str));
            } catch (Exception e2) {
                Logger.error("SettingsManager", "failed to load server's dynamic settings after response", e2);
            }
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void handleHttpResponse(Net.HttpResponse httpResponse) {
            try {
                final String resultAsString = httpResponse.getResultAsString();
                Logger.log("SettingsManager", "server dynamic settings: " + resultAsString);
                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.a0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettingsManager.C18783.this.m21481b(resultAsString);
                    }
                });
            } catch (Exception e) {
                Logger.error("SettingsManager", "failed to load server's dynamic settings", e);
            }
        }
    }

    /* renamed from: com.prineside.tdi2.managers.SettingsManager$4 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C18794 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10136a;

        static {
            int[] iArr = new int[HotkeyAction.values().length];
            f10136a = iArr;
            try {
                iArr[HotkeyAction.CALL_WAVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10136a[HotkeyAction.ABILITY_1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10136a[HotkeyAction.UPGRADE_BUILDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10136a[HotkeyAction.BUILD_TOWER_BASIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f10136a[HotkeyAction.TOWER_ABILITY_1.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f10136a[HotkeyAction.BUILD_MODIFIER_BALANCE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f10136a[HotkeyAction.BUILD_MINER_SCALAR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum CustomValueType {
        CORE_HINT_SHOWN,
        MODIFIER_TAB_HINT_SHOWN,
        UI_SCALE,
        MUSIC_CACHE_MAX_SIZE,
        SHOOTING_SOUNDS_VOLUME,
        CAMERA_TOOLS_ENABLED,
        LAST_AUTO_SHOWN_NEWS_ID,
        UNLOCK_ALL_LOCALES,
        TOUCHES_STOP_CAMERA_SCENARIOS,
        SEND_NOTIFICATIONS,
        ENABLE_REWARDING_ADS,
        ENABLE_PAUSE_AD_ICON,
        IGNORE_MAP_MUSIC,
        DRAW_TOWER_TARGET,
        SOUND_VOLUME,
        MUSIC_VOLUME,
        PERSONALIZED_ADS,
        PERSONALIZED_ADS_CONSENT_CONFIRMED,
        SMOOTH_MUSIC,
        LIVE_LEADERBOARDS,
        DPS_CHART_ENABLED,
        SLOW_MOTION_PAUSE,
        GRAPHICS_INTERPOLATION_ENABLED,
        CAMERA_SHAKE_ENABLED,
        STATISTICS_CHART_ENABLED,
        STATE_EDITOR_ENABLED,
        LOOT_ICONS_ENABLED,
        BACKGROUND_ENABLED,
        STATE_AUTO_SAVE_INTERVAL,
        BETA_ITEMS_GIVEN,
        ENDLESS_MODE_DIFFICULTY,
        ENDLESS_LEADERBOARD_HINT_SHOWN,
        INSTANT_HOLD_BUTTON_ON_RMB,
        UI_QUEST_LIST_VISIBLE,
        UI_LIVE_LEADERBOARDS_VISIBLE,
        UI_DETAILED_MODE_ENABLED,
        UI_STATISTICS_CHART_VISIBLE,
        UI_HOT_KEY_HINTS,
        GL3ASWN,
        DBG_DAMAGE_PARTICLES_ENABLED,
        DBG_DISABLE_PATH_RENDERING,
        DBG_SHOW_TILE_COORDINATES_IN_MENU,
        DBG_DISABLE_TILE_HOVERING,
        DBG_ALWAYS_DRAW_TILE_EXTRAS,
        DBG_CONSOLE_DISABLED,
        DBG_CONSOLE_LINE_COUNT,
        DBG_DRAW_TOWER_XP,
        DBG_DRAW_ENEMIES_INFO,
        DBG_DRAW_UNITS_BBOX,
        DBG_DRAW_CURSOR_POS,
        DBG_DRAW_TILE_POS,
        DBG_DRAW_PATHFINDING,
        DBG_DRAW_TILE_INFO,
        DBG_DRAW_BUILDING_INFO,
        DBG_DRAW_ENEMY_PATHS,
        DBG_DRAW_NEIGHBOR_TILES,
        DBG_VIEWPORT_CULLING,
        DBG_DISABLE_UI_TOUCH_LOG,
        DBG_SYNC_VALIDATION,
        DBG_SHOW_FPS,
        DBG_PERFORMANCE_SURVEY_REQUESTED,
        DBG_PERFORMANCE_SURVEY_SUBMITTED,
        DBG_BETA_ITEMS_ISSUE_TS;
        
        public static final CustomValueType[] values = values();
    }

    /* loaded from: classes2.dex */
    public enum DynamicSetting {
        IAP_DOUBLE_GAIN_ENABLED,
        IAP_GREEN_PAPER_ENABLED,
        IAP_ACCELERATOR_ENABLED,
        ADS_ENABLED,
        WIKI_URL,
        CN_STORE_LINK,
        IAP_GREEN_PAPER_MAX_PER_HOUR,
        MULTIPLAYER_TEST_ENDPOINT
    }

    /* loaded from: classes2.dex */
    public enum HotkeyAction {
        CALL_WAVE,
        TOGGLE_AUTO_WAVE_CALL,
        PAUSE_GAME,
        SPEED_UP,
        SPEED_DOWN,
        SWITCH_DRAW_MODE,
        TOGGLE_QUEST_LIST,
        TOGGLE_TILE_MENU,
        TOGGLE_STATS_PANE,
        TOGGLE_LEADERBOARD,
        ZOOM_1X,
        ZOOM_FIT_MAP,
        PANIC,
        ABILITY_1,
        ABILITY_2,
        ABILITY_3,
        ABILITY_4,
        ABILITY_5,
        ABILITY_6,
        UPGRADE_BUILDING,
        UPGRADE_ALL_BUILDINGS,
        SELL_BUILDING,
        AIM_MODE_SWITCH_NEXT,
        AIM_MODE_SWITCH_PREVIOUS,
        BUILD_TOWER_BASIC,
        BUILD_TOWER_SNIPER,
        BUILD_TOWER_CANNON,
        BUILD_TOWER_FREEZING,
        BUILD_TOWER_AIR,
        BUILD_TOWER_SPLASH,
        BUILD_TOWER_BLAST,
        BUILD_TOWER_MULTISHOT,
        BUILD_TOWER_MINIGUN,
        BUILD_TOWER_VENOM,
        BUILD_TOWER_TESLA,
        BUILD_TOWER_MISSILE,
        BUILD_TOWER_FLAMETHROWER,
        BUILD_TOWER_LASER,
        BUILD_TOWER_GAUSS,
        BUILD_TOWER_CRUSHER,
        TOWER_ABILITY_1,
        TOWER_ABILITY_2,
        TOWER_ABILITY_3,
        TOWER_ABILITY_4,
        TOWER_ABILITY_5,
        TOWER_ABILITY_6,
        TOWER_ABILITY_ALL_1,
        TOWER_ABILITY_ALL_2,
        TOWER_ABILITY_ALL_3,
        TOWER_ABILITY_ALL_4,
        TOWER_ABILITY_ALL_5,
        TOWER_ABILITY_ALL_6,
        BUILD_MODIFIER_BALANCE,
        BUILD_MODIFIER_SEARCH,
        BUILD_MODIFIER_POWER,
        BUILD_MODIFIER_DAMAGE,
        BUILD_MODIFIER_ATTACK_SPEED,
        BUILD_MODIFIER_MINING_SPEED,
        BUILD_MODIFIER_BOUNTY,
        BUILD_MODIFIER_EXPERIENCE,
        BUILD_MINER_SCALAR,
        BUILD_MINER_VECTOR,
        BUILD_MINER_MATRIX,
        BUILD_MINER_TENSOR,
        BUILD_MINER_INFIAR;
        
        public static HotkeyAction[] values = values();
    }

    /* loaded from: classes2.dex */
    public enum InitConfig {
        GRAPHICS_VSYNC,
        GRAPHICS_FPS_LIMIT,
        GRAPHICS_AA_LEVELS,
        GRAPHICS_FS_ENABLED,
        GRAPHICS_FS_WIDTH,
        GRAPHICS_FS_HEIGHT,
        GRAPHICS_PAUSE_ON_MIN,
        GRAPHICS_PAUSE_ON_BACK,
        GRAPHICS_ALLOW_SOFTWARE,
        GRAPHICS_SAFE_AREA,
        AUDIO_BUFFER_SIZE,
        AUDIO_BUFFER_COUNT,
        AUDIO_SIM_SOURCES;
        
        public static final InitConfig[] values = values();
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<SettingsManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public SettingsManager read() {
            return Game.f8589i.settingsManager;
        }
    }

    /* loaded from: classes2.dex */
    public interface SettingsManagerListener {

        /* loaded from: classes2.dex */
        public static abstract class SettingsManagerListenerAdapter implements SettingsManagerListener {
            @Override // com.prineside.tdi2.managers.SettingsManager.SettingsManagerListener
            public void customValueChanged(CustomValueType customValueType, double d) {
            }

            @Override // com.prineside.tdi2.managers.SettingsManager.SettingsManagerListener
            public void settingsChanged() {
            }
        }

        void customValueChanged(CustomValueType customValueType, double d);

        void settingsChanged();
    }

    public static Graphics.DisplayMode getBestFullscreenMode(int i, int i2, int i3, int i4) {
        Logger.log("SettingsManager", "getBestFullscreenMode " + i + " " + i2 + " " + i3 + " " + i4);
        if (i <= 1) {
            i = i3;
        }
        if (i2 <= 1) {
            i2 = i4;
        }
        Graphics.DisplayMode displayMode = null;
        Graphics.DisplayMode[] displayModes = Gdx.graphics.getDisplayModes();
        int i5 = 0;
        for (Graphics.DisplayMode displayMode2 : displayModes) {
            int i6 = displayMode2.bitsPerPixel;
            if (i6 > i5) {
                i5 = i6;
            }
        }
        if (i > 1 && i2 > 1) {
            for (Graphics.DisplayMode displayMode3 : displayModes) {
                if (displayMode3.width == i && displayMode3.height == i2 && displayMode3.bitsPerPixel >= i5 && (displayMode == null || displayMode.refreshRate < displayMode3.refreshRate)) {
                    displayMode = displayMode3;
                }
            }
        }
        if (displayMode == null) {
            for (Graphics.DisplayMode displayMode4 : displayModes) {
                if (displayMode4.bitsPerPixel >= i5 && (displayMode == null || ((displayMode.width < displayMode4.width || displayMode.height < displayMode4.height) && displayMode.refreshRate <= displayMode4.refreshRate))) {
                    displayMode = displayMode4;
                }
            }
        }
        for (Graphics.DisplayMode displayMode5 : displayModes) {
            Logger.log("SettingsManager", "available mode: " + displayMode5);
        }
        Logger.log("SettingsManager", "best fullscreen mode: " + displayMode);
        return displayMode;
    }

    /* renamed from: i */
    public static boolean m21483i(int[] iArr, int[] iArr2) {
        if (iArr.length != iArr2.length) {
            return false;
        }
        Arrays.sort(iArr);
        Arrays.sort(iArr2);
        for (int i = 0; i < iArr.length; i++) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public final boolean m21488d() {
        return true;
    }

    public int[] getDefaultHotKey(HotkeyAction hotkeyAction) {
        return DEFAULT_HOT_KEYS[hotkeyAction.ordinal()];
    }

    public String getDynamicSetting(DynamicSetting dynamicSetting) {
        return this.f10118a[dynamicSetting.ordinal()];
    }

    public IntArray getHoldingHotKeys() {
        return this.f10123q;
    }

    public int getTimeSpentInGameSinceStart() {
        return (int) Game.f8589i.statisticsManager.getAllTime(StatisticsType.PRT);
    }

    public boolean isBugReportsEnabled() {
        return this.f10125s;
    }

    public boolean isDefaultHotKey(HotkeyAction hotkeyAction) {
        return this.f10124r[hotkeyAction.ordinal()] == null;
    }

    public boolean isExplosionsDrawing() {
        return this.f10126t;
    }

    public boolean isFlyingCoinsEnabled() {
        return this.f10131y;
    }

    public boolean isInDebugDetailedMode() {
        return this.f10107B;
    }

    public boolean isInDebugMode() {
        return this.f10106A;
    }

    public boolean isInstantAutoWaveCallEnabled() {
        return this.f10108C;
    }

    public boolean isLargeFontsEnabled() {
        return this.f10132z;
    }

    public boolean isMusicEnabled() {
        return getCustomValue(CustomValueType.MUSIC_VOLUME) > 0.0d;
    }

    public boolean isParticlesDrawing() {
        return this.f10129w;
    }

    public boolean isProjectileTrailsDrawing() {
        return this.f10128v;
    }

    public boolean isProjectilesDrawing() {
        return this.f10127u;
    }

    public boolean isSoundEnabled() {
        return getCustomValue(CustomValueType.SOUND_VOLUME) > 0.0d;
    }

    public boolean isStainsEnabled() {
        return this.f10109D;
    }

    public boolean isThreeDeeModelsEnabled() {
        return this.f10110E && this.f10111G;
    }

    public boolean isUiAnimationsEnabled() {
        return this.f10130x;
    }

    static {
        int[][] iArr = new int[HotkeyAction.values.length];
        DEFAULT_HOT_KEYS = iArr;
        int ordinal = HotkeyAction.CALL_WAVE.ordinal();
        int[] iArr2 = new int[1];
        iArr2[0] = 62;
        iArr[ordinal] = iArr2;
        iArr[HotkeyAction.TOGGLE_AUTO_WAVE_CALL.ordinal()] = new int[]{129, 62};
        int ordinal2 = HotkeyAction.PAUSE_GAME.ordinal();
        int[] iArr3 = new int[1];
        iArr3[0] = 44;
        iArr[ordinal2] = iArr3;
        int ordinal3 = HotkeyAction.SPEED_UP.ordinal();
        int[] iArr4 = new int[1];
        iArr4[0] = 72;
        iArr[ordinal3] = iArr4;
        int ordinal4 = HotkeyAction.SPEED_DOWN.ordinal();
        int[] iArr5 = new int[1];
        iArr5[0] = 71;
        iArr[ordinal4] = iArr5;
        int ordinal5 = HotkeyAction.SWITCH_DRAW_MODE.ordinal();
        int[] iArr6 = new int[1];
        iArr6[0] = 41;
        iArr[ordinal5] = iArr6;
        int ordinal6 = HotkeyAction.TOGGLE_TILE_MENU.ordinal();
        int[] iArr7 = new int[1];
        iArr7[0] = 61;
        iArr[ordinal6] = iArr7;
        int ordinal7 = HotkeyAction.TOGGLE_QUEST_LIST.ordinal();
        int[] iArr8 = new int[1];
        iArr8[0] = 7;
        iArr[ordinal7] = iArr8;
        int ordinal8 = HotkeyAction.TOGGLE_STATS_PANE.ordinal();
        int[] iArr9 = new int[1];
        iArr9[0] = 69;
        iArr[ordinal8] = iArr9;
        int ordinal9 = HotkeyAction.TOGGLE_LEADERBOARD.ordinal();
        int[] iArr10 = new int[1];
        iArr10[0] = 40;
        iArr[ordinal9] = iArr10;
        int ordinal10 = HotkeyAction.ZOOM_1X.ordinal();
        int[] iArr11 = new int[1];
        iArr11[0] = 131;
        iArr[ordinal10] = iArr11;
        int ordinal11 = HotkeyAction.ZOOM_FIT_MAP.ordinal();
        int[] iArr12 = new int[1];
        iArr12[0] = 132;
        iArr[ordinal11] = iArr12;
        int ordinal12 = HotkeyAction.PANIC.ordinal();
        int[] iArr13 = new int[1];
        iArr13[0] = 121;
        iArr[ordinal12] = iArr13;
        int ordinal13 = HotkeyAction.ABILITY_1.ordinal();
        int[] iArr14 = new int[1];
        iArr14[0] = 54;
        iArr[ordinal13] = iArr14;
        int ordinal14 = HotkeyAction.ABILITY_2.ordinal();
        int[] iArr15 = new int[1];
        iArr15[0] = 52;
        iArr[ordinal14] = iArr15;
        int ordinal15 = HotkeyAction.ABILITY_3.ordinal();
        int[] iArr16 = new int[1];
        iArr16[0] = 29;
        iArr[ordinal15] = iArr16;
        int ordinal16 = HotkeyAction.ABILITY_4.ordinal();
        int[] iArr17 = new int[1];
        iArr17[0] = 47;
        iArr[ordinal16] = iArr17;
        int ordinal17 = HotkeyAction.ABILITY_5.ordinal();
        int[] iArr18 = new int[1];
        iArr18[0] = 45;
        iArr[ordinal17] = iArr18;
        int ordinal18 = HotkeyAction.ABILITY_6.ordinal();
        int[] iArr19 = new int[1];
        iArr19[0] = 51;
        iArr[ordinal18] = iArr19;
        int ordinal19 = HotkeyAction.UPGRADE_BUILDING.ordinal();
        int[] iArr20 = new int[1];
        iArr20[0] = 59;
        iArr[ordinal19] = iArr20;
        iArr[HotkeyAction.UPGRADE_ALL_BUILDINGS.ordinal()] = new int[]{129, 59};
        int ordinal20 = HotkeyAction.SELL_BUILDING.ordinal();
        int[] iArr21 = new int[1];
        iArr21[0] = 67;
        iArr[ordinal20] = iArr21;
        int ordinal21 = HotkeyAction.AIM_MODE_SWITCH_PREVIOUS.ordinal();
        int[] iArr22 = new int[1];
        iArr22[0] = 55;
        iArr[ordinal21] = iArr22;
        int ordinal22 = HotkeyAction.AIM_MODE_SWITCH_NEXT.ordinal();
        int[] iArr23 = new int[1];
        iArr23[0] = 56;
        iArr[ordinal22] = iArr23;
        int ordinal23 = HotkeyAction.TOWER_ABILITY_1.ordinal();
        int[] iArr24 = new int[1];
        iArr24[0] = 145;
        iArr[ordinal23] = iArr24;
        int ordinal24 = HotkeyAction.TOWER_ABILITY_2.ordinal();
        int[] iArr25 = new int[1];
        iArr25[0] = 146;
        iArr[ordinal24] = iArr25;
        int ordinal25 = HotkeyAction.TOWER_ABILITY_3.ordinal();
        int[] iArr26 = new int[1];
        iArr26[0] = 147;
        iArr[ordinal25] = iArr26;
        int ordinal26 = HotkeyAction.TOWER_ABILITY_4.ordinal();
        int[] iArr27 = new int[1];
        iArr27[0] = 148;
        iArr[ordinal26] = iArr27;
        int ordinal27 = HotkeyAction.TOWER_ABILITY_5.ordinal();
        int[] iArr28 = new int[1];
        iArr28[0] = 149;
        iArr[ordinal27] = iArr28;
        int ordinal28 = HotkeyAction.TOWER_ABILITY_6.ordinal();
        int[] iArr29 = new int[1];
        iArr29[0] = 150;
        iArr[ordinal28] = iArr29;
        iArr[HotkeyAction.TOWER_ABILITY_ALL_1.ordinal()] = new int[]{129, 145};
        iArr[HotkeyAction.TOWER_ABILITY_ALL_2.ordinal()] = new int[]{129, 146};
        iArr[HotkeyAction.TOWER_ABILITY_ALL_3.ordinal()] = new int[]{129, 147};
        iArr[HotkeyAction.TOWER_ABILITY_ALL_4.ordinal()] = new int[]{129, 148};
        iArr[HotkeyAction.TOWER_ABILITY_ALL_5.ordinal()] = new int[]{129, 149};
        iArr[HotkeyAction.TOWER_ABILITY_ALL_6.ordinal()] = new int[]{129, 150};
        int ordinal29 = HotkeyAction.BUILD_TOWER_BASIC.ordinal();
        int[] iArr30 = new int[1];
        iArr30[0] = 10;
        iArr[ordinal29] = iArr30;
        int ordinal30 = HotkeyAction.BUILD_TOWER_SNIPER.ordinal();
        int[] iArr31 = new int[1];
        iArr31[0] = 11;
        iArr[ordinal30] = iArr31;
        int ordinal31 = HotkeyAction.BUILD_TOWER_CANNON.ordinal();
        int[] iArr32 = new int[1];
        iArr32[0] = 12;
        iArr[ordinal31] = iArr32;
        int ordinal32 = HotkeyAction.BUILD_TOWER_FREEZING.ordinal();
        int[] iArr33 = new int[1];
        iArr33[0] = 13;
        iArr[ordinal32] = iArr33;
        int ordinal33 = HotkeyAction.BUILD_TOWER_AIR.ordinal();
        int[] iArr34 = new int[1];
        iArr34[0] = 33;
        iArr[ordinal33] = iArr34;
        int ordinal34 = HotkeyAction.BUILD_TOWER_SPLASH.ordinal();
        int[] iArr35 = new int[1];
        iArr35[0] = 46;
        iArr[ordinal34] = iArr35;
        int ordinal35 = HotkeyAction.BUILD_TOWER_BLAST.ordinal();
        int[] iArr36 = new int[1];
        iArr36[0] = 48;
        iArr[ordinal35] = iArr36;
        int ordinal36 = HotkeyAction.BUILD_TOWER_MULTISHOT.ordinal();
        int[] iArr37 = new int[1];
        iArr37[0] = 53;
        iArr[ordinal36] = iArr37;
        int ordinal37 = HotkeyAction.BUILD_TOWER_MINIGUN.ordinal();
        int[] iArr38 = new int[1];
        iArr38[0] = 32;
        iArr[ordinal37] = iArr38;
        int ordinal38 = HotkeyAction.BUILD_TOWER_VENOM.ordinal();
        int[] iArr39 = new int[1];
        iArr39[0] = 34;
        iArr[ordinal38] = iArr39;
        int ordinal39 = HotkeyAction.BUILD_TOWER_TESLA.ordinal();
        int[] iArr40 = new int[1];
        iArr40[0] = 35;
        iArr[ordinal39] = iArr40;
        int ordinal40 = HotkeyAction.BUILD_TOWER_MISSILE.ordinal();
        int[] iArr41 = new int[1];
        iArr41[0] = 36;
        iArr[ordinal40] = iArr41;
        int ordinal41 = HotkeyAction.BUILD_TOWER_FLAMETHROWER.ordinal();
        int[] iArr42 = new int[1];
        iArr42[0] = 31;
        iArr[ordinal41] = iArr42;
        int ordinal42 = HotkeyAction.BUILD_TOWER_LASER.ordinal();
        int[] iArr43 = new int[1];
        iArr43[0] = 50;
        iArr[ordinal42] = iArr43;
        int ordinal43 = HotkeyAction.BUILD_TOWER_GAUSS.ordinal();
        int[] iArr44 = new int[1];
        iArr44[0] = 30;
        iArr[ordinal43] = iArr44;
        int ordinal44 = HotkeyAction.BUILD_TOWER_CRUSHER.ordinal();
        int[] iArr45 = new int[1];
        iArr45[0] = 42;
        iArr[ordinal44] = iArr45;
        iArr[HotkeyAction.BUILD_MODIFIER_BALANCE.ordinal()] = new int[]{129, 10};
        iArr[HotkeyAction.BUILD_MODIFIER_SEARCH.ordinal()] = new int[]{129, 11};
        iArr[HotkeyAction.BUILD_MODIFIER_POWER.ordinal()] = new int[]{129, 12};
        iArr[HotkeyAction.BUILD_MODIFIER_DAMAGE.ordinal()] = new int[]{129, 13};
        iArr[HotkeyAction.BUILD_MODIFIER_ATTACK_SPEED.ordinal()] = new int[]{129, 33};
        iArr[HotkeyAction.BUILD_MODIFIER_MINING_SPEED.ordinal()] = new int[]{129, 46};
        iArr[HotkeyAction.BUILD_MODIFIER_BOUNTY.ordinal()] = new int[]{129, 48};
        iArr[HotkeyAction.BUILD_MODIFIER_EXPERIENCE.ordinal()] = new int[]{129, 53};
        int ordinal45 = HotkeyAction.BUILD_MINER_SCALAR.ordinal();
        int[] iArr46 = new int[1];
        iArr46[0] = 10;
        iArr[ordinal45] = iArr46;
        int ordinal46 = HotkeyAction.BUILD_MINER_VECTOR.ordinal();
        int[] iArr47 = new int[1];
        iArr47[0] = 11;
        iArr[ordinal46] = iArr47;
        int ordinal47 = HotkeyAction.BUILD_MINER_MATRIX.ordinal();
        int[] iArr48 = new int[1];
        iArr48[0] = 12;
        iArr[ordinal47] = iArr48;
        int ordinal48 = HotkeyAction.BUILD_MINER_TENSOR.ordinal();
        int[] iArr49 = new int[1];
        iArr49[0] = 13;
        iArr[ordinal48] = iArr49;
        int ordinal49 = HotkeyAction.BUILD_MINER_INFIAR.ordinal();
        int[] iArr50 = new int[1];
        iArr50[0] = 33;
        iArr[ordinal49] = iArr50;
        f10105N = new Array<>(HotkeyAction.class);
    }

    public void addListener(SettingsManagerListener settingsManagerListener) {
        if (settingsManagerListener != null) {
            if (!this.f10117M.contains(settingsManagerListener, true)) {
                this.f10117M.add(settingsManagerListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        if (this.f10112H) {
            save();
        }
        PreferencesManager.PreferencesManagerListener preferencesManagerListener = this.f10116L;
        if (preferencesManagerListener != null) {
            Game.f8589i.preferencesManager.removeListener(preferencesManagerListener);
        }
    }

    /* renamed from: e */
    public final int[] m21487e() {
        if (this.f10121k == null) {
            IntArray intArray = new IntArray();
            for (HotkeyAction hotkeyAction : HotkeyAction.values) {
                int[] hotKey = getHotKey(hotkeyAction);
                if (hotKey != null) {
                    for (int i : hotKey) {
                        if (!intArray.contains(i)) {
                            intArray.add(i);
                        }
                    }
                }
            }
            intArray.sort();
            this.f10121k = intArray.toArray();
        }
        return this.f10121k;
    }

    /* renamed from: f */
    public final void m21486f(JsonValue jsonValue) {
        String[] strArr = this.f10119b;
        String[] strArr2 = this.f10118a;
        System.arraycopy(strArr, 0, strArr2, 0, strArr2.length);
        try {
            Iterator<JsonValue> iterator2 = jsonValue.iterator2();
            while (iterator2.hasNext()) {
                JsonValue next = iterator2.next();
                String string = next.getString("os", null);
                if (string != null && !string.equals(Gdx.app.getType().name())) {
                    Logger.log("SettingsManager", "skipping (OS mismatch) " + next.toString());
                } else {
                    int i = next.getInt("build", 0);
                    if (i != 0 && i != 184) {
                        Logger.log("SettingsManager", "skipping (build mismatch) " + next.toString());
                    } else {
                        JsonValue jsonValue2 = next.get("settings");
                        if (jsonValue2 != null) {
                            Iterator<JsonValue> iterator22 = jsonValue2.iterator2();
                            while (iterator22.hasNext()) {
                                JsonValue next2 = iterator22.next();
                                DynamicSetting valueOf = DynamicSetting.valueOf(next2.name);
                                Logger.log("SettingsManager", "dyn setting: " + valueOf.name() + " = " + next2.asString());
                                this.f10118a[valueOf.ordinal()] = next2.asString();
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            Logger.error("SettingsManager", "failed to load dynamic settings", e);
        }
    }

    /* renamed from: g */
    public final boolean m21485g() {
        FileHandle local = Gdx.files.local("cache/dynamic-settings.json");
        if (local.exists()) {
            Logger.log("SettingsManager", "loading local dynamic settings (" + Game.getTimestampMillis() + ", " + local.lastModified() + ")");
            try {
                m21486f(new JsonReader().parse(local.readString("UTF-8")));
                return true;
            } catch (Exception e) {
                Logger.error("SettingsManager", "failed to load local dynamic settings, clearing", e);
                try {
                    local.delete();
                } catch (Exception unused) {
                }
            }
        }
        return false;
    }

    public int getGameStartGameVersion() {
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (preferencesManager.contains("gameStartGameVersion")) {
            try {
                return Integer.valueOf(preferencesManager.get("gameStartGameVersion", "NaN")).intValue();
            } catch (Exception unused) {
                preferencesManager.remove("gameStartGameVersion");
            }
        }
        preferencesManager.set("gameStartGameVersion", String.valueOf(184));
        preferencesManager.flush();
        return 184;
    }

    public String getGameStartHash() {
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (preferencesManager.contains("gameStartHash")) {
            String str = preferencesManager.get("gameStartHash", "UNKNOWN");
            if (str.length() == 4) {
                return str;
            }
        }
        String distinguishableString = FastRandom.getDistinguishableString(4, null);
        preferencesManager.set("gameStartHash", distinguishableString);
        preferencesManager.flush();
        return distinguishableString;
    }

    public int getGameStartTimestamp() {
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (preferencesManager.contains("gameStartTimestamp")) {
            try {
                return Integer.valueOf(preferencesManager.get("gameStartTimestamp", "NaN")).intValue();
            } catch (Exception unused) {
                preferencesManager.remove("gameStartTimestamp");
            }
        }
        preferencesManager.set("gameStartTimestamp", String.valueOf(Game.getTimestampSeconds()));
        preferencesManager.flush();
        return Game.getTimestampSeconds();
    }

    public int[] getHotKey(HotkeyAction hotkeyAction) {
        if (this.f10124r[hotkeyAction.ordinal()] != null) {
            return this.f10124r[hotkeyAction.ordinal()];
        }
        return getDefaultHotKey(hotkeyAction);
    }

    public Array<HotkeyAction> getHotKeyActions(IntArray intArray) {
        HotkeyAction[] hotkeyActionArr;
        boolean z;
        f10105N.clear();
        for (HotkeyAction hotkeyAction : HotkeyAction.values) {
            int[] hotKey = getHotKey(hotkeyAction);
            if (hotKey != null && intArray.size == hotKey.length) {
                int length = hotKey.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        int i2 = hotKey[i];
                        int i3 = 0;
                        while (true) {
                            if (i3 < intArray.size) {
                                if (intArray.items[i3] == i2) {
                                    z = true;
                                    break;
                                }
                                i3++;
                            } else {
                                z = false;
                                break;
                            }
                        }
                        if (!z) {
                            break;
                        }
                        i++;
                    } else {
                        f10105N.add(hotkeyAction);
                        break;
                    }
                }
            }
        }
        return f10105N;
    }

    public String getHotKeyName(HotkeyAction hotkeyAction) {
        return Game.f8589i.localeManager.i18n.get("hotkey_" + hotkeyAction.name());
    }

    public String getHotkeyGroupTitle(HotkeyAction hotkeyAction) {
        switch (C18794.f10136a[hotkeyAction.ordinal()]) {
            case 1:
                return Game.f8589i.localeManager.i18n.get("hotkey_group_general");
            case 2:
                return Game.f8589i.localeManager.i18n.get("hotkey_group_abilities");
            case 3:
                return Game.f8589i.localeManager.i18n.get("hotkey_group_buildings");
            case 4:
                return Game.f8589i.localeManager.i18n.get("hotkey_group_towers");
            case 5:
                return Game.f8589i.localeManager.i18n.get("hotkey_group_tower_abilities");
            case 6:
                return Game.f8589i.localeManager.i18n.get("hotkey_group_modifiers");
            case 7:
                return Game.f8589i.localeManager.i18n.get("hotkey_group_miners");
            default:
                return null;
        }
    }

    public Array<HotkeyAction> getHotkeysJustPressed() {
        HotkeyAction[] hotkeyActionArr;
        Array<HotkeyAction> array = f10105N;
        array.clear();
        if (this.f10122p.size == 0) {
            return array;
        }
        for (HotkeyAction hotkeyAction : HotkeyAction.values) {
            int[] hotKey = getHotKey(hotkeyAction);
            if (hotKey != null && this.f10122p.size == hotKey.length) {
                int length = hotKey.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        if (!this.f10122p.contains(hotKey[i])) {
                            break;
                        }
                        i++;
                    } else {
                        f10105N.add(hotkeyAction);
                        break;
                    }
                }
            }
        }
        return f10105N;
    }

    public int getScaledViewportHeight() {
        double customValue = getCustomValue(CustomValueType.UI_SCALE);
        if (customValue < 0.5d) {
            customValue = 0.5d;
        }
        if (customValue > 1.0d) {
            customValue = 1.0d;
        }
        return MathUtils.round(((float) (1.0d / customValue)) * 1080.0f);
    }

    /* renamed from: h */
    public final void m21484h() {
        this.f10117M.begin();
        int i = this.f10117M.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f10117M.get(i2).settingsChanged();
        }
        this.f10117M.end();
    }

    public boolean isEscButtonJustPressed() {
        if (Game.f8589i.uiManager.dialog.isVisible() || Game.f8589i.uiManager.textInputOverlay.isVisible()) {
            return false;
        }
        if (!Gdx.input.isKeyJustPressed(4) && !Gdx.input.isKeyJustPressed(111)) {
            return false;
        }
        return true;
    }

    public boolean isHotkeyJustPressed(HotkeyAction hotkeyAction) {
        int[] iArr = DEFAULT_HOT_KEYS[hotkeyAction.ordinal()];
        if (this.f10122p.size != iArr.length) {
            return false;
        }
        for (int i : iArr) {
            if (!this.f10122p.contains(i)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void postRender(float f) {
        float f2 = this.f10113I + f;
        this.f10113I = f2;
        if (f2 > 30.0f && this.f10112H) {
            this.f10113I = 0.0f;
            save();
        }
    }

    public final void reload() {
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        Logger.log("SettingsManager", "game start hash: " + getGameStartHash() + " version: " + getGameStartGameVersion() + " time: " + getGameStartTimestamp() + " time in game: " + getTimeSpentInGameSinceStart());
        Game.f8589i.authManager.reloadPlayerId();
        if (!Config.isHeadless()) {
            this.f10125s = preferencesManager.get("bugReportsEnabled", "true").equals("true");
            this.f10126t = preferencesManager.get("explosionsDrawing", "true").equals("true");
            this.f10127u = preferencesManager.get("projectilesDrawing", "true").equals("true");
            this.f10128v = preferencesManager.get("projectileTrailsDrawing", "true").equals("true");
            this.f10129w = preferencesManager.get("particlesDrawing", "true").equals("true");
            this.f10130x = preferencesManager.get("uiAnimations", "true").equals("true");
            this.f10131y = preferencesManager.get("flyingCoins", "true").equals("true");
            this.f10108C = preferencesManager.get("instantAutoWaveCall", "false").equals("true");
            this.f10109D = preferencesManager.get("stainsEnabled", "true").equals("true");
            String str = preferencesManager.get("largeFonts", null);
            if (str == null) {
                this.f10132z = false;
            } else {
                this.f10132z = str.equals("true");
            }
            this.f10106A = preferencesManager.get("debugMode", "false").equals("true");
            this.f10110E = preferencesManager.get("threeDeeModelsEnabled", "true").equals("true");
            if (!this.f10111G) {
                this.f10110E = false;
            }
            this.f10107B = preferencesManager.get("debugDetailedMode", "false").equals("true");
            if (preferencesManager.contains("customValues")) {
                Iterator<JsonValue> iterator2 = new JsonReader().parse(preferencesManager.get("customValues", "[]")).iterator2();
                while (iterator2.hasNext()) {
                    JsonValue next = iterator2.next();
                    try {
                        this.f10115K[CustomValueType.valueOf(next.name).ordinal()] = next.asDouble();
                    } catch (Exception unused) {
                        Logger.log("SettingsManager", "failed to load custom value " + next.name);
                    }
                }
            }
            if (preferencesManager.contains("hotkeys")) {
                try {
                    Iterator<JsonValue> iterator22 = new JsonReader().parse(preferencesManager.get("hotkeys", "{}")).iterator2();
                    while (iterator22.hasNext()) {
                        JsonValue next2 = iterator22.next();
                        try {
                            this.f10124r[HotkeyAction.valueOf(next2.name).ordinal()] = next2.asIntArray();
                        } catch (Exception e) {
                            Logger.error("SettingsManager", "failed to load hotkey " + next2.name, e);
                        }
                    }
                } catch (Exception e2) {
                    Logger.error("SettingsManager", "failed to load hotkeys", e2);
                }
            }
            m21485g();
            Logger.log("SettingsManager", "requesting dynamic settings from the server");
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.DYNAMIC_SETTINGS_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("os", Gdx.app.getType().name());
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            Gdx.f38302net.sendHttpRequest(httpRequest, new C18783());
        }
    }

    public void removeListener(SettingsManagerListener settingsManagerListener) {
        if (settingsManagerListener != null) {
            this.f10117M.removeValue(settingsManagerListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void save() {
        CustomValueType[] customValueTypeArr;
        HotkeyAction[] hotkeyActionArr;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        Json json = new Json(JsonWriter.OutputType.minimal);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeObjectStart();
        for (CustomValueType customValueType : CustomValueType.values) {
            if (this.f10115K[customValueType.ordinal()] != this.f10114J[customValueType.ordinal()]) {
                json.writeValue(customValueType.name(), Double.valueOf(this.f10115K[customValueType.ordinal()]));
            }
        }
        json.writeObjectEnd();
        preferencesManager.set("customValues", stringWriter.toString());
        Json json2 = new Json(JsonWriter.OutputType.minimal);
        StringWriter stringWriter2 = new StringWriter();
        json2.setWriter(stringWriter2);
        json2.writeObjectStart();
        for (HotkeyAction hotkeyAction : HotkeyAction.values) {
            if (this.f10124r[hotkeyAction.ordinal()] != null) {
                json2.writeArrayStart(hotkeyAction.name());
                for (int i = 0; i < this.f10124r[hotkeyAction.ordinal()].length; i++) {
                    json2.writeValue(Integer.valueOf(this.f10124r[hotkeyAction.ordinal()][i]));
                }
                json2.writeArrayEnd();
            }
        }
        json2.writeObjectEnd();
        preferencesManager.set("hotkeys", stringWriter2.toString());
        preferencesManager.flush();
        this.f10112H = false;
        Logger.log("SettingsManager", "saved custom values to preferences");
    }

    public void saveIfRequired() {
        if (this.f10112H) {
            save();
        }
    }

    public void setBugReportsEnabled(boolean z) {
        String str;
        this.f10125s = z;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (this.f10125s) {
            str = "true";
        } else {
            str = "false";
        }
        preferencesManager.set("bugReportsEnabled", str);
        preferencesManager.flush();
        m21484h();
    }

    public void setCustomValue(CustomValueType customValueType, double d) {
        double d2 = this.f10115K[customValueType.ordinal()];
        if (d2 == d) {
            return;
        }
        this.f10115K[customValueType.ordinal()] = d;
        requireDelayedSave();
        this.f10117M.begin();
        int i = 0;
        while (true) {
            DelayedRemovalArray<SettingsManagerListener> delayedRemovalArray = this.f10117M;
            if (i < delayedRemovalArray.size) {
                delayedRemovalArray.get(i).customValueChanged(customValueType, d2);
                i++;
            } else {
                return;
            }
        }
    }

    public void setDebugDetailedMode(boolean z) {
        String str;
        if (this.f10107B == z) {
            return;
        }
        this.f10107B = z;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        preferencesManager.set("debugDetailedMode", str);
        preferencesManager.flush();
        m21484h();
    }

    public void setDebugMode(boolean z) {
        String str;
        if (this.f10106A == z) {
            return;
        }
        this.f10106A = z;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        preferencesManager.set("debugMode", str);
        preferencesManager.flush();
        m21484h();
    }

    public void setExplosionsDrawing(boolean z) {
        String str;
        if (this.f10126t == z) {
            return;
        }
        this.f10126t = z;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        preferencesManager.set("explosionsDrawing", str);
        preferencesManager.flush();
        m21484h();
    }

    public void setFlyingCoinsEnabled(boolean z) {
        String str;
        if (this.f10131y == z) {
            return;
        }
        this.f10131y = z;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        preferencesManager.set("flyingCoins", str);
        preferencesManager.flush();
        m21484h();
    }

    public void setInstantAutoWaveCallEnabled(boolean z) {
        String str;
        if (this.f10108C == z) {
            return;
        }
        this.f10108C = z;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        preferencesManager.set("instantAutoWaveCall", str);
        preferencesManager.flush();
        m21484h();
    }

    public void setLargeFontsEnabled(boolean z) {
        String str;
        if (this.f10132z == z) {
            return;
        }
        this.f10132z = z;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        preferencesManager.set("largeFonts", str);
        preferencesManager.flush();
        m21484h();
    }

    public void setMusicVolume(double d) {
        if (d < 0.0d) {
            d = 0.0d;
        }
        if (d > 1.0d) {
            d = 1.0d;
        }
        setCustomValue(CustomValueType.MUSIC_VOLUME, d);
        m21484h();
    }

    public void setParticlesDrawing(boolean z) {
        String str;
        if (this.f10129w == z) {
            return;
        }
        this.f10129w = z;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        preferencesManager.set("particlesDrawing", str);
        preferencesManager.flush();
        m21484h();
    }

    public void setProjectileTrailsDrawing(boolean z) {
        String str;
        if (this.f10128v == z) {
            return;
        }
        this.f10128v = z;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        preferencesManager.set("projectileTrailsDrawing", str);
        preferencesManager.flush();
        m21484h();
    }

    public void setProjectilesDrawing(boolean z) {
        String str;
        if (this.f10127u == z) {
            return;
        }
        this.f10127u = z;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        preferencesManager.set("projectilesDrawing", str);
        preferencesManager.flush();
        m21484h();
    }

    public void setSoundVoulme(double d) {
        if (d < 0.0d) {
            d = 0.0d;
        }
        if (d > 1.0d) {
            d = 1.0d;
        }
        setCustomValue(CustomValueType.SOUND_VOLUME, d);
        m21484h();
    }

    public void setStainsEnabled(boolean z) {
        String str;
        if (this.f10109D == z) {
            return;
        }
        this.f10109D = z;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        preferencesManager.set("stainsEnabled", str);
        preferencesManager.flush();
        m21484h();
    }

    public boolean setThreeDeeModelsEnabled(boolean z) {
        String str;
        if (this.f10110E == z) {
            return false;
        }
        if (!this.f10111G && z) {
            Game.f8589i.uiManager.notifications.add("Not enough memory :(", null, null, null);
            return false;
        }
        this.f10110E = z;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        preferencesManager.set("threeDeeModelsEnabled", str);
        preferencesManager.flush();
        m21484h();
        return true;
    }

    public void setUiAnimationsEnabled(boolean z) {
        String str;
        if (this.f10130x == z) {
            return;
        }
        this.f10130x = z;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        preferencesManager.set("uiAnimations", str);
        preferencesManager.flush();
        m21484h();
    }

    public SettingsManager() {
        String[] strArr = new String[DynamicSetting.values().length];
        this.f10118a = strArr;
        String[] strArr2 = new String[DynamicSetting.values().length];
        this.f10119b = strArr2;
        strArr2[DynamicSetting.IAP_DOUBLE_GAIN_ENABLED.ordinal()] = "true";
        strArr2[DynamicSetting.IAP_GREEN_PAPER_ENABLED.ordinal()] = "true";
        strArr2[DynamicSetting.IAP_ACCELERATOR_ENABLED.ordinal()] = "true";
        strArr2[DynamicSetting.ADS_ENABLED.ordinal()] = "true";
        strArr2[DynamicSetting.WIKI_URL.ordinal()] = Config.WIKI_URL;
        strArr2[DynamicSetting.CN_STORE_LINK.ordinal()] = Config.SIMPLIFIED_CHINESE_MARKET_URL;
        strArr2[DynamicSetting.IAP_GREEN_PAPER_MAX_PER_HOUR.ordinal()] = "200000";
        strArr2[DynamicSetting.MULTIPLAYER_TEST_ENDPOINT.ordinal()] = "null";
        System.arraycopy(strArr2, 0, strArr, 0, strArr.length);
        this.f10120d = -1;
        this.f10122p = new IntArray();
        this.f10123q = new IntArray();
        this.f10124r = new int[HotkeyAction.values.length];
        this.f10110E = true;
        this.f10114J = new double[CustomValueType.values().length];
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            this.f10114J[CustomValueType.UI_SCALE.ordinal()] = 0.9d;
        } else {
            this.f10114J[CustomValueType.UI_SCALE.ordinal()] = 1.0d;
        }
        this.f10114J[CustomValueType.DBG_CONSOLE_LINE_COUNT.ordinal()] = 100.0d;
        this.f10114J[CustomValueType.SEND_NOTIFICATIONS.ordinal()] = 1.0d;
        this.f10114J[CustomValueType.MUSIC_CACHE_MAX_SIZE.ordinal()] = 100.0d;
        this.f10114J[CustomValueType.ENABLE_REWARDING_ADS.ordinal()] = 1.0d;
        this.f10114J[CustomValueType.ENABLE_PAUSE_AD_ICON.ordinal()] = 1.0d;
        this.f10114J[CustomValueType.SOUND_VOLUME.ordinal()] = 1.0d;
        this.f10114J[CustomValueType.MUSIC_VOLUME.ordinal()] = 0.7d;
        if (Gdx.app.getType() != Application.ApplicationType.Android) {
            this.f10114J[CustomValueType.SHOOTING_SOUNDS_VOLUME.ordinal()] = 0.5d;
        } else {
            this.f10114J[CustomValueType.SHOOTING_SOUNDS_VOLUME.ordinal()] = 0.0d;
        }
        this.f10114J[CustomValueType.LIVE_LEADERBOARDS.ordinal()] = 1.0d;
        this.f10114J[CustomValueType.GRAPHICS_INTERPOLATION_ENABLED.ordinal()] = 1.0d;
        this.f10114J[CustomValueType.CAMERA_SHAKE_ENABLED.ordinal()] = 1.0d;
        this.f10114J[CustomValueType.SMOOTH_MUSIC.ordinal()] = 1.0d;
        this.f10114J[CustomValueType.STATISTICS_CHART_ENABLED.ordinal()] = 1.0d;
        this.f10114J[CustomValueType.SLOW_MOTION_PAUSE.ordinal()] = 1.0d;
        this.f10114J[CustomValueType.BACKGROUND_ENABLED.ordinal()] = 1.0d;
        this.f10114J[CustomValueType.LOOT_ICONS_ENABLED.ordinal()] = 1.0d;
        this.f10114J[CustomValueType.STATE_AUTO_SAVE_INTERVAL.ordinal()] = 3.0d;
        this.f10114J[CustomValueType.UI_QUEST_LIST_VISIBLE.ordinal()] = 1.0d;
        this.f10114J[CustomValueType.UI_LIVE_LEADERBOARDS_VISIBLE.ordinal()] = 1.0d;
        double[] dArr = new double[CustomValueType.values().length];
        this.f10115K = dArr;
        System.arraycopy(this.f10114J, 0, dArr, 0, dArr.length);
        this.f10117M = new DelayedRemovalArray<>(false, 1);
    }

    public double getCustomValue(CustomValueType customValueType) {
        if (!Config.isHeadless()) {
            return this.f10115K[customValueType.ordinal()];
        }
        throw new IllegalStateException("Not available in headless");
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void preRender(float f) {
        int[] m21487e;
        super.preRender(f);
        this.f10123q.clear();
        int i = 1;
        for (int i2 : m21487e()) {
            if (Gdx.input.isKeyPressed(i2)) {
                this.f10123q.add(i2);
                i = (i * 31) + i2;
            }
        }
        this.f10122p.clear();
        if (this.f10120d != i) {
            this.f10120d = i;
            this.f10122p.addAll(this.f10123q);
        }
    }

    public final void requireDelayedSave() {
        if (!m21488d()) {
            save();
        } else if (!this.f10112H) {
            this.f10112H = true;
            this.f10113I = 0.0f;
        }
    }

    public void setHotKey(HotkeyAction hotkeyAction, int[] iArr) {
        int[] defaultHotKey = getDefaultHotKey(hotkeyAction);
        if (iArr == null) {
            iArr = defaultHotKey;
        }
        if (m21483i(defaultHotKey, iArr) && this.f10124r[hotkeyAction.ordinal()] != null) {
            this.f10124r[hotkeyAction.ordinal()] = null;
            this.f10112H = true;
            this.f10121k = null;
            this.f10122p.clear();
            this.f10123q.clear();
        } else if (this.f10124r[hotkeyAction.ordinal()] != null && m21483i(iArr, this.f10124r[hotkeyAction.ordinal()])) {
        } else {
            this.f10124r[hotkeyAction.ordinal()] = iArr;
            this.f10121k = null;
            this.f10122p.clear();
            this.f10123q.clear();
            this.f10112H = true;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        boolean z;
        if (Runtime.getRuntime().maxMemory() > 67108864) {
            z = true;
        } else {
            z = false;
        }
        this.f10111G = z;
        PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter preferencesManagerListenerAdapter = new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.SettingsManager.1
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                SettingsManager.this.reload();
            }
        };
        this.f10116L = preferencesManagerListenerAdapter;
        Game.f8589i.preferencesManager.addListener(preferencesManagerListenerAdapter);
        reload();
        Gdx.app.addLifecycleListener(new LifecycleListener() { // from class: com.prineside.tdi2.managers.SettingsManager.2
            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                if (SettingsManager.this.f10112H) {
                    SettingsManager.this.save();
                }
            }
        });
    }

    public static Graphics.DisplayMode getBestFullscreenMode(int i, int i2) {
        IntPair bestScreenResolution = Game.f8589i.actionResolver.getBestScreenResolution();
        return getBestFullscreenMode(i, i2, bestScreenResolution.f15103a, bestScreenResolution.f15104b);
    }
}
