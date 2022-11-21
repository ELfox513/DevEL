package com.prineside.tdi2.managers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ObjectMap;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.managers.AuthManager;
import com.prineside.tdi2.managers.ReplayManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.REGS;
import java.util.HashMap;
import java.util.Iterator;
import p168r4.C6226s;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class LeaderBoardManager extends Manager.ManagerAdapter {

    /* renamed from: a */
    public SkillPointsLeaderboardsResult f9821a;

    /* renamed from: b */
    public final Array<LeaderboardsResult> f9822b = new Array<>(false, 1, LeaderboardsResult.class);

    /* renamed from: d */
    public final Array<LeaderboardsRankResult> f9823d = new Array<>(false, 1, LeaderboardsRankResult.class);

    /* renamed from: k */
    public BasicLevelsTopLeaderboards f9824k = new BasicLevelsTopLeaderboards(false);

    /* renamed from: p */
    public boolean f9825p = true;

    /* renamed from: q */
    public DelayedRemovalArray<ObjectRetriever<BasicLevelsTopLeaderboards>> f9826q = new DelayedRemovalArray<>(ObjectRetriever.class);

    /* renamed from: r */
    public boolean f9827r;

    /* loaded from: classes2.dex */
    public static class BasicLevelsTopLeaderboards {
        public DifficultyMode difficultyMode;
        public ObjectMap<String, Array<LeaderboardsEntry>> leaderboards = new ObjectMap<>();
        public int requestTimestamp = Game.getTimestampSeconds();
        public boolean success;

        public static BasicLevelsTopLeaderboards fromJson(JsonValue jsonValue) {
            BasicLevelsTopLeaderboards basicLevelsTopLeaderboards = new BasicLevelsTopLeaderboards(true);
            basicLevelsTopLeaderboards.requestTimestamp = jsonValue.getInt("rt");
            basicLevelsTopLeaderboards.difficultyMode = DifficultyMode.valueOf(jsonValue.getString("dm"));
            Iterator<JsonValue> iterator2 = jsonValue.get("l").iterator2();
            while (iterator2.hasNext()) {
                JsonValue next = iterator2.next();
                String str = next.name;
                Array<LeaderboardsEntry> array = new Array<>();
                Iterator<JsonValue> iterator22 = next.iterator2();
                while (iterator22.hasNext()) {
                    array.add(LeaderboardsEntry.fromJson(iterator22.next()));
                }
                basicLevelsTopLeaderboards.leaderboards.put(str, array);
            }
            return basicLevelsTopLeaderboards;
        }

        public void toJson(Json json) {
            json.writeValue("rt", Integer.valueOf(this.requestTimestamp));
            json.writeValue("dm", this.difficultyMode.name());
            json.writeArrayStart("l");
            ObjectMap.Entries<String, Array<LeaderboardsEntry>> it = this.leaderboards.iterator();
            while (it.hasNext()) {
                ObjectMap.Entry next = it.next();
                json.writeArrayStart((String) next.key);
                Array array = (Array) next.value;
                for (int i = 0; i < array.size; i++) {
                    json.writeObjectStart();
                    ((LeaderboardsEntry) array.get(i)).toJson(json);
                    json.writeObjectEnd();
                }
                json.writeArrayEnd();
            }
            json.writeArrayEnd();
        }

        public BasicLevelsTopLeaderboards(boolean z) {
            this.success = z;
        }
    }

    /* loaded from: classes2.dex */
    public static class LeaderboardsEntry {
        public Color badgeIconColor;
        public String badgeIconTexture;
        public Color badgeOverlayColor;
        public String badgeOverlayTexture;
        public boolean hasProfilePicture;
        public String nickname;
        public String playerId;
        public int profileLevel;
        public int rank;
        public long score;

        public static LeaderboardsEntry fromJson(JsonValue jsonValue) {
            LeaderboardsEntry leaderboardsEntry = new LeaderboardsEntry(jsonValue.getString("p"), jsonValue.getString("n"), jsonValue.getLong(C6226s.f31189J), jsonValue.getInt("r"), jsonValue.getBoolean("hpp"), jsonValue.getInt("pl"));
            leaderboardsEntry.badgeIconTexture = jsonValue.getString("bit", null);
            leaderboardsEntry.badgeIconColor = Color.valueOf(jsonValue.getString("bic", "FFFFFFFF"));
            leaderboardsEntry.badgeOverlayTexture = jsonValue.getString("bot", null);
            leaderboardsEntry.badgeOverlayColor = Color.valueOf(jsonValue.getString("boc", "FFFFFFFF"));
            return leaderboardsEntry;
        }

        public void toJson(Json json) {
            json.writeValue("p", this.playerId);
            json.writeValue("n", this.nickname);
            json.writeValue(C6226s.f31189J, Long.valueOf(this.score));
            json.writeValue("r", Integer.valueOf(this.rank));
            json.writeValue("hpp", Boolean.valueOf(this.hasProfilePicture));
            json.writeValue("pl", Integer.valueOf(this.profileLevel));
            String str = this.badgeIconTexture;
            if (str != null) {
                json.writeValue("bit", str);
            }
            Color color = this.badgeIconColor;
            if (color != null) {
                json.writeValue("bic", color.toString());
            }
            String str2 = this.badgeOverlayTexture;
            if (str2 != null) {
                json.writeValue("bot", str2);
            }
            Color color2 = this.badgeOverlayColor;
            if (color2 != null) {
                json.writeValue("boc", color2);
            }
        }

        public LeaderboardsEntry(String str, String str2, long j, int i, boolean z, int i2) {
            this.playerId = str;
            this.nickname = str2;
            this.score = j;
            this.rank = i;
            this.hasProfilePicture = z;
            this.profileLevel = i2;
            if (i2 < 1) {
                this.profileLevel = 1;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class LeaderboardsRankResult {
        public DifficultyMode difficultyMode;
        public GameStateSystem.GameMode gameMode;
        public boolean isAdvance;
        public String mapName;
        public ReplayManager.LeaderboardsMode mode;
        public String playerId;
        public int rank;
        public int requestTimestamp;
        public long score;
        public boolean success;
        public int total;

        public LeaderboardsRankResult(boolean z, DifficultyMode difficultyMode, ReplayManager.LeaderboardsMode leaderboardsMode, boolean z2, GameStateSystem.GameMode gameMode, String str, String str2) {
            this.isAdvance = z2;
            this.difficultyMode = difficultyMode;
            this.gameMode = gameMode;
            this.mapName = str;
            this.playerId = str2;
            this.success = z;
            this.mode = leaderboardsMode;
            this.requestTimestamp = Game.getTimestampSeconds();
        }

        public static LeaderboardsRankResult fromJson(JsonValue jsonValue) {
            ReplayManager.LeaderboardsMode valueOf = ReplayManager.LeaderboardsMode.valueOf(jsonValue.getString("m"));
            GameStateSystem.GameMode valueOf2 = GameStateSystem.GameMode.valueOf(jsonValue.getString("gm"));
            DifficultyMode difficultyMode = DifficultyMode.NORMAL;
            try {
                difficultyMode = DifficultyMode.valueOf(jsonValue.getString("dm"));
            } catch (Exception unused) {
            }
            LeaderboardsRankResult leaderboardsRankResult = new LeaderboardsRankResult(true, difficultyMode, valueOf, jsonValue.getBoolean("a"), valueOf2, jsonValue.getString("mn"), jsonValue.getString("pi"));
            leaderboardsRankResult.score = jsonValue.getLong(C6226s.f31189J);
            leaderboardsRankResult.rank = jsonValue.getInt("r");
            leaderboardsRankResult.total = jsonValue.getInt("t");
            leaderboardsRankResult.requestTimestamp = jsonValue.getInt("rt");
            return leaderboardsRankResult;
        }

        public void toJson(Json json) {
            if (this.success) {
                if (!this.isAdvance) {
                    json.writeValue("rt", Integer.valueOf(this.requestTimestamp));
                    json.writeValue("m", this.mode.name());
                    json.writeValue("a", Boolean.FALSE);
                    json.writeValue("gm", this.gameMode.name());
                    json.writeValue("dm", this.difficultyMode.name());
                    json.writeValue("mn", this.mapName);
                    json.writeValue("pi", this.playerId);
                    json.writeValue("r", Integer.valueOf(this.rank));
                    json.writeValue(C6226s.f31189J, Long.valueOf(this.score));
                    json.writeValue("t", Integer.valueOf(this.total));
                    return;
                }
                throw new IllegalStateException("This result is advance, can't save to json");
            }
            throw new IllegalStateException("This result is failed, can't save to json");
        }
    }

    /* loaded from: classes2.dex */
    public static class LeaderboardsResult {
        public DifficultyMode difficultyMode;
        public Array<LeaderboardsEntry> entries;
        public GameStateSystem.GameMode gameMode;
        public String mapName;
        public ReplayManager.LeaderboardsMode mode;
        public LeaderboardsRankResult player;
        public String playerId;
        public int requestTimestamp;
        public boolean success;

        public LeaderboardsResult(GameStateSystem.GameMode gameMode, DifficultyMode difficultyMode, String str, String str2, boolean z, ReplayManager.LeaderboardsMode leaderboardsMode) {
            this.player = null;
            this.entries = new Array<>();
            this.gameMode = gameMode;
            this.difficultyMode = difficultyMode;
            this.mapName = str;
            this.playerId = str2;
            this.success = z;
            this.mode = leaderboardsMode;
            this.requestTimestamp = Game.getTimestampSeconds();
        }

        public static LeaderboardsResult fromJson(JsonValue jsonValue) {
            GameStateSystem.GameMode valueOf = GameStateSystem.GameMode.valueOf(jsonValue.getString("gm"));
            String string = jsonValue.getString("mn");
            String string2 = jsonValue.getString("pi", null);
            ReplayManager.LeaderboardsMode valueOf2 = ReplayManager.LeaderboardsMode.valueOf(jsonValue.getString("m"));
            DifficultyMode difficultyMode = DifficultyMode.NORMAL;
            try {
                difficultyMode = DifficultyMode.valueOf(jsonValue.getString("dm"));
            } catch (Exception unused) {
            }
            LeaderboardsResult leaderboardsResult = new LeaderboardsResult(valueOf, difficultyMode, string, string2, true, valueOf2);
            if (jsonValue.has("p")) {
                leaderboardsResult.player = LeaderboardsRankResult.fromJson(jsonValue.get("p"));
            }
            Iterator<JsonValue> iterator2 = jsonValue.get("e").iterator2();
            while (iterator2.hasNext()) {
                leaderboardsResult.entries.add(LeaderboardsEntry.fromJson(iterator2.next()));
            }
            leaderboardsResult.requestTimestamp = jsonValue.getInt("rt");
            return leaderboardsResult;
        }

        public void toJson(Json json) {
            if (this.success) {
                json.writeValue("rt", Integer.valueOf(this.requestTimestamp));
                json.writeValue("gm", this.gameMode.name());
                json.writeValue("dm", this.difficultyMode.name());
                json.writeValue("mn", this.mapName);
                String str = this.playerId;
                if (str != null) {
                    json.writeValue("pi", str);
                }
                json.writeValue("m", this.mode.name());
                if (this.player != null) {
                    json.writeObjectStart("p");
                    this.player.toJson(json);
                    json.writeObjectEnd();
                }
                json.writeArrayStart("e");
                for (int i = 0; i < this.entries.size; i++) {
                    json.writeObjectStart();
                    this.entries.get(i).toJson(json);
                    json.writeObjectEnd();
                }
                json.writeArrayEnd();
                return;
            }
            throw new IllegalStateException("This result is failed, can't save to json");
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<LeaderBoardManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public LeaderBoardManager read() {
            return Game.f8589i.leaderBoardManager;
        }
    }

    /* loaded from: classes2.dex */
    public static class SkillPointsLeaderboardsRank {
        public String playerId;
        public int rank;
        public int requestTimestamp;
        public int score;
        public boolean success;
        public int total;

        public SkillPointsLeaderboardsRank(boolean z, String str) {
            this.playerId = str;
            this.success = z;
            this.requestTimestamp = Game.getTimestampSeconds();
        }
    }

    /* loaded from: classes2.dex */
    public static class SkillPointsLeaderboardsResult {
        public Array<LeaderboardsEntry> entries;
        public SkillPointsLeaderboardsRank player;
        public String playerId;
        public int requestTimestamp;
        public boolean success;

        public SkillPointsLeaderboardsResult(String str, boolean z) {
            this.player = null;
            this.entries = new Array<>();
            this.playerId = str;
            this.success = z;
            this.requestTimestamp = Game.getTimestampSeconds();
        }
    }

    /* renamed from: j */
    public final void m21584j() {
    }

    public void removeBasicLevelsTopLeaderboardsRetriever(ObjectRetriever<BasicLevelsTopLeaderboards> objectRetriever) {
        this.f9826q.removeValue(objectRetriever, true);
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.authManager.getNews(new ObjectRetriever<AuthManager.NewsResponse>() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.1
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(AuthManager.NewsResponse newsResponse) {
                if (newsResponse == null || 184 >= newsResponse.networkRequiredVersion) {
                    return;
                }
                LeaderBoardManager.this.f9825p = false;
                Logger.log("LeaderBoardManager", "submit disabled - too low game version");
            }
        });
    }

    public void getBasicLevelsTopLeaderboards(ObjectRetriever<BasicLevelsTopLeaderboards> objectRetriever) {
        final DifficultyMode difficultyMode = Game.f8589i.progressManager.getDifficultyMode();
        BasicLevelsTopLeaderboards basicLevelsTopLeaderboards = this.f9824k;
        if (basicLevelsTopLeaderboards.success && basicLevelsTopLeaderboards.difficultyMode == difficultyMode && Game.getTimestampSeconds() - this.f9824k.requestTimestamp < 120) {
            Logger.log("LeaderBoardManager", "getBasicLevelsTopLeaderboards - returning cache");
            objectRetriever.retrieved(this.f9824k);
            return;
        }
        if (!this.f9826q.contains(objectRetriever, true)) {
            this.f9826q.add(objectRetriever);
        }
        if (this.f9827r) {
            return;
        }
        this.f9827r = true;
        final BasicLevelsTopLeaderboards basicLevelsTopLeaderboards2 = this.f9824k;
        try {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.GET_BASIC_LEVELS_TOP_LEADERBOARDS_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("mode", ReplayManager.LeaderboardsMode.score.name());
            hashMap.put("difficulty", difficultyMode.name());
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.2
                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void cancelled() {
                    LeaderBoardManager.this.f9827r = false;
                    Logger.error("LeaderBoardManager", "Timeout while getting leaderboards");
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.2.5
                        @Override // java.lang.Runnable
                        public void run() {
                            C17892 c17892 = C17892.this;
                            LeaderBoardManager.this.m21585i(basicLevelsTopLeaderboards2);
                        }
                    });
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void failed(Throwable th) {
                    LeaderBoardManager.this.f9827r = false;
                    Logger.error("LeaderBoardManager", "Error while getting leaderboards", th);
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.2.4
                        @Override // java.lang.Runnable
                        public void run() {
                            C17892 c17892 = C17892.this;
                            LeaderBoardManager.this.m21585i(basicLevelsTopLeaderboards2);
                        }
                    });
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void handleHttpResponse(Net.HttpResponse httpResponse) {
                    LeaderBoardManager.this.f9827r = false;
                    try {
                        String resultAsString = httpResponse.getResultAsString();
                        Logger.log("LeaderBoardManager", "got response from server getBasicLevelsTopLeaderboards");
                        final JsonValue parse = new JsonReader().parse(resultAsString);
                        if (parse.getString("status").equals("success")) {
                            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    BasicLevelsTopLeaderboards basicLevelsTopLeaderboards3 = new BasicLevelsTopLeaderboards(true);
                                    basicLevelsTopLeaderboards3.difficultyMode = difficultyMode;
                                    Iterator<JsonValue> iterator2 = parse.get("levels").iterator2();
                                    while (iterator2.hasNext()) {
                                        JsonValue next = iterator2.next();
                                        String string = next.getString("level");
                                        JsonValue jsonValue = next.get("leaderboards");
                                        Array<LeaderboardsEntry> array = new Array<>();
                                        Iterator<JsonValue> iterator22 = jsonValue.iterator2();
                                        int i = 1;
                                        while (iterator22.hasNext()) {
                                            JsonValue next2 = iterator22.next();
                                            array.add(new LeaderboardsEntry(next2.getString("playerid"), next2.getString("nickname"), next2.getLong("score"), i, false, 1));
                                            i++;
                                        }
                                        basicLevelsTopLeaderboards3.leaderboards.put(string, array);
                                    }
                                    LeaderBoardManager.this.f9824k = basicLevelsTopLeaderboards3;
                                    LeaderBoardManager.this.m21584j();
                                    LeaderBoardManager.this.m21585i(basicLevelsTopLeaderboards3);
                                }
                            });
                        } else {
                            Logger.error("LeaderBoardManager", "can't retrieve leaderboards: " + resultAsString);
                            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.2.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    C17892 c17892 = C17892.this;
                                    LeaderBoardManager.this.m21585i(basicLevelsTopLeaderboards2);
                                }
                            });
                        }
                    } catch (Exception e) {
                        Logger.error("LeaderBoardManager", "Failed to parse response", e);
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.2.3
                            @Override // java.lang.Runnable
                            public void run() {
                                C17892 c17892 = C17892.this;
                                LeaderBoardManager.this.m21585i(basicLevelsTopLeaderboards2);
                            }
                        });
                    }
                }
            });
        } catch (Exception e) {
            this.f9827r = false;
            Logger.error("LeaderBoardManager", "Failed to get leaderboards", e);
            m21585i(basicLevelsTopLeaderboards2);
        }
    }

    public void getLeaderboards(final GameStateSystem.GameMode gameMode, final DifficultyMode difficultyMode, final String str, final ReplayManager.LeaderboardsMode leaderboardsMode, final ObjectRetriever<LeaderboardsResult> objectRetriever) {
        LeaderboardsResult leaderboardsResult;
        LeaderboardsResult leaderboardsResult2;
        String str2;
        LeaderboardsResult leaderboardsResult3 = new LeaderboardsResult(gameMode, difficultyMode, str, Game.f8589i.authManager.getPlayerId(), false, leaderboardsMode);
        int i = 0;
        while (true) {
            Array<LeaderboardsResult> array = this.f9822b;
            if (i < array.size) {
                leaderboardsResult2 = array.items[i];
                if (leaderboardsResult2.gameMode == gameMode && leaderboardsResult2.difficultyMode == difficultyMode) {
                    if (leaderboardsResult2.mapName.equals(str)) {
                        if (leaderboardsMode == leaderboardsResult2.mode && ((!Game.f8589i.authManager.isSignedIn() && leaderboardsResult2.playerId == null) || (Game.f8589i.authManager.isSignedIn() && (str2 = leaderboardsResult2.playerId) != null && str2.equals(Game.f8589i.authManager.getPlayerId())))) {
                            break;
                        }
                        i++;
                    }
                    i++;
                }
                i++;
            } else {
                leaderboardsResult = leaderboardsResult3;
                break;
            }
        }
        if (Game.getTimestampSeconds() - leaderboardsResult2.requestTimestamp < 30) {
            objectRetriever.retrieved(leaderboardsResult2);
            return;
        }
        leaderboardsResult = leaderboardsResult2;
        try {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.GET_LEADERBOARDS_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("gamemode", gameMode.name());
            hashMap.put("difficulty", Game.f8589i.progressManager.getDifficultyMode().name());
            hashMap.put("mapname", String.valueOf(str));
            hashMap.put("mode", leaderboardsMode.name());
            if (Game.f8589i.authManager.isSignedIn()) {
                hashMap.put("playerid", Game.f8589i.authManager.getPlayerId());
            }
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            final LeaderboardsResult leaderboardsResult4 = leaderboardsResult;
            Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.3
                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void cancelled() {
                    Logger.error("LeaderBoardManager", "Timeout while getting leaderboards");
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.3.5
                        @Override // java.lang.Runnable
                        public void run() {
                            C17953 c17953 = C17953.this;
                            objectRetriever.retrieved(leaderboardsResult4);
                        }
                    });
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void failed(Throwable th) {
                    Logger.error("LeaderBoardManager", "Error while getting leaderboards", th);
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.3.4
                        @Override // java.lang.Runnable
                        public void run() {
                            C17953 c17953 = C17953.this;
                            objectRetriever.retrieved(leaderboardsResult4);
                        }
                    });
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void handleHttpResponse(Net.HttpResponse httpResponse) {
                    try {
                        String resultAsString = httpResponse.getResultAsString();
                        Logger.log("LeaderBoardManager", resultAsString);
                        final JsonValue parse = new JsonReader().parse(resultAsString);
                        if (parse.getString("status").equals("success")) {
                            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    C17953 c17953 = C17953.this;
                                    LeaderboardsResult leaderboardsResult5 = new LeaderboardsResult(gameMode, difficultyMode, str, Game.f8589i.authManager.getPlayerId(), true, leaderboardsMode);
                                    if (parse.has("player")) {
                                        JsonValue jsonValue = parse.get("player");
                                        C17953 c179532 = C17953.this;
                                        LeaderboardsRankResult leaderboardsRankResult = new LeaderboardsRankResult(true, difficultyMode, leaderboardsMode, false, gameMode, str, Game.f8589i.authManager.getPlayerId());
                                        leaderboardsResult5.player = leaderboardsRankResult;
                                        leaderboardsRankResult.total = jsonValue.getInt("total");
                                        leaderboardsResult5.player.rank = jsonValue.getInt("rank");
                                        leaderboardsResult5.player.score = jsonValue.getLong("score");
                                    }
                                    Iterator<JsonValue> iterator2 = parse.get("leaderboards").iterator2();
                                    int i2 = 1;
                                    while (iterator2.hasNext()) {
                                        JsonValue next = iterator2.next();
                                        int i3 = i2 + 1;
                                        LeaderboardsEntry leaderboardsEntry = new LeaderboardsEntry(next.getString("playerid"), next.getString("nickname"), next.getLong("score"), i2, next.getBoolean("hasPfp", false), next.getInt("level", 1));
                                        JsonValue jsonValue2 = next.get("pinnedBadge");
                                        if (jsonValue2 != null) {
                                            leaderboardsEntry.badgeIconTexture = jsonValue2.getString("iconImg");
                                            leaderboardsEntry.badgeIconColor = Color.valueOf(jsonValue2.getString("iconColor", "FFFFFF"));
                                            leaderboardsEntry.badgeOverlayTexture = jsonValue2.getString("overlayImg", null);
                                            leaderboardsEntry.badgeOverlayColor = Color.valueOf(jsonValue2.getString("overlayColor", "FFFFFF"));
                                        }
                                        leaderboardsResult5.entries.add(leaderboardsEntry);
                                        i2 = i3;
                                    }
                                    LeaderBoardManager.this.f9822b.add(leaderboardsResult5);
                                    LeaderBoardManager.this.m21584j();
                                    objectRetriever.retrieved(leaderboardsResult5);
                                }
                            });
                        } else {
                            Logger.error("LeaderBoardManager", "can't retrieve leaderboards: " + resultAsString);
                            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.3.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    C17953 c17953 = C17953.this;
                                    objectRetriever.retrieved(leaderboardsResult4);
                                }
                            });
                        }
                    } catch (Exception e) {
                        Logger.error("LeaderBoardManager", "Failed to parse response", e);
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.3.3
                            @Override // java.lang.Runnable
                            public void run() {
                                C17953 c17953 = C17953.this;
                                objectRetriever.retrieved(leaderboardsResult4);
                            }
                        });
                    }
                }
            });
        } catch (Exception e) {
            Logger.error("LeaderBoardManager", "Failed to get leaderboards", e);
            objectRetriever.retrieved(leaderboardsResult);
        }
    }

    public void getLeaderboardsAdvanceRank(final GameStateSystem.GameMode gameMode, final DifficultyMode difficultyMode, final String str, final ReplayManager.LeaderboardsMode leaderboardsMode, long j, final ObjectRetriever<LeaderboardsRankResult> objectRetriever) {
        if (Game.f8589i.authManager.isSignedIn()) {
            if (!this.f9825p) {
                Logger.error("LeaderBoardManager", "submit disabled, can't get advance rank");
                objectRetriever.retrieved(new LeaderboardsRankResult(false, difficultyMode, leaderboardsMode, true, gameMode, str, Game.f8589i.authManager.getPlayerId()));
                return;
            }
            try {
                Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                httpRequest.setUrl(Config.GET_LEADERBOARDS_ADVANCE_RANK_URL);
                HashMap hashMap = new HashMap();
                hashMap.put("gamemode", gameMode.name());
                hashMap.put("difficulty", Game.f8589i.progressManager.getDifficultyMode().name());
                hashMap.put("mapname", String.valueOf(str));
                hashMap.put("mode", leaderboardsMode.name());
                hashMap.put("playerid", Game.f8589i.authManager.getPlayerId());
                hashMap.put("score", String.valueOf(j));
                httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.6
                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void cancelled() {
                        Logger.error("LeaderBoardManager", "Timeout while getting advance leaderboards rank");
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.6.5
                            @Override // java.lang.Runnable
                            public void run() {
                                C18136 c18136 = C18136.this;
                                objectRetriever.retrieved(new LeaderboardsRankResult(false, difficultyMode, leaderboardsMode, true, gameMode, str, Game.f8589i.authManager.getPlayerId()));
                            }
                        });
                    }

                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void failed(Throwable th) {
                        Logger.error("LeaderBoardManager", "Error while getting advance leaderboards rank", th);
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.6.4
                            @Override // java.lang.Runnable
                            public void run() {
                                C18136 c18136 = C18136.this;
                                objectRetriever.retrieved(new LeaderboardsRankResult(false, difficultyMode, leaderboardsMode, true, gameMode, str, Game.f8589i.authManager.getPlayerId()));
                            }
                        });
                    }

                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void handleHttpResponse(Net.HttpResponse httpResponse) {
                        try {
                            String resultAsString = httpResponse.getResultAsString();
                            final JsonValue parse = new JsonReader().parse(resultAsString);
                            if (parse.getString("status").equals("success")) {
                                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.6.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        JsonValue jsonValue = parse.get("player");
                                        C18136 c18136 = C18136.this;
                                        LeaderboardsRankResult leaderboardsRankResult = new LeaderboardsRankResult(true, difficultyMode, leaderboardsMode, true, gameMode, str, Game.f8589i.authManager.getPlayerId());
                                        leaderboardsRankResult.rank = jsonValue.getInt("rank");
                                        leaderboardsRankResult.total = jsonValue.getInt("total");
                                        objectRetriever.retrieved(leaderboardsRankResult);
                                    }
                                });
                            } else {
                                Logger.error("LeaderBoardManager", "can't retrieve advance leaderboards rank: " + resultAsString);
                                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.6.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        C18136 c18136 = C18136.this;
                                        objectRetriever.retrieved(new LeaderboardsRankResult(false, difficultyMode, leaderboardsMode, true, gameMode, str, Game.f8589i.authManager.getPlayerId()));
                                    }
                                });
                            }
                        } catch (Exception e) {
                            Logger.error("LeaderBoardManager", "Failed to parse response", e);
                            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.6.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    C18136 c18136 = C18136.this;
                                    objectRetriever.retrieved(new LeaderboardsRankResult(false, difficultyMode, leaderboardsMode, true, gameMode, str, Game.f8589i.authManager.getPlayerId()));
                                }
                            });
                        }
                    }
                });
                return;
            } catch (Exception e) {
                Logger.error("LeaderBoardManager", "Failed to get advance leaderboards rank", e);
                objectRetriever.retrieved(new LeaderboardsRankResult(false, difficultyMode, leaderboardsMode, true, gameMode, str, Game.f8589i.authManager.getPlayerId()));
                return;
            }
        }
        Logger.error("LeaderBoardManager", "not signed in, can't get advance rank");
        objectRetriever.retrieved(new LeaderboardsRankResult(false, difficultyMode, leaderboardsMode, true, gameMode, str, Game.f8589i.authManager.getPlayerId()));
    }

    public void getLeaderboardsRank(final GameStateSystem.GameMode gameMode, final DifficultyMode difficultyMode, final String str, final ReplayManager.LeaderboardsMode leaderboardsMode, final ObjectRetriever<LeaderboardsRankResult> objectRetriever) {
        LeaderboardsRankResult leaderboardsRankResult;
        LeaderboardsRankResult leaderboardsRankResult2;
        String str2;
        LeaderboardsRankResult leaderboardsRankResult3 = new LeaderboardsRankResult(false, difficultyMode, leaderboardsMode, false, gameMode, str, Game.f8589i.authManager.getPlayerId());
        int i = 0;
        while (true) {
            Array<LeaderboardsRankResult> array = this.f9823d;
            if (i < array.size) {
                leaderboardsRankResult2 = array.items[i];
                if (leaderboardsRankResult2.gameMode == gameMode && leaderboardsRankResult2.mapName.equals(str)) {
                    if (leaderboardsMode == leaderboardsRankResult2.mode && ((!Game.f8589i.authManager.isSignedIn() && leaderboardsRankResult2.playerId == null) || (Game.f8589i.authManager.isSignedIn() && (str2 = leaderboardsRankResult2.playerId) != null && str2.equals(Game.f8589i.authManager.getPlayerId())))) {
                        break;
                    }
                    i++;
                }
                i++;
            } else {
                leaderboardsRankResult = leaderboardsRankResult3;
                break;
            }
        }
        if (Game.getTimestampSeconds() - leaderboardsRankResult2.requestTimestamp < 30) {
            objectRetriever.retrieved(leaderboardsRankResult2);
            return;
        }
        leaderboardsRankResult = leaderboardsRankResult2;
        if (Game.f8589i.authManager.isSignedIn() && Game.f8589i.authManager.getPlayerId() != null) {
            try {
                Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
                httpRequest.setUrl(Config.GET_LEADERBOARDS_RANK_URL);
                HashMap hashMap = new HashMap();
                hashMap.put("gamemode", gameMode.name());
                hashMap.put("difficulty", difficultyMode.name());
                hashMap.put("mapname", String.valueOf(str));
                hashMap.put("mode", leaderboardsMode.name());
                hashMap.put("playerid", Game.f8589i.authManager.getPlayerId());
                httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
                final LeaderboardsRankResult leaderboardsRankResult4 = leaderboardsRankResult;
                Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.5
                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void cancelled() {
                        Logger.error("LeaderBoardManager", "Timeout while getting leaderboards rank");
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.5.5
                            @Override // java.lang.Runnable
                            public void run() {
                                C18075 c18075 = C18075.this;
                                objectRetriever.retrieved(leaderboardsRankResult4);
                            }
                        });
                    }

                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void failed(Throwable th) {
                        Logger.error("LeaderBoardManager", "Error while getting leaderboards rank", th);
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.5.4
                            @Override // java.lang.Runnable
                            public void run() {
                                C18075 c18075 = C18075.this;
                                objectRetriever.retrieved(leaderboardsRankResult4);
                            }
                        });
                    }

                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void handleHttpResponse(Net.HttpResponse httpResponse) {
                        try {
                            String resultAsString = httpResponse.getResultAsString();
                            final JsonValue parse = new JsonReader().parse(resultAsString);
                            if (parse.getString("status").equals("success")) {
                                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.5.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        JsonValue jsonValue = parse.get("player");
                                        C18075 c18075 = C18075.this;
                                        LeaderboardsRankResult leaderboardsRankResult5 = new LeaderboardsRankResult(true, difficultyMode, leaderboardsMode, false, gameMode, str, Game.f8589i.authManager.getPlayerId());
                                        leaderboardsRankResult5.rank = jsonValue.getInt("rank");
                                        leaderboardsRankResult5.score = jsonValue.getLong("score");
                                        leaderboardsRankResult5.total = jsonValue.getInt("total");
                                        LeaderBoardManager.this.f9823d.add(leaderboardsRankResult5);
                                        LeaderBoardManager.this.m21584j();
                                        objectRetriever.retrieved(leaderboardsRankResult5);
                                    }
                                });
                            } else {
                                Logger.error("LeaderBoardManager", "can't retrieve leaderboards rank: " + resultAsString);
                                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.5.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        C18075 c18075 = C18075.this;
                                        objectRetriever.retrieved(leaderboardsRankResult4);
                                    }
                                });
                            }
                        } catch (Exception e) {
                            Logger.error("LeaderBoardManager", "Failed to parse response", e);
                            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.5.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    C18075 c18075 = C18075.this;
                                    objectRetriever.retrieved(leaderboardsRankResult4);
                                }
                            });
                        }
                    }
                });
                return;
            } catch (Exception e) {
                Logger.error("LeaderBoardManager", "Failed to get leaderboards rank", e);
                objectRetriever.retrieved(leaderboardsRankResult);
                return;
            }
        }
        Logger.error("LeaderBoardManager", "not signed in, can't get rank");
        objectRetriever.retrieved(leaderboardsRankResult);
    }

    public void getSkillPointLeaderboards(final ObjectRetriever<SkillPointsLeaderboardsResult> objectRetriever) {
        String str;
        final SkillPointsLeaderboardsResult skillPointsLeaderboardsResult = new SkillPointsLeaderboardsResult(Game.f8589i.authManager.getPlayerId(), false);
        if (this.f9821a != null && ((!Game.f8589i.authManager.isSignedIn() && this.f9821a.playerId == null) || (Game.f8589i.authManager.isSignedIn() && (str = this.f9821a.playerId) != null && str.equals(Game.f8589i.authManager.getPlayerId())))) {
            int timestampSeconds = Game.getTimestampSeconds();
            SkillPointsLeaderboardsResult skillPointsLeaderboardsResult2 = this.f9821a;
            if (timestampSeconds - skillPointsLeaderboardsResult2.requestTimestamp < 30) {
                objectRetriever.retrieved(skillPointsLeaderboardsResult2);
                return;
            }
            skillPointsLeaderboardsResult = skillPointsLeaderboardsResult2;
        }
        try {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.GET_SKILL_POINT_LEADER_BOARD_URL);
            if (Game.f8589i.authManager.isSignedIn()) {
                HashMap hashMap = new HashMap();
                hashMap.put("playerid", Game.f8589i.authManager.getPlayerId());
                httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            }
            Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.4
                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void cancelled() {
                    Logger.error("LeaderBoardManager", "Timeout while getting skill point leaderboards");
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.4.5
                        @Override // java.lang.Runnable
                        public void run() {
                            C18014 c18014 = C18014.this;
                            objectRetriever.retrieved(skillPointsLeaderboardsResult);
                        }
                    });
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void failed(Throwable th) {
                    Logger.error("LeaderBoardManager", "Error while getting skill point leaderboards", th);
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.4.4
                        @Override // java.lang.Runnable
                        public void run() {
                            C18014 c18014 = C18014.this;
                            objectRetriever.retrieved(skillPointsLeaderboardsResult);
                        }
                    });
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void handleHttpResponse(Net.HttpResponse httpResponse) {
                    try {
                        String resultAsString = httpResponse.getResultAsString();
                        Logger.log("LeaderBoardManager", resultAsString);
                        final JsonValue parse = new JsonReader().parse(resultAsString);
                        if (parse.getString("status").equals("success")) {
                            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    SkillPointsLeaderboardsResult skillPointsLeaderboardsResult3 = new SkillPointsLeaderboardsResult(Game.f8589i.authManager.getPlayerId(), true);
                                    if (parse.has("player")) {
                                        JsonValue jsonValue = parse.get("player");
                                        SkillPointsLeaderboardsRank skillPointsLeaderboardsRank = new SkillPointsLeaderboardsRank(true, Game.f8589i.authManager.getPlayerId());
                                        skillPointsLeaderboardsResult3.player = skillPointsLeaderboardsRank;
                                        skillPointsLeaderboardsRank.total = jsonValue.getInt("total");
                                        skillPointsLeaderboardsResult3.player.rank = jsonValue.getInt("rank");
                                        skillPointsLeaderboardsResult3.player.score = jsonValue.getInt("score");
                                    }
                                    Iterator<JsonValue> iterator2 = parse.get("leaderboards").iterator2();
                                    int i = 1;
                                    while (iterator2.hasNext()) {
                                        JsonValue next = iterator2.next();
                                        skillPointsLeaderboardsResult3.entries.add(new LeaderboardsEntry(next.getString("playerid"), next.getString("nickname"), next.getInt("score"), i, next.getBoolean("hasPfp", false), next.getInt("level", 1)));
                                        i++;
                                    }
                                    LeaderBoardManager.this.f9821a = skillPointsLeaderboardsResult3;
                                    LeaderBoardManager.this.m21584j();
                                    objectRetriever.retrieved(skillPointsLeaderboardsResult3);
                                }
                            });
                        } else {
                            Logger.error("LeaderBoardManager", "can't retrieve skill point leaderboards: " + resultAsString);
                            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.4.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    C18014 c18014 = C18014.this;
                                    objectRetriever.retrieved(skillPointsLeaderboardsResult);
                                }
                            });
                        }
                    } catch (Exception e) {
                        Logger.error("LeaderBoardManager", "Failed to parse response", e);
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.LeaderBoardManager.4.3
                            @Override // java.lang.Runnable
                            public void run() {
                                C18014 c18014 = C18014.this;
                                objectRetriever.retrieved(skillPointsLeaderboardsResult);
                            }
                        });
                    }
                }
            });
        } catch (Exception e) {
            Logger.error("LeaderBoardManager", "Failed to get skill point leaderboards", e);
            objectRetriever.retrieved(skillPointsLeaderboardsResult);
        }
    }

    /* renamed from: i */
    public final void m21585i(BasicLevelsTopLeaderboards basicLevelsTopLeaderboards) {
        this.f9826q.begin();
        int i = 0;
        while (true) {
            DelayedRemovalArray<ObjectRetriever<BasicLevelsTopLeaderboards>> delayedRemovalArray = this.f9826q;
            if (i < delayedRemovalArray.size) {
                delayedRemovalArray.items[i].retrieved(basicLevelsTopLeaderboards);
                i++;
            } else {
                delayedRemovalArray.end();
                this.f9826q.clear();
                return;
            }
        }
    }
}
