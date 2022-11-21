package com.prineside.tdi2;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.items.TileItem;
import com.prineside.tdi2.utils.FastRandom;
/* loaded from: classes2.dex */
public class UserMap {
    public long creationTimestamp;

    /* renamed from: id */
    public String f8950id;
    public Map map;
    public String name;
    public boolean submittedOnline;

    public UserMap() {
    }

    public static UserMap fromJson(JsonValue jsonValue) {
        UserMap userMap = new UserMap();
        userMap.f8950id = jsonValue.getString("id");
        userMap.name = jsonValue.getString("name");
        userMap.creationTimestamp = jsonValue.getLong("creationTimestamp");
        userMap.submittedOnline = jsonValue.getBoolean("submittedOnline");
        userMap.map = Map.fromJson(jsonValue.get("map"));
        return userMap;
    }

    public boolean removeUnexistentTilesFromMap() {
        boolean z;
        Array array = new Array();
        DelayedRemovalArray<ItemStack> itemsByType = Game.f8589i.progressManager.getItemsByType(ItemType.TILE);
        for (int i = 0; i < itemsByType.size; i++) {
            array.add(itemsByType.get(i).cpy());
        }
        boolean z2 = false;
        for (int i2 = 0; i2 < this.map.heightTiles; i2++) {
            int i3 = 0;
            while (true) {
                Map map = this.map;
                if (i3 < map.widthTiles) {
                    Tile tile = map.getTile(i3, i2);
                    if (tile != null) {
                        int i4 = 0;
                        while (true) {
                            if (i4 >= array.size) {
                                break;
                            }
                            ItemStack itemStack = (ItemStack) array.get(i4);
                            if (((TileItem) itemStack.getItem()).tile.sameAs(tile)) {
                                if (itemStack.getCount() > 0) {
                                    itemStack.setCount(itemStack.getCount() - 1);
                                    z = true;
                                }
                            } else {
                                i4++;
                            }
                        }
                        z = false;
                        if (!z) {
                            this.map.setTile(i3, i2, null);
                            Logger.log("UserMap", "removed tile at " + i3 + ":" + i2 + " (" + tile.toString() + ")");
                            z2 = true;
                        }
                    }
                    i3++;
                }
            }
        }
        return z2;
    }

    public void toJson(Json json) {
        json.writeValue("id", this.f8950id);
        json.writeValue("name", this.name);
        json.writeValue("creationTimestamp", Long.valueOf(this.creationTimestamp));
        json.writeValue("submittedOnline", Boolean.valueOf(this.submittedOnline));
        json.writeObjectStart("map");
        this.map.toJson(json);
        json.writeObjectEnd();
    }

    public UserMap(String str) {
        this.f8950id = "M-" + FastRandom.generateUniqueDistinguishableId();
        this.name = str;
        this.creationTimestamp = Game.getTimestampMillis();
        Map map = new Map(Game.f8589i.userMapManager.getMaxMapSize(), Game.f8589i.userMapManager.getMaxMapSize());
        this.map = map;
        int i = (map.widthTiles / 2) - 1;
        int i2 = (map.heightTiles / 2) - 1;
        DelayedRemovalArray<ItemStack> itemsByType = Game.f8589i.progressManager.getItemsByType(ItemType.TILE);
        Tile tile = null;
        Tile tile2 = null;
        for (int i3 = 0; i3 < itemsByType.size; i3++) {
            Tile tile3 = ((TileItem) itemsByType.get(i3).getItem()).tile;
            TileType tileType = tile3.type;
            if (tileType == TileType.SPAWN) {
                tile = tile3;
            } else if (tileType == TileType.TARGET) {
                tile2 = tile3;
            }
        }
        this.map.setTile(i, i2, tile);
        this.map.setTile(i + 1, i2, tile2);
    }
}
