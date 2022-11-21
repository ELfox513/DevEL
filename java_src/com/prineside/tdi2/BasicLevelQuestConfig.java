package com.prineside.tdi2;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.systems.QuestSystem;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes2.dex */
public class BasicLevelQuestConfig {

    /* renamed from: c */
    public static final StringBuilder f8466c = new StringBuilder();
    public boolean duringGame;

    /* renamed from: id */
    public String f8469id;
    public BasicLevel level;
    public long requiredValue;
    public double savedValue;
    public boolean scripted;
    public String scriptedTitle;
    public StatisticsType statisticsType;
    public Array<ItemStack> prizes = new Array<>(ItemStack.class);

    /* renamed from: a */
    public int f8467a = -1;

    /* renamed from: b */
    public int f8468b = -1;

    public CharSequence formatValueForUi(double d) {
        if (this.scripted) {
            StringBuilder stringBuilder = f8466c;
            stringBuilder.setLength(0);
            return stringBuilder;
        }
        return Game.f8589i.statisticsManager.formatStatisticsValue(this.statisticsType, d);
    }

    public int getExtraDustInEndless(GameValueProvider gameValueProvider) {
        int i;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            Array<BasicLevelQuestConfig> array = this.level.quests;
            i = array.size;
            if (i2 < i) {
                if (array.items[i2] == this) {
                    break;
                }
                i3 = i2;
                i2++;
            } else {
                i2 = i3;
                break;
            }
        }
        double d = i2;
        double d2 = i - 1;
        Double.isNaN(d);
        Double.isNaN(d2);
        double d3 = (d / d2) + 1.0d;
        double percentValueAsMultiplier = gameValueProvider.getPercentValueAsMultiplier(GameValueType.BIT_DUST_DROP_RATE);
        if (this.duringGame) {
            return (int) (d3 * 2.0d * percentValueAsMultiplier);
        }
        return (int) (percentValueAsMultiplier * 1.0d);
    }

    public String getId() {
        return this.f8469id;
    }

    public boolean isDuringGame() {
        return this.duringGame;
    }

    public boolean isScripted() {
        return this.scripted;
    }

    public void setCompleted(boolean z) {
        this.f8468b = -1;
        this.f8467a = z ? 1 : 0;
        if (!z) {
            this.savedValue = 0.0d;
        }
        Game.f8589i.basicLevelManager.setQuestCompleted(this.f8469id, z);
    }

    public static BasicLevelQuestConfig fromJson(JsonValue jsonValue, BasicLevel basicLevel) {
        StatisticsType statisticsType;
        String string = jsonValue.getString("id");
        boolean z = jsonValue.getBoolean("scripted", false);
        if (!z) {
            statisticsType = StatisticsType.valueOf(jsonValue.getString("statisticsType"));
        } else {
            statisticsType = null;
        }
        BasicLevelQuestConfig basicLevelQuestConfig = new BasicLevelQuestConfig(string, z, statisticsType, jsonValue.getLong("value", 0L), jsonValue.getBoolean("oneGame", false), basicLevel);
        if (z) {
            basicLevelQuestConfig.scriptedTitle = jsonValue.getString("title");
        }
        Iterator<JsonValue> iterator2 = jsonValue.get("prizes").iterator2();
        while (iterator2.hasNext()) {
            basicLevelQuestConfig.prizes.add(ItemStack.fromJson(iterator2.next()));
        }
        return basicLevelQuestConfig;
    }

    public QuestSystem.Quest createIngameQuest(GameSystemProvider gameSystemProvider) {
        if (this.scripted) {
            return null;
        }
        return new QuestSystem.BasicLevelQuest(this.level, this, gameSystemProvider);
    }

    public Array<ItemStack> getPrizes(GameValueManager.GameValuesSnapshot gameValuesSnapshot) {
        BasicLevel basicLevel = this.level;
        if (!basicLevel.fixedQuests && Game.f8589i.basicLevelManager.getStage(basicLevel.stageName).regular) {
            double percentValueAsMultiplier = gameValuesSnapshot.getPercentValueAsMultiplier(GameValueType.REGULAR_QUESTS_PRIZE_MULTIPLIER);
            if (percentValueAsMultiplier <= 1.0d) {
                return this.prizes;
            }
            Array<ItemStack> array = new Array<>(ItemStack.class);
            int i = 0;
            while (true) {
                Array<ItemStack> array2 = this.prizes;
                if (i < array2.size) {
                    ItemStack itemStack = array2.items[i];
                    if (itemStack.getItem() != Item.C1543D.STAR && itemStack.getItem().getType() != ItemType.GAME_VALUE_LEVEL && itemStack.getItem().getType() != ItemType.GAME_VALUE_GLOBAL) {
                        double count = itemStack.getCount();
                        Double.isNaN(count);
                        array.add(new ItemStack(itemStack.getItem(), (int) ((count * percentValueAsMultiplier) + 1.0E-4d)));
                    } else {
                        array.add(itemStack);
                    }
                    i++;
                } else {
                    return array;
                }
            }
        } else {
            return this.prizes;
        }
    }

    public long getRequiredValue(GameValueManager.GameValuesSnapshot gameValuesSnapshot) {
        long j;
        BasicLevel basicLevel = this.level;
        if (basicLevel.fixedQuests) {
            return this.requiredValue;
        }
        if (!Game.f8589i.basicLevelManager.getStage(basicLevel.stageName).regular) {
            return this.requiredValue;
        }
        double percentValueAsMultiplier = gameValuesSnapshot.getPercentValueAsMultiplier(GameValueType.REGULAR_QUESTS_DIFFICULTY);
        if (percentValueAsMultiplier <= 1.0d) {
            return this.requiredValue;
        }
        double d = this.requiredValue;
        Double.isNaN(d);
        long j2 = (long) (percentValueAsMultiplier * d);
        if (j2 < 100) {
            return j2;
        }
        if (j2 < 500) {
            j = j2 % 5;
        } else if (j2 < 1000) {
            j = j2 % 10;
        } else if (j2 < 5000) {
            j = j2 % 50;
        } else {
            j = j2 % 100;
        }
        return j2 - j;
    }

    public CharSequence getTitle(boolean z, boolean z2) {
        StringBuilder stringBuilder = f8466c;
        stringBuilder.setLength(0);
        if (this.scripted) {
            stringBuilder.append(Game.f8589i.localeManager.i18n.get(this.scriptedTitle));
        } else {
            stringBuilder.append(Game.f8589i.statisticsManager.getStatisticsTitle(this.statisticsType));
        }
        if (z2 && this.duringGame) {
            if (z) {
                stringBuilder.append("[#90A4AE]");
            }
            stringBuilder.append(" ").append(Game.f8589i.localeManager.i18n.get("during_one_game").toLowerCase(Locale.ENGLISH));
            if (z) {
                stringBuilder.append("[]");
            }
        }
        return stringBuilder;
    }

    public boolean isCompleted() {
        if (this.f8467a == -1) {
            this.f8467a = Game.f8589i.basicLevelManager.isQuestCompleted(this.f8469id) ? 1 : 0;
        }
        if (this.f8467a == 1) {
            return true;
        }
        return false;
    }

    public void toJson(Json json) {
        json.writeValue("id", this.f8469id);
        if (this.scripted) {
            json.writeValue("scripted", Boolean.TRUE);
            json.writeValue("title", this.scriptedTitle);
        } else {
            json.writeValue("statisticsType", this.statisticsType.name());
        }
        long j = this.requiredValue;
        if (j != 0) {
            json.writeValue("value", Long.valueOf(j));
        }
        if (this.duringGame) {
            json.writeValue("oneGame", Boolean.TRUE);
        }
        json.writeArrayStart("prizes");
        for (int i = 0; i < this.prizes.size; i++) {
            json.writeObjectStart();
            this.prizes.items[i].toJson(json);
            json.writeObjectEnd();
        }
        json.writeArrayEnd();
    }

    public boolean wasEverCompleted() {
        if (this.f8468b == -1) {
            this.f8468b = Game.f8589i.basicLevelManager.isQuestEverCompleted(this.f8469id) ? 1 : 0;
        }
        if (this.f8468b == 1) {
            return true;
        }
        return false;
    }

    public BasicLevelQuestConfig(String str, boolean z, StatisticsType statisticsType, long j, boolean z2, BasicLevel basicLevel) {
        this.f8469id = str;
        this.scripted = z;
        this.statisticsType = statisticsType;
        this.requiredValue = j;
        this.duringGame = z2;
        this.level = basicLevel;
    }

    public double getCurrentValue(GameValueManager.GameValuesSnapshot gameValuesSnapshot) {
        if (isCompleted()) {
            return getRequiredValue(gameValuesSnapshot);
        }
        if (!this.scripted) {
            return this.savedValue;
        }
        return 0.0d;
    }

    public CharSequence formatValueForUi(double d, double d2, boolean z) {
        StringBuilder stringBuilder = f8466c;
        stringBuilder.setLength(0);
        if (d2 <= 0.0d) {
            return stringBuilder;
        }
        double min = StrictMath.min(d2, d);
        if (z) {
            stringBuilder.append("[#90A4AE]");
        }
        stringBuilder.append(formatValueForUi(min));
        stringBuilder.append(" / ");
        if (z) {
            stringBuilder.append("[][#ffffff]");
        }
        stringBuilder.append(formatValueForUi(d2));
        if (z) {
            stringBuilder.append("[]");
        }
        return stringBuilder;
    }
}
