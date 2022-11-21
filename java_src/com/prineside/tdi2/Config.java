package com.prineside.tdi2;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.utils.BufferUtils;
import com.prineside.tdi2.utils.REGS;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.IntBuffer;
@REGS(classOnly = true)
/* loaded from: classes2.dex */
public class Config {
    public static String ANDROID_INTERSTITIAL_AD_ID = null;
    public static String ANDROID_REWARDED_INTERSTITIAL_AD_ID = null;
    public static String ANDROID_REWARDED_VIDEOS_ID = null;
    public static final String APP_STORE_URI = "https://apps.apple.com/us/app/infinitode-2/id1480178308";
    public static final int BUILD = 184;
    public static final int BUILD_PROTOCOL = 184;
    public static final String DAILY_QUEST_RULES_WIKI_URL = "https://infinitode-2.fandom.com/wiki/Daily_quests";
    public static final float DEBUG_ITEM_DROP_RATE = 1.0f;
    public static final boolean DEBUG_MODE = false;
    public static final boolean DEBUG_TEST_MANAGERS = false;
    public static final int DISPLAY_HEIGHT = 720;
    public static final int DISPLAY_WIDTH = 1280;
    public static final float ENDLESS_MAX_REPLAY_DURATION = 3600.0f;
    public static final float ENEMY_DIE_SCORE_MULTIPLIER = 1.75f;
    public static final String FEEDBACK_EMAIL = "sup.prineside@gmail.com";
    public static final int FLAVOR = 0;
    public static final int FLAVOR_NORMAL = 0;
    public static final int FLAVOR_OKJOY = 1;
    public static final int FONT_SIZE_HUGE = 60;
    public static final int FONT_SIZE_LARGE = 36;
    public static final int FONT_SIZE_MEDIUM = 30;
    public static final int FONT_SIZE_SMALL = 24;
    public static final int FONT_SIZE_XX_SMALL = 18;
    public static final int FONT_SIZE_X_SMALL = 21;
    public static final boolean GENERATE_RESOURCES = false;
    public static final float GIVEN_DAMAGE_EXP_COEFF = 2.0f;
    public static final String I18N_SUGGEST_FIX_URL = "https://infinitode.prineside.com/?m=translate";
    public static String IOS_REWARDED_VIDEOS_ID = null;
    public static boolean IS_HEADLESS = false;
    public static final long MAX_UPDATES_DURATION = 33333;
    public static final float MAX_UPDATES_TIME_ACCUMULATOR = 2.0f;
    public static final int NOTIFICATION_ID_CHEST_DECRYPTED = 1;
    public static final int NOTIFICATION_ID_CRAFTING_COMPLETED = 2;
    public static String PACKAGE = "com.prineside.tdi2";
    public static final String PAYMENTS_STORE_PARAM_ANDROID_GOOGLE = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA/U+ICp4sQUINhFRq+JaoetZReLuOOb1m1b5qPlxqeSRhGdu0HruaniHqz/96r81gxS14nCWMsBcV6qHQMj54rgPAAUVwMOY9tnf4ET5ObjwxgSpSsa0219FG9r6SbJyyNNOcR7O+4wefwtLItFwt8ItW3IOasyxyEb4frqK6PLiQNs6hTHtANYULlv4UrvTNoijvhLBGL8N2GO5pNMIwwI7GNp+VecmSG/xKD+4E7kZR1F0ZxSew03Zrz0UiVikk3Lgks4WoEwevwNi44OU/P7oqYFDDoHDh81xf+hK8MQ3ijPa8u3EBARBFYN0mc3Hl9w0lrpiKx19PE5yZ48IoUQIDAQAB";
    public static final int PLAYER_XP_INACTIVITY_DURATION = 13500;
    public static final int PLAYER_XP_ISSUE_INTERVAL = 2700;
    public static final int PLAYER_XP_ISSUE_INTERVAL_ENDLESS = 5400;
    public static final int PLAYER_XP_MAX_PER_GAME = 1333;
    public static final String PLAY_STORE_URI = "https://play.google.com/store/apps/details?id=com.prineside.tdi2";
    public static final String[] PREFERENCES_NAMES;
    public static final String PREFERENCES_NAME_PROGRESS;
    public static final String PREFERENCES_NAME_SETTINGS;
    public static final String PREFERENCES_NAME_STATISTICS;
    public static final String PREFERENCES_NAME_USER_MAPS;
    public static final int PRESTIGE_MAP_SELL_STAT_MIN_PRICE = 50;
    public static final boolean PUBLIC_BETA_MODE = false;
    public static final int REPLAY_CHARTS_VERSION = 2;
    public static final String RESOURCES_DIR = "res/";
    public static final String SERVER_TIMESTAMP_FALLBACK_URL = "https://dev.prineside.com/timestamp";
    public static final String SIMPLIFIED_CHINESE_MARKET_URL = "https://www.taptap.com/app/174842";
    public static final String SITE_API_VERSION = "1";
    public static final int STEAM_APP_ID = 937310;
    public static final boolean SYNC_CHECK_COLD_START_ON_CONTINUE = true;
    public static final int SYNC_CHECK_MAX_DEPTH = 12;
    public static final int TILE_HALF_SIZE = 64;
    public static final int TILE_SIZE = 128;
    public static final String VERSION = "R.1.8.7";
    public static final int VIEWPORT_HEIGHT = 1080;
    public static final String WIKI_URL = "https://infinitode-2.wikia.com";
    public static final String XDX_ROOT_URL;
    public static final String XDX_VIEW_NEWS_URL;
    public static final String XDX_VIEW_PLAYER_PROFILE_URL;
    public static final String XDX_VIEW_SEASONAL_LEADERBOARD_URL;

    /* renamed from: a */
    public static int f8542a;

    /* renamed from: b */
    public static String f8543b;
    public static final Color WHITE_COLOR_CACHED_FLOAT_BITS = new Color(1.0f, 1.0f, 1.0f, 1.0f) { // from class: com.prineside.tdi2.Config.1
        @Override // com.badlogic.gdx.graphics.Color
        public final float toFloatBits() {
            return Color.WHITE_FLOAT_BITS;
        }
    };
    public static final float BLACK_SEMITRANSPARENT_COLOR_FLOAT_BITS = new Color(0.0f, 0.0f, 0.0f, 0.56f).toFloatBits();
    public static final float WHITE_SEMITRANSPARENT_COLOR_FLOAT_BITS = new Color(1.0f, 1.0f, 1.0f, 0.56f).toFloatBits();
    public static final Color BACKGROUND_COLOR = new Color(387389439);
    public static int GAME_STATE_UPDATE_RATE = 30;
    public static float UPDATE_DELTA_TIME = 1.0f / 30;
    public static final int REPLAY_CHARTS_INTERVAL = 30 * 5;
    public static String PREFERENCES_NAME_PREFIX = "com.prineside.tdi2._prefV1.";
    public static final int[] NOTIFICATION_IDS = {1, 2};
    public static String GLOBAL_SITE_URL = "https://infinitode.prineside.com";
    public static String SITE_URL = "https://infinitode.prineside.com";
    public static final String NEWS_URI = SITE_URL + "/?m=news";
    public static final String OPTIONAL_WEB_TEXTURES_URL = SITE_URL + "/img/optional/";
    public static final String AVATAR_WEB_TEXTURES_URL = SITE_URL + "/img/avatars/";
    public static String PRIVACY_POLICY_URL = "https://infinitode.prineside.com/?m=game_privacy_policy";
    public static final String SITE_SHARED_GET_PART = "&apiv=1&g=com.prineside.tdi2&v=184";
    public static final String SERVER_TIMESTAMP_URL = SITE_URL + "/?m=api&a=getTimestamp" + SITE_SHARED_GET_PART;
    public static final String GAME_REPLAY_REPORT_URL = SITE_URL + "/?m=api&a=submitGameReplay" + SITE_SHARED_GET_PART;
    public static String PERFORMANCE_SURVEY_STATUS_URL = "https://dev.prineside.com/performance_report/getStatus.php";
    public static String PERFORMANCE_SURVEY_REPORT_URL = "https://dev.prineside.com/performance_report/submit.php";
    public static final String IAP_VALIDATION_URL = SITE_URL + "/?m=api&a=validateIAP" + SITE_SHARED_GET_PART;
    public static final String GET_BEST_GAME_REPLAY_URL = SITE_URL + "/?m=api&a=getBestGameReplay" + SITE_SHARED_GET_PART;
    public static final String SECRET_CODE_APPLICATION_URL = SITE_URL + "/?m=api&a=applySecretCode" + SITE_SHARED_GET_PART;
    public static final String LOGGER_REPORT_URL = SITE_URL + "/?m=api&a=submitLoggerReport" + SITE_SHARED_GET_PART;
    public static final String GAME_START_LOG_URL = SITE_URL + "/?m=api&a=logGameStart" + SITE_SHARED_GET_PART;
    public static final String DYNAMIC_SETTINGS_URL = SITE_URL + "/?m=api&a=getDynamicSettings" + SITE_SHARED_GET_PART;
    public static final String AUTH_GET_SESSION_INFO_URL = SITE_URL + "/?m=api&a=getPlayerSessionInfo" + SITE_SHARED_GET_PART;
    public static final String AUTH_SAVE_GAME_URL = SITE_URL + "/?m=api&a=saveGame" + SITE_SHARED_GET_PART;
    public static final String AUTH_BACKUP_PROGRESS_URL = SITE_URL + "/?m=api&a=addProgressRestorePoint" + SITE_SHARED_GET_PART;
    public static final String AUTH_LOAD_GAME_URL = SITE_URL + "/?m=api&a=loadGame" + SITE_SHARED_GET_PART;
    public static final String AUTH_DELETE_GAME_URL = SITE_URL + "/?m=api&a=deleteGame" + SITE_SHARED_GET_PART;
    public static final String AUTH_SIGN_IN_URL = SITE_URL + "/?m=api&a=signIn" + SITE_SHARED_GET_PART;
    public static final String AUTH_SIGN_IN_GOOGLE_URL = SITE_URL + "/?m=api&a=signInOrUpWithGoogle" + SITE_SHARED_GET_PART;
    public static final String AUTH_SIGN_IN_OKJOY_URL = SITE_URL + "/?m=api&a=signInOrUpWithApptutti" + SITE_SHARED_GET_PART;
    public static final String AUTH_PASSWORD_RESET_URL = SITE_URL + "/?m=api&a=resetPassword" + SITE_SHARED_GET_PART;
    public static final String AUTH_NICKNAME_CHANGE_URL = SITE_URL + "/?m=api&a=changeNickname" + SITE_SHARED_GET_PART;
    public static final String AUTH_SIGN_OUT_URL = SITE_URL + "/?m=api&a=signOut" + SITE_SHARED_GET_PART;
    public static final String AUTH_SIGN_UP_URL = SITE_URL + "/?m=api&a=signUp" + SITE_SHARED_GET_PART;
    public static final String AUTH_AUT_SIGN_UP_DETAILS_URL = SITE_URL + "/?m=api&a=autoSignUpSubmitDetails" + SITE_SHARED_GET_PART;
    public static final String REVIEW_URL = SITE_URL + "/?m=api&a=submitReview" + SITE_SHARED_GET_PART;
    public static final String GET_SAVED_GAMES_LIST_URL = SITE_URL + "/?m=api&a=getSavedGamesList" + SITE_SHARED_GET_PART;
    public static final String REQUEST_OF_MERIT_BADGE = SITE_URL + "/?m=api&a=requestOfMeritBadge" + SITE_SHARED_GET_PART;
    public static final String GET_LAST_REPLAYS_TO_RESTORE_PREFERENCES_URL = SITE_URL + "/?m=api&a=getLastReplaysToRestorePreferences" + SITE_SHARED_GET_PART;
    public static final String GET_BACKUPS_TO_RESTORE_PREFERENCES_URL = SITE_URL + "/?m=api&a=getProgressRestorePoints" + SITE_SHARED_GET_PART;
    public static final String GET_BASIC_LEVELS_TOP_LEADERBOARDS_URL = SITE_URL + "/?m=api&a=getBasicLevelsTopLeaderboards" + SITE_SHARED_GET_PART;
    public static final String GET_LEADERBOARDS_URL = SITE_URL + "/?m=api&a=getLeaderboards" + SITE_SHARED_GET_PART;
    public static final String GET_SKILL_POINT_LEADER_BOARD_URL = SITE_URL + "/?m=api&a=getSkillPointLeaderboard" + SITE_SHARED_GET_PART;
    public static final String GET_LEADERBOARDS_RANK_URL = SITE_URL + "/?m=api&a=getLeaderboardsRank" + SITE_SHARED_GET_PART;
    public static final String GET_DAILY_QUEST_LEADERBOARDS_URL = SITE_URL + "/?m=api&a=getDailyQuestLeaderboards" + SITE_SHARED_GET_PART;
    public static final String GET_LEADERBOARDS_ADVANCE_RANK_URL = SITE_URL + "/?m=api&a=getAdvanceLeaderboardsRank" + SITE_SHARED_GET_PART;
    public static final String GET_DAILY_QUEST_LEADERBOARDS_ADVANCE_RANK_URL = SITE_URL + "/?m=api&a=getDailyQuestAdvanceLeaderboardsRank" + SITE_SHARED_GET_PART;
    public static final String GET_LATEST_NEWS_URL = SITE_URL + "/?m=api&a=getLatestNews" + SITE_SHARED_GET_PART;
    public static final String RECEIVE_ISSUED_ITEMS_URL = SITE_URL + "/?m=api&a=receiveIssuedItems" + SITE_SHARED_GET_PART;
    public static final String GET_DAILY_QUEST_INFO_URL = SITE_URL + "/?m=api&a=getDailyQuestInfo" + SITE_SHARED_GET_PART;
    public static final String GET_DAILY_QUEST_HASH_URL = SITE_URL + "/?m=api&a=getDailyQuestHash" + SITE_SHARED_GET_PART;
    public static final String GET_DAILY_QUEST_MAP_URL = SITE_URL + "/?m=api&a=getDailyQuestMap" + SITE_SHARED_GET_PART;
    public static final String GET_RUNTIME_LEADERBOARDS_URL = SITE_URL + "/?m=api&a=getRuntimeLeaderboards" + SITE_SHARED_GET_PART;
    public static final String VOTE_MUSIC_URL = SITE_URL + "/?m=api&a=voteMusic" + SITE_SHARED_GET_PART;
    public static final String SUBMIT_MUSIC_URL = SITE_URL + "/?m=api&a=submitMusic" + SITE_SHARED_GET_PART;
    public static final String GET_STEAM_AUTH_TICKET_INFO_URL = SITE_URL + "/?m=api&a=getSteamAuthTicketInfo" + SITE_SHARED_GET_PART;

    /* loaded from: classes2.dex */
    public enum ProductId {
        DOUBLE_GAIN,
        PACK_TINY,
        PACK_SMALL,
        PACK_MEDIUM,
        PACK_LARGE,
        PACK_HUGE,
        ACCELERATOR_PACK_TINY,
        ACCELERATOR_PACK_SMALL,
        ACCELERATOR_PACK_MEDIUM,
        ACCELERATOR_PACK_LARGE,
        ACCELERATOR_PACK_HUGE;
        
        public static ProductId[] values = values();
    }

    public static boolean isCompatibleWithBuild(int i) {
        return i <= 184 && i >= 184;
    }

    public static boolean isHeadless() {
        return IS_HEADLESS;
    }

    public static boolean isModdingMode() {
        return getModId() != null;
    }

    public static boolean preferencesEncryptionEnabled() {
        return (isHeadless() || isModdingMode()) ? false : true;
    }

    static {
        String str = PREFERENCES_NAME_PREFIX + "Progress";
        PREFERENCES_NAME_PROGRESS = str;
        String str2 = PREFERENCES_NAME_PREFIX + "Settings";
        PREFERENCES_NAME_SETTINGS = str2;
        String str3 = PREFERENCES_NAME_PREFIX + "Statistics";
        PREFERENCES_NAME_STATISTICS = str3;
        String str4 = PREFERENCES_NAME_PREFIX + "UserMaps";
        PREFERENCES_NAME_USER_MAPS = str4;
        PREFERENCES_NAMES = new String[]{str, str2, str3, str4};
        StringBuilder sb = new StringBuilder();
        sb.append(SITE_URL);
        sb.append("/xdx/?url=");
        XDX_ROOT_URL = sb.toString();
        XDX_VIEW_NEWS_URL = SITE_URL + "/xdx/?url=news/view&id=";
        XDX_VIEW_SEASONAL_LEADERBOARD_URL = SITE_URL + "/xdx/?url=seasonal_leaderboard";
        XDX_VIEW_PLAYER_PROFILE_URL = SITE_URL + "/xdx/?url=profile/view&id=";
        ANDROID_REWARDED_VIDEOS_ID = "ca-app-pub-1337541681212211/6030540436";
        ANDROID_REWARDED_INTERSTITIAL_AD_ID = "ca-app-pub-1337541681212211/6253548041";
        ANDROID_INTERSTITIAL_AD_ID = "ca-app-pub-1337541681212211/5100070865";
        IOS_REWARDED_VIDEOS_ID = "ca-app-pub-1337541681212211/2711212026";
        IS_HEADLESS = false;
        f8543b = null;
    }

    public static int getMaxTextureSize() {
        if (f8542a == 0) {
            try {
                IntBuffer newIntBuffer = BufferUtils.newIntBuffer(16);
                Gdx.gl20.glGetIntegerv(GL20.GL_MAX_TEXTURE_SIZE, newIntBuffer);
                f8542a = newIntBuffer.get();
            } catch (Exception unused) {
                f8542a = 2048;
                Logger.error("Config", "Failed to get max texture size, falling back to 2048");
            }
        }
        return f8542a;
    }

    public static String getModId() {
        if (f8543b == null) {
            f8543b = "DevEL";
            File file = Gdx.files.external("mod_id.txt").file();
            if (file.exists() && file.isFile()) {
                String replaceAll = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8")).readLine().trim().replaceAll("[^a-zA-Z0-9]", "");
                if (replaceAll.length() > 0 && replaceAll.length() <= 32) {
                    f8543b = replaceAll;
                } else {
                    Logger.log("Config", "Invalid or empty mod id (should be a-zA-Z0-9, 1-32 chars in length)");
                }
            }
            Logger.log("Config", "Using mod id: " + f8543b);
        }
        return f8543b;
    }
}
