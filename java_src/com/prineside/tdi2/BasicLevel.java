package com.prineside.tdi2;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.WaveTemplates;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.screens.GameScreen;
import com.prineside.tdi2.systems.QuestSystem;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.FastRandom;
import java.io.StringWriter;
import java.lang.ref.SoftReference;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class BasicLevel {

    /* renamed from: b */
    public static final StringBuilder f8462b = new StringBuilder();
    public boolean customWaves;
    public boolean dailyQuest;
    public WaveTemplates.PredefinedWaveTemplate[] enemyWaves;
    public boolean fixedQuests;
    public int gameStartsCount;
    public boolean hasLeaderboards;
    public boolean isBonus;
    public int maxPlayingTime;
    public int maxReachedWave;
    public long maxScore;
    public String name;
    public int priceInMoney;
    public boolean purchased;
    public int seed;
    public String stageName;
    public int stagePosition;
    public DifficultyMode forcedDifficulty = null;
    public int fastForwardFrame = 0;
    public final Array<Requirement> openRequirements = new Array<>(Requirement.class);
    public final Array<Requirement> showRequirements = new Array<>(Requirement.class);
    public final int[] priceInResources = new int[ResourceType.values.length];
    public final Array<BasicLevelQuestConfig> quests = new Array<>(BasicLevelQuestConfig.class);
    public final Array<WaveQuest> waveQuests = new Array<>(WaveQuest.class);
    public final int[] difficultyMilestones = new int[3];

    /* renamed from: a */
    public SoftReference<Map> f8463a = null;
    public final Array<EnemyType> allowedEnemies = new Array<>();

    /* loaded from: classes2.dex */
    public static class WaveQuest {
        public BasicLevel basicLevel;

        /* renamed from: id */
        public String f8465id;
        public int waves;
        public Array<ItemStack> prizes = new Array<>(ItemStack.class);

        /* renamed from: a */
        public int f8464a = -1;

        public QuestSystem.BasicLevelWaveQuest createIngameQuest(GameSystemProvider gameSystemProvider) {
            return new QuestSystem.BasicLevelWaveQuest(this.basicLevel, this, gameSystemProvider);
        }

        public static WaveQuest fromJson(BasicLevel basicLevel, JsonValue jsonValue) {
            WaveQuest waveQuest = new WaveQuest(basicLevel, jsonValue.getString("id"), jsonValue.getInt("waves"));
            Iterator<JsonValue> iterator2 = jsonValue.get("prizes").iterator2();
            while (iterator2.hasNext()) {
                waveQuest.prizes.add(ItemStack.fromJson(iterator2.next()));
            }
            return waveQuest;
        }

        public boolean isCompleted() {
            if (this.f8464a == -1) {
                this.f8464a = Game.f8589i.basicLevelManager.isQuestCompleted(this.f8465id) ? 1 : 0;
            }
            if (this.f8464a == 1) {
                return true;
            }
            return false;
        }

        public void setCompleted(boolean z) {
            this.f8464a = z ? 1 : 0;
            Game.f8589i.basicLevelManager.setQuestCompleted(this.f8465id, z);
        }

        public void toJson(Json json) {
            json.writeValue("id", this.f8465id);
            json.writeValue("waves", Integer.valueOf(this.waves));
            json.writeArrayStart("prizes");
            for (int i = 0; i < this.prizes.size; i++) {
                json.writeObjectStart();
                this.prizes.items[i].toJson(json);
                json.writeObjectEnd();
            }
            json.writeArrayEnd();
        }

        public WaveQuest(BasicLevel basicLevel, String str, int i) {
            this.basicLevel = basicLevel;
            this.f8465id = str;
            this.waves = i;
        }
    }

    public int[] getComplexityWaveMilestones() {
        return this.difficultyMilestones;
    }

    public TextureRegion getPreview() {
        return getMap().getPreview().getTextureRegion();
    }

    public BasicLevelQuestConfig getQuest(String str) {
        int i = 0;
        while (true) {
            Array<BasicLevelQuestConfig> array = this.quests;
            if (i < array.size) {
                if (array.get(i).getId().equals(str)) {
                    return this.quests.get(i);
                }
                i++;
            } else {
                throw new IllegalArgumentException("Quest " + str + " not found");
            }
        }
    }

    public int[] getStarMilestoneWaves() {
        int[] iArr = new int[3];
        int i = 0;
        int i2 = 0;
        while (true) {
            Array<WaveQuest> array = this.waveQuests;
            if (i < array.size) {
                WaveQuest waveQuest = array.get(i);
                int i3 = 0;
                while (true) {
                    Array<ItemStack> array2 = waveQuest.prizes;
                    if (i3 >= array2.size) {
                        break;
                    }
                    if (array2.get(i3).getItem() == Item.C1543D.STAR) {
                        iArr[i2] = waveQuest.waves;
                        i2++;
                        if (i2 == 3) {
                            break;
                        }
                    }
                    i3++;
                }
                i++;
            } else {
                return iArr;
            }
        }
    }

    public WaveQuest getWaveQuest(String str) {
        int i = 0;
        while (true) {
            Array<WaveQuest> array = this.waveQuests;
            if (i < array.size) {
                if (array.get(i).f8465id.equals(str)) {
                    return this.waveQuests.get(i);
                }
                i++;
            } else {
                throw new IllegalArgumentException("Quest " + str + " not found");
            }
        }
    }

    public static BasicLevel createNew(String str) {
        BasicLevel basicLevel = new BasicLevel();
        basicLevel.name = str;
        basicLevel.stageName = "-1";
        basicLevel.seed = FastRandom.getFairInt(8999) + CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
        int[] iArr = basicLevel.difficultyMilestones;
        iArr[0] = 20;
        iArr[1] = 40;
        iArr[2] = 60;
        return basicLevel;
    }

    public static BasicLevel fromJson(JsonValue jsonValue) {
        int i;
        BasicLevel basicLevel = new BasicLevel();
        basicLevel.name = jsonValue.getString("name");
        basicLevel.stageName = jsonValue.getString("stage");
        int i2 = 0;
        basicLevel.stagePosition = jsonValue.getInt("stagePosition", 0);
        basicLevel.seed = jsonValue.getInt("seed");
        basicLevel.hasLeaderboards = jsonValue.getBoolean("hasLeaderboards", false);
        basicLevel.dailyQuest = jsonValue.getBoolean("dailyQuest", false);
        if (jsonValue.has("forcedDifficulty") && jsonValue.getString("forcedDifficulty").length() > 0) {
            basicLevel.forcedDifficulty = DifficultyMode.valueOf(jsonValue.getString("forcedDifficulty"));
        }
        basicLevel.fixedQuests = jsonValue.getBoolean("fixedQuests", false);
        basicLevel.isBonus = jsonValue.getBoolean("isBonus", false);
        basicLevel.customWaves = jsonValue.getBoolean("customWaves", false);
        basicLevel.fastForwardFrame = jsonValue.getInt("fastForwardFrame", 0);
        JsonValue jsonValue2 = jsonValue.get("openRequirements");
        if (jsonValue2 != null) {
            Iterator<JsonValue> iterator2 = jsonValue2.iterator2();
            while (iterator2.hasNext()) {
                basicLevel.openRequirements.add(Requirement.fromJson(iterator2.next()));
            }
        }
        JsonValue jsonValue3 = jsonValue.get("showRequirements");
        if (jsonValue3 != null) {
            Iterator<JsonValue> iterator22 = jsonValue3.iterator2();
            while (iterator22.hasNext()) {
                basicLevel.showRequirements.add(Requirement.fromJson(iterator22.next()));
            }
        }
        JsonValue jsonValue4 = jsonValue.get("price");
        if (jsonValue4 != null) {
            Iterator<JsonValue> iterator23 = jsonValue4.iterator2();
            while (iterator23.hasNext()) {
                JsonValue next = iterator23.next();
                String string = next.getString("type");
                if (string.equals("MONEY")) {
                    basicLevel.priceInMoney = next.getInt("amount");
                } else if (string.equals("RESOURCE")) {
                    basicLevel.priceInResources[ResourceType.valueOf(next.getString("name")).ordinal()] = next.getInt("amount");
                }
            }
        }
        JsonValue jsonValue5 = jsonValue.get("quests");
        if (jsonValue5 != null) {
            Iterator<JsonValue> iterator24 = jsonValue5.iterator2();
            while (iterator24.hasNext()) {
                basicLevel.quests.add(BasicLevelQuestConfig.fromJson(iterator24.next(), basicLevel));
            }
        }
        JsonValue jsonValue6 = jsonValue.get("waveQuests");
        if (jsonValue6 != null) {
            Iterator<JsonValue> iterator25 = jsonValue6.iterator2();
            while (iterator25.hasNext()) {
                basicLevel.waveQuests.add(WaveQuest.fromJson(basicLevel, iterator25.next()));
            }
        }
        JsonValue jsonValue7 = jsonValue.get("difficultyMilestones");
        if (jsonValue7 != null) {
            Iterator<JsonValue> iterator26 = jsonValue7.iterator2();
            int i3 = 0;
            while (iterator26.hasNext()) {
                basicLevel.difficultyMilestones[i3] = iterator26.next().asInt();
                i3++;
            }
        }
        JsonValue jsonValue8 = jsonValue.get("enemyWaves");
        if (jsonValue8 != null && (i = jsonValue8.size) != 0) {
            basicLevel.enemyWaves = new WaveTemplates.PredefinedWaveTemplate[i];
            Iterator<JsonValue> iterator27 = jsonValue8.iterator2();
            while (iterator27.hasNext()) {
                basicLevel.enemyWaves[i2] = WaveTemplates.PredefinedWaveTemplate.fromJson(iterator27.next());
                i2++;
            }
        }
        return basicLevel;
    }

    public BasicLevel clone(String str) {
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeObjectStart();
        toJson(json);
        json.writeObjectEnd();
        BasicLevel fromJson = fromJson(new JsonReader().parse(stringWriter.toString()));
        fromJson.name = str;
        fromJson.f8463a = null;
        FileHandle localOrInternalFile = AssetManager.localOrInternalFile("levels/maps/" + this.name + ".json");
        Files files = Gdx.files;
        localOrInternalFile.copyTo(files.local("levels/maps/" + str + ".json"));
        fromJson.saveToDisk();
        return fromJson;
    }

    public Map getMap() {
        Map map;
        SoftReference<Map> softReference = this.f8463a;
        if (softReference != null) {
            map = softReference.get();
        } else {
            map = null;
        }
        if (map != null) {
            return map;
        }
        return reloadMap();
    }

    public Map reloadMap() {
        if (Game.f8589i.screenManager.getCurrentScreen() instanceof GameScreen) {
            Logger.log("BasicLevel", "reloadMap " + this.name);
        }
        try {
            String str = "levels/maps/" + this.name + ".json";
            FileHandle local = Gdx.files.local(str);
            if (!local.exists()) {
                local = Gdx.files.internal(str);
            }
            Map fromJson = Map.fromJson(new JsonReader().parse(local));
            this.f8463a = new SoftReference<>(fromJson);
            this.allowedEnemies.clear();
            this.allowedEnemies.addAll(fromJson.allowedEnemies);
            return fromJson;
        } catch (Exception e) {
            throw new RuntimeException("Failed to load map for level " + this.name, e);
        }
    }

    public void saveToDisk() {
        JsonWriter.OutputType outputType = JsonWriter.OutputType.json;
        Json json = new Json(outputType);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeObjectStart();
        toJson(json);
        json.writeObjectEnd();
        Files files = Gdx.files;
        files.local("levels/" + this.name + ".json").writeString(stringWriter.toString(), false, "UTF-8");
        Files files2 = Gdx.files;
        if (!files2.internal("levels/maps/" + this.name + ".json").exists()) {
            Files files3 = Gdx.files;
            if (!files3.local("levels/maps/" + this.name + ".json").exists()) {
                Map map = new Map(3, 3);
                Json json2 = new Json(outputType);
                StringWriter stringWriter2 = new StringWriter();
                json2.setWriter(stringWriter2);
                json2.writeObjectStart();
                map.toJson(json2);
                json2.writeObjectEnd();
                Files files4 = Gdx.files;
                files4.local("levels/maps/" + this.name + ".json").writeString(stringWriter2.toString(), false, "UTF-8");
                StringBuilder sb = new StringBuilder();
                sb.append("created dummy map for level ");
                sb.append(this.name);
                Logger.log("BasicLevel", sb.toString());
            }
        }
        Logger.log("BasicLevel", "level " + this.name + " saved on disk");
    }

    public void setMap(Map map) {
        this.f8463a = new SoftReference<>(map);
        this.allowedEnemies.clear();
        this.allowedEnemies.addAll(getMap().allowedEnemies);
    }

    public void toJson(Json json) {
        boolean z;
        json.writeValue("name", this.name);
        json.writeValue("stage", this.stageName);
        int i = this.stagePosition;
        if (i != 0) {
            json.writeValue("stagePosition", Integer.valueOf(i));
        }
        json.writeValue("seed", Integer.valueOf(this.seed));
        if (this.hasLeaderboards) {
            json.writeValue("hasLeaderboards", Boolean.TRUE);
        }
        if (this.dailyQuest) {
            json.writeValue("dailyQuest", Boolean.TRUE);
        }
        DifficultyMode difficultyMode = this.forcedDifficulty;
        if (difficultyMode != null) {
            json.writeValue("forcedDifficulty", difficultyMode.name());
        }
        if (this.fixedQuests) {
            json.writeValue("fixedQuests", Boolean.TRUE);
        }
        if (this.isBonus) {
            json.writeValue("isBonus", Boolean.TRUE);
        }
        if (this.customWaves) {
            json.writeValue("customWaves", Boolean.TRUE);
        }
        int i2 = this.fastForwardFrame;
        if (i2 > 0) {
            json.writeValue("fastForwardFrame", Integer.valueOf(i2));
        }
        if (this.openRequirements.size != 0) {
            json.writeArrayStart("openRequirements");
            for (int i3 = 0; i3 < this.openRequirements.size; i3++) {
                json.writeObjectStart();
                this.openRequirements.items[i3].toJson(json);
                json.writeObjectEnd();
            }
            json.writeArrayEnd();
        }
        if (this.showRequirements.size != 0) {
            json.writeArrayStart("showRequirements");
            for (int i4 = 0; i4 < this.showRequirements.size; i4++) {
                json.writeObjectStart();
                this.showRequirements.items[i4].toJson(json);
                json.writeObjectEnd();
            }
            json.writeArrayEnd();
        }
        boolean z2 = true;
        if (this.priceInMoney > 0) {
            z = true;
        } else {
            z = false;
        }
        int[] iArr = this.priceInResources;
        int length = iArr.length;
        int i5 = 0;
        while (true) {
            if (i5 < length) {
                if (iArr[i5] > 0) {
                    break;
                }
                i5++;
            } else {
                z2 = z;
                break;
            }
        }
        if (z2) {
            json.writeArrayStart("price");
            if (this.priceInMoney > 0) {
                json.writeObjectStart();
                json.writeValue("type", "MONEY");
                json.writeValue("amount", Integer.valueOf(this.priceInMoney));
                json.writeObjectEnd();
            }
            int i6 = 0;
            while (true) {
                int[] iArr2 = this.priceInResources;
                if (i6 >= iArr2.length) {
                    break;
                }
                if (iArr2[i6] > 0) {
                    json.writeObjectStart();
                    json.writeValue("type", "RESOURCE");
                    json.writeValue("name", ResourceType.values[i6].name());
                    json.writeValue("amount", Integer.valueOf(this.priceInResources[i6]));
                    json.writeObjectEnd();
                }
                i6++;
            }
            json.writeArrayEnd();
        }
        if (this.quests.size != 0) {
            json.writeArrayStart("quests");
            for (int i7 = 0; i7 < this.quests.size; i7++) {
                json.writeObjectStart();
                this.quests.items[i7].toJson(json);
                json.writeObjectEnd();
            }
            json.writeArrayEnd();
        }
        if (this.waveQuests.size != 0) {
            json.writeArrayStart("waveQuests");
            for (int i8 = 0; i8 < this.waveQuests.size; i8++) {
                json.writeObjectStart();
                this.waveQuests.items[i8].toJson(json);
                json.writeObjectEnd();
            }
            json.writeArrayEnd();
        }
        json.writeArrayStart("difficultyMilestones");
        int i9 = 0;
        while (true) {
            int[] iArr3 = this.difficultyMilestones;
            if (i9 >= iArr3.length) {
                break;
            }
            json.writeValue(Integer.valueOf(iArr3[i9]));
            i9++;
        }
        json.writeArrayEnd();
        WaveTemplates.PredefinedWaveTemplate[] predefinedWaveTemplateArr = this.enemyWaves;
        if (predefinedWaveTemplateArr != null && predefinedWaveTemplateArr.length != 0) {
            json.writeArrayStart("enemyWaves");
            for (int i10 = 0; i10 < this.enemyWaves.length; i10++) {
                json.writeObjectStart();
                this.enemyWaves[i10].toJson(json);
                json.writeObjectEnd();
            }
            json.writeArrayEnd();
        }
    }

    public Array<EnemyType> getAllowedEnemies() {
        getMap();
        return this.allowedEnemies;
    }
}
