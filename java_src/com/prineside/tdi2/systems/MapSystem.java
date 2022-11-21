package com.prineside.tdi2.systems;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Intersector;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Pool;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.Path;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.Unit;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.actions.CoreUpgradeAction;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.enums.BuildingType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.shapes.RangeCircle;
import com.prineside.tdi2.systems.GameValueSystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.systems.PathRenderingSystem;
import com.prineside.tdi2.systems.StateSystem;
import com.prineside.tdi2.systems.UnitSystem;
import com.prineside.tdi2.systems.WaveSystem;
import com.prineside.tdi2.tiles.BossTile;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.tiles.SpawnTile;
import com.prineside.tdi2.utils.BitVector;
import com.prineside.tdi2.utils.DrawUtils;
import com.prineside.tdi2.utils.EntityUtils;
import com.prineside.tdi2.utils.FloatSorter;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.ObjectFilter;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MapSystem extends GameSystem {

    /* renamed from: G */
    public static final Color f11608G;

    /* renamed from: H */
    public static final Color f11609H;

    /* renamed from: I */
    public static final Vector2 f11610I;

    /* renamed from: J */
    public static final Vector2 f11611J;

    /* renamed from: A */
    public boolean f11612A;

    /* renamed from: B */
    public Array<AabbEnemyEntry>[] f11613B;

    /* renamed from: D */
    public byte f11615D;

    /* renamed from: E */
    public byte f11616E;
    @NAGS

    /* renamed from: a */
    public Tile f11617a;
    @NAGS

    /* renamed from: b */
    public Tile f11618b;
    @NAGS

    /* renamed from: d */
    public Gate f11619d;
    @NAGS

    /* renamed from: k */
    public Gate f11620k;
    @NAGS

    /* renamed from: r */
    public float f11623r;
    @NAGS

    /* renamed from: s */
    public RangeCircle f11624s;
    @NAGS

    /* renamed from: u */
    public RangeCircle f11626u;
    @NAGS

    /* renamed from: v */
    public RangeCircle f11627v;
    @NAGS

    /* renamed from: w */
    public float f11628w;

    /* renamed from: y */
    public Map f11630y;

    /* renamed from: z */
    public boolean f11631z;

    /* renamed from: F */
    public static final Color f11607F = new Color(1286557730);
    public static final Color TOWER_RANGE_SELECTED_COLOR = new Color(12375074);
    public static final Color TOWER_RANGE_HOVER_COLOR = new Color(-239);
    @NAGS

    /* renamed from: p */
    public final Array<Tile> f11621p = new Array<>();
    @NAGS

    /* renamed from: q */
    public final Array<Gate> f11622q = new Array<>();
    @NAGS
    public boolean drawPathTraces = true;
    @NAGS

    /* renamed from: t */
    public boolean f11625t = false;

    /* renamed from: x */
    public boolean f11629x = false;
    public DelayedRemovalArray<Enemy.EnemyReference> spawnedEnemies = new DelayedRemovalArray<>(false, 8, Enemy.EnemyReference.class);
    public DelayedRemovalArray<Unit> spawnedUnits = new DelayedRemovalArray<>(false, 8, Unit.class);
    public ListenerGroup<MapSystemListener> listeners = new ListenerGroup<>(MapSystemListener.class);

    /* renamed from: C */
    public BitVector f11614C = new BitVector();

    /* renamed from: com.prineside.tdi2.systems.MapSystem$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C23181 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f11632a;

        static {
            int[] iArr = new int[CoreTile.Tier.values().length];
            f11632a = iArr;
            try {
                iArr[CoreTile.Tier.REGULAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11632a[CoreTile.Tier.RARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11632a[CoreTile.Tier.LEGENDARY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static final class AabbEnemyEntry implements KryoSerializable {

        /* renamed from: a */
        public static final Pool<AabbEnemyEntry> f11633a = new Pool<AabbEnemyEntry>() { // from class: com.prineside.tdi2.systems.MapSystem.AabbEnemyEntry.1
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public AabbEnemyEntry newObject() {
                return new AabbEnemyEntry();
            }
        };
        public Enemy.EnemyReference enemyReference;
        public Vector2 position;
        public float size;

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.position = (Vector2) kryo.readObject(input, Vector2.class);
            this.size = input.readFloat();
            this.enemyReference = (Enemy.EnemyReference) kryo.readObject(input, Enemy.EnemyReference.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.position);
            output.writeFloat(this.size);
            kryo.writeObject(output, this.enemyReference);
        }
    }

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface MapSystemListener extends GameListener {

        /* loaded from: classes2.dex */
        public static abstract class MapSystemListenerAdapter implements MapSystemListener {
            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return false;
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void buildingRemovedFromMap(Building building, PlatformTile platformTile) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void coreTileLeveledUp(CoreTile coreTile) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void coreTileUpgradeInstalled(int i, int i2) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void enemyDespawnedFromMap(Enemy enemy) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void enemySpawnedOnMap(Enemy enemy) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void gateChanged(int i, int i2, Gate.Side side, Gate gate, Gate gate2) {
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 0;
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void hoveredGateChanged(Gate gate) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void hoveredTileChanged(Tile tile) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void minerPlacedOnMap(Miner miner) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void minerRemovedFromMap(Miner miner, SourceTile sourceTile) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void modifierPlacedOnMap(Modifier modifier) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void selectedGateChanged(Gate gate) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void selectedTileChanged(Tile tile) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void tileChanged(int i, int i2, Tile tile, Tile tile2) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void towerPlacedOnMap(Tower tower) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void unitDespawnedFromMap(Unit unit) {
            }

            @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener
            public void unitSpawnedOnMap(Unit unit) {
            }
        }

        void buildingRemovedFromMap(Building building, PlatformTile platformTile);

        void coreTileLeveledUp(CoreTile coreTile);

        void coreTileUpgradeInstalled(int i, int i2);

        void enemyDespawnedFromMap(Enemy enemy);

        void enemySpawnedOnMap(Enemy enemy);

        void gateChanged(int i, int i2, Gate.Side side, Gate gate, Gate gate2);

        void hoveredGateChanged(Gate gate);

        void hoveredTileChanged(Tile tile);

        void minerPlacedOnMap(Miner miner);

        void minerRemovedFromMap(Miner miner, SourceTile sourceTile);

        void modifierPlacedOnMap(Modifier modifier);

        void selectedGateChanged(Gate gate);

        void selectedTileChanged(Tile tile);

        void tileChanged(int i, int i2, Tile tile, Tile tile2);

        void towerPlacedOnMap(Tower tower);

        void unitDespawnedFromMap(Unit unit);

        void unitSpawnedOnMap(Unit unit);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _GameValueSystemListener implements GameValueSystem.GameValueSystemListener, KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11634a;

        @Deprecated
        public _GameValueSystemListener() {
        }

        public /* synthetic */ _GameValueSystemListener(GameSystemProvider gameSystemProvider, C23181 c23181) {
            this(gameSystemProvider);
        }

        @Override // com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 1921689999;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11634a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11634a, GameSystemProvider.class);
        }

        public _GameValueSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11634a = gameSystemProvider;
        }

        @Override // com.prineside.tdi2.systems.GameValueSystem.GameValueSystemListener
        public void recalculated(double[] dArr) {
            GameValueSystem gameValueSystem = this.f11634a.gameValue;
            if (gameValueSystem != null && gameValueSystem.getBooleanValue(GameValueType.ENEMIES_WALK_ON_PLATFORMS) != this.f11634a.map.f11629x) {
                this.f11634a.map.m20945u();
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _UnitSystemListener implements UnitSystem.UnitSystemListener, KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11635a;

        @Deprecated
        public _UnitSystemListener() {
        }

        public /* synthetic */ _UnitSystemListener(GameSystemProvider gameSystemProvider, C23181 c23181) {
            this(gameSystemProvider);
        }

        @Override // com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 550090999;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11635a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.prineside.tdi2.systems.UnitSystem.UnitSystemListener
        public void unitDie(Unit unit, Enemy enemy) {
            this.f11635a.map.m20958h(unit);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11635a, GameSystemProvider.class);
        }

        public _UnitSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11635a = gameSystemProvider;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class _WaveSystemListener extends WaveSystem.WaveSystemListener.WaveSystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f11636a;

        public /* synthetic */ _WaveSystemListener(GameSystemProvider gameSystemProvider, C23181 c23181) {
            this(gameSystemProvider);
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 1020901;
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
        public void nextWaveForced(int i, int i2, float f) {
            if (f > 0.0f) {
                for (int i3 = 0; i3 < this.f11636a.map.f11630y.coreTiles.size; i3++) {
                    this.f11636a.map.getMap().coreTiles.items[i3].doubleSpeedTimeLeft += f;
                }
            }
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f11636a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f11636a, GameSystemProvider.class);
        }

        @Deprecated
        public _WaveSystemListener() {
        }

        public _WaveSystemListener(GameSystemProvider gameSystemProvider) {
            this.f11636a = gameSystemProvider;
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    public void drawTileHover(SpriteBatch spriteBatch, int i, int i2) {
        spriteBatch.draw(Game.f8589i.assetManager.f9555TR.tileOutlineHover, ((i * 128) + 64) - 76.0f, ((i2 * 128) + 64) - 76.0f, 152.0f, 152.0f);
    }

    public void drawTileSelection(SpriteBatch spriteBatch, int i, int i2) {
        spriteBatch.draw(Game.f8589i.assetManager.f9555TR.tileOutlineActive, ((i * 128) + 64) - 76.0f, ((i2 * 128) + 64) - 76.0f, 152.0f, 152.0f);
    }

    public final void getEnemiesAABB(Vector2 vector2, Vector2 vector22, float f, ObjectFilter<AabbEnemyEntry> objectFilter) {
        getEnemiesAABB(vector2.f5527x, vector2.f5528y, vector22.f5527x, vector22.f5528y, f, objectFilter);
    }

    public void getEnemiesNearPoint(final Array<Enemy> array, float f, float f2, float f3) {
        final float f4 = f3 * f3;
        f11610I.set(f, f2);
        getEnemiesAABB(f - f3, f2 - f3, f + f3, f2 + f3, 1.0f, new ObjectFilter() { // from class: com.prineside.tdi2.systems.j
            @Override // com.prineside.tdi2.utils.ObjectFilter
            public final boolean passes(Object obj) {
                boolean m20952n;
                m20952n = MapSystem.m20952n(f4, array, (MapSystem.AabbEnemyEntry) obj);
                return m20952n;
            }
        });
    }

    public Gate getHoveredGate() {
        return this.f11620k;
    }

    public Tile getHoveredTile() {
        return this.f11618b;
    }

    public Map getMap() {
        return this.f11630y;
    }

    public Gate getSelectedGate() {
        return this.f11619d;
    }

    public Tile getSelectedTile() {
        return this.f11617a;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Map";
    }

    public void getTileAndNeighbours(int i, int i2, Array<Tile> array) {
        for (int i3 = -1; i3 <= 1; i3++) {
            for (int i4 = -1; i4 <= 1; i4++) {
                Tile tile = this.f11630y.getTile(i + i3, i2 + i4);
                if (tile != null) {
                    array.add(tile);
                }
            }
        }
    }

    public void hideTowerRangeHint() {
        this.f11625t = false;
    }

    public boolean isPointWithinTile(Tile tile, int i, int i2) {
        return tile.boundingBox.contains(i, i2);
    }

    public boolean isSpawned(Unit unit) {
        return unit.spawned;
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postSetup() {
        this.f11631z = true;
        if (this.f11612A && this.f8844S.gameState != null) {
            m20948r();
        }
        m20945u();
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean profileUpdate() {
        return false;
    }

    /* renamed from: r */
    public final void m20948r() {
        PlatformTile platformTile;
        Building building;
        SourceTile sourceTile;
        Miner miner;
        for (int i = 0; i < this.f11630y.heightTiles; i++) {
            int i2 = 0;
            while (true) {
                Map map = this.f11630y;
                if (i2 < map.widthTiles) {
                    Tile tile = map.getTile(i2, i);
                    if (tile instanceof PlatformTile) {
                        PlatformTile platformTile2 = (PlatformTile) tile;
                        Building building2 = platformTile2.building;
                        if (building2 != null && building2.buildingType == BuildingType.TOWER) {
                            building2.setTile(null);
                            platformTile2.building = null;
                            setTower(platformTile2.getX(), platformTile2.getY(), (Tower) building2);
                        }
                    } else if ((tile instanceof SourceTile) && (miner = (sourceTile = (SourceTile) tile).miner) != null) {
                        miner.setTile(null);
                        sourceTile.miner = null;
                        this.f8844S.miner.register(miner);
                        miner.setInstallTime(0.001f);
                        setMiner(sourceTile.getX(), sourceTile.getY(), miner);
                    }
                    i2++;
                }
            }
        }
        for (int i3 = 0; i3 < this.f11630y.heightTiles; i3++) {
            int i4 = 0;
            while (true) {
                Map map2 = this.f11630y;
                if (i4 < map2.widthTiles) {
                    Tile tile2 = map2.getTile(i4, i3);
                    if ((tile2 instanceof PlatformTile) && (building = (platformTile = (PlatformTile) tile2).building) != null && building.buildingType == BuildingType.MODIFIER) {
                        building.setTile(null);
                        platformTile.building = null;
                        setModifier(platformTile.getX(), platformTile.getY(), (Modifier) building);
                    }
                    i4++;
                }
            }
        }
    }

    public void registerGate(Gate gate) {
        gate.setRegistered(this.f8844S);
    }

    public void registerTile(Tile tile) {
        tile.setRegistered(this.f8844S);
    }

    public void removeHighlights() {
        Array<Tile> array;
        int i = 0;
        int i2 = 0;
        while (true) {
            array = this.f11621p;
            if (i2 >= array.size) {
                break;
            }
            Tile tile = array.get(i2);
            tile.highlightParticleA.allowCompletion();
            tile.highlightParticleA = null;
            tile.highlightParticleB.allowCompletion();
            tile.highlightParticleB = null;
            i2++;
        }
        array.clear();
        while (true) {
            Array<Gate> array2 = this.f11622q;
            if (i < array2.size) {
                Gate gate = array2.get(i);
                gate.highlightParticleA.allowCompletion();
                gate.highlightParticleA = null;
                gate.highlightParticleB.allowCompletion();
                gate.highlightParticleB = null;
                i++;
            } else {
                array2.clear();
                return;
            }
        }
    }

    public void setPathTracesDrawing(boolean z) {
        this.drawPathTraces = z;
    }

    public boolean upgradeCore(int i, int i2, int i3, int i4) {
        Tile tile = this.f11630y.getTile(i, i2);
        if (tile != null && tile.type == TileType.CORE) {
            return upgradeCore((CoreTile) tile, i3, i4);
        }
        Logger.error("MapSystem", "there's no core tile on " + i + ":" + i2);
        return false;
    }

    public void upgradeCoreAction(CoreTile coreTile, int i, int i2) {
        if (coreTile.getUpgradeInstallLevel(i, i2) >= coreTile.getUpgrade(i, i2).upgradeLevels.size) {
            Logger.error("MapSystem", "Upgrade " + i2 + ":" + i + " is already on max level");
        } else if (coreTile.canUpgradeBeInstalled(i, i2)) {
            this.f8844S.gameState.pushAction(new CoreUpgradeAction(coreTile.getX(), coreTile.getY(), i, i2));
        } else {
            Logger.error("MapSystem", "upgrade can't be installed");
        }
    }

    static {
        Color color = MaterialColor.RED.P500;
        f11608G = new Color(color).mul(1.0f, 1.0f, 1.0f, 0.14f);
        f11609H = new Color(color).mul(1.0f, 1.0f, 1.0f, 0.78f);
        f11610I = new Vector2();
        f11611J = new Vector2();
    }

    /* renamed from: m */
    public static /* synthetic */ boolean m20953m(float f, float f2, float f3, float f4, float f5, ObjectFilter objectFilter, Array array) {
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            AabbEnemyEntry aabbEnemyEntry = ((AabbEnemyEntry[]) array.items)[i2];
            if (aabbEnemyEntry.enemyReference.enemy != null) {
                float f6 = aabbEnemyEntry.size * f;
                Vector2 vector2 = aabbEnemyEntry.position;
                float f7 = vector2.f5527x;
                if (f2 <= f7 + f6 && f3 >= f7 - f6) {
                    float f8 = vector2.f5528y;
                    if (f4 <= f8 + f6 && f5 >= f8 - f6 && !objectFilter.passes(aabbEnemyEntry)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    /* renamed from: n */
    public static /* synthetic */ boolean m20952n(float f, Array array, AabbEnemyEntry aabbEnemyEntry) {
        if (f11610I.dst2(aabbEnemyEntry.position) < f) {
            array.add(aabbEnemyEntry.enemyReference.enemy);
            return true;
        }
        return true;
    }

    /* renamed from: o */
    public static /* synthetic */ boolean m20951o(ObjectFilter objectFilter, float f, Array array, AabbEnemyEntry aabbEnemyEntry) {
        Enemy enemy = aabbEnemyEntry.enemyReference.enemy;
        if ((objectFilter == null || objectFilter.passes(enemy)) && f11610I.dst2(aabbEnemyEntry.position) > f) {
            array.add(enemy);
            return true;
        }
        return true;
    }

    /* renamed from: p */
    public static /* synthetic */ boolean m20950p(float f, ObjectFilter objectFilter, AabbEnemyEntry aabbEnemyEntry) {
        if (f11610I.dst2(aabbEnemyEntry.position) < f) {
            return objectFilter.passes(aabbEnemyEntry);
        }
        return true;
    }

    public void despawnEnemy(Enemy enemy) {
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if (gameStateSystem != null) {
            gameStateSystem.checkGameplayUpdateAllowed();
        }
        if (EntityUtils.removeByValue(this.spawnedEnemies, enemy)) {
            if (enemy.getCurrentTile() != null) {
                enemy.getCurrentTile().unregisterEnemy(enemy);
            }
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i = 0; i < size; i++) {
                this.listeners.get(i).enemyDespawnedFromMap(enemy);
            }
            this.listeners.end();
            return;
        }
        throw new IllegalArgumentException("Enemy is not in spawnedEnemies: " + enemy);
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.debugManager.unregisterValue("Spawned enemies");
        this.f11617a = null;
        this.f11618b = null;
        this.f11619d = null;
        this.f11620k = null;
        this.f11621p.clear();
        this.f11622q.clear();
        this.spawnedEnemies.clear();
        this.spawnedUnits.clear();
        if (this.f11630y != null) {
            m20947s();
            this.f11630y.setUnregistered();
        }
        this.f11630y = null;
        this.f11624s = null;
        this.listeners.clear();
        super.dispose();
    }

    public void drawBatch(SpriteBatch spriteBatch, float f) {
        Tile tile;
        PlatformTile platformTile;
        Building building;
        Enemy target;
        Gate gate = this.f11620k;
        if (gate != null && gate != this.f11619d) {
            drawGateHover(spriteBatch, gate.getX(), this.f11620k.getY(), this.f11620k.getSide());
        }
        Gate gate2 = this.f11619d;
        if (gate2 != null) {
            drawGateSelection(spriteBatch, gate2.getX(), this.f11619d.getY(), this.f11619d.getSide());
        }
        Tile tile2 = this.f11618b;
        if (tile2 != null && tile2 != this.f11617a) {
            drawTileHover(spriteBatch, tile2.getX(), this.f11618b.getY());
        }
        Tile tile3 = this.f11617a;
        if (tile3 != null) {
            drawTileSelection(spriteBatch, tile3.getX(), this.f11617a.getY());
        }
        spriteBatch.flush();
        spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, 1);
        if (this.f11617a != null) {
            if (this.f11626u == null) {
                this.f11626u = (RangeCircle) Game.f8589i.shapeManager.getFactory(ShapeType.RANGE_CIRCLE).obtain();
            }
            this.f11617a.drawSelectedRange(spriteBatch, this.f11626u);
        }
        if (this.f11618b != null) {
            if (this.f11627v == null) {
                this.f11627v = (RangeCircle) Game.f8589i.shapeManager.getFactory(ShapeType.RANGE_CIRCLE).obtain();
            }
            this.f11618b.drawHoveredRange(spriteBatch, this.f11627v);
        }
        if (this.f11625t) {
            this.f11624s.draw(spriteBatch);
        }
        Vector2 vector2 = null;
        if (this.f11621p.size != 0) {
            float f2 = this.f11623r + (f * 0.5f);
            this.f11623r = f2;
            if (f2 > 1.0f) {
                this.f11623r = f2 % 1.0f;
            }
            m20954l(this.f11623r, f11610I, true, null);
            float f3 = this.f11623r + 0.5f;
            this.f11623r = f3;
            if (f3 > 1.0f) {
                this.f11623r = f3 % 1.0f;
            }
            m20954l(this.f11623r, f11611J, true, null);
            int i = 0;
            while (true) {
                Array<Tile> array = this.f11621p;
                if (i >= array.size) {
                    break;
                }
                Tile tile4 = array.get(i);
                ParticleEffectPool.PooledEffect pooledEffect = tile4.highlightParticleA;
                Vector2 vector22 = f11610I;
                pooledEffect.setPosition((tile4.getX() * 128) + 64 + vector22.f5527x, (tile4.getY() * 128) + 64 + vector22.f5528y);
                ParticleEffectPool.PooledEffect pooledEffect2 = tile4.highlightParticleB;
                Vector2 vector23 = f11611J;
                pooledEffect2.setPosition((tile4.getX() * 128) + 64 + vector23.f5527x, (tile4.getY() * 128) + 64 + vector23.f5528y);
                i++;
            }
        }
        if (this.f11622q.size != 0) {
            int i2 = 0;
            while (true) {
                Array<Gate> array2 = this.f11622q;
                if (i2 >= array2.size) {
                    break;
                }
                Gate gate3 = array2.get(i2);
                float f4 = this.f11623r + (f * 0.5f);
                this.f11623r = f4;
                if (f4 > 1.0f) {
                    this.f11623r = f4 % 1.0f;
                }
                float f5 = this.f11623r;
                Vector2 vector24 = f11610I;
                m20954l(f5, vector24, false, gate3.getSide());
                float f6 = this.f11623r + 0.5f;
                this.f11623r = f6;
                if (f6 > 1.0f) {
                    this.f11623r = f6 % 1.0f;
                }
                float f7 = this.f11623r;
                Vector2 vector25 = f11611J;
                m20954l(f7, vector25, false, gate3.getSide());
                gate3.highlightParticleA.setPosition((gate3.getX() * 128) + 64 + vector24.f5527x, (gate3.getY() * 128) + 64 + vector24.f5528y);
                gate3.highlightParticleB.setPosition((gate3.getX() * 128) + 64 + vector25.f5527x, (gate3.getY() * 128) + 64 + vector25.f5528y);
                i2++;
            }
        }
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DRAW_TOWER_TARGET) != 0.0d && (tile = this.f11617a) != null && tile.type == TileType.PLATFORM && (building = (platformTile = (PlatformTile) tile).building) != null && building.buildingType == BuildingType.TOWER && (target = ((Tower) building).getTarget()) != null) {
            ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
            Vector2 vector26 = platformTile.center;
            DrawUtils.texturedLine(spriteBatch, blankWhiteTextureRegion, vector26.f5527x, vector26.f5528y, target.getPosition().f5527x, target.getPosition().f5528y, 1.0f, 5.0f, f11608G, f11609H);
            vector2 = target.getPosition();
        }
        spriteBatch.flush();
        spriteBatch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        if (vector2 != null) {
            spriteBatch.draw(Game.f8589i.assetManager.f9555TR.crosshairSmall, vector2.f5527x - 12.0f, vector2.f5528y - 12.0f, 24.0f, 24.0f);
        }
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_TILE_INFO) != 0.0d) {
            BitmapFont debugFont = Game.f8589i.assetManager.getDebugFont(false);
            debugFont.setColor(0.0f, 1.0f, 1.0f, 0.56f);
            for (int i3 = 0; i3 < this.f11630y.heightTiles; i3++) {
                int i4 = 0;
                while (true) {
                    Map map = this.f11630y;
                    if (i4 < map.widthTiles) {
                        Tile tile5 = map.getTile(i4, i3);
                        if (tile5 != null) {
                            debugFont.draw(spriteBatch, "WC: " + String.valueOf((int) tile5.getWalkCost()).length() + " E: " + tile5.enemies.size, i4 * 128, ((i3 * 128) - 10.0f) + 64.0f, 128.0f, 1, false);
                            DelayedRemovalArray<Enemy.EnemyReference> delayedRemovalArray = tile5.enemies;
                            if (delayedRemovalArray.size != 0) {
                                delayedRemovalArray.set(0, delayedRemovalArray.get(0));
                            }
                        }
                        i4++;
                    }
                }
            }
            debugFont.setColor(Color.WHITE);
        }
    }

    public void drawGateHover(SpriteBatch spriteBatch, int i, int i2, Gate.Side side) {
        if (side == Gate.Side.LEFT) {
            spriteBatch.draw(Game.f8589i.assetManager.f9555TR.gateOutlineVerticalHover, (i * 128) - 25.0f, ((i2 * 128) + 64) - 81.0f, 50.0f, 162.0f);
        } else {
            spriteBatch.draw(Game.f8589i.assetManager.f9555TR.gateOutlineHorizontalHover, ((i * 128) + 64) - 81.0f, (i2 * 128) - 25.0f, 162.0f, 50.0f);
        }
    }

    public void drawGateSelection(SpriteBatch spriteBatch, int i, int i2, Gate.Side side) {
        if (side == Gate.Side.LEFT) {
            spriteBatch.draw(Game.f8589i.assetManager.f9555TR.gateOutlineVerticalActive, (i * 128) - 25.0f, ((i2 * 128) + 64) - 81.0f, 50.0f, 162.0f);
        } else {
            spriteBatch.draw(Game.f8589i.assetManager.f9555TR.gateOutlineHorizontalActive, ((i * 128) + 64) - 81.0f, (i2 * 128) - 25.0f, 162.0f, 50.0f);
        }
    }

    public final void getEnemiesAABB(float f, float f2, float f3, float f4, final float f5, final ObjectFilter<AabbEnemyEntry> objectFilter) {
        final float min = Math.min(f, f3);
        final float max = Math.max(f, f3);
        final float min2 = Math.min(f2, f4);
        final float max2 = Math.max(f2, f4);
        m20956j(min - 70.4f, min2 - 70.4f, max + 70.4f, max2 + 70.4f, new ObjectFilter() { // from class: com.prineside.tdi2.systems.h
            @Override // com.prineside.tdi2.utils.ObjectFilter
            public final boolean passes(Object obj) {
                boolean m20953m;
                m20953m = MapSystem.m20953m(f5, min, max, min2, max2, objectFilter, (Array) obj);
                return m20953m;
            }
        });
    }

    public int getSpawnedEnemiesCountByWave(int i) {
        Wave wave;
        int i2 = this.spawnedEnemies.size;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Enemy enemy = this.spawnedEnemies.items[i4].enemy;
            if (enemy != null && (wave = enemy.wave) != null && wave.waveNumber == i) {
                i3++;
            }
        }
        return i3;
    }

    /* renamed from: h */
    public void m20958h(Unit unit) {
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if (gameStateSystem != null) {
            gameStateSystem.checkGameplayUpdateAllowed();
        }
        if (isSpawned(unit)) {
            this.spawnedUnits.removeValue(unit, true);
            unit.spawned = false;
            Tile tile = unit.currentTile;
            if (tile != null) {
                tile.unregisterUnit(unit);
            }
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i = 0; i < size; i++) {
                this.listeners.get(i).unitDespawnedFromMap(unit);
            }
            this.listeners.end();
            return;
        }
        Logger.error("MapSystem", "Unit is not spawned");
    }

    public void highlightGate(Gate gate) {
        gate.highlightParticleA = Game.f8589i.mapManager.highlightParticlesPool.obtain();
        gate.highlightParticleB = Game.f8589i.mapManager.highlightParticlesPool.obtain();
        this.f8844S._particle.addParticle(gate.highlightParticleA, false);
        this.f8844S._particle.addParticle(gate.highlightParticleB, false);
        this.f11622q.add(gate);
    }

    public void highlightTile(Tile tile) {
        tile.highlightParticleA = Game.f8589i.mapManager.highlightParticlesPool.obtain();
        tile.highlightParticleB = Game.f8589i.mapManager.highlightParticlesPool.obtain();
        this.f8844S._particle.addParticle(tile.highlightParticleA, false);
        this.f8844S._particle.addParticle(tile.highlightParticleB, false);
        this.f11621p.add(tile);
    }

    /* renamed from: i */
    public final void m20957i() {
        Array<AabbEnemyEntry>[] arrayArr;
        for (Array<AabbEnemyEntry> array : this.f11613B) {
            Array.ArrayIterator<AabbEnemyEntry> it = array.iterator();
            while (it.hasNext()) {
                AabbEnemyEntry.f11633a.free(it.next());
            }
            array.clear();
        }
        this.f11614C.clear();
        int i = this.spawnedEnemies.size;
        for (int i2 = 0; i2 < i; i2++) {
            Enemy.EnemyReference enemyReference = this.spawnedEnemies.items[i2];
            Enemy enemy = enemyReference.enemy;
            if (enemy != null) {
                Vector2 position = enemy.getPosition();
                int m20955k = m20955k(position.f5527x, position.f5528y);
                if (m20955k != Integer.MIN_VALUE) {
                    AabbEnemyEntry aabbEnemyEntry = (AabbEnemyEntry) AabbEnemyEntry.f11633a.obtain();
                    aabbEnemyEntry.position = position;
                    aabbEnemyEntry.size = enemy.getSize();
                    aabbEnemyEntry.enemyReference = enemyReference;
                    this.f11613B[m20955k].add(aabbEnemyEntry);
                    this.f11614C.set(m20955k);
                }
            }
        }
    }

    public boolean isVisible(Tile tile, OrthographicCamera orthographicCamera) {
        Vector3 vector3 = orthographicCamera.position;
        float f = vector3.f5533x;
        float f2 = orthographicCamera.viewportWidth;
        float f3 = vector3.f5534y;
        float f4 = orthographicCamera.viewportHeight;
        int i = (int) (f3 - (f4 / 2.0f));
        return tile.boundingBox.overlaps((int) (f - (f2 / 2.0f)), i, (int) (f + (f2 / 2.0f)), (int) (f3 + (f4 / 2.0f)));
    }

    /* renamed from: j */
    public final void m20956j(float f, float f2, float f3, float f4, ObjectFilter<Array<AabbEnemyEntry>> objectFilter) {
        int clamp = MathUtils.clamp(MathUtils.floor(f / 128.0f), 0, this.f11615D - 1);
        int clamp2 = MathUtils.clamp(MathUtils.ceil(f3 / 128.0f), 0, this.f11615D - 1);
        int clamp3 = MathUtils.clamp(MathUtils.ceil(f4 / 128.0f), 0, this.f11616E - 1);
        for (int clamp4 = MathUtils.clamp(MathUtils.floor(f2 / 128.0f), 0, this.f11616E - 1); clamp4 <= clamp3; clamp4++) {
            for (int i = clamp; i <= clamp2; i++) {
                if (this.f11614C.unsafeGet((this.f11615D * clamp4) + i)) {
                    Array<AabbEnemyEntry> array = this.f11613B[(this.f11615D * clamp4) + i];
                    if (array.size != 0 && !objectFilter.passes(array)) {
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: k */
    public final int m20955k(float f, float f2) {
        byte b;
        int i;
        int i2 = (int) (f / 128.0f);
        if (i2 < 0 || i2 >= (b = this.f11615D) || (i = (int) (f2 / 128.0f)) < 0 || i >= this.f11616E) {
            return Integer.MIN_VALUE;
        }
        return (i * b) + i2;
    }

    /* renamed from: l */
    public final void m20954l(float f, Vector2 vector2, boolean z, Gate.Side side) {
        float f2 = -50.0f;
        float f3 = -78.0f;
        float f4 = 64.0f;
        float f5 = -64.0f;
        if (z) {
            f2 = 64.0f;
            f3 = -64.0f;
        } else if (side == Gate.Side.LEFT) {
            f2 = 64.0f;
            f4 = -50.0f;
        } else {
            f3 = -64.0f;
            f5 = -78.0f;
        }
        if (f < 0.25f) {
            vector2.f5527x = f3;
            vector2.f5528y = ((f / 0.25f) * (f2 - f5)) + f5;
        } else if (f < 0.5f) {
            vector2.f5527x = (((f - 0.25f) / 0.25f) * (f4 - f3)) + f3;
            vector2.f5528y = f2;
        } else if (f < 0.75f) {
            vector2.f5527x = f4;
            vector2.f5528y = f2 - (((f - 0.5f) / 0.25f) * (f2 - f5));
        } else {
            vector2.f5527x = f4 - (((f - 0.75f) / 0.25f) * (f4 - f3));
            vector2.f5528y = f5;
        }
    }

    /* renamed from: q */
    public final void m20949q() {
        if (this.f11630y == null) {
            return;
        }
        GameSystemProvider gameSystemProvider = this.f8844S;
        if (gameSystemProvider != null) {
            GameStateSystem gameStateSystem = gameSystemProvider.gameState;
            if (gameStateSystem != null) {
                gameStateSystem.checkGameplayUpdateAllowed();
            }
            int i = this.f11630y.tilesArray.size;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                this.f11630y.tilesArray.items[i3].setRegistered(this.f8844S);
            }
            while (true) {
                Array<Gate> array = this.f11630y.gatesArray;
                if (i2 < array.size) {
                    array.items[i2].setRegistered(this.f8844S);
                    i2++;
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalStateException("System is not registered yet");
        }
    }

    public boolean rayCastEnemies(Array<Enemy.EnemyReference> array, float f, float f2, float f3, float f4, float f5, boolean z) {
        FloatSorter floatSorter;
        f11610I.set(f, f2);
        f11611J.set(f3, f4);
        if (z) {
            floatSorter = FloatSorter.getInstance();
            floatSorter.begin();
        } else {
            floatSorter = null;
        }
        int i = this.spawnedEnemies.size;
        boolean z2 = false;
        for (int i2 = 0; i2 < i; i2++) {
            Enemy.EnemyReference enemyReference = this.spawnedEnemies.items[i2];
            Enemy enemy = enemyReference.enemy;
            if (enemy != null) {
                Vector2 vector2 = f11610I;
                if (Intersector.intersectSegmentCircle(vector2, f11611J, enemy.getPosition(), enemy.getSize() * f5 * enemy.getSize() * f5)) {
                    if (z) {
                        floatSorter.add(enemyReference, vector2.dst2(enemy.getPosition()));
                    } else {
                        array.add(enemyReference);
                    }
                    z2 = true;
                }
            }
        }
        if (z) {
            Array<FloatSorter.Entity> sort = floatSorter.sort();
            for (int i3 = 0; i3 < sort.size; i3++) {
                array.add((Enemy.EnemyReference) sort.items[i3].object);
            }
            floatSorter.end();
        }
        return z2;
    }

    public void removeBuilding(Building building) {
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if (gameStateSystem != null) {
            gameStateSystem.checkGameplayUpdateAllowed();
        }
        PlatformTile tile = building.getTile();
        building.setTile(null);
        tile.building = null;
        building.removedFromMap();
        if (this.f11629x) {
            getMap().rebuildPathfinding();
        }
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).buildingRemovedFromMap(building, tile);
        }
        this.listeners.end();
    }

    public void removeMiner(Miner miner) {
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if (gameStateSystem != null) {
            gameStateSystem.checkGameplayUpdateAllowed();
        }
        SourceTile tile = miner.getTile();
        miner.setTile(null);
        tile.miner = null;
        miner.removedFromMap();
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).minerRemovedFromMap(miner, tile);
        }
        this.listeners.end();
    }

    /* renamed from: s */
    public final void m20947s() {
        Map map = this.f11630y;
        if (map == null) {
            return;
        }
        int i = map.tilesArray.size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            this.f11630y.tilesArray.items[i3].setUnregistered();
        }
        while (true) {
            Array<Gate> array = this.f11630y.gatesArray;
            if (i2 < array.size) {
                array.items[i2].setUnregistered();
                i2++;
            } else {
                return;
            }
        }
    }

    public void setGate(int i, int i2, Gate.Side side, Gate gate) {
        Gate gate2 = this.f11630y.getGate(i, i2, side);
        if (gate2 == this.f11620k) {
            setHoveredGate(null);
        }
        if (gate2 == this.f11619d) {
            setSelectedGate(null);
        }
        try {
            this.f11630y.tryReplaceGate(i, i2, side, gate);
            if (gate2 != null) {
                gate2.setUnregistered();
            }
            this.f11630y.setGate(i, i2, side, gate);
            if (gate != null) {
                gate.setRegistered(this.f8844S);
            }
            MapRenderingSystem mapRenderingSystem = this.f8844S._mapRendering;
            if (mapRenderingSystem != null) {
                mapRenderingSystem.forceTilesRedraw(true);
            }
            this.f11630y.rebuildPathfinding();
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.listeners.get(i3).gateChanged(i, i2, side, gate2, gate);
            }
            this.listeners.end();
        } catch (Map.InvalidMapException e) {
            Logger.error("MapSystem", "can't replace gate: " + e.getMessage());
        }
    }

    public void setHoveredGate(Gate gate) {
        Gate gate2 = this.f11620k;
        this.f11620k = gate;
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).hoveredGateChanged(gate2);
        }
        this.listeners.end();
    }

    public void setHoveredTile(Tile tile) {
        if (tile != null && !tile.canBeSelected()) {
            tile = null;
        }
        Tile tile2 = this.f11618b;
        this.f11618b = tile;
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).hoveredTileChanged(tile2);
        }
        this.listeners.end();
    }

    public void setMap(Map map) {
        Map map2 = this.f11630y;
        if (map2 != null) {
            map2.setUnregistered();
            for (int i = 0; i < map.heightTiles; i++) {
                for (int i2 = 0; i2 < map.widthTiles; i2++) {
                    Tile tile = map.tiles[i][i2];
                    if (tile != null && tile.isRegistered()) {
                        tile.setUnregistered();
                    }
                }
            }
        }
        this.f11630y = map;
        if (map != null) {
            map.setRegistered(this);
            m20949q();
            if (this.f11631z) {
                m20948r();
            } else {
                this.f11612A = true;
            }
            int ceil = MathUtils.ceil((map.widthTiles * 128) / 128.0f);
            int ceil2 = MathUtils.ceil((map.heightTiles * 128) / 128.0f);
            int i3 = ceil * ceil2;
            this.f11613B = new Array[i3];
            this.f11614C.clear();
            this.f11614C.ensureCapacity(i3);
            for (int i4 = 0; i4 < i3; i4++) {
                this.f11613B[i4] = new Array<>(true, 1, AabbEnemyEntry.class);
            }
            this.f11615D = (byte) ceil;
            this.f11616E = (byte) ceil2;
        }
    }

    public void setMiner(int i, int i2, Miner miner) {
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if (gameStateSystem != null) {
            gameStateSystem.checkGameplayUpdateAllowed();
        }
        Tile tile = this.f11630y.getTile(i, i2);
        if (tile.type == TileType.SOURCE) {
            SourceTile sourceTile = (SourceTile) tile;
            Miner miner2 = sourceTile.miner;
            if (miner2 != null) {
                removeMiner(miner2);
            }
            sourceTile.miner = miner;
            miner.setTile(sourceTile);
            miner.placedOnMap();
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.listeners.get(i3).minerPlacedOnMap(miner);
            }
            this.listeners.end();
            return;
        }
        throw new IllegalArgumentException("Tile at " + i + ":" + i2 + " is " + tile.type.name() + ", can't place miner here");
    }

    public void setModifier(int i, int i2, Modifier modifier) {
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if (gameStateSystem != null) {
            gameStateSystem.checkGameplayUpdateAllowed();
        }
        Tile tile = this.f11630y.getTile(i, i2);
        if (tile.type == TileType.PLATFORM) {
            PlatformTile platformTile = (PlatformTile) tile;
            Building building = platformTile.building;
            if (building != null) {
                removeBuilding(building);
            }
            platformTile.building = modifier;
            modifier.setTile(platformTile);
            if (this.f11629x) {
                getMap().rebuildPathfinding();
            }
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.listeners.get(i3).modifierPlacedOnMap(modifier);
            }
            this.listeners.end();
            modifier.placedOnMap();
            return;
        }
        throw new IllegalArgumentException("Tile at " + i + ":" + i2 + " is " + tile.type.name() + ", can't place modifier here");
    }

    public void setSelectedGate(Gate gate) {
        Gate gate2 = this.f11619d;
        this.f11619d = gate;
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).selectedGateChanged(gate2);
        }
        this.listeners.end();
    }

    public void setSelectedTile(Tile tile) {
        if (tile != null && !tile.canBeSelected()) {
            tile = null;
        }
        Tile tile2 = this.f11617a;
        this.f11617a = tile;
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).selectedTileChanged(tile2);
        }
        this.listeners.end();
    }

    public void setTile(int i, int i2, Tile tile) {
        Building building;
        Tile tile2 = this.f11630y.getTile(i, i2);
        if (tile2 == this.f11618b) {
            setHoveredTile(null);
        }
        if (tile2 == this.f11617a) {
            setSelectedTile(null);
        }
        if (tile2 instanceof SpawnTile) {
            Logger.error("MapSystem", "can't remove spawn tile");
            return;
        }
        if (tile2 != null) {
            EntityUtils.removeNullRefs(tile2.enemies);
            if (tile2.enemies.size != 0) {
                Logger.error("MapSystem", "can't remove tile with enemies");
                return;
            }
        }
        try {
            this.f11630y.tryReplaceTile(i, i2, tile);
            if (tile2 != null) {
                if (tile2.type == TileType.PLATFORM && (building = ((PlatformTile) tile2).building) != null) {
                    BuildingType buildingType = building.buildingType;
                    if (buildingType == BuildingType.TOWER) {
                        this.f8844S.tower.sellTower((Tower) building);
                    } else if (buildingType == BuildingType.MODIFIER) {
                        this.f8844S.modifier.sellModifier((Modifier) building);
                    }
                }
                if (tile2.type == TileType.SOURCE && ((SourceTile) tile2).miner != null) {
                    this.f8844S.miner.sellMiner(tile2.getX(), tile2.getY());
                }
                tile2.setUnregistered();
            }
            if (tile instanceof PlatformTile) {
                ((PlatformTile) tile).walkableEnabled = this.f11629x;
            }
            this.f11630y.setTile(i, i2, tile);
            if (tile != null) {
                tile.setRegistered(this.f8844S);
            }
            MapRenderingSystem mapRenderingSystem = this.f8844S._mapRendering;
            if (mapRenderingSystem != null) {
                mapRenderingSystem.forceTilesRedraw(true);
            }
            if ((tile instanceof BossTile) || (tile2 instanceof BossTile) || (tile instanceof SpawnTile)) {
                this.f8844S.wave.setBossWaves(this.f11630y.getBossWaves());
                this.f8844S.wave.resetNextWavesCache();
            }
            this.f11630y.rebuildPathfindingIfNeeded();
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.listeners.get(i3).tileChanged(i, i2, tile2, tile);
            }
            this.listeners.end();
        } catch (Map.InvalidMapException e) {
            Logger.error("MapSystem", "can't replace tile: " + e.getMessage());
        }
    }

    public void setTower(int i, int i2, Tower tower) {
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if (gameStateSystem != null) {
            gameStateSystem.checkGameplayUpdateAllowed();
        }
        Tile tile = this.f11630y.getTile(i, i2);
        if (tile.type == TileType.PLATFORM) {
            PlatformTile platformTile = (PlatformTile) tile;
            Building building = platformTile.building;
            if (building != null) {
                removeBuilding(building);
            }
            platformTile.building = tower;
            tower.setTile(platformTile);
            if (this.f11629x) {
                getMap().rebuildPathfinding();
            }
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.listeners.get(i3).towerPlacedOnMap(tower);
            }
            this.listeners.end();
            tower.updateCache();
            tower.placedOnMap();
            return;
        }
        throw new IllegalArgumentException("Tile at " + i + ":" + i2 + " is " + tile.type.name() + ", can't place tower here");
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        GameSystemProvider gameSystemProvider = this.f8844S;
        UnitSystem unitSystem = gameSystemProvider.unit;
        if (unitSystem != null) {
            unitSystem.listeners.add(new _UnitSystemListener(gameSystemProvider, null));
        }
        GameSystemProvider gameSystemProvider2 = this.f8844S;
        WaveSystem waveSystem = gameSystemProvider2.wave;
        if (waveSystem != null) {
            waveSystem.listeners.add(new _WaveSystemListener(gameSystemProvider2, null));
        }
        GameSystemProvider gameSystemProvider3 = this.f8844S;
        GameValueSystem gameValueSystem = gameSystemProvider3.gameValue;
        if (gameValueSystem != null) {
            gameValueSystem.listeners.add(new _GameValueSystemListener(gameSystemProvider3, null));
        }
        m20949q();
    }

    public void showAllPathTraces(boolean z) {
        PathRenderingSystem pathRenderingSystem = this.f8844S._pathRendering;
        if (pathRenderingSystem != null) {
            pathRenderingSystem.removePaths();
            Array<PathRenderingSystem.PathEnemyPair> array = new Array<>(PathRenderingSystem.PathEnemyPair.class);
            int i = 0;
            while (true) {
                Array<SpawnTile> array2 = this.f11630y.spawnTiles;
                if (i < array2.size) {
                    SpawnTile spawnTile = array2.get(i);
                    for (int i2 = 0; i2 < spawnTile.getAllowedEnemies().size; i2++) {
                        EnemyType enemyType = spawnTile.getAllowedEnemies().get(i2).enemyType;
                        Path defaultPathWithoutStateChanges = this.f11630y.getDefaultPathWithoutStateChanges(enemyType, spawnTile);
                        if (defaultPathWithoutStateChanges != null) {
                            if (z && !defaultPathWithoutStateChanges.isPrepared()) {
                                defaultPathWithoutStateChanges.prepareIfNeeded();
                            }
                            PathRenderingSystem.PathEnemyPair pathEnemyPair = new PathRenderingSystem.PathEnemyPair();
                            pathEnemyPair.path = defaultPathWithoutStateChanges;
                            pathEnemyPair.enemyType = enemyType;
                            array.add(pathEnemyPair);
                        }
                    }
                    i++;
                } else {
                    this.f8844S._pathRendering.setPaths(array);
                    return;
                }
            }
        } else {
            throw new IllegalStateException("Path rendering system is not registered");
        }
    }

    public void showTileWarningParticle(int i, int i2) {
        if (this.f8844S._particle != null) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.mapManager.tileWarningParticlePool.obtain();
            obtain.setPosition((i * 128) + 64, (i2 * 128) + 64);
            this.f8844S._particle.addParticle(obtain, false);
        }
    }

    public void showTowerRangeHint(float f, float f2, float f3, float f4) {
        if (this.f11624s == null) {
            this.f11624s = (RangeCircle) Game.f8589i.shapeManager.getFactory(ShapeType.RANGE_CIRCLE).obtain();
        }
        this.f11625t = true;
        this.f11624s.setup(f, f2, f3, f4, f11607F);
    }

    public void spawnEnemy(Enemy enemy) {
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if (gameStateSystem != null) {
            gameStateSystem.checkGameplayUpdateAllowed();
        }
        Enemy.EnemyReference reference = this.f8844S.enemy.getReference(enemy);
        if (!this.spawnedEnemies.contains(reference, true)) {
            this.spawnedEnemies.add(reference);
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i = 0; i < size; i++) {
                this.listeners.get(i).enemySpawnedOnMap(enemy);
            }
            this.listeners.end();
            enemy.onSpawned();
            return;
        }
        throw new IllegalStateException("Enemy " + enemy + " is already spawned");
    }

    public void spawnUnit(Unit unit) {
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if (gameStateSystem != null) {
            gameStateSystem.checkGameplayUpdateAllowed();
        }
        if (!isSpawned(unit)) {
            this.spawnedUnits.add(unit);
            unit.spawned = true;
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i = 0; i < size; i++) {
                this.listeners.get(i).unitSpawnedOnMap(unit);
            }
            this.listeners.end();
            unit.onSpawned();
            return;
        }
        Logger.error("MapSystem", "Unit is already spawned");
    }

    /* renamed from: t */
    public final void m20946t() {
        if (this.f8844S._particle != null && this.f11630y.coreTiles != null) {
            int i = 0;
            while (true) {
                Array<CoreTile> array = this.f11630y.coreTiles;
                if (i < array.size) {
                    CoreTile coreTile = array.items[i];
                    if (coreTile.upgradeAvailableParticleEffect == null) {
                        if (coreTile.hasSomethingToUpgrade()) {
                            ParticleEffectPool.PooledEffect obtain = Game.f8589i.towerManager.abilityAvailableParticleEffectPool.obtain();
                            coreTile.upgradeAvailableParticleEffect = obtain;
                            Vector2 vector2 = coreTile.center;
                            obtain.setPosition(vector2.f5527x + 32.0f, vector2.f5528y - 42.24f);
                            this.f8844S._particle.addParticle(coreTile.upgradeAvailableParticleEffect, false);
                        }
                    } else if (!coreTile.hasSomethingToUpgrade()) {
                        coreTile.upgradeAvailableParticleEffect.allowCompletion();
                        coreTile.upgradeAvailableParticleEffect = null;
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: u */
    public final void m20945u() {
        GameValueSystem gameValueSystem = this.f8844S.gameValue;
        if (gameValueSystem == null) {
            return;
        }
        boolean booleanValue = gameValueSystem.getBooleanValue(GameValueType.ENEMIES_WALK_ON_PLATFORMS);
        int i = 0;
        while (true) {
            DelayedRemovalArray<Tile> delayedRemovalArray = this.f11630y.tilesArray;
            if (i < delayedRemovalArray.size) {
                Tile[] tileArr = delayedRemovalArray.items;
                if (tileArr[i] instanceof PlatformTile) {
                    ((PlatformTile) tileArr[i]).walkableEnabled = booleanValue;
                }
                i++;
            } else {
                this.f11629x = booleanValue;
                getMap().rebuildPathfinding();
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        boolean z;
        StateSystem.ActionsArray currentUpdateActions;
        Map map = this.f11630y;
        if (map != null) {
            map.prepareDefaultPathsIfNeeded();
        }
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if (gameStateSystem != null && (currentUpdateActions = gameStateSystem.getCurrentUpdateActions()) != null) {
            for (int i = 0; i < currentUpdateActions.size; i++) {
                Action action = currentUpdateActions.actions[i];
                if (action.getType() == ActionType.CU) {
                    CoreUpgradeAction coreUpgradeAction = (CoreUpgradeAction) action;
                    if (upgradeCore(coreUpgradeAction.f9077x, coreUpgradeAction.f9078y, coreUpgradeAction.col, coreUpgradeAction.row)) {
                        this.f8844S.gameState.registerPlayerActivity();
                    }
                }
            }
        }
        GameSystemProvider gameSystemProvider = this.f8844S;
        GameStateSystem gameStateSystem2 = gameSystemProvider.gameState;
        if (gameStateSystem2 != null && gameSystemProvider.gameValue != null && gameStateSystem2.isGameRealTimePasses()) {
            float f2 = this.f11628w + f;
            this.f11628w = f2;
            if (f2 > 2.0f) {
                this.f11628w = f2 - 2.0f;
                z = true;
            } else {
                z = false;
            }
            int i2 = 0;
            while (true) {
                Array<CoreTile> array = this.f11630y.coreTiles;
                if (i2 >= array.size) {
                    break;
                }
                CoreTile coreTile = array.items[i2];
                float tickRateDeltaTime = this.f8844S.gameValue.getTickRateDeltaTime();
                if (coreTile.doubleSpeedTimeLeft > 0.0f) {
                    tickRateDeltaTime = this.f8844S.gameValue.getTickRateDeltaTime() * 2.0f;
                    float tickRateDeltaTime2 = coreTile.doubleSpeedTimeLeft - this.f8844S.gameValue.getTickRateDeltaTime();
                    coreTile.doubleSpeedTimeLeft = tickRateDeltaTime2;
                    if (tickRateDeltaTime2 <= 0.0f) {
                        coreTile.doubleSpeedTimeLeft = 0.0f;
                    }
                }
                float experienceGeneration = Game.f8589i.tileManager.f10161F.CORE.getExperienceGeneration(coreTile, this.f8844S.gameValue) * tickRateDeltaTime;
                int level = coreTile.getLevel();
                coreTile.setExperience(coreTile.getExperience() + experienceGeneration);
                if (coreTile.getLevel() > level) {
                    this.listeners.begin();
                    for (int i3 = 0; i3 < this.listeners.size(); i3++) {
                        this.listeners.get(i3).coreTileLeveledUp(coreTile);
                    }
                    this.listeners.end();
                    z = true;
                }
                i2++;
            }
            if (z) {
                m20946t();
            }
        }
        m20957i();
        if (Game.f8589i.debugManager.isEnabled()) {
            Game.f8589i.debugManager.registerValue("Spawned enemies").append(this.spawnedEnemies.size);
            Game.f8589i.debugManager.registerValue("Spawned units").append(this.spawnedUnits.size);
        }
    }

    public void getEnemiesNearPoint(final Array<Enemy> array, float f, float f2, float f3, float f4, final ObjectFilter<Enemy> objectFilter) {
        if (f4 == 0.0f && objectFilter == null) {
            getEnemiesNearPoint(array, f, f2, f3);
            return;
        }
        final float f5 = f4 * f4;
        f11610I.set(f, f2);
        getEnemiesNearPoint(f, f2, f3, new ObjectFilter() { // from class: com.prineside.tdi2.systems.i
            @Override // com.prineside.tdi2.utils.ObjectFilter
            public final boolean passes(Object obj) {
                boolean m20951o;
                m20951o = MapSystem.m20951o(ObjectFilter.this, f5, array, (MapSystem.AabbEnemyEntry) obj);
                return m20951o;
            }
        });
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f11629x = input.readBoolean();
        this.spawnedEnemies = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.spawnedUnits = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.f11630y = (Map) kryo.readObjectOrNull(input, Map.class);
        this.f11631z = input.readBoolean();
        this.f11612A = input.readBoolean();
        this.listeners = (ListenerGroup) kryo.readObject(input, ListenerGroup.class);
        this.f11613B = (Array[]) kryo.readClassAndObject(input);
        this.f11614C = (BitVector) kryo.readObject(input, BitVector.class);
        this.f11615D = input.readByte();
        this.f11616E = input.readByte();
    }

    public void unregisterGate(Gate gate) {
        if (gate.isRegistered()) {
            gate.setUnregistered();
        }
    }

    public void unregisterTile(Tile tile) {
        if (tile.isRegistered()) {
            tile.setUnregistered();
        }
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeBoolean(this.f11629x);
        kryo.writeObject(output, this.spawnedEnemies);
        kryo.writeObject(output, this.spawnedUnits);
        kryo.writeObjectOrNull(output, this.f11630y, Map.class);
        output.writeBoolean(this.f11631z);
        output.writeBoolean(this.f11612A);
        kryo.writeObject(output, this.listeners);
        kryo.writeClassAndObject(output, this.f11613B);
        kryo.writeObject(output, this.f11614C);
        output.writeByte(this.f11615D);
        output.writeByte(this.f11616E);
    }

    public boolean upgradeCore(CoreTile coreTile, int i, int i2) {
        CoreTile.Upgrade upgrade = coreTile.getUpgrade(i, i2);
        if (coreTile.getUpgradeInstallLevel(i, i2) >= upgrade.upgradeLevels.size) {
            Logger.error("MapSystem", "Upgrade " + i2 + ":" + i + " is already on max level");
            return false;
        } else if (coreTile.canUpgradeBeInstalled(i, i2)) {
            int money = this.f8844S.gameState.getMoney();
            int freeUpgradePoints = coreTile.getFreeUpgradePoints();
            int upgradeInstallLevel = coreTile.getUpgradeInstallLevel(i, i2);
            CoreTile.Upgrade.UpgradeLevel upgradeLevel = upgrade.upgradeLevels.items[upgradeInstallLevel];
            boolean z = upgrade.costsCoins;
            if (!z ? freeUpgradePoints < upgradeLevel.price : money < upgradeLevel.price) {
                if (z) {
                    this.f8844S.gameState.removeMoney(upgradeLevel.price);
                }
                coreTile.setUpgradeInstallLevel(i, i2, upgradeInstallLevel + 1);
                if (upgrade.isAction) {
                    Game.f8589i.triggeredActionManager.perform(this.f8844S, upgrade.getActionType(), upgradeLevel.delta);
                } else {
                    this.f8844S.gameValue.recalculate();
                }
                m20946t();
                this.listeners.begin();
                for (int i3 = 0; i3 < this.listeners.size(); i3++) {
                    this.listeners.get(i3).coreTileUpgradeInstalled(i, i2);
                }
                this.listeners.end();
                if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                    ParticleEffectPool.PooledEffect obtain = Game.f8589i.mapManager.coreHighlightParticlesPool.obtain();
                    Color color = null;
                    int i4 = C23181.f11632a[coreTile.getTier().ordinal()];
                    if (i4 == 1) {
                        color = MaterialColor.LIGHT_BLUE.P500;
                    } else if (i4 == 2) {
                        color = MaterialColor.PURPLE.P400;
                    } else if (i4 == 3) {
                        color = MaterialColor.ORANGE.P500;
                    }
                    obtain.getEmitters().first().getTint().setColors(new float[]{color.f3892r, color.f3891g, color.f3890b});
                    Vector2 vector2 = coreTile.center;
                    obtain.setPosition(vector2.f5527x, vector2.f5528y);
                    this.f8844S._particle.addParticle(obtain, true);
                }
                return true;
            }
            Logger.error("MapSystem", "not enough points to make an upgrade");
            return false;
        } else {
            Logger.error("MapSystem", "upgrade can't be installed");
            return false;
        }
    }

    public void getEnemiesNearPoint(float f, float f2, float f3, final ObjectFilter<AabbEnemyEntry> objectFilter) {
        final float f4 = f3 * f3;
        f11610I.set(f, f2);
        getEnemiesAABB(f - f3, f2 - f3, f + f3, f2 + f3, 1.0f, new ObjectFilter() { // from class: com.prineside.tdi2.systems.g
            @Override // com.prineside.tdi2.utils.ObjectFilter
            public final boolean passes(Object obj) {
                boolean m20950p;
                m20950p = MapSystem.m20950p(f4, objectFilter, (MapSystem.AabbEnemyEntry) obj);
                return m20950p;
            }
        });
    }

    public void upgradeCoreAction(int i, int i2, int i3, int i4) {
        Tile tile = this.f11630y.getTile(i, i2);
        if (tile != null && tile.type == TileType.CORE) {
            upgradeCoreAction((CoreTile) tile, i3, i4);
            return;
        }
        Logger.error("MapSystem", "there's no core tile on " + i + ":" + i2);
    }
}
