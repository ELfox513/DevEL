package com.prineside.tdi2.managers;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.BasicLevelQuestConfig;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.managers.DailyQuestManager;
import com.prineside.tdi2.managers.LeaderBoardManager;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class DailyQuestManager extends Manager.ManagerAdapter {
    public static final String LEVEL_NAME_PREFIX = "DQ";
    public static final String RESET_QUESTS_QUEST_ID = "_resetQuests";

    /* renamed from: u */
    public static final Calendar f9701u = Calendar.getInstance(TimeZone.getTimeZone("GMT"));

    /* renamed from: v */
    public static final SimpleDateFormat f9702v;

    /* renamed from: w */
    public static final StringBuilder f9703w;

    /* renamed from: a */
    public DailyQuestLevel f9704a;

    /* renamed from: d */
    public int f9706d;
    public String dailyLootCurrentDay;
    public String dailyLootCurrentQuest;
    public int dailyLootDaysInRow;
    public String dailyLootLastCompletedDay;
    public int dailyLootMaxBonusPerMonth;
    public int dailyLootMinBonusPerMonth;

    /* renamed from: k */
    public String f9707k;

    /* renamed from: r */
    public int[] f9710r;

    /* renamed from: s */
    public int f9711s;

    /* renamed from: t */
    public boolean f9712t;

    /* renamed from: b */
    public final Date f9705b = new Date();

    /* renamed from: p */
    public int f9708p = -1;

    /* renamed from: q */
    public final DelayedRemovalArray<DailyQuestLeaderboards> f9709q = new DelayedRemovalArray<>(DailyQuestLeaderboards.class);
    public Array<DailyLootDayConfig> dailyLootDayConfigs = new Array<>(DailyLootDayConfig.class);
    public int dailyLootCurrentDayIndex = 0;

    /* renamed from: com.prineside.tdi2.managers.DailyQuestManager$2 */
    /* loaded from: classes2.dex */
    public class C17562 implements Net.HttpResponseListener {

        /* renamed from: a */
        public final /* synthetic */ ObjectRetriever f9714a;

        public C17562(ObjectRetriever objectRetriever) {
            this.f9714a = objectRetriever;
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void cancelled() {
            Logger.error("DailyQuestManager", "Timeout while getting daily quest");
            Application application = Gdx.app;
            final ObjectRetriever objectRetriever = this.f9714a;
            application.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.k
                @Override // java.lang.Runnable
                public final void run() {
                    ObjectRetriever.this.retrieved(null);
                }
            });
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void failed(Throwable th) {
            Logger.error("DailyQuestManager", "Error while getting daily quest hash", th);
            Application application = Gdx.app;
            final ObjectRetriever objectRetriever = this.f9714a;
            application.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.g
                @Override // java.lang.Runnable
                public final void run() {
                    ObjectRetriever.this.retrieved(null);
                }
            });
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void handleHttpResponse(Net.HttpResponse httpResponse) {
            String resultAsString = httpResponse.getResultAsString();
            try {
                JsonValue parse = new JsonReader().parse(resultAsString);
                if (parse.getString("status").equals("success")) {
                    final String string = parse.getString("hash");
                    Application application = Gdx.app;
                    final ObjectRetriever objectRetriever = this.f9714a;
                    application.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            ObjectRetriever.this.retrieved(string);
                        }
                    });
                } else {
                    Logger.error("DailyQuestManager", "failed to get daily quest hash: " + resultAsString);
                    Application application2 = Gdx.app;
                    final ObjectRetriever objectRetriever2 = this.f9714a;
                    application2.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            ObjectRetriever.this.retrieved(null);
                        }
                    });
                }
            } catch (Exception e) {
                Logger.error("DailyQuestManager", "failed to get daily quest hash: " + resultAsString, e);
                Application application3 = Gdx.app;
                final ObjectRetriever objectRetriever3 = this.f9714a;
                application3.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        ObjectRetriever.this.retrieved(null);
                    }
                });
            }
        }
    }

    /* renamed from: com.prineside.tdi2.managers.DailyQuestManager$5 */
    /* loaded from: classes2.dex */
    public class C17645 implements Net.HttpResponseListener {

        /* renamed from: a */
        public final /* synthetic */ ObjectRetriever f9726a;

        /* renamed from: b */
        public final /* synthetic */ int f9727b;

        public C17645(ObjectRetriever objectRetriever, int i) {
            this.f9726a = objectRetriever;
            this.f9727b = i;
        }

        /* renamed from: b */
        public static /* synthetic */ void m21615b(JsonValue jsonValue, ObjectRetriever objectRetriever, int i) {
            try {
                JsonValue jsonValue2 = jsonValue.get("data");
                String string = jsonValue2.get("configuration").getString("name");
                Files files = Gdx.files;
                FileHandle local = files.local("levels/" + string + ".json");
                JsonValue jsonValue3 = jsonValue2.get("configuration");
                JsonWriter.OutputType outputType = JsonWriter.OutputType.json;
                local.writeString(jsonValue3.toJson(outputType), false, "UTF-8");
                Files files2 = Gdx.files;
                files2.local("levels/maps/" + string + ".json").writeString(jsonValue2.get("map").toJson(outputType), false, "UTF-8");
                Game.f8589i.basicLevelManager.loadAndRegisterLevelFromJson(jsonValue2.get("configuration"));
                BasicLevelManager basicLevelManager = Game.f8589i.basicLevelManager;
                objectRetriever.retrieved(basicLevelManager.getLevel(DailyQuestManager.LEVEL_NAME_PREFIX + i));
            } catch (Exception e) {
                Logger.error("DailyQuestManager", "failed to store daily quest map", e);
                objectRetriever.retrieved(null);
            }
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void cancelled() {
            Logger.error("DailyQuestManager", "failed (cancelled) to get daily quest map");
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.DailyQuestManager.5.4
                @Override // java.lang.Runnable
                public void run() {
                    C17645.this.f9726a.retrieved(null);
                }
            });
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void failed(Throwable th) {
            Logger.error("DailyQuestManager", "failed to get daily quest map", th);
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.DailyQuestManager.5.3
                @Override // java.lang.Runnable
                public void run() {
                    C17645.this.f9726a.retrieved(null);
                }
            });
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void handleHttpResponse(Net.HttpResponse httpResponse) {
            try {
                String resultAsString = httpResponse.getResultAsString();
                final JsonValue parse = new JsonReader().parse(resultAsString);
                if (parse.getString("status").equals("success")) {
                    Application application = Gdx.app;
                    final ObjectRetriever objectRetriever = this.f9726a;
                    final int i = this.f9727b;
                    application.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            DailyQuestManager.C17645.m21615b(JsonValue.this, objectRetriever, i);
                        }
                    });
                } else {
                    Logger.error("DailyQuestManager", "failed to get daily quest map: " + resultAsString);
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.DailyQuestManager.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            C17645.this.f9726a.retrieved(null);
                        }
                    });
                }
            } catch (Exception e) {
                Logger.error("DailyQuestManager", "failed to parse daily quest map", e);
                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.DailyQuestManager.5.2
                    @Override // java.lang.Runnable
                    public void run() {
                        C17645.this.f9726a.retrieved(null);
                    }
                });
            }
        }
    }

    /* renamed from: com.prineside.tdi2.managers.DailyQuestManager$7 */
    /* loaded from: classes2.dex */
    public class C17707 implements Net.HttpResponseListener {

        /* renamed from: a */
        public final /* synthetic */ String f9734a;

        /* renamed from: b */
        public final /* synthetic */ String f9735b;

        /* renamed from: c */
        public final /* synthetic */ ObjectRetriever f9736c;

        /* renamed from: d */
        public final /* synthetic */ DailyQuestLeaderboards f9737d;

        public C17707(String str, String str2, ObjectRetriever objectRetriever, DailyQuestLeaderboards dailyQuestLeaderboards) {
            this.f9734a = str;
            this.f9735b = str2;
            this.f9736c = objectRetriever;
            this.f9737d = dailyQuestLeaderboards;
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void cancelled() {
            Logger.error("DailyQuestManager", "Timeout while getting leaderboards");
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.DailyQuestManager.7.4
                @Override // java.lang.Runnable
                public void run() {
                    C17707 c17707 = C17707.this;
                    c17707.f9736c.retrieved(c17707.f9737d);
                }
            });
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void failed(Throwable th) {
            Logger.error("DailyQuestManager", "Error while getting leaderboards", th);
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.DailyQuestManager.7.3
                @Override // java.lang.Runnable
                public void run() {
                    C17707 c17707 = C17707.this;
                    c17707.f9736c.retrieved(c17707.f9737d);
                }
            });
        }

        @Override // com.badlogic.gdx.Net.HttpResponseListener
        public void handleHttpResponse(Net.HttpResponse httpResponse) {
            try {
                String resultAsString = httpResponse.getResultAsString();
                Logger.log("DailyQuestManager", "getLeaderboards got from server");
                Logger.log("DailyQuestManager", resultAsString);
                JsonValue parse = new JsonReader().parse(resultAsString);
                if (parse.getString("status").equals("success")) {
                    final DailyQuestLeaderboards dailyQuestLeaderboards = new DailyQuestLeaderboards(true, this.f9734a, this.f9735b);
                    if (parse.has("player")) {
                        JsonValue jsonValue = parse.get("player");
                        LeaderboardsRank leaderboardsRank = new LeaderboardsRank(true, false, this.f9734a, this.f9735b);
                        dailyQuestLeaderboards.player = leaderboardsRank;
                        leaderboardsRank.total = jsonValue.getInt("total");
                        dailyQuestLeaderboards.player.rank = jsonValue.getInt("rank");
                        dailyQuestLeaderboards.player.score = jsonValue.getLong("score");
                    }
                    Iterator<JsonValue> iterator2 = parse.get("leaderboards").iterator2();
                    int i = 1;
                    while (iterator2.hasNext()) {
                        JsonValue next = iterator2.next();
                        dailyQuestLeaderboards.entries.add(new LeaderBoardManager.LeaderboardsEntry(next.getString("playerid"), next.getString("nickname"), next.getLong("score"), i, next.getBoolean("hasPfp", false), next.getInt("level", 1)));
                        i++;
                    }
                    synchronized (DailyQuestManager.this.f9709q) {
                        DailyQuestManager.this.f9709q.add(dailyQuestLeaderboards);
                    }
                    Logger.log("DailyQuestManager", "lb cache - stored " + dailyQuestLeaderboards.date + " " + dailyQuestLeaderboards.playerId + " ");
                    Application application = Gdx.app;
                    final ObjectRetriever objectRetriever = this.f9736c;
                    application.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.n
                        @Override // java.lang.Runnable
                        public final void run() {
                            ObjectRetriever.this.retrieved(dailyQuestLeaderboards);
                        }
                    });
                    return;
                }
                Logger.error("DailyQuestManager", "can't retrieve leaderboards: " + resultAsString);
                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.DailyQuestManager.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C17707 c17707 = C17707.this;
                        c17707.f9736c.retrieved(c17707.f9737d);
                    }
                });
            } catch (Exception e) {
                Logger.error("DailyQuestManager", "Failed to parse response", e);
                Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.DailyQuestManager.7.2
                    @Override // java.lang.Runnable
                    public void run() {
                        C17707 c17707 = C17707.this;
                        c17707.f9736c.retrieved(c17707.f9737d);
                    }
                });
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class DailyLootDayConfig {
        public int count;
        public Item item;
        public double monthlyBonus;

        public static DailyLootDayConfig fromJson(JsonValue jsonValue) {
            DailyLootDayConfig dailyLootDayConfig = new DailyLootDayConfig();
            dailyLootDayConfig.item = Item.fromJson(jsonValue.get("item"));
            dailyLootDayConfig.count = jsonValue.getInt("count");
            dailyLootDayConfig.monthlyBonus = jsonValue.getInt("monthlyBonus");
            return dailyLootDayConfig;
        }

        public int getCount(int i) {
            int i2 = this.count;
            double d = this.monthlyBonus;
            double d2 = i;
            Double.isNaN(d2);
            int i3 = i2 + ((int) ((d * d2) + 1.0E-4d));
            if (Game.f8589i.progressManager.isDoubleGainEnabled()) {
                return i3 * 2;
            }
            return i3;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class DailyQuestLevel implements KryoSerializable {

        /* renamed from: a */
        public String f9743a;
        public int endTimestamp;
        public String forDate;
        public int forDateTimestamp;
        public boolean isLocalFallback;
        public int questId;
        public Array<ItemStack> prizesFirstPlace = new Array<>(ItemStack.class);
        public Array<ItemStack> prizesSecondPlace = new Array<>(ItemStack.class);
        public Array<ItemStack> prizesThirdPlace = new Array<>(ItemStack.class);
        public Array<ItemStack> prizesTop3Percent = new Array<>(ItemStack.class);
        public Array<ItemStack> prizesTop10Percent = new Array<>(ItemStack.class);
        public Array<ItemStack> prizesTop30Percent = new Array<>(ItemStack.class);

        public String getForDate() {
            return this.forDate;
        }

        public int getForDateTimestamp() {
            return this.forDateTimestamp;
        }

        public String getLevelName() {
            return this.f9743a;
        }

        public void setCompleted() {
            Game.f8589i.dailyQuestManager.setLastCompletedDailyQuestTimestamp(this.forDateTimestamp);
        }

        public boolean wasCompleted() {
            return this.forDateTimestamp <= Game.f8589i.dailyQuestManager.f9706d;
        }

        public CharSequence getQuestName() {
            BasicLevel level = Game.f8589i.basicLevelManager.getLevel(getLevelName());
            Array<BasicLevelQuestConfig> array = level.quests;
            if (array.size != 0) {
                BasicLevelQuestConfig basicLevelQuestConfig = array.get(0);
                DailyQuestManager.f9703w.setLength(0);
                DailyQuestManager.f9703w.append(basicLevelQuestConfig.getTitle(false, false)).append(": ").append(basicLevelQuestConfig.formatValueForUi(basicLevelQuestConfig.requiredValue));
                return DailyQuestManager.f9703w;
            }
            DailyQuestManager.f9703w.setLength(0);
            DailyQuestManager.f9703w.append(Game.f8589i.localeManager.i18n.get("defeat_waves")).append(": ").append(level.waveQuests.get(0).waves);
            return DailyQuestManager.f9703w;
        }

        public Array<ItemStack> getQuestRewards() {
            BasicLevel level = Game.f8589i.basicLevelManager.getLevel(getLevelName());
            Array<BasicLevelQuestConfig> array = level.quests;
            if (array.size != 0) {
                return array.get(0).prizes;
            }
            return level.waveQuests.get(0).prizes;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.isLocalFallback = input.readBoolean();
            this.questId = input.readInt();
            this.f9743a = (String) kryo.readObjectOrNull(input, String.class);
            this.forDate = (String) kryo.readObjectOrNull(input, String.class);
            this.forDateTimestamp = input.readInt();
            this.endTimestamp = input.readInt();
            this.prizesFirstPlace = (Array) kryo.readObject(input, Array.class);
            this.prizesSecondPlace = (Array) kryo.readObject(input, Array.class);
            this.prizesThirdPlace = (Array) kryo.readObject(input, Array.class);
            this.prizesTop3Percent = (Array) kryo.readObject(input, Array.class);
            this.prizesTop10Percent = (Array) kryo.readObject(input, Array.class);
            this.prizesTop30Percent = (Array) kryo.readObject(input, Array.class);
        }

        public void setForDate(String str) {
            this.forDate = str;
            try {
                this.forDateTimestamp = (int) (DailyQuestManager.f9702v.parse(str).getTime() / 1000);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }

        public void validate() {
            boolean z;
            BasicLevel level = Game.f8589i.basicLevelManager.getLevel(this.f9743a);
            String str = this.f9743a;
            if (str.equals(DailyQuestManager.LEVEL_NAME_PREFIX + this.questId)) {
                if (level.dailyQuest) {
                    Array<BasicLevelQuestConfig> array = level.quests;
                    int i = array.size;
                    boolean z2 = true;
                    if (i != 0) {
                        if (i == 1) {
                            String str2 = array.get(0).f8469id;
                            if (str2.startsWith("Q:" + this.f9743a + ":")) {
                                z = true;
                            } else {
                                throw new IllegalStateException("quest name must start with Q:" + this.f9743a + ":");
                            }
                        } else {
                            throw new IllegalStateException("level must contain only one quest, " + level.quests.size + " found");
                        }
                    } else {
                        z = false;
                    }
                    Array<BasicLevel.WaveQuest> array2 = level.waveQuests;
                    int i2 = array2.size;
                    if (i2 != 0) {
                        if (!z) {
                            if (i2 == 1) {
                                String str3 = array2.get(0).f8465id;
                                if (!str3.startsWith("WQ:" + this.f9743a + ":")) {
                                    throw new IllegalStateException("quest name must start with WQ:" + this.f9743a + ":");
                                }
                            } else {
                                throw new IllegalStateException("level must contain only one quest, " + level.waveQuests.size + " found");
                            }
                        } else {
                            throw new IllegalStateException("level must contain only one quest but it contains regular & wave quests");
                        }
                    } else {
                        z2 = z;
                    }
                    if (z2) {
                        if (level.getMap().targetTile.isUseStockGameValues()) {
                            return;
                        }
                        throw new IllegalStateException("base must disable researches & trophies");
                    }
                    throw new IllegalStateException("no quests found");
                }
                throw new IllegalStateException("BasicLevel.dailyQuest must be true");
            }
            throw new IllegalStateException("Name must be DQ" + this.questId + ", got " + this.f9743a);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeBoolean(this.isLocalFallback);
            output.writeInt(this.questId);
            kryo.writeObjectOrNull(output, this.f9743a, String.class);
            kryo.writeObjectOrNull(output, this.forDate, String.class);
            output.writeInt(this.forDateTimestamp);
            output.writeInt(this.endTimestamp);
            kryo.writeObject(output, this.prizesFirstPlace);
            kryo.writeObject(output, this.prizesSecondPlace);
            kryo.writeObject(output, this.prizesThirdPlace);
            kryo.writeObject(output, this.prizesTop3Percent);
            kryo.writeObject(output, this.prizesTop10Percent);
            kryo.writeObject(output, this.prizesTop30Percent);
        }
    }

    /* loaded from: classes2.dex */
    public static class LeaderboardsRank {
        public String boardDate;
        public boolean isAdvance;
        public String playerId;
        public int rank;
        public int requestTimestamp;
        public long score;
        public boolean success;
        public int total;

        public LeaderboardsRank(boolean z, boolean z2, String str, String str2) {
            this.isAdvance = z2;
            this.playerId = str2;
            this.success = z;
            this.boardDate = str;
            this.requestTimestamp = Game.getTimestampSeconds();
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<DailyQuestManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public DailyQuestManager read() {
            return Game.f8589i.dailyQuestManager;
        }
    }

    public int getDailyLootCurrentMonthIndex() {
        return this.dailyLootCurrentDayIndex / this.dailyLootDayConfigs.size;
    }

    public void startDailyLevel() {
        getCurrentDayLevel(new ObjectRetriever<DailyQuestLevel>() { // from class: com.prineside.tdi2.managers.DailyQuestManager.6
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(DailyQuestLevel dailyQuestLevel) {
                DailyQuestManager.this.m21630o(dailyQuestLevel);
            }
        });
    }

    /* loaded from: classes2.dex */
    public static class DailyQuestLeaderboards {
        public String date;
        public String playerId;
        public boolean success;
        public LeaderboardsRank player = null;
        public Array<LeaderBoardManager.LeaderboardsEntry> entries = new Array<>();
        public int requestTimestamp = Game.getTimestampSeconds();

        public DailyQuestLeaderboards(boolean z, String str, String str2) {
            this.success = z;
            this.date = str;
            this.playerId = str2;
        }
    }

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        f9702v = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        f9703w = new StringBuilder();
    }

    public String getDailyQuestHash(int i) {
        String str;
        Files files = Gdx.files;
        FileHandle local = files.local("levels/DQ" + i + ".json");
        if (!local.exists()) {
            Files files2 = Gdx.files;
            local = files2.internal("levels/DQ" + i + ".json");
        }
        if (local.exists()) {
            Files files3 = Gdx.files;
            FileHandle local2 = files3.local("levels/maps/DQ" + i + ".json");
            if (local2.exists()) {
                str = local2.readString("UTF-8");
            } else {
                str = "";
            }
            return StringFormatter.md5Hash("{\"configuration\":" + local.readString("UTF-8") + ",\"map\":" + str + "}");
        }
        return null;
    }

    public void getDailyQuestHashFromServer(int i, ObjectRetriever<String> objectRetriever) {
        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
        httpRequest.setUrl(Config.GET_DAILY_QUEST_HASH_URL);
        HashMap hashMap = new HashMap();
        hashMap.put("id", i + "");
        httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
        Gdx.f38302net.sendHttpRequest(httpRequest, new C17562(objectRetriever));
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0065, code lost:
        r12.retrieved(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0069, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void getLeaderboards(java.lang.String r11, com.prineside.tdi2.utils.ObjectRetriever<com.prineside.tdi2.managers.DailyQuestManager.DailyQuestLeaderboards> r12) {
        /*
            r10 = this;
            com.prineside.tdi2.managers.DailyQuestManager$DailyQuestLeaderboards r6 = new com.prineside.tdi2.managers.DailyQuestManager$DailyQuestLeaderboards
            com.prineside.tdi2.Game r0 = com.prineside.tdi2.Game.f8589i
            com.prineside.tdi2.managers.AuthManager r0 = r0.authManager
            java.lang.String r0 = r0.getPlayerId()
            r1 = 0
            r6.<init>(r1, r11, r0)
            com.badlogic.gdx.utils.DelayedRemovalArray<com.prineside.tdi2.managers.DailyQuestManager$DailyQuestLeaderboards> r0 = r10.f9709q
            monitor-enter(r0)
            com.badlogic.gdx.utils.DelayedRemovalArray<com.prineside.tdi2.managers.DailyQuestManager$DailyQuestLeaderboards> r2 = r10.f9709q     // Catch: java.lang.Throwable -> Lc5
            r2.begin()     // Catch: java.lang.Throwable -> Lc5
        L16:
            com.badlogic.gdx.utils.DelayedRemovalArray<com.prineside.tdi2.managers.DailyQuestManager$DailyQuestLeaderboards> r2 = r10.f9709q     // Catch: java.lang.Throwable -> Lc5
            int r3 = r2.size     // Catch: java.lang.Throwable -> Lc5
            if (r1 >= r3) goto L6d
            T[] r2 = r2.items     // Catch: java.lang.Throwable -> Lc5
            com.prineside.tdi2.managers.DailyQuestManager$DailyQuestLeaderboards[] r2 = (com.prineside.tdi2.managers.DailyQuestManager.DailyQuestLeaderboards[]) r2     // Catch: java.lang.Throwable -> Lc5
            r2 = r2[r1]     // Catch: java.lang.Throwable -> Lc5
            int r3 = com.prineside.tdi2.Game.getTimestampSeconds()     // Catch: java.lang.Throwable -> Lc5
            int r4 = r2.requestTimestamp     // Catch: java.lang.Throwable -> Lc5
            int r3 = r3 - r4
            r4 = 30
            if (r3 <= r4) goto L33
            com.badlogic.gdx.utils.DelayedRemovalArray<com.prineside.tdi2.managers.DailyQuestManager$DailyQuestLeaderboards> r2 = r10.f9709q     // Catch: java.lang.Throwable -> Lc5
            r2.removeIndex(r1)     // Catch: java.lang.Throwable -> Lc5
            goto L6a
        L33:
            java.lang.String r3 = r2.date     // Catch: java.lang.Throwable -> Lc5
            boolean r3 = r3.equals(r11)     // Catch: java.lang.Throwable -> Lc5
            if (r3 == 0) goto L6a
            com.prineside.tdi2.Game r3 = com.prineside.tdi2.Game.f8589i     // Catch: java.lang.Throwable -> Lc5
            com.prineside.tdi2.managers.AuthManager r3 = r3.authManager     // Catch: java.lang.Throwable -> Lc5
            boolean r3 = r3.isSignedIn()     // Catch: java.lang.Throwable -> Lc5
            if (r3 != 0) goto L49
            java.lang.String r3 = r2.playerId     // Catch: java.lang.Throwable -> Lc5
            if (r3 == 0) goto L65
        L49:
            com.prineside.tdi2.Game r3 = com.prineside.tdi2.Game.f8589i     // Catch: java.lang.Throwable -> Lc5
            com.prineside.tdi2.managers.AuthManager r3 = r3.authManager     // Catch: java.lang.Throwable -> Lc5
            boolean r3 = r3.isSignedIn()     // Catch: java.lang.Throwable -> Lc5
            if (r3 == 0) goto L6a
            java.lang.String r3 = r2.playerId     // Catch: java.lang.Throwable -> Lc5
            if (r3 == 0) goto L6a
            com.prineside.tdi2.Game r4 = com.prineside.tdi2.Game.f8589i     // Catch: java.lang.Throwable -> Lc5
            com.prineside.tdi2.managers.AuthManager r4 = r4.authManager     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r4 = r4.getPlayerId()     // Catch: java.lang.Throwable -> Lc5
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> Lc5
            if (r3 == 0) goto L6a
        L65:
            r12.retrieved(r2)     // Catch: java.lang.Throwable -> Lc5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc5
            return
        L6a:
            int r1 = r1 + 1
            goto L16
        L6d:
            r2.end()     // Catch: java.lang.Throwable -> Lc5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc5
            com.badlogic.gdx.Net$HttpRequest r7 = new com.badlogic.gdx.Net$HttpRequest     // Catch: java.lang.Exception -> Lb9
            java.lang.String r0 = "POST"
            r7.<init>(r0)     // Catch: java.lang.Exception -> Lb9
            java.lang.String r0 = com.prineside.tdi2.Config.GET_DAILY_QUEST_LEADERBOARDS_URL     // Catch: java.lang.Exception -> Lb9
            r7.setUrl(r0)     // Catch: java.lang.Exception -> Lb9
            java.util.HashMap r0 = new java.util.HashMap     // Catch: java.lang.Exception -> Lb9
            r0.<init>()     // Catch: java.lang.Exception -> Lb9
            java.lang.String r1 = "date"
            r0.put(r1, r11)     // Catch: java.lang.Exception -> Lb9
            r1 = 0
            com.prineside.tdi2.Game r2 = com.prineside.tdi2.Game.f8589i     // Catch: java.lang.Exception -> Lb9
            com.prineside.tdi2.managers.AuthManager r2 = r2.authManager     // Catch: java.lang.Exception -> Lb9
            boolean r2 = r2.isSignedIn()     // Catch: java.lang.Exception -> Lb9
            if (r2 == 0) goto La1
            com.prineside.tdi2.Game r1 = com.prineside.tdi2.Game.f8589i     // Catch: java.lang.Exception -> Lb9
            com.prineside.tdi2.managers.AuthManager r1 = r1.authManager     // Catch: java.lang.Exception -> Lb9
            java.lang.String r1 = r1.getPlayerId()     // Catch: java.lang.Exception -> Lb9
            if (r1 == 0) goto La1
            java.lang.String r2 = "playerid"
            r0.put(r2, r1)     // Catch: java.lang.Exception -> Lb9
        La1:
            r3 = r1
            java.lang.String r0 = com.badlogic.gdx.net.HttpParametersUtils.convertHttpParameters(r0)     // Catch: java.lang.Exception -> Lb9
            r7.setContent(r0)     // Catch: java.lang.Exception -> Lb9
            com.badlogic.gdx.Net r8 = com.badlogic.gdx.Gdx.f38302net     // Catch: java.lang.Exception -> Lb9
            com.prineside.tdi2.managers.DailyQuestManager$7 r9 = new com.prineside.tdi2.managers.DailyQuestManager$7     // Catch: java.lang.Exception -> Lb9
            r0 = r9
            r1 = r10
            r2 = r11
            r4 = r12
            r5 = r6
            r0.<init>(r2, r3, r4, r5)     // Catch: java.lang.Exception -> Lb9
            r8.sendHttpRequest(r7, r9)     // Catch: java.lang.Exception -> Lb9
            goto Lc4
        Lb9:
            r11 = move-exception
            java.lang.String r0 = "DailyQuestManager"
            java.lang.String r1 = "Failed to get leaderboards"
            com.prineside.tdi2.Logger.error(r0, r1, r11)
            r12.retrieved(r6)
        Lc4:
            return
        Lc5:
            r11 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc5
            goto Lc9
        Lc8:
            throw r11
        Lc9:
            goto Lc8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.managers.DailyQuestManager.getLeaderboards(java.lang.String, com.prineside.tdi2.utils.ObjectRetriever):void");
    }

    public void loadAndStoreDailyQuestFromServer(int i, ObjectRetriever<BasicLevel> objectRetriever) {
        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
        httpRequest.setUrl(Config.GET_DAILY_QUEST_MAP_URL);
        HashMap hashMap = new HashMap();
        hashMap.put("id", String.valueOf(i));
        httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
        Gdx.f38302net.sendHttpRequest(httpRequest, new C17645(objectRetriever, i));
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00b5, code lost:
        continue;
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m21632m() {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.managers.DailyQuestManager.m21632m():java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21629p() {
        /*
            r8 = this;
            java.lang.String r0 = "DailyQuestManager"
            java.lang.String r1 = r8.getCurrentDayDate()
            java.lang.String r2 = r8.dailyLootCurrentDay
            r3 = 0
            r4 = 1
            if (r2 != 0) goto Le
        Lc:
            r3 = 1
            goto L75
        Le:
            boolean r2 = r2.equals(r1)
            if (r2 != 0) goto L75
            java.text.SimpleDateFormat r2 = com.prineside.tdi2.managers.DailyQuestManager.f9702v     // Catch: java.lang.Exception -> L29
            java.lang.String r5 = r8.dailyLootCurrentDay     // Catch: java.lang.Exception -> L29
            java.util.Date r5 = r2.parse(r5)     // Catch: java.lang.Exception -> L29
            java.util.Date r5 = com.prineside.tdi2.utils.PMath.addDays(r5, r4)     // Catch: java.lang.Exception -> L29
            java.lang.String r2 = r2.format(r5)     // Catch: java.lang.Exception -> L29
            boolean r2 = r2.equals(r1)     // Catch: java.lang.Exception -> L29
            goto L30
        L29:
            r2 = move-exception
            java.lang.String r5 = "failed to parse dailyLootCurrentDay"
            com.prineside.tdi2.Logger.error(r0, r5, r2)
            r2 = 1
        L30:
            java.lang.String r5 = r8.dailyLootLastCompletedDay
            if (r5 == 0) goto L36
            if (r2 != 0) goto L63
        L36:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "dailyLootDaysInRow reset ("
            r5.append(r6)
            java.lang.String r6 = r8.dailyLootLastCompletedDay
            r5.append(r6)
            java.lang.String r6 = " "
            r5.append(r6)
            java.lang.String r7 = r8.dailyLootCurrentDay
            r5.append(r7)
            r5.append(r6)
            r5.append(r2)
            java.lang.String r2 = ")"
            r5.append(r2)
            java.lang.String r2 = r5.toString()
            com.prineside.tdi2.Logger.log(r0, r2)
            r8.dailyLootDaysInRow = r3
        L63:
            java.lang.String r0 = r8.dailyLootLastCompletedDay
            if (r0 == 0) goto Lc
            java.lang.String r2 = r8.dailyLootCurrentDay
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto Lc
            int r0 = r8.dailyLootCurrentDayIndex
            int r0 = r0 + r4
            r8.dailyLootCurrentDayIndex = r0
            goto Lc
        L75:
            if (r3 == 0) goto L82
            r8.dailyLootCurrentDay = r1
            java.lang.String r0 = r8.m21632m()
            r8.dailyLootCurrentQuest = r0
            r8.save()
        L82:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.managers.DailyQuestManager.m21629p():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00d2 A[LOOP:0: B:21:0x00cc->B:23:0x00d2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0103 A[LOOP:1: B:25:0x00fd->B:27:0x0103, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void reload() {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.managers.DailyQuestManager.reload():void");
    }

    public void removeLoadedDailyQuestMapIfMd5HashDiffers(int i, String str) {
        String str2;
        Files files = Gdx.files;
        FileHandle local = files.local("levels/DQ" + i + ".json");
        if (local.exists()) {
            Files files2 = Gdx.files;
            FileHandle local2 = files2.local("levels/maps/DQ" + i + ".json");
            if (local2.exists()) {
                str2 = local2.readString("UTF-8");
            } else {
                str2 = "";
            }
            if (!StringFormatter.md5Hash("{\"configuration\":" + local.readString("UTF-8") + ",\"map\":" + str2 + "}").equals(str)) {
                Logger.log("DailyQuestManager", "hash mismatch for quest level " + i + " on disk, removing");
                local.delete();
                if (local2.exists()) {
                    local2.delete();
                }
                BasicLevelManager basicLevelManager = Game.f8589i.basicLevelManager;
                basicLevelManager.unloadLevel(LEVEL_NAME_PREFIX + i);
                return;
            }
            Logger.log("DailyQuestManager", "hash match for quest level " + i + " on disk");
            return;
        }
        Logger.log("DailyQuestManager", "local DQ config not exists");
    }

    public final void save() {
        if (this.f9712t) {
            PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
            preferencesManager.set("dailyLootCurrentDayIndex", this.dailyLootCurrentDayIndex + "");
            preferencesManager.set("dailyLootDaysInRow", this.dailyLootDaysInRow + "");
            String str = this.dailyLootLastCompletedDay;
            if (str != null) {
                preferencesManager.set("dailyLootLastCompletedDay", str);
            }
            String str2 = this.dailyLootCurrentQuest;
            if (str2 != null) {
                preferencesManager.set("dailyLootCurrentQuest", str2);
            }
            String str3 = this.dailyLootCurrentDay;
            if (str3 != null) {
                preferencesManager.set("dailyLootCurrentDay", str3);
            }
            preferencesManager.flush();
            return;
        }
        throw new IllegalStateException("manager not set up yet");
    }

    public IssuedItems setDailyLootQuestCompleted() {
        String currentDayDate = getCurrentDayDate();
        String str = this.dailyLootLastCompletedDay;
        if (str != null && str.equals(currentDayDate)) {
            return null;
        }
        int dailyLootNextDaysInRowMilestone = getDailyLootNextDaysInRowMilestone();
        int dailyLootNextDaysInRowLegendariesCount = getDailyLootNextDaysInRowLegendariesCount();
        this.dailyLootLastCompletedDay = currentDayDate;
        this.dailyLootDaysInRow++;
        Array<DailyLootDayConfig> array = this.dailyLootDayConfigs;
        int i = this.dailyLootCurrentDayIndex;
        int i2 = array.size;
        DailyLootDayConfig dailyLootDayConfig = array.items[i % i2];
        int count = dailyLootDayConfig.getCount(i / i2);
        IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.DAILY_LOOT, Game.getTimestampSeconds());
        issuedItems.dailyLootDate = currentDayDate;
        if (this.dailyLootDaysInRow == dailyLootNextDaysInRowMilestone) {
            FastRandom.random.setSeed(new Random().nextLong());
            ProgressManager.InventoryStatistics cpy = Game.f8589i.progressManager.getInventoryStatistics().cpy();
            for (int i3 = 0; i3 < dailyLootNextDaysInRowLegendariesCount; i3++) {
                ItemStack generateItemByRarity = Game.f8589i.itemManager.generateItemByRarity(FastRandom.random, RarityType.LEGENDARY, FastRandom.getFloat(), 1.0f, 1.0f, 1.0f, (float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.BIT_DUST_DROP_RATE), 0.0f, 0.0f, 1.0f, false, cpy);
                issuedItems.items.add(generateItemByRarity);
                cpy.countItem(generateItemByRarity.getItem());
            }
        }
        issuedItems.items.add(new ItemStack(dailyLootDayConfig.item, count));
        Game.f8589i.progressManager.addIssuedPrizes(issuedItems, true);
        Game.f8589i.progressManager.addItems(issuedItems.items);
        save();
        return issuedItems;
    }

    public void setLastCompletedDailyQuestTimestamp(int i) {
        this.f9706d = i;
        if (Config.isHeadless()) {
            return;
        }
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        preferencesManager.set("lastCompletedDailyQuestTimestamp", "" + i);
        preferencesManager.flush();
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.DailyQuestManager.1
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                DailyQuestManager.this.reload();
            }
        });
        reload();
        this.f9712t = true;
    }

    public String getCurrentDayDate() {
        this.f9705b.setTime(Game.getTimestampMillis());
        return f9702v.format(this.f9705b);
    }

    public void getCurrentDayLevel(final ObjectRetriever<DailyQuestLevel> objectRetriever) {
        if (Config.isModdingMode()) {
            return;
        }
        String currentDayDate = getCurrentDayDate();
        DailyQuestLevel dailyQuestLevel = this.f9704a;
        if (dailyQuestLevel != null && !dailyQuestLevel.getForDate().equals(currentDayDate)) {
            this.f9704a = null;
        }
        DailyQuestLevel dailyQuestLevel2 = this.f9704a;
        if (dailyQuestLevel2 != null && !dailyQuestLevel2.isLocalFallback) {
            objectRetriever.retrieved(dailyQuestLevel2);
            return;
        }
        Logger.log("DailyQuestManager", "requesting from server");
        this.f9704a = m21631n();
        try {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.GET_DAILY_QUEST_INFO_URL);
            Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.managers.DailyQuestManager.3

                /* renamed from: com.prineside.tdi2.managers.DailyQuestManager$3$1 */
                /* loaded from: classes2.dex */
                public class RunnableC17581 implements Runnable {

                    /* renamed from: a */
                    public final /* synthetic */ JsonValue f9718a;

                    public RunnableC17581(JsonValue jsonValue) {
                        this.f9718a = jsonValue;
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    /* renamed from: b */
                    public /* synthetic */ void m21617b(DailyQuestLevel dailyQuestLevel, int i, ObjectRetriever objectRetriever, BasicLevel basicLevel) {
                        if (basicLevel != null) {
                            dailyQuestLevel.f9743a = basicLevel.name;
                            DailyQuestManager.this.f9704a = dailyQuestLevel;
                            PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
                            DailyQuestManager.this.f9707k = dailyQuestLevel.getForDate();
                            DailyQuestManager.this.f9708p = i;
                            preferencesManager.set("dailyQuestLastQuestDate", DailyQuestManager.this.f9707k);
                            preferencesManager.set("dailyQuestLastQuestId", String.valueOf(DailyQuestManager.this.f9708p));
                            preferencesManager.flush();
                            objectRetriever.retrieved(dailyQuestLevel);
                            return;
                        }
                        objectRetriever.retrieved(DailyQuestManager.this.f9704a);
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            JsonValue jsonValue = this.f9718a.get("data");
                            if (jsonValue.getInt("min_build") > 184) {
                                Game game = Game.f8589i;
                                game.uiManager.notifications.add(game.localeManager.i18n.get("game_needs_update_for_daily_quests"), null, MaterialColor.ORANGE.P800, null);
                                C17573 c17573 = C17573.this;
                                objectRetriever.retrieved(DailyQuestManager.this.f9704a);
                                return;
                            }
                            final DailyQuestLevel dailyQuestLevel = new DailyQuestLevel();
                            dailyQuestLevel.setForDate(jsonValue.getString("date"));
                            dailyQuestLevel.endTimestamp = jsonValue.getInt("end_timestamp");
                            if (Game.getTimestampSeconds() - 60 <= dailyQuestLevel.endTimestamp && Game.getTimestampSeconds() + 60 >= dailyQuestLevel.endTimestamp - 86400) {
                                Iterator<JsonValue> iterator2 = jsonValue.get("prize_first_place").iterator2();
                                while (iterator2.hasNext()) {
                                    dailyQuestLevel.prizesFirstPlace.add(ItemStack.fromJson(iterator2.next()));
                                }
                                Iterator<JsonValue> iterator22 = jsonValue.get("prize_second_place").iterator2();
                                while (iterator22.hasNext()) {
                                    dailyQuestLevel.prizesSecondPlace.add(ItemStack.fromJson(iterator22.next()));
                                }
                                Iterator<JsonValue> iterator23 = jsonValue.get("prize_third_place").iterator2();
                                while (iterator23.hasNext()) {
                                    dailyQuestLevel.prizesThirdPlace.add(ItemStack.fromJson(iterator23.next()));
                                }
                                Iterator<JsonValue> iterator24 = jsonValue.get("prize_top_3_percent").iterator2();
                                while (iterator24.hasNext()) {
                                    dailyQuestLevel.prizesTop3Percent.add(ItemStack.fromJson(iterator24.next()));
                                }
                                Iterator<JsonValue> iterator25 = jsonValue.get("prize_top_10_percent").iterator2();
                                while (iterator25.hasNext()) {
                                    dailyQuestLevel.prizesTop10Percent.add(ItemStack.fromJson(iterator25.next()));
                                }
                                Iterator<JsonValue> iterator26 = jsonValue.get("prize_top_30_percent").iterator2();
                                while (iterator26.hasNext()) {
                                    dailyQuestLevel.prizesTop30Percent.add(ItemStack.fromJson(iterator26.next()));
                                }
                                final int i = jsonValue.getInt("daily_quest");
                                dailyQuestLevel.questId = i;
                                if (!jsonValue.getString("data_hash").equals(DailyQuestManager.this.getDailyQuestHash(i))) {
                                    Logger.log("DailyQuestManager", "loaded DQ " + i + " hash differ, loading from server");
                                    C17573 c175732 = C17573.this;
                                    DailyQuestManager dailyQuestManager = DailyQuestManager.this;
                                    final ObjectRetriever objectRetriever = objectRetriever;
                                    dailyQuestManager.loadAndStoreDailyQuestFromServer(i, new ObjectRetriever() { // from class: com.prineside.tdi2.managers.l
                                        @Override // com.prineside.tdi2.utils.ObjectRetriever
                                        public final void retrieved(Object obj) {
                                            DailyQuestManager.C17573.RunnableC17581.this.m21617b(dailyQuestLevel, i, objectRetriever, (BasicLevel) obj);
                                        }
                                    });
                                    return;
                                }
                                BasicLevelManager basicLevelManager = Game.f8589i.basicLevelManager;
                                dailyQuestLevel.f9743a = basicLevelManager.getLevel(DailyQuestManager.LEVEL_NAME_PREFIX + i).name;
                                DailyQuestManager.this.f9704a = dailyQuestLevel;
                                objectRetriever.retrieved(dailyQuestLevel);
                                return;
                            }
                            Game.f8589i.uiManager.notifications.add("Error: incorrect device time", null, MaterialColor.ORANGE.P800, null);
                            C17573 c175733 = C17573.this;
                            objectRetriever.retrieved(DailyQuestManager.this.f9704a);
                        } catch (Exception e) {
                            Logger.error("DailyQuestManager", "failed to parse daily quest map", e);
                            C17573 c175734 = C17573.this;
                            objectRetriever.retrieved(DailyQuestManager.this.f9704a);
                        }
                    }
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void cancelled() {
                    Logger.error("DailyQuestManager", "Timeout while getting daily quest");
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.DailyQuestManager.3.5
                        @Override // java.lang.Runnable
                        public void run() {
                            C17573 c17573 = C17573.this;
                            objectRetriever.retrieved(DailyQuestManager.this.f9704a);
                        }
                    });
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void failed(Throwable th) {
                    Logger.error("DailyQuestManager", "Error while getting daily quest", th);
                    Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.DailyQuestManager.3.4
                        @Override // java.lang.Runnable
                        public void run() {
                            C17573 c17573 = C17573.this;
                            objectRetriever.retrieved(DailyQuestManager.this.f9704a);
                        }
                    });
                }

                @Override // com.badlogic.gdx.Net.HttpResponseListener
                public void handleHttpResponse(Net.HttpResponse httpResponse) {
                    try {
                        String resultAsString = httpResponse.getResultAsString();
                        Logger.log("DailyQuestManager", "Got response from server:");
                        Logger.log("DailyQuestManager", resultAsString);
                        JsonValue parse = new JsonReader().parse(resultAsString);
                        if (parse.getString("status").equals("success")) {
                            Gdx.app.postRunnable(new RunnableC17581(parse));
                        } else {
                            Logger.error("DailyQuestManager", "can't retrieve daily quest: " + resultAsString);
                            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.DailyQuestManager.3.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    C17573 c17573 = C17573.this;
                                    objectRetriever.retrieved(DailyQuestManager.this.f9704a);
                                }
                            });
                        }
                    } catch (Exception e) {
                        Logger.error("DailyQuestManager", "Failed to parse response", e);
                        Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.DailyQuestManager.3.3
                            @Override // java.lang.Runnable
                            public void run() {
                                C17573 c17573 = C17573.this;
                                objectRetriever.retrieved(DailyQuestManager.this.f9704a);
                            }
                        });
                    }
                }
            });
        } catch (Exception e) {
            Logger.error("DailyQuestManager", "Failed to get daily quest", e);
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.managers.DailyQuestManager.4
                @Override // java.lang.Runnable
                public void run() {
                    objectRetriever.retrieved(DailyQuestManager.this.f9704a);
                }
            });
        }
    }

    public int getDailyLootCurrentDayIndex() {
        m21629p();
        return this.dailyLootCurrentDayIndex;
    }

    public String getDailyLootCurrentQuest() {
        m21629p();
        return this.dailyLootCurrentQuest;
    }

    public int getDailyLootDaysInRow() {
        m21629p();
        return this.dailyLootDaysInRow;
    }

    public int getDailyLootNextDaysInRowLegendariesCount() {
        m21629p();
        int i = 0;
        while (true) {
            int[] iArr = this.f9710r;
            if (i < iArr.length) {
                if (iArr[i] > this.dailyLootDaysInRow) {
                    return i + 1;
                }
                i++;
            } else {
                return 5;
            }
        }
    }

    public int getDailyLootNextDaysInRowMilestone() {
        m21629p();
        int i = 0;
        while (true) {
            int[] iArr = this.f9710r;
            if (i < iArr.length) {
                int i2 = iArr[i];
                if (i2 > this.dailyLootDaysInRow) {
                    return i2;
                }
                i++;
            } else {
                int i3 = this.dailyLootDaysInRow - iArr[iArr.length - 1];
                int i4 = this.f9711s;
                return iArr[iArr.length - 1] + (((i3 / i4) + 1) * i4);
            }
        }
    }

    public DailyQuestLevel getDailyQuestLevelCache() {
        String currentDayDate = getCurrentDayDate();
        DailyQuestLevel dailyQuestLevel = this.f9704a;
        if (dailyQuestLevel != null && !dailyQuestLevel.getForDate().equals(currentDayDate)) {
            this.f9704a = null;
        }
        DailyQuestLevel dailyQuestLevel2 = this.f9704a;
        if (dailyQuestLevel2 != null && !dailyQuestLevel2.isLocalFallback) {
            return dailyQuestLevel2;
        }
        DailyQuestLevel m21631n = m21631n();
        this.f9704a = m21631n;
        return m21631n;
    }

    public String getNextDayDate() {
        this.f9705b.setTime(Game.getTimestampMillis() + 86400000);
        return f9702v.format(this.f9705b);
    }

    public int getSecondsTillNextDailyLoot() {
        m21629p();
        long currentTimeMillis = System.currentTimeMillis();
        Calendar calendar = f9701u;
        calendar.setTimeInMillis(currentTimeMillis);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return 86400 - ((int) ((currentTimeMillis - calendar.getTimeInMillis()) / 1000));
    }

    public boolean isTodayDailyLootQuestCompleted() {
        m21629p();
        return getCurrentDayDate().equals(this.dailyLootLastCompletedDay);
    }

    /* renamed from: n */
    public final DailyQuestLevel m21631n() {
        int i;
        int i2;
        String currentDayDate = getCurrentDayDate();
        String str = this.f9707k;
        if (str != null && str.equals(currentDayDate)) {
            i2 = this.f9708p;
        } else {
            Array array = new Array();
            Array.ArrayIterator<BasicLevel> it = Game.f8589i.basicLevelManager.levelsOrdered.iterator();
            while (it.hasNext()) {
                BasicLevel next = it.next();
                if (next.dailyQuest) {
                    array.add(next.name);
                }
            }
            String str2 = (String) array.random();
            int parseInt = Integer.parseInt(str2.substring(2));
            if (this.f9707k != null && this.f9708p == parseInt && array.size > 1) {
                String str3 = (String) array.random();
                i = Integer.parseInt(str3.substring(2));
                Logger.log("DailyQuestManager", "quest " + str2 + " was selected for the last time, fallback to " + str3);
            } else {
                i = parseInt;
            }
            Logger.log("DailyQuestManager", "selected quest " + i + " out of " + array.size);
            i2 = i;
        }
        DailyQuestLevel dailyQuestLevel = new DailyQuestLevel();
        dailyQuestLevel.setForDate(currentDayDate);
        dailyQuestLevel.questId = i2;
        try {
            dailyQuestLevel.endTimestamp = (int) (f9702v.parse(getNextDayDate()).getTime() / 1000);
        } catch (ParseException unused) {
        }
        dailyQuestLevel.f9743a = LEVEL_NAME_PREFIX + i2;
        dailyQuestLevel.isLocalFallback = true;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        this.f9707k = currentDayDate;
        this.f9708p = i2;
        preferencesManager.set("dailyQuestLastQuestDate", currentDayDate);
        preferencesManager.set("dailyQuestLastQuestId", String.valueOf(i2));
        preferencesManager.flush();
        return dailyQuestLevel;
    }

    /* renamed from: o */
    public final void m21630o(DailyQuestLevel dailyQuestLevel) {
        if (!dailyQuestLevel.wasCompleted()) {
            BasicLevel level = Game.f8589i.basicLevelManager.getLevel(dailyQuestLevel.getLevelName());
            int i = 0;
            while (true) {
                Array<BasicLevelQuestConfig> array = level.quests;
                if (i >= array.size) {
                    break;
                }
                BasicLevelQuestConfig basicLevelQuestConfig = array.get(i);
                if (basicLevelQuestConfig.isCompleted()) {
                    basicLevelQuestConfig.setCompleted(false);
                }
                i++;
            }
            int i2 = 0;
            while (true) {
                Array<BasicLevel.WaveQuest> array2 = level.waveQuests;
                if (i2 >= array2.size) {
                    break;
                }
                BasicLevel.WaveQuest waveQuest = array2.get(i2);
                if (waveQuest.isCompleted()) {
                    waveQuest.setCompleted(false);
                }
                i2++;
            }
        }
        Game.f8589i.screenManager.startNewDailyLevel(dailyQuestLevel);
    }
}
