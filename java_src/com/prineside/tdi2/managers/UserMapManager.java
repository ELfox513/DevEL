package com.prineside.tdi2.managers;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.MapPrestigeConfig;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.UserMap;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
import java.io.StringWriter;
import java.util.Comparator;
import java.util.Iterator;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class UserMapManager extends Manager.ManagerAdapter {
    public final Array<UserMap> userMapsOrdered = new Array<>(UserMap.class);

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<UserMapManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public UserMapManager read() {
            return Game.f8589i.userMapManager;
        }
    }

    public int getMaxMapSize() {
        return Game.f8589i.gameValueManager.getSnapshot().getIntValue(GameValueType.USER_MAP_MAX_SIZE);
    }

    public UserMap getUserMap(String str) {
        int i = 0;
        while (true) {
            Array<UserMap> array = this.userMapsOrdered;
            if (i < array.size) {
                if (array.items[i].f8950id.equals(str)) {
                    return this.userMapsOrdered.get(i);
                }
                i++;
            } else {
                return null;
            }
        }
    }

    public boolean isMapEditorAvailable() {
        return Game.f8589i.gameValueManager.getSnapshot().getBooleanValue(GameValueType.MAP_EDITOR);
    }

    public void removeUserMap(String str) {
        int i = 0;
        while (true) {
            Array<UserMap> array = this.userMapsOrdered;
            if (i < array.size) {
                if (array.items[i].f8950id.equals(str)) {
                    this.userMapsOrdered.removeIndex(i);
                    save();
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    public UserMap addUserMap(String str) {
        UserMap userMap = new UserMap(str);
        this.userMapsOrdered.add(userMap);
        save();
        return userMap;
    }

    public BossType[] getDefaultBosses() {
        Array array = new Array(BossType.class);
        if (!Game.f8589i.enemyManager.isEnemyTypeNewForPlayer(EnemyType.BROOT_BOSS)) {
            array.add(BossType.BROOT);
        }
        if (!Game.f8589i.enemyManager.isEnemyTypeNewForPlayer(EnemyType.SNAKE_BOSS_HEAD)) {
            array.add(BossType.SNAKE);
        }
        if (!Game.f8589i.enemyManager.isEnemyTypeNewForPlayer(EnemyType.CONSTRUCTOR_BOSS)) {
            array.add(BossType.CONSTRUCTOR);
        }
        if (!Game.f8589i.enemyManager.isEnemyTypeNewForPlayer(EnemyType.MOBCHAIN_BOSS_HEAD)) {
            array.add(BossType.MOBCHAIN);
        }
        if (!Game.f8589i.enemyManager.isEnemyTypeNewForPlayer(EnemyType.METAPHOR_BOSS)) {
            array.add(BossType.METAPHOR);
        }
        if (array.size != 0) {
            return (BossType[]) array.toArray();
        }
        return null;
    }

    public void prestigeSellMap(MapPrestigeConfig mapPrestigeConfig) {
        UserMap userMap = Game.f8589i.userMapManager.getUserMap(mapPrestigeConfig.userMapId);
        if (userMap == null) {
            Game.f8589i.uiManager.dialog.showAlert("Map not found");
        } else if (mapPrestigeConfig.getFinalPrestigeTokens() <= 0) {
            Game.f8589i.uiManager.dialog.showAlert("You will get no tokens");
        } else {
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                DelayedRemovalArray<Tile> delayedRemovalArray = userMap.map.tilesArray;
                if (i2 >= delayedRemovalArray.size) {
                    break;
                }
                Tile tile = delayedRemovalArray.items[i2];
                if (tile.getPrestigeScore() > 0.0d) {
                    i3++;
                    if (Game.f8589i.progressManager.removeItems(Item.C1543D.F_TILE.create(tile), 1)) {
                        i4++;
                    }
                }
                i2++;
            }
            while (true) {
                Array<Gate> array = userMap.map.gatesArray;
                if (i >= array.size) {
                    break;
                }
                Gate gate = array.items[i];
                if (gate.getPrestigeScore() > 0.0d) {
                    i3++;
                    if (Game.f8589i.progressManager.removeItems(Item.C1543D.F_GATE.create(gate), 1)) {
                        i4++;
                    }
                }
                i++;
            }
            Logger.log("UserMapManager", "map prestige: removed " + i4 + "/" + i3 + " map pieces");
            int finalPrestigeTokens = mapPrestigeConfig.getFinalPrestigeTokens();
            Game.f8589i.progressManager.addItems(Item.C1543D.PRESTIGE_TOKEN, finalPrestigeTokens);
            IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.MAP_PRESTIGE, Game.getTimestampSeconds());
            issuedItems.mapPrestigeConfig = mapPrestigeConfig;
            issuedItems.items.add(new ItemStack(Item.C1543D.PRESTIGE_TOKEN, finalPrestigeTokens));
            Game.f8589i.progressManager.addIssuedPrizes(issuedItems, true);
            removeUserMap(mapPrestigeConfig.userMapId);
            if (finalPrestigeTokens >= 50) {
                Game.f8589i.statisticsManager.registerDelta(StatisticsType.PMS, 1.0d);
            }
            Game.f8589i.statisticsManager.registerDelta(StatisticsType.PPG, finalPrestigeTokens);
            Game.f8589i.achievementManager.setProgress(AchievementType.PRESTIGE, 1);
        }
    }

    public final void reload() {
        this.userMapsOrdered.clear();
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_USER_MAPS);
        boolean z = false;
        if (preferencesManager.contains("slots")) {
            String str = preferencesManager.get("slots", "[]");
            try {
                Iterator<JsonValue> iterator2 = new JsonReader().parse(str).iterator2();
                while (iterator2.hasNext()) {
                    try {
                        this.userMapsOrdered.add(UserMap.fromJson(iterator2.next()));
                    } catch (Exception e) {
                        Logger.error("UserMapManager", "failed to parse map", e);
                        z = true;
                    }
                }
            } catch (Exception e2) {
                Logger.error("UserMapManager", "failed to parse json: " + str, e2);
                z = true;
            }
            this.userMapsOrdered.sort(new Comparator<UserMap>() { // from class: com.prineside.tdi2.managers.UserMapManager.2
                @Override // java.util.Comparator
                public int compare(UserMap userMap, UserMap userMap2) {
                    long j = userMap.creationTimestamp;
                    long j2 = userMap2.creationTimestamp;
                    if (j == j2) {
                        return 0;
                    }
                    return j > j2 ? 1 : -1;
                }
            });
        }
        if (z) {
            save();
        }
    }

    public void rename(UserMap userMap, String str) {
        if (userMap.name.equals(str)) {
            return;
        }
        userMap.name = str;
        save();
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.UserMapManager.1
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                UserMapManager.this.reload();
            }
        });
        reload();
    }

    public void save() {
        if (Config.isHeadless()) {
            return;
        }
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_USER_MAPS);
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeArrayStart();
        for (int i = 0; i < this.userMapsOrdered.size; i++) {
            json.writeObjectStart();
            this.userMapsOrdered.items[i].toJson(json);
            json.writeObjectEnd();
        }
        json.writeArrayEnd();
        preferencesManager.set("slots", stringWriter.toString());
        preferencesManager.flush();
    }
}
