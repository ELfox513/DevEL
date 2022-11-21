package com.prineside.tdi2.managers;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.tiles.BossTile;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.tiles.DummyTile;
import com.prineside.tdi2.tiles.GameValueTile;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.tiles.RoadTile;
import com.prineside.tdi2.tiles.ScriptTile;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.tiles.SpawnTile;
import com.prineside.tdi2.tiles.TargetTile;
import com.prineside.tdi2.tiles.XmMusicTrackTile;
import com.prineside.tdi2.utils.REGS;
import java.lang.reflect.Array;
import java.util.Iterator;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class TileManager extends Manager.ManagerAdapter {

    /* renamed from: F */
    public final Factories f10161F;

    /* renamed from: a */
    public final Tile.Factory[] f10162a;

    /* renamed from: b */
    public final TextureRegion[] f10163b;

    /* loaded from: classes2.dex */
    public static class Factories {
        public BossTile.BossTileFactory BOSS;
        public CoreTile.CoreTileFactory CORE;
        public DummyTile.DummyTileFactory DUMMY;
        public GameValueTile.GameValueTileFactory GAME_VALUE;
        public PlatformTile.SpaceTileFactory PLATFORM;
        public RoadTile.RoadTileFactory ROAD;
        public ScriptTile.ScriptTileFactory SCRIPT;
        public SourceTile.SourceTileFactory SOURCE;
        public SpawnTile.SpawnTileFactory SPAWN;
        public TargetTile.TargetTileFactory TARGET;
        public XmMusicTrackTile.XmMusicTrackTileFactory XM_MUSIC_TRACK;
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<TileManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public TileManager read() {
            return Game.f8589i.tileManager;
        }
    }

    public Tile createTileFromJsonString(String str) {
        return createTileFromJson(new JsonReader().parse(str));
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public Tile.Factory<? extends Tile> getFactory(TileType tileType) {
        return this.f10162a[tileType.ordinal()];
    }

    public Tile createRandomTile(float f, RandomXS128 randomXS128, ProgressManager.InventoryStatistics inventoryStatistics) {
        Tile.Factory[] factoryArr;
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        int i = 0;
        for (Tile.Factory factory : this.f10162a) {
            i += factory.getProbabilityForPrize(f, inventoryStatistics);
        }
        int nextInt = randomXS128.nextInt(i + 1);
        for (Tile.Factory factory2 : this.f10162a) {
            int probabilityForPrize = factory2.getProbabilityForPrize(f, inventoryStatistics);
            nextInt -= probabilityForPrize;
            if (nextInt <= 0 && probabilityForPrize > 0) {
                Tile createRandom = factory2.createRandom(f, randomXS128);
                if (createRandom != null) {
                    return createRandom;
                }
                return createRandomTile(f, randomXS128, inventoryStatistics);
            }
        }
        return null;
    }

    public TextureRegion getRoadTexture(Tile tile, Tile tile2, Tile tile3, Tile tile4) {
        int i;
        if (tile3 != null && tile3.isRoadType()) {
            i = 8;
        } else {
            i = 0;
        }
        if (tile2 != null && tile2.isRoadType()) {
            i += 4;
        }
        if (tile4 != null && tile4.isRoadType()) {
            i += 2;
        }
        if (tile != null && tile.isRoadType()) {
            i++;
        }
        return this.f10163b[i];
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        String str;
        String str2;
        String str3;
        if (Game.f8589i.assetManager != null) {
            for (int i = 0; i < 16; i++) {
                StringBuilder sb = new StringBuilder();
                sb.append("");
                String str4 = "x";
                if ((i & 8) != 0) {
                    str = "x";
                } else {
                    str = "o";
                }
                sb.append(str);
                String sb2 = sb.toString();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(sb2);
                if ((i & 4) != 0) {
                    str2 = "x";
                } else {
                    str2 = "o";
                }
                sb3.append(str2);
                String sb4 = sb3.toString();
                StringBuilder sb5 = new StringBuilder();
                sb5.append(sb4);
                if ((i & 2) != 0) {
                    str3 = "x";
                } else {
                    str3 = "o";
                }
                sb5.append(str3);
                String sb6 = sb5.toString();
                StringBuilder sb7 = new StringBuilder();
                sb7.append(sb6);
                if ((i & 1) == 0) {
                    str4 = "o";
                }
                sb7.append(str4);
                String sb8 = sb7.toString();
                this.f10163b[i] = Game.f8589i.assetManager.getTextureRegion("tile-type-road-" + sb8);
            }
        }
        for (Tile.Factory factory : this.f10162a) {
            factory.setup();
        }
    }

    public TileManager() {
        Factories factories = new Factories();
        this.f10161F = factories;
        TileType[] tileTypeArr = TileType.values;
        Tile.Factory[] factoryArr = new Tile.Factory[tileTypeArr.length];
        this.f10162a = factoryArr;
        this.f10163b = new TextureRegion[16];
        int ordinal = TileType.ROAD.ordinal();
        RoadTile.RoadTileFactory roadTileFactory = new RoadTile.RoadTileFactory();
        factories.ROAD = roadTileFactory;
        factoryArr[ordinal] = roadTileFactory;
        int ordinal2 = TileType.PLATFORM.ordinal();
        PlatformTile.SpaceTileFactory spaceTileFactory = new PlatformTile.SpaceTileFactory();
        factories.PLATFORM = spaceTileFactory;
        factoryArr[ordinal2] = spaceTileFactory;
        int ordinal3 = TileType.SPAWN.ordinal();
        SpawnTile.SpawnTileFactory spawnTileFactory = new SpawnTile.SpawnTileFactory();
        factories.SPAWN = spawnTileFactory;
        factoryArr[ordinal3] = spawnTileFactory;
        int ordinal4 = TileType.TARGET.ordinal();
        TargetTile.TargetTileFactory targetTileFactory = new TargetTile.TargetTileFactory();
        factories.TARGET = targetTileFactory;
        factoryArr[ordinal4] = targetTileFactory;
        int ordinal5 = TileType.SOURCE.ordinal();
        SourceTile.SourceTileFactory sourceTileFactory = new SourceTile.SourceTileFactory();
        factories.SOURCE = sourceTileFactory;
        factoryArr[ordinal5] = sourceTileFactory;
        int ordinal6 = TileType.XM_MUSIC_TRACK.ordinal();
        XmMusicTrackTile.XmMusicTrackTileFactory xmMusicTrackTileFactory = new XmMusicTrackTile.XmMusicTrackTileFactory();
        factories.XM_MUSIC_TRACK = xmMusicTrackTileFactory;
        factoryArr[ordinal6] = xmMusicTrackTileFactory;
        int ordinal7 = TileType.CORE.ordinal();
        CoreTile.CoreTileFactory coreTileFactory = new CoreTile.CoreTileFactory();
        factories.CORE = coreTileFactory;
        factoryArr[ordinal7] = coreTileFactory;
        int ordinal8 = TileType.GAME_VALUE.ordinal();
        GameValueTile.GameValueTileFactory gameValueTileFactory = new GameValueTile.GameValueTileFactory();
        factories.GAME_VALUE = gameValueTileFactory;
        factoryArr[ordinal8] = gameValueTileFactory;
        int ordinal9 = TileType.BOSS.ordinal();
        BossTile.BossTileFactory bossTileFactory = new BossTile.BossTileFactory();
        factories.BOSS = bossTileFactory;
        factoryArr[ordinal9] = bossTileFactory;
        int ordinal10 = TileType.SCRIPT.ordinal();
        ScriptTile.ScriptTileFactory scriptTileFactory = new ScriptTile.ScriptTileFactory();
        factories.SCRIPT = scriptTileFactory;
        factoryArr[ordinal10] = scriptTileFactory;
        int ordinal11 = TileType.DUMMY.ordinal();
        DummyTile.DummyTileFactory dummyTileFactory = new DummyTile.DummyTileFactory();
        factories.DUMMY = dummyTileFactory;
        factoryArr[ordinal11] = dummyTileFactory;
        for (TileType tileType : tileTypeArr) {
            if (this.f10162a[tileType.ordinal()] == null) {
                throw new RuntimeException("Not all tile factories were created");
            }
        }
    }

    @Deprecated
    public Tile[][] createTileArrayFromJson(JsonValue jsonValue, boolean z) {
        if (jsonValue.isObject()) {
            int i = jsonValue.getInt("width");
            int i2 = jsonValue.getInt("height");
            JsonValue jsonValue2 = jsonValue.get("tiles");
            Tile[][] tileArr = (Tile[][]) Array.newInstance(Tile.class, i2, i);
            Iterator<JsonValue> iterator2 = jsonValue2.iterator2();
            while (iterator2.hasNext()) {
                JsonValue next = iterator2.next();
                int i3 = next.getInt("x");
                int i4 = next.getInt("y");
                if (z) {
                    i4 = (i2 - i4) - 1;
                }
                Tile[] tileArr2 = tileArr[i4];
                if (tileArr2[i3] == null) {
                    tileArr2[i3] = createTileFromJson(next);
                } else {
                    throw new IllegalArgumentException("Duplicate tile " + i3 + ":" + i4);
                }
            }
            return tileArr;
        }
        throw new IllegalArgumentException("JsonValue must be an object");
    }

    public Tile createTileFromJson(JsonValue jsonValue) {
        if (jsonValue.isObject()) {
            return getFactory(TileType.valueOf(jsonValue.getString("type"))).fromJson(jsonValue);
        }
        throw new IllegalArgumentException("JsonValue must be an object");
    }
}
