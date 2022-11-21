package com.prineside.tdi2;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.CaseType;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import java.util.Iterator;
import p168r4.C6226s;
@REGS
/* loaded from: classes2.dex */
public class IssuedItems implements KryoSerializable {

    /* renamed from: a */
    public static final StringBuilder f8710a = new StringBuilder();
    public AchievementType achievementType;
    public boolean addedToIssuedItemsArray;
    public GameStateSystem.GameMode basicLevelGameMode;
    public CaseType caseType;
    public String dailyLootDate;
    public String dailyQuestDate;
    public int dqBoardPlace;
    public int dqBoardRankPercentage;
    public int dqBoardTotalPlaces;
    public String dqDate;
    public String failureCompensationDescription;
    public String gameOverBasicLevel;
    public String invitedPlayerId;
    public String invitedPlayerNickname;
    @NAGS
    public int issueTimestamp;
    public Array<ItemStack> items = new Array<>(ItemStack.class);
    public MapPrestigeConfig mapPrestigeConfig;
    public int massUnpackCount;
    public String questBasicLevel;
    public String questId;
    public float randomBarrierPackQuality;
    public float randomTilePackQuality;
    public IssueReason reason;
    public String secretCode;
    public String secretCodeDescription;
    @NAGS
    public boolean shown;
    public int userMapHash;
    public String userMapId;
    public String waveQuestBasicLevel;
    public String waveQuestId;

    /* renamed from: com.prineside.tdi2.IssuedItems$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C15421 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8711a;

        static {
            int[] iArr = new int[IssueReason.values().length];
            f8711a = iArr;
            try {
                iArr[IssueReason.QUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8711a[IssueReason.WAVE_QUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8711a[IssueReason.GAME_OVER_BASIC_LEVEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8711a[IssueReason.REGULAR_REWARD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8711a[IssueReason.GAME_OVER_DAILY_QUEST.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8711a[IssueReason.DAILY_QUEST.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8711a[IssueReason.REWARD_VIDEO.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f8711a[IssueReason.SECRET_CODE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8711a[IssueReason.GAME_OVER_USER_MAP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8711a[IssueReason.PURCHASE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f8711a[IssueReason.RANDOM_TILE_PACK.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f8711a[IssueReason.RANDOM_BARRIER_PACK.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f8711a[IssueReason.MAP_PRESTIGE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f8711a[IssueReason.DAILY_LOOT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f8711a[IssueReason.LUCKY_SHOT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f8711a[IssueReason.QUESTS_PRESTIGE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f8711a[IssueReason.RANDOM_TELEPORT_PACK.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f8711a[IssueReason.CASE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f8711a[IssueReason.DAILY_QUEST_LEADER_BOARD.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f8711a[IssueReason.SIGNED_UP_BY_INVITE.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f8711a[IssueReason.FOR_INVITED_PLAYER.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f8711a[IssueReason.ACHIEVEMENT.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f8711a[IssueReason.FAILURE_COMPENSATION.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public enum IssueReason {
        REGULAR_REWARD,
        GAME_OVER_BASIC_LEVEL,
        GAME_OVER_USER_MAP,
        GAME_OVER_DAILY_QUEST,
        QUEST,
        WAVE_QUEST,
        DAILY_QUEST,
        REWARD_VIDEO,
        SECRET_CODE,
        PURCHASE,
        RANDOM_TILE_PACK,
        RANDOM_BARRIER_PACK,
        RANDOM_TELEPORT_PACK,
        CASE,
        DAILY_QUEST_LEADER_BOARD,
        MAP_PRESTIGE,
        QUESTS_PRESTIGE,
        DAILY_LOOT,
        SIGNED_UP_BY_INVITE,
        FOR_INVITED_PLAYER,
        FAILURE_COMPENSATION,
        LUCKY_SHOT,
        ACHIEVEMENT
    }

    public IssuedItems() {
    }

    public static IssuedItems fromJson(JsonValue jsonValue) {
        IssuedItems issuedItems = new IssuedItems(IssueReason.valueOf(jsonValue.getString("r")), jsonValue.getInt("it"));
        issuedItems.shown = jsonValue.getBoolean(C6226s.f31189J, false);
        issuedItems.massUnpackCount = jsonValue.getInt("muc", 0);
        Iterator<JsonValue> iterator2 = jsonValue.get("i").iterator2();
        while (iterator2.hasNext()) {
            issuedItems.items.add(ItemStack.fromJson(iterator2.next()));
        }
        switch (C15421.f8711a[issuedItems.reason.ordinal()]) {
            case 1:
                issuedItems.questBasicLevel = jsonValue.getString("bl");
                issuedItems.questId = jsonValue.getString("q");
                break;
            case 2:
                issuedItems.waveQuestBasicLevel = jsonValue.getString("bl");
                issuedItems.waveQuestId = jsonValue.getString("q");
                break;
            case 3:
                issuedItems.gameOverBasicLevel = jsonValue.getString("bl");
                issuedItems.basicLevelGameMode = GameStateSystem.GameMode.valueOf(jsonValue.getString("blgm", GameStateSystem.GameMode.BASIC_LEVELS.name()));
                break;
            case 5:
                issuedItems.dailyQuestDate = jsonValue.getString("dqd");
                break;
            case 8:
                issuedItems.secretCode = jsonValue.getString("c");
                issuedItems.secretCodeDescription = jsonValue.getString("m");
                break;
            case 9:
                issuedItems.userMapHash = jsonValue.getInt("umh");
                issuedItems.userMapId = jsonValue.getString("umi");
                break;
            case 11:
                issuedItems.randomTilePackQuality = jsonValue.getFloat("rtpq");
                break;
            case 12:
                issuedItems.randomBarrierPackQuality = jsonValue.getFloat("rbpq");
                break;
            case 13:
                issuedItems.mapPrestigeConfig = MapPrestigeConfig.fromJson(jsonValue.get("mpc"));
                break;
            case 14:
                issuedItems.dailyLootDate = jsonValue.getString("dld");
                break;
            case 18:
                issuedItems.caseType = CaseType.valueOf(jsonValue.getString("ct"));
                break;
            case 19:
                issuedItems.dqBoardPlace = jsonValue.getInt("dqlbp");
                issuedItems.dqBoardRankPercentage = jsonValue.getInt("dqlbrp");
                issuedItems.dqBoardTotalPlaces = jsonValue.getInt("dqlbtp");
                issuedItems.dqDate = jsonValue.getString("dqlbd");
                break;
            case 21:
                issuedItems.invitedPlayerId = jsonValue.getString("ipipi");
                issuedItems.invitedPlayerNickname = jsonValue.getString("ipipn");
                break;
            case 22:
                issuedItems.achievementType = AchievementType.valueOf(jsonValue.getString("at"));
                break;
            case 23:
                issuedItems.failureCompensationDescription = jsonValue.getString("fcd", null);
                break;
        }
        return issuedItems;
    }

    public void compactItems() {
        for (int i = this.items.size - 1; i >= 0; i--) {
            ItemStack itemStack = this.items.items[i];
            for (int i2 = i - 1; i2 >= 0; i2--) {
                ItemStack itemStack2 = this.items.items[i2];
                if (itemStack.getItem().sameAs(itemStack2.getItem())) {
                    itemStack2.setCount(PMath.addWithoutOverflow(itemStack2.getCount(), itemStack.getCount()));
                    this.items.removeIndex(i);
                }
            }
        }
    }

    public CharSequence getReasonDescription() {
        StringBuilder stringBuilder = f8710a;
        stringBuilder.setLength(0);
        switch (C15421.f8711a[this.reason.ordinal()]) {
            case 1:
                BasicLevel level = Game.f8589i.basicLevelManager.getLevel(this.questBasicLevel);
                if (level != null) {
                    BasicLevelQuestConfig quest = level.getQuest(this.questId);
                    stringBuilder.append(Game.f8589i.localeManager.i18n.format("issued_items_reason_description_QUEST", quest.getTitle(false, true), quest.formatValueForUi(quest.getRequiredValue(Game.f8589i.gameValueManager.getSnapshot())), this.questBasicLevel));
                    break;
                } else {
                    stringBuilder.append(Game.f8589i.localeManager.i18n.format("issued_items_reason_description_QUEST_lite", this.questBasicLevel));
                    break;
                }
            case 2:
                BasicLevel level2 = Game.f8589i.basicLevelManager.getLevel(this.waveQuestBasicLevel);
                if (level2 != null) {
                    stringBuilder.append(Game.f8589i.localeManager.i18n.format("issued_items_reason_description_WAVE_QUEST", Integer.valueOf(level2.getWaveQuest(this.waveQuestId).waves), level2.name));
                    break;
                } else {
                    stringBuilder.append(Game.f8589i.localeManager.i18n.get("issued_items_reason_description_WAVE_QUEST_lite"));
                    break;
                }
            case 3:
                stringBuilder.append(Game.f8589i.localeManager.i18n.format("issued_items_reason_description_GAME_OVER_BASIC_LEVEL", this.gameOverBasicLevel));
                break;
            case 5:
                stringBuilder.append(Game.f8589i.localeManager.i18n.get("issued_items_reason_description_DAILY_QUEST")).append(" ").append(this.dailyQuestDate);
                break;
            case 6:
                stringBuilder.append(Game.f8589i.localeManager.i18n.get("issued_items_reason_description_DAILY_QUEST"));
                break;
            case 7:
                stringBuilder.append(Game.f8589i.localeManager.i18n.get("issued_items_reason_description_REWARD_VIDEO"));
                break;
            case 8:
                stringBuilder.append(Game.f8589i.localeManager.i18n.get("issued_items_reason_description_SECRET_CODE")).append(" \"").append(this.secretCode).append("\" (").append(this.secretCodeDescription).append(")");
                break;
            case 9:
                stringBuilder.append(Game.f8589i.localeManager.i18n.get("issued_items_reason_description_GAME_OVER_USER_MAP"));
                break;
            case 10:
                stringBuilder.append(Game.f8589i.localeManager.i18n.get("issued_items_reason_description_PURCHASE"));
                break;
            case 11:
                stringBuilder.append(Game.f8589i.localeManager.i18n.format("issued_items_reason_description_RANDOM_TILE_PACK", PMath.toString(StrictMath.round(this.randomTilePackQuality * 100.0f))));
                break;
            case 12:
                stringBuilder.append(Game.f8589i.localeManager.i18n.format("issued_items_reason_description_RANDOM_BARRIER_PACK", PMath.toString(StrictMath.round(this.randomBarrierPackQuality * 100.0f))));
                break;
            case 13:
                stringBuilder.append(Game.f8589i.localeManager.i18n.get("issued_items_reason_description_MAP_PRESTIGE"));
                break;
            case 14:
                stringBuilder.append(Game.f8589i.localeManager.i18n.format("issued_items_reason_description_DAILY_LOOT", this.dailyLootDate));
                break;
            case 15:
                stringBuilder.append(Game.f8589i.localeManager.i18n.format("issued_items_reason_description_LUCKY_SHOT", this.dailyLootDate));
                break;
            case 16:
                stringBuilder.append(Game.f8589i.localeManager.i18n.get("issued_items_reason_description_QUESTS_PRESTIGE"));
                break;
            case 17:
                stringBuilder.append(Game.f8589i.localeManager.i18n.get("issued_items_reason_description_RANDOM_TELEPORT_PACK"));
                break;
            case 18:
                stringBuilder.append(Game.f8589i.localeManager.i18n.format("issued_items_reason_description_CASE", String.valueOf(Item.C1543D.F_CASE.create(this.caseType, false, true).getTitle())));
                break;
            case 19:
                stringBuilder.append(Game.f8589i.localeManager.i18n.format("issued_items_reason_description_DAILY_QUEST_LEADER_BOARD", this.dqDate, Integer.valueOf(this.dqBoardPlace), Integer.valueOf(this.dqBoardTotalPlaces), Integer.valueOf(this.dqBoardRankPercentage)));
                break;
            case 20:
                stringBuilder.append(Game.f8589i.localeManager.i18n.get("issued_items_reason_description_SIGNED_UP_BY_INVITE"));
                break;
            case 21:
                stringBuilder.append(Game.f8589i.localeManager.i18n.format("issued_items_reason_description_FOR_INVITED_PLAYER", this.invitedPlayerNickname));
                break;
            case 22:
                stringBuilder.append(Game.f8589i.localeManager.i18n.format("achievement_complete", Game.f8589i.achievementManager.getName(this.achievementType)));
                break;
            case 23:
                String str = this.failureCompensationDescription;
                if (str != null) {
                    stringBuilder.append(str);
                    break;
                }
                break;
        }
        if (this.massUnpackCount > 1) {
            stringBuilder.append(" x").append(StringFormatter.commaSeparatedNumber(this.massUnpackCount));
        }
        return stringBuilder;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.issueTimestamp = input.readInt();
        this.shown = input.readBoolean();
        this.reason = (IssueReason) kryo.readObject(input, IssueReason.class);
        this.items = (Array) kryo.readObject(input, Array.class);
        this.basicLevelGameMode = (GameStateSystem.GameMode) kryo.readObjectOrNull(input, GameStateSystem.GameMode.class);
        this.gameOverBasicLevel = (String) kryo.readObjectOrNull(input, String.class);
        this.userMapId = (String) kryo.readObjectOrNull(input, String.class);
        this.userMapHash = input.readInt();
        this.dailyQuestDate = (String) kryo.readObjectOrNull(input, String.class);
        this.questBasicLevel = (String) kryo.readObjectOrNull(input, String.class);
        this.questId = (String) kryo.readObjectOrNull(input, String.class);
        this.waveQuestBasicLevel = (String) kryo.readObjectOrNull(input, String.class);
        this.waveQuestId = (String) kryo.readObjectOrNull(input, String.class);
        this.secretCode = (String) kryo.readObjectOrNull(input, String.class);
        this.secretCodeDescription = (String) kryo.readObjectOrNull(input, String.class);
        this.randomTilePackQuality = input.readFloat();
        this.randomBarrierPackQuality = input.readFloat();
        this.caseType = (CaseType) kryo.readObjectOrNull(input, CaseType.class);
        this.dqBoardPlace = input.readVarInt(false);
        this.dqBoardTotalPlaces = input.readVarInt(true);
        this.dqBoardRankPercentage = input.readVarInt(false);
        this.dqDate = (String) kryo.readObjectOrNull(input, String.class);
        this.invitedPlayerId = (String) kryo.readObjectOrNull(input, String.class);
        this.invitedPlayerNickname = (String) kryo.readObjectOrNull(input, String.class);
        this.mapPrestigeConfig = (MapPrestigeConfig) kryo.readObjectOrNull(input, MapPrestigeConfig.class);
        this.dailyLootDate = (String) kryo.readObjectOrNull(input, String.class);
        this.achievementType = (AchievementType) kryo.readObjectOrNull(input, AchievementType.class);
        this.failureCompensationDescription = (String) kryo.readObjectOrNull(input, String.class);
        this.addedToIssuedItemsArray = input.readBoolean();
        this.massUnpackCount = input.readVarInt(true);
    }

    public void toJson(Json json) {
        json.writeValue("r", this.reason.name());
        json.writeValue("it", Integer.valueOf(this.issueTimestamp));
        json.writeValue(C6226s.f31189J, Boolean.valueOf(this.shown));
        int i = this.massUnpackCount;
        if (i != 0) {
            json.writeValue("muc", Integer.valueOf(i));
        }
        switch (C15421.f8711a[this.reason.ordinal()]) {
            case 1:
                json.writeValue("bl", this.questBasicLevel);
                json.writeValue("q", this.questId);
                break;
            case 2:
                json.writeValue("bl", this.waveQuestBasicLevel);
                json.writeValue("q", this.waveQuestId);
                break;
            case 3:
                json.writeValue("bl", this.gameOverBasicLevel);
                json.writeValue("blgm", this.basicLevelGameMode);
                break;
            case 5:
                json.writeValue("dqd", this.dailyQuestDate);
                break;
            case 8:
                json.writeValue("c", this.secretCode);
                json.writeValue("m", this.secretCodeDescription);
                break;
            case 9:
                json.writeValue("umi", this.userMapId);
                json.writeValue("umh", Integer.valueOf(this.userMapHash));
                break;
            case 11:
                json.writeValue("rtpq", Float.valueOf(this.randomTilePackQuality));
                break;
            case 12:
                json.writeValue("rbpq", Float.valueOf(this.randomBarrierPackQuality));
                break;
            case 13:
                json.writeObjectStart("mpc");
                this.mapPrestigeConfig.toJson(json);
                json.writeObjectEnd();
                break;
            case 14:
                json.writeValue("dld", this.dailyLootDate);
                break;
            case 18:
                json.writeValue("ct", this.caseType.name());
                break;
            case 19:
                json.writeValue("dqlbp", Integer.valueOf(this.dqBoardPlace));
                json.writeValue("dqlbrp", Integer.valueOf(this.dqBoardRankPercentage));
                json.writeValue("dqlbtp", Integer.valueOf(this.dqBoardTotalPlaces));
                json.writeValue("dqlbd", this.dqDate);
                break;
            case 21:
                json.writeValue("ipipi", this.invitedPlayerId);
                json.writeValue("ipipn", this.invitedPlayerNickname);
                break;
            case 22:
                json.writeValue("at", this.achievementType.name());
                break;
            case 23:
                String str = this.failureCompensationDescription;
                if (str != null) {
                    json.writeValue("fcd", str);
                    break;
                }
                break;
        }
        json.writeArrayStart("i");
        for (int i2 = 0; i2 < this.items.size; i2++) {
            json.writeObjectStart();
            this.items.items[i2].toJson(json);
            json.writeObjectEnd();
        }
        json.writeArrayEnd();
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeInt(this.issueTimestamp);
        output.writeBoolean(this.shown);
        kryo.writeObject(output, this.reason);
        kryo.writeObject(output, this.items);
        kryo.writeObjectOrNull(output, this.basicLevelGameMode, GameStateSystem.GameMode.class);
        kryo.writeObjectOrNull(output, this.gameOverBasicLevel, String.class);
        kryo.writeObjectOrNull(output, this.userMapId, String.class);
        output.writeInt(this.userMapHash);
        kryo.writeObjectOrNull(output, this.dailyQuestDate, String.class);
        kryo.writeObjectOrNull(output, this.questBasicLevel, String.class);
        kryo.writeObjectOrNull(output, this.questId, String.class);
        kryo.writeObjectOrNull(output, this.waveQuestBasicLevel, String.class);
        kryo.writeObjectOrNull(output, this.waveQuestId, String.class);
        kryo.writeObjectOrNull(output, this.secretCode, String.class);
        kryo.writeObjectOrNull(output, this.secretCodeDescription, String.class);
        output.writeFloat(this.randomTilePackQuality);
        output.writeFloat(this.randomBarrierPackQuality);
        kryo.writeObjectOrNull(output, this.caseType, CaseType.class);
        output.writeVarInt(this.dqBoardPlace, false);
        output.writeVarInt(this.dqBoardTotalPlaces, true);
        output.writeVarInt(this.dqBoardRankPercentage, false);
        kryo.writeObjectOrNull(output, this.dqDate, String.class);
        kryo.writeObjectOrNull(output, this.invitedPlayerId, String.class);
        kryo.writeObjectOrNull(output, this.invitedPlayerNickname, String.class);
        kryo.writeObjectOrNull(output, this.mapPrestigeConfig, MapPrestigeConfig.class);
        kryo.writeObjectOrNull(output, this.dailyLootDate, String.class);
        kryo.writeObjectOrNull(output, this.achievementType, AchievementType.class);
        kryo.writeObjectOrNull(output, this.failureCompensationDescription, String.class);
        output.writeBoolean(this.addedToIssuedItemsArray);
        output.writeVarInt(this.massUnpackCount, true);
    }

    public IssuedItems(IssueReason issueReason, int i) {
        this.issueTimestamp = i;
        this.reason = issueReason;
    }
}
