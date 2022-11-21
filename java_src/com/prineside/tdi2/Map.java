package com.prineside.tdi2;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.p032ai.pfa.Connection;
import com.badlogic.gdx.p032ai.pfa.Heuristic;
import com.badlogic.gdx.p032ai.pfa.indexed.IndexedAStarPathFinder;
import com.badlogic.gdx.p032ai.pfa.indexed.IndexedGraph;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.IntSet;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectSet;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.Path;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GateType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.gates.TeleportGate;
import com.prineside.tdi2.managers.BasicLevelManager;
import com.prineside.tdi2.p036ui.shared.AbilitySelectionOverlay;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.tiles.BossTile;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.tiles.GameValueTile;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.tiles.SpawnTile;
import com.prineside.tdi2.tiles.TargetTile;
import com.prineside.tdi2.tiles.XmMusicTrackTile;
import com.prineside.tdi2.utils.IntRectangle;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import java.util.Iterator;
@REGS
/* loaded from: classes2.dex */
public class Map implements KryoSerializable {
    public static final float GATE_HIT_AREA_WIDTH = 18.199999f;
    public static final int MAX_SIZE = 24;
    public static final int MAX_TECHNICAL_SIZE = 32;

    /* renamed from: s */
    public static Enemy f8743s;

    /* renamed from: y */
    public static Gate f8749y;
    @NAGS

    /* renamed from: a */
    public BasicLevelManager.MapPreview f8751a;
    public Array<EnemyType> allowedEnemies;
    public ObjectSet<EnemyType> allowedEnemiesSet;

    /* renamed from: b */
    public boolean f8752b;
    public BossTile bossTile;
    public Array<CoreTile> coreTiles;

    /* renamed from: d */
    public PathNode[][] f8753d;
    public Gate[][][] gates;
    public Array<Gate> gatesArray;
    @NAGS
    public int heightPixels;
    public int heightTiles;

    /* renamed from: k */
    public IntMap<IntMap<Path>> f8754k;
    public ListenerGroup<MapListener> listeners;
    public MapSystem mapSystem;

    /* renamed from: p */
    public int f8755p;
    public Array<PathNode> pathfindingNodes;
    @NAGS

    /* renamed from: q */
    public final IndexedGraph<PathNode> f8756q;
    @NAGS

    /* renamed from: r */
    public IndexedAStarPathFinder<PathNode> f8757r;
    public Array<SpawnTile> spawnTiles;
    public TargetTile targetTile;
    public Array<Array<TeleportGate>> teleportGates;
    @NAGS
    public boolean throwExceptionOnMissingPath;
    public Tile[][] tiles;
    public DelayedRemovalArray<Tile> tilesArray;
    @NAGS
    public int widthPixels;
    public int widthTiles;
    public XmMusicTrackTile xmMusicTrackTile;

    /* renamed from: t */
    public static final Heuristic<PathNode> f8744t = new Heuristic<PathNode>() { // from class: com.prineside.tdi2.Map.2
        @Override // com.badlogic.gdx.p032ai.pfa.Heuristic
        public float estimate(PathNode pathNode, PathNode pathNode2) {
            return StrictMath.abs(pathNode2.f8830x - pathNode.f8830x) + StrictMath.abs(pathNode2.f8831y - pathNode.f8831y);
        }
    };

    /* renamed from: u */
    public static final Array<EnemyTypeSpawnPair> f8745u = new Array<>();

    /* renamed from: v */
    public static final IntSet f8746v = new IntSet();

    /* renamed from: w */
    public static final Array<Connection<PathNode>> f8747w = new Array<>();

    /* renamed from: x */
    public static ObjectMap<EnemyType, Path> f8748x = new ObjectMap<>();

    /* renamed from: z */
    public static final IntRectangle f8750z = new IntRectangle();

    /* loaded from: classes2.dex */
    public static class InvalidMapException extends RuntimeException {
        public Array<EnemyTypeSpawnPair> enemiesThatCantFindPath;
        public final Array<Tile> invalidTiles;
        public final Reason reason;

        /* loaded from: classes2.dex */
        public enum Reason {
            MULTIPLE_TARGETS,
            MULTIPLE_SOUND_TRACKS,
            SPAWN_NOT_FOUND,
            TARGET_NOT_FOUND,
            NO_PATH_FOUND,
            PATH_ON_PLATFORM_NOT_ALLOWED,
            TOO_MANY_PORTALS,
            MULTIPLE_CORES,
            MULTIPLE_BOSS_TILES
        }

        public String getFixHintMessage() {
            String name = this.reason.name();
            String str = Game.f8589i.localeManager.i18n.get("invalid_map_format_hint_" + name);
            if (this.reason == Reason.NO_PATH_FOUND) {
                String str2 = str + " ";
                int i = 0;
                while (true) {
                    Array<EnemyTypeSpawnPair> array = this.enemiesThatCantFindPath;
                    if (i < array.size) {
                        EnemyTypeSpawnPair enemyTypeSpawnPair = array.get(i);
                        Enemy.Factory<? extends Enemy> factory = Game.f8589i.enemyManager.getFactory(enemyTypeSpawnPair.enemyType);
                        if (enemyTypeSpawnPair.spawnTile == null) {
                            if (i < 3) {
                                str2 = str2 + "(" + factory.getTitle() + ") ";
                            } else {
                                return str2 + "...";
                            }
                        } else if (i < 3) {
                            str2 = str2 + "(" + enemyTypeSpawnPair.spawnTile.getX() + ":" + enemyTypeSpawnPair.spawnTile.getY() + " => " + factory.getTitle() + ") ";
                        } else {
                            return str2 + "...";
                        }
                        i++;
                    } else {
                        return str2;
                    }
                }
            } else {
                return str;
            }
        }

        public InvalidMapException(Reason reason, Array<Tile> array) {
            Array<Tile> array2 = new Array<>();
            this.invalidTiles = array2;
            this.enemiesThatCantFindPath = new Array<>();
            this.reason = reason;
            if (array != null) {
                array2.addAll(array);
            }
        }
    }

    @REGS(classOnly = true)
    /* loaded from: classes2.dex */
    public interface MapListener extends GameListener {
        void pathfindingRebuilt(boolean z);
    }

    /* loaded from: classes2.dex */
    public static class PathNotFoundForEnemyTypeException extends RuntimeException {
        public EnemyType enemyType;

        public PathNotFoundForEnemyTypeException(EnemyType enemyType, Throwable th) {
            super("Path not found for enemy type: " + enemyType, th);
            this.enemyType = enemyType;
        }
    }

    public Map() {
        this.listeners = new ListenerGroup<>(MapListener.class);
        this.tilesArray = new DelayedRemovalArray<>(Tile.class);
        this.teleportGates = new Array<>(Array.class);
        this.spawnTiles = new Array<>(SpawnTile.class);
        this.gatesArray = new Array<>(Gate.class);
        this.coreTiles = new Array<>(CoreTile.class);
        this.allowedEnemies = new Array<>(EnemyType.class);
        this.allowedEnemiesSet = new ObjectSet<>();
        this.throwExceptionOnMissingPath = true;
        this.pathfindingNodes = new Array<>(PathNode.class);
        this.f8754k = new IntMap<>();
        this.f8755p = -1;
        this.f8756q = new IndexedGraph<PathNode>() { // from class: com.prineside.tdi2.Map.1
            @Override // com.badlogic.gdx.p032ai.pfa.indexed.IndexedGraph
            public int getNodeCount() {
                return Map.this.pathfindingNodes.size;
            }

            @Override // com.badlogic.gdx.p032ai.pfa.Graph
            public Array<Connection<PathNode>> getConnections(PathNode pathNode) {
                if (Map.f8743s == null) {
                    Map.f8747w.clear();
                    Map.f8747w.addAll(pathNode.connections);
                    return Map.f8747w;
                }
                Map.f8747w.clear();
                int i = pathNode.connections.size;
                for (int i2 = 0; i2 < i; i2++) {
                    Path.Connection[] connectionArr = pathNode.connections.items;
                    if (connectionArr[i2].isTeleport) {
                        Map.f8747w.add(pathNode.connections.items[i2]);
                    } else {
                        Path.Connection connection = connectionArr[i2];
                        PathNode toNode = connection.getToNode();
                        Gate gate = null;
                        int i3 = pathNode.f8831y;
                        int i4 = toNode.f8831y;
                        if (i3 == i4) {
                            int i5 = pathNode.f8830x;
                            int i6 = i5 + 1;
                            int i7 = toNode.f8830x;
                            if (i6 == i7) {
                                gate = Map.this.getGate(i7, i4, Gate.Side.LEFT);
                            } else if (i7 + 1 == i5) {
                                gate = Map.this.getGate(i5, i3, Gate.Side.LEFT);
                            }
                        } else {
                            int i8 = pathNode.f8830x;
                            int i9 = toNode.f8830x;
                            if (i8 == i9) {
                                if (i3 + 1 == i4) {
                                    gate = Map.this.getGate(i9, i4, Gate.Side.BOTTOM);
                                } else if (i3 == i4 + 1) {
                                    gate = Map.this.getGate(i8, i3, Gate.Side.BOTTOM);
                                }
                            }
                        }
                        if (!(gate instanceof GateBarrier) || ((GateBarrier) gate).canEnemyPass(Map.f8743s)) {
                            Map.f8747w.add(connection);
                        }
                    }
                }
                return Map.f8747w;
            }

            @Override // com.badlogic.gdx.p032ai.pfa.indexed.IndexedGraph
            public int getIndex(PathNode pathNode) {
                return pathNode.index;
            }
        };
    }

    /* renamed from: d */
    public static int m21936d(Tile tile) {
        return (tile.f8902d * 2048) + tile.f8901b;
    }

    public boolean canAllEnemiesFindPath() {
        return getEnemyTypesThatCantFindPath().size == 0;
    }

    /* renamed from: f */
    public final int m21934f(int i, int i2, int i3, int i4) {
        return i + (i2 * 128) + (i3 * 128 * 128) + (i4 * 128 * 128 * 128);
    }

    public void finalize() {
        super.finalize();
    }

    public boolean findPath(Enemy enemy, Path path, Tile tile) {
        if (enemy != null) {
            if (path != null) {
                if (tile != null) {
                    if (this.targetTile != null) {
                        rebuildPathfindingIfNeeded();
                        f8743s = enemy;
                        boolean searchNodePath = m21937c().searchNodePath(this.f8753d[tile.getY()][tile.getX()], this.f8753d[this.targetTile.getY()][this.targetTile.getX()], f8744t, path);
                        f8743s = null;
                        return searchNodePath;
                    }
                    throw new IllegalArgumentException("targetTile is null");
                }
                throw new IllegalArgumentException("startTile is null");
            }
            throw new IllegalArgumentException("outPath is null");
        }
        throw new IllegalArgumentException("enemy is null");
    }

    /* renamed from: g */
    public final void m21933g(int i, int i2) {
        Tile tile;
        for (int i3 = -1; i3 <= 1; i3++) {
            for (int i4 = -1; i4 <= 1; i4++) {
                if ((i3 != 0 || i4 != 0) && (tile = getTile(i + i3, i2 + i4)) != null) {
                    tile.resetNeighborTilesCache();
                }
            }
        }
    }

    public int generateSeed() {
        int i = 1;
        for (int i2 = 0; i2 < this.heightTiles; i2++) {
            for (int i3 = 0; i3 < this.widthTiles; i3++) {
                Tile tile = this.tiles[i2][i3];
                if (tile != null) {
                    int generateSeedSalt = tile.generateSeedSalt();
                    if (generateSeedSalt != 0) {
                        i = (i * 19) + generateSeedSalt;
                    }
                    i = (((((i * 23) + tile.type.ordinal()) * 29) + tile.f8901b) * 31) + tile.f8902d;
                }
            }
        }
        return i;
    }

    public IntMap<BossType> getBossWaves() {
        boolean z;
        int i = 0;
        while (true) {
            Array<SpawnTile> array = this.spawnTiles;
            if (i < array.size) {
                if (array.items[i].getAllowedEnemiesSet().contains(EnemyType.BOSS)) {
                    z = true;
                    break;
                }
                i++;
            } else {
                z = false;
                break;
            }
        }
        if (z) {
            BossTile bossTile = null;
            for (int i2 = 0; i2 < this.heightTiles; i2++) {
                int i3 = 0;
                while (true) {
                    if (i3 < this.widthTiles) {
                        Tile tile = this.tiles[i2][i3];
                        if (tile instanceof BossTile) {
                            bossTile = (BossTile) tile;
                            break;
                        }
                        i3++;
                    }
                }
            }
            if (bossTile != null) {
                return bossTile.getBossWaveMap();
            }
        }
        return null;
    }

    public Path getNewPath(EnemyType enemyType, SpawnTile spawnTile) {
        return new Path(getDefaultPath(enemyType, spawnTile));
    }

    public double getPrestigeScore() {
        int i = 0;
        double d = 0.0d;
        int i2 = 0;
        while (true) {
            DelayedRemovalArray<Tile> delayedRemovalArray = this.tilesArray;
            if (i2 >= delayedRemovalArray.size) {
                break;
            }
            d += delayedRemovalArray.items[i2].getPrestigeScore();
            i2++;
        }
        while (true) {
            Array<Gate> array = this.gatesArray;
            if (i < array.size) {
                d += array.items[i].getPrestigeScore();
                i++;
            } else {
                return d;
            }
        }
    }

    public Tile getTile(int i, int i2) {
        if (i2 > -1 && i2 < this.heightTiles && i > -1 && i < this.widthTiles) {
            return this.tiles[i2][i];
        }
        return null;
    }

    public Tile getTileByMapPos(float f, float f2) {
        if (f < 0.0f || f2 < 0.0f) {
            return null;
        }
        return getTile((int) (f / 128.0f), (int) (f2 / 128.0f));
    }

    public boolean hasTileThatAllowsWalkablePlatforms() {
        int i = 0;
        while (true) {
            DelayedRemovalArray<Tile> delayedRemovalArray = this.tilesArray;
            if (i >= delayedRemovalArray.size) {
                return false;
            }
            Tile[] tileArr = delayedRemovalArray.items;
            if (tileArr[i].type == TileType.TARGET) {
                Array<GameValueConfig> gameValues = ((TargetTile) tileArr[i]).getGameValues();
                for (int i2 = 0; i2 < gameValues.size; i2++) {
                    GameValueConfig gameValueConfig = gameValues.items[i2];
                    if (gameValueConfig.type == GameValueType.ENEMIES_WALK_ON_PLATFORMS && gameValueConfig.value >= 1.0d) {
                        return true;
                    }
                }
                continue;
            } else if (tileArr[i].type == TileType.GAME_VALUE) {
                GameValueTile gameValueTile = (GameValueTile) tileArr[i];
                if (gameValueTile.getGameValueType() == GameValueType.ENEMIES_WALK_ON_PLATFORMS && gameValueTile.getDelta() >= 1.0d) {
                    return true;
                }
            } else {
                continue;
            }
            i++;
        }
    }

    public void regeneratePreview() {
        this.f8751a = Game.f8589i.basicLevelManager.generatePreview(this);
    }

    public void requirePathfindingRebuild() {
        this.f8752b = true;
    }

    public void setRegistered(MapSystem mapSystem) {
        this.mapSystem = mapSystem;
    }

    public void setUnregistered() {
        this.mapSystem = null;
    }

    /* loaded from: classes2.dex */
    public static class EnemyTypeSpawnPair {
        public EnemyType enemyType;
        public SpawnTile spawnTile;

        public EnemyTypeSpawnPair(EnemyType enemyType, SpawnTile spawnTile) {
            this.enemyType = enemyType;
            this.spawnTile = spawnTile;
        }
    }

    /* renamed from: c */
    public final IndexedAStarPathFinder<PathNode> m21937c() {
        if (this.f8757r == null) {
            this.f8757r = new IndexedAStarPathFinder<>(this.f8756q);
        }
        return this.f8757r;
    }

    public Map cpy() {
        Tile[][] tileArr;
        Gate.Side[] sideArr;
        Tile[][] tileArr2 = this.tiles;
        Tile[][] tileArr3 = (Tile[][]) java.lang.reflect.Array.newInstance(Tile.class, tileArr2.length, tileArr2[0].length);
        int i = 0;
        while (true) {
            tileArr = this.tiles;
            if (i >= tileArr.length) {
                break;
            }
            int i2 = 0;
            while (true) {
                Tile[] tileArr4 = this.tiles[i];
                if (i2 < tileArr4.length) {
                    Tile tile = tileArr4[i2];
                    if (tile != null) {
                        tileArr3[i][i2] = tile.cloneTile();
                    }
                    i2++;
                }
            }
            i++;
        }
        Gate[][][] gateArr = (Gate[][][]) java.lang.reflect.Array.newInstance(Gate.class, tileArr.length + 1, tileArr[0].length + 1, Gate.Side.values.length);
        for (int i3 = 0; i3 <= this.heightTiles; i3++) {
            for (int i4 = 0; i4 <= this.widthTiles; i4++) {
                for (Gate.Side side : Gate.Side.values) {
                    if (this.gates[i3][i4][side.ordinal()] != null) {
                        gateArr[i3][i4][side.ordinal()] = this.gates[i3][i4][side.ordinal()].cloneGate();
                    }
                }
            }
        }
        return new Map(tileArr3, gateArr);
    }

    /* renamed from: e */
    public final void m21935e(PathNode pathNode, PathNode pathNode2, boolean z) {
        int min = StrictMath.min(m21934f(pathNode.f8830x, pathNode.f8831y, pathNode2.f8830x, pathNode2.f8831y), m21934f(pathNode2.f8830x, pathNode2.f8831y, pathNode.f8830x, pathNode.f8831y));
        if (z) {
            min = -min;
        }
        IntSet intSet = f8746v;
        if (!intSet.contains(min)) {
            intSet.add(min);
            pathNode.connections.add(new Path.Connection(this, pathNode.index, pathNode2.index, z, pathNode2.cost));
            pathNode2.connections.add(new Path.Connection(this, pathNode2.index, pathNode.index, z, pathNode.cost));
        }
    }

    public boolean fitGateToMapPos(float f, float f2, Gate gate) {
        int i = (int) (f / 128.0f);
        int i2 = (int) (f2 / 128.0f);
        float f3 = f % 128.0f;
        float f4 = f2 % 128.0f;
        float squareDistanceBetweenPoints = PMath.getSquareDistanceBetweenPoints(f3, f4, 64.0f, 128.0f);
        float squareDistanceBetweenPoints2 = PMath.getSquareDistanceBetweenPoints(f3, f4, 64.0f, 0.0f);
        float squareDistanceBetweenPoints3 = PMath.getSquareDistanceBetweenPoints(f3, f4, 0.0f, 64.0f);
        float squareDistanceBetweenPoints4 = PMath.getSquareDistanceBetweenPoints(f3, f4, 128.0f, 64.0f);
        if (squareDistanceBetweenPoints <= squareDistanceBetweenPoints2 && squareDistanceBetweenPoints <= squareDistanceBetweenPoints3 && squareDistanceBetweenPoints <= squareDistanceBetweenPoints4) {
            if (128.0f - f4 > 18.199999f || i < 0 || i >= this.widthTiles || i2 < -1 || i2 >= this.heightTiles) {
                return false;
            }
            gate.setPosition(i, i2 + 1, Gate.Side.BOTTOM);
            return true;
        } else if (squareDistanceBetweenPoints2 <= squareDistanceBetweenPoints && squareDistanceBetweenPoints2 <= squareDistanceBetweenPoints4 && squareDistanceBetweenPoints2 <= squareDistanceBetweenPoints3) {
            if (f4 > 18.199999f || f4 < -18.199999f || i < 0 || i >= this.widthTiles || i2 < 0 || i2 > this.heightTiles) {
                return false;
            }
            gate.setPosition(i, i2, Gate.Side.BOTTOM);
            return true;
        } else if (squareDistanceBetweenPoints3 <= squareDistanceBetweenPoints && squareDistanceBetweenPoints3 <= squareDistanceBetweenPoints2 && squareDistanceBetweenPoints3 <= squareDistanceBetweenPoints4) {
            if (f3 > 18.199999f || f3 < -18.199999f || i2 < 0 || i2 >= this.heightTiles || i < 0 || i > this.widthTiles) {
                return false;
            }
            gate.setPosition(i, i2, Gate.Side.LEFT);
            return true;
        } else if (128.0f - f3 > 18.199999f || i2 < 0 || i2 >= this.heightTiles || i < -1 || i >= this.widthTiles) {
            return false;
        } else {
            gate.setPosition(i + 1, i2, Gate.Side.LEFT);
            return true;
        }
    }

    public int getAverageDifficulty() {
        Array<SpawnTile> array = this.spawnTiles;
        if (array.size != 0) {
            int i = 0;
            Array.ArrayIterator<SpawnTile> it = array.iterator();
            while (it.hasNext()) {
                i += it.next().difficulty;
            }
            return i / this.spawnTiles.size;
        }
        throw new IllegalStateException("No spawn tiles on map");
    }

    public int[] getComplexityWaveMilestones() {
        int i = this.tilesArray.size;
        float f = 0.0f;
        for (int i2 = 0; i2 < i; i2++) {
            f += this.tilesArray.items[i2].getQuality();
        }
        float f2 = f / 576.0f;
        return new int[]{StrictMath.round((f2 * 15.0f) + 15.0f), StrictMath.round((f2 * 27.0f) + 27.0f), StrictMath.round((f2 * 40.0f) + 40.0f)};
    }

    public Path getDefaultPath(EnemyType enemyType, SpawnTile spawnTile) {
        if (spawnTile != null) {
            rebuildPathfindingIfNeeded();
            int m21936d = m21936d(spawnTile);
            if (!this.f8754k.containsKey(m21936d)) {
                if (!this.throwExceptionOnMissingPath) {
                    return null;
                }
                Logger.error("Map", this.f8754k.size + " total paths:");
                Iterator<IntMap.Entry<IntMap<Path>>> it = this.f8754k.iterator();
                while (it.hasNext()) {
                    IntMap.Entry<IntMap<Path>> next = it.next();
                    Logger.error("Map", " - " + next.key + " " + next.value);
                }
                throw new IllegalArgumentException("No paths from " + spawnTile);
            }
            EnemyType mainEnemyType = Game.f8589i.enemyManager.getMainEnemyType(enemyType);
            IntMap<Path> intMap = this.f8754k.get(m21936d);
            if (!intMap.containsKey(mainEnemyType.ordinal())) {
                if (!this.throwExceptionOnMissingPath) {
                    return null;
                }
                throw new IllegalArgumentException("No paths from " + spawnTile.toString() + " for enemy type " + mainEnemyType.name());
            }
            return intMap.get(mainEnemyType.ordinal());
        }
        throw new IllegalArgumentException("spawnTile is null");
    }

    public Path getDefaultPathWithoutStateChanges(EnemyType enemyType, SpawnTile spawnTile) {
        if (spawnTile != null) {
            EnemyType mainEnemyType = Game.f8589i.enemyManager.getMainEnemyType(enemyType);
            int m21936d = m21936d(spawnTile);
            if (!this.f8754k.containsKey(m21936d)) {
                return null;
            }
            IntMap<Path> intMap = this.f8754k.get(m21936d);
            if (!intMap.containsKey(mainEnemyType.ordinal())) {
                return null;
            }
            return intMap.get(mainEnemyType.ordinal());
        }
        throw new IllegalArgumentException("spawnTile is null");
    }

    public Array<EnemyTypeSpawnPair> getEnemyTypesThatCantFindPath() {
        f8745u.clear();
        rebuildPathfindingIfNeeded();
        int i = 0;
        while (true) {
            Array<SpawnTile> array = this.spawnTiles;
            if (i < array.size) {
                SpawnTile spawnTile = array.items[i];
                int m21936d = m21936d(spawnTile);
                Array<SpawnTile.AllowedEnemyConfig> allowedEnemies = spawnTile.getAllowedEnemies();
                for (int i2 = 0; i2 < allowedEnemies.size; i2++) {
                    if (!this.f8754k.containsKey(m21936d) || !this.f8754k.get(m21936d).containsKey(allowedEnemies.get(i2).enemyType.ordinal())) {
                        f8745u.add(new EnemyTypeSpawnPair(allowedEnemies.get(i2).enemyType, spawnTile));
                    }
                }
                i++;
            } else {
                return f8745u;
            }
        }
    }

    public Gate getGate(int i, int i2, Gate.Side side) {
        if (i >= 0 && i <= this.widthTiles && i2 >= 0 && i2 <= this.heightTiles) {
            return this.gates[i2][i][side.ordinal()];
        }
        return null;
    }

    public Gate getGateByMapPos(float f, float f2) {
        if (f8749y == null) {
            f8749y = Game.f8589i.gateManager.getFactory(GateType.values[0]).create();
        }
        if (fitGateToMapPos(f, f2, f8749y)) {
            return getGate(f8749y.getX(), f8749y.getY(), f8749y.getSide());
        }
        return null;
    }

    public AbilitySelectionOverlay.SelectedAbilitiesConfiguration getMaxedAbilitiesConfiguration() {
        AbilityType[] abilityTypeArr;
        boolean z;
        ObjectMap objectMap = new ObjectMap();
        for (AbilityType abilityType : AbilityType.values) {
            objectMap.put(Game.f8589i.abilityManager.getMaxPerGameGameValueType(abilityType), abilityType);
        }
        Array array = new Array(GameValueConfig.class);
        array.addAll(this.targetTile.getGameValues());
        int i = 0;
        while (true) {
            DelayedRemovalArray<Tile> delayedRemovalArray = this.tilesArray;
            if (i >= delayedRemovalArray.size) {
                break;
            }
            Tile tile = delayedRemovalArray.items[i];
            if (tile.type == TileType.GAME_VALUE) {
                GameValueTile gameValueTile = (GameValueTile) tile;
                array.add(new GameValueConfig(gameValueTile.getGameValueType(), gameValueTile.getDelta(), false, true));
            }
            i++;
        }
        AbilitySelectionOverlay.SelectedAbilitiesConfiguration selectedAbilitiesConfiguration = new AbilitySelectionOverlay.SelectedAbilitiesConfiguration();
        int i2 = 0;
        for (int i3 = 0; i3 < array.size; i3++) {
            GameValueConfig gameValueConfig = (GameValueConfig) array.get(i3);
            if (objectMap.containsKey(gameValueConfig.type)) {
                int i4 = 0;
                while (true) {
                    if (i4 < 6) {
                        if (selectedAbilitiesConfiguration.slots[i4] == objectMap.get(gameValueConfig.type)) {
                            int[] iArr = selectedAbilitiesConfiguration.counts;
                            iArr[i4] = iArr[i4] + MathUtils.round((float) gameValueConfig.value);
                            z = true;
                            break;
                        }
                        i4++;
                    } else {
                        z = false;
                        break;
                    }
                }
                if (!z) {
                    selectedAbilitiesConfiguration.slots[i2] = (AbilityType) objectMap.get(gameValueConfig.type);
                    selectedAbilitiesConfiguration.counts[i2] = MathUtils.round((float) gameValueConfig.value);
                    i2++;
                    if (i2 == 6) {
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return selectedAbilitiesConfiguration;
    }

    public BasicLevelManager.MapPreview getPreview() {
        if (this.f8751a == null) {
            regeneratePreview();
        }
        return this.f8751a;
    }

    public int[] getResourcesCount() {
        ResourceType[] resourceTypeArr;
        int[] iArr = new int[ResourceType.values.length + 1];
        int i = this.tilesArray.size;
        for (int i2 = 0; i2 < i; i2++) {
            Tile tile = this.tilesArray.items[i2];
            if (tile instanceof SourceTile) {
                SourceTile sourceTile = (SourceTile) tile;
                int i3 = 0;
                for (ResourceType resourceType : ResourceType.values) {
                    int resourcesCount = sourceTile.getResourcesCount(resourceType);
                    int ordinal = resourceType.ordinal();
                    iArr[ordinal] = iArr[ordinal] + resourcesCount;
                    i3 += resourcesCount;
                }
                int length = ResourceType.values.length;
                iArr[length] = iArr[length] + StrictMath.round((1.0f - sourceTile.getResourceDensity()) * i3);
            }
        }
        return iArr;
    }

    public IntRectangle getTrimBounds() {
        int i = Integer.MIN_VALUE;
        int i2 = Integer.MIN_VALUE;
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MAX_VALUE;
        for (int i5 = 0; i5 < this.tiles.length; i5++) {
            int i6 = 0;
            while (true) {
                Tile[] tileArr = this.tiles[i5];
                if (i6 < tileArr.length) {
                    if (tileArr[i6] != null) {
                        if (i6 < i3) {
                            i3 = i6;
                        }
                        if (i6 > i) {
                            i = i6;
                        }
                        if (i5 < i4) {
                            i4 = i5;
                        }
                        if (i5 > i2) {
                            i2 = i5;
                        }
                    }
                    i6++;
                }
            }
        }
        for (int i7 = 0; i7 <= this.heightTiles; i7++) {
            for (int i8 = 0; i8 <= this.widthTiles; i8++) {
                for (Gate.Side side : Gate.Side.values) {
                    if (this.gates[i7][i8][side.ordinal()] != null) {
                        if (i8 < i3) {
                            i3 = i8;
                        }
                        if (i8 > i) {
                            i = i8;
                        }
                        if (i7 < i4) {
                            i4 = i7;
                        }
                        if (i7 > i2) {
                            i2 = i7;
                        }
                    }
                }
            }
        }
        IntRectangle intRectangle = f8750z;
        intRectangle.set(i3, i, i4, i2);
        return intRectangle;
    }

    public void multiplyPortalsDifficulty(float f) {
        Array.ArrayIterator<SpawnTile> it = this.spawnTiles.iterator();
        while (it.hasNext()) {
            SpawnTile next = it.next();
            next.difficulty = MathUtils.round(next.difficulty * f);
        }
    }

    public void prepareDefaultPathsIfNeeded() {
        Iterator<IntMap.Entry<IntMap<Path>>> it = this.f8754k.iterator();
        while (it.hasNext()) {
            Iterator<IntMap.Entry<Path>> it2 = it.next().value.iterator();
            while (it2.hasNext()) {
                Path path = it2.next().value;
                if (path != null) {
                    path.prepareIfNeeded();
                }
            }
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.listeners = (ListenerGroup) kryo.readObject(input, ListenerGroup.class);
        this.tiles = (Tile[][]) kryo.readObjectOrNull(input, Tile[][].class);
        this.gates = (Gate[][][]) kryo.readObjectOrNull(input, Gate[][][].class);
        this.tilesArray = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.teleportGates = (Array) kryo.readObject(input, Array.class);
        this.spawnTiles = (Array) kryo.readObject(input, Array.class);
        this.gatesArray = (Array) kryo.readObject(input, Array.class);
        this.targetTile = (TargetTile) kryo.readObjectOrNull(input, TargetTile.class);
        this.coreTiles = (Array) kryo.readObject(input, Array.class);
        this.bossTile = (BossTile) kryo.readObjectOrNull(input, BossTile.class);
        this.xmMusicTrackTile = (XmMusicTrackTile) kryo.readObjectOrNull(input, XmMusicTrackTile.class);
        this.allowedEnemies = (Array) kryo.readObject(input, Array.class);
        this.allowedEnemiesSet = (ObjectSet) kryo.readObject(input, ObjectSet.class);
        this.widthTiles = input.readVarInt(true);
        this.heightTiles = input.readVarInt(true);
        this.f8752b = input.readBoolean();
        this.pathfindingNodes = (Array) kryo.readObject(input, Array.class);
        this.f8753d = (PathNode[][]) kryo.readObjectOrNull(input, PathNode[][].class);
        this.f8754k = (IntMap) kryo.readObject(input, IntMap.class);
        this.f8755p = input.readInt();
        this.mapSystem = (MapSystem) kryo.readObjectOrNull(input, MapSystem.class);
        this.widthPixels = this.widthTiles * 128;
        this.heightPixels = this.heightTiles * 128;
    }

    /* JADX WARN: Removed duplicated region for block: B:174:0x01e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void rebuildPathfinding() {
        /*
            Method dump skipped, instructions count: 806
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.Map.rebuildPathfinding():void");
    }

    public void rebuildPathfindingIfNeeded() {
        if (this.f8752b) {
            rebuildPathfinding();
        }
    }

    public void setGate(int i, int i2, Gate.Side side, Gate gate) {
        if (i >= 0 && i <= this.widthTiles) {
            if (i2 >= 0 && i2 <= this.heightTiles) {
                Gate gate2 = getGate(i, i2, side);
                if (gate2 == null && gate == null) {
                    return;
                }
                if (gate2 != null) {
                    gate2.setPosition(0, 0, Gate.Side.LEFT);
                }
                this.gates[i2][i][side.ordinal()] = gate;
                if (gate != null) {
                    gate.setPosition(i, i2, side);
                }
                updateCache();
                return;
            }
            throw new IllegalArgumentException("y is out of range: " + i2 + " (max " + (this.heightTiles + 1) + ")");
        }
        throw new IllegalArgumentException("x is out of range: " + i + " (max " + (this.widthTiles + 1) + ")");
    }

    public void setSize(int i, int i2) {
        Gate.Side[] sideArr;
        if (this.widthTiles == i && this.heightTiles == i2) {
            return;
        }
        if (i >= 1 && i <= 32) {
            if (i2 >= 1 && i2 <= 32) {
                Tile[][] tileArr = (Tile[][]) java.lang.reflect.Array.newInstance(Tile.class, i2, i);
                Gate[][][] gateArr = (Gate[][][]) java.lang.reflect.Array.newInstance(Gate.class, i2 + 1, i + 1, Gate.Side.values.length);
                for (int i3 = 0; i3 < i2; i3++) {
                    for (int i4 = 0; i4 < i; i4++) {
                        tileArr[i3][i4] = getTile(i4, i3);
                    }
                }
                for (int i5 = 0; i5 <= i2; i5++) {
                    for (int i6 = 0; i6 <= i; i6++) {
                        for (Gate.Side side : Gate.Side.values) {
                            gateArr[i5][i6][side.ordinal()] = getGate(i6, i5, side);
                        }
                    }
                }
                this.tiles = tileArr;
                this.gates = gateArr;
                int length = tileArr.length;
                this.heightTiles = length;
                int length2 = tileArr[0].length;
                this.widthTiles = length2;
                this.widthPixels = length2 * 128;
                this.heightPixels = length * 128;
                this.f8752b = true;
                updateCache();
                return;
            }
            throw new IllegalArgumentException("Invalid height: " + i2);
        }
        throw new IllegalArgumentException("Invalid width: " + i);
    }

    public void setTile(int i, int i2, Tile tile) {
        if (i >= 0 && i < this.widthTiles) {
            if (i2 >= 0 && i2 < this.heightTiles) {
                Tile tile2 = getTile(i, i2);
                if (tile2 == tile) {
                    return;
                }
                if (tile2 != null) {
                    tile2.setPos(0, 0);
                    tile2.setMap(null);
                    this.tilesArray.removeValue(tile2, true);
                }
                Tile[][] tileArr = this.tiles;
                tileArr[i2][i] = tile;
                if (tile != null) {
                    tileArr[i2][i].setPos(i, i2);
                    this.tiles[i2][i].setMap(this);
                    tile.resetNeighborTilesCache();
                }
                m21933g(i, i2);
                updateCache();
                return;
            }
            throw new IllegalArgumentException("y is out of range: " + i2 + " (max " + this.heightTiles + ")");
        }
        throw new IllegalArgumentException("x is out of range: " + i + " (max " + this.widthTiles + ")");
    }

    public void toJson(Json json) {
        Gate.Side[] sideArr;
        json.writeValue("width", Integer.valueOf(this.widthTiles));
        json.writeValue("height", Integer.valueOf(this.heightTiles));
        json.writeArrayStart("tiles");
        for (int i = 0; i < this.heightTiles; i++) {
            for (int i2 = 0; i2 < this.widthTiles; i2++) {
                if (this.tiles[i][i2] != null) {
                    json.writeObjectStart();
                    this.tiles[i][i2].toJson(json);
                    json.writeObjectEnd();
                }
            }
        }
        json.writeArrayEnd();
        json.writeArrayStart("gates");
        for (int i3 = 0; i3 <= this.heightTiles; i3++) {
            for (int i4 = 0; i4 <= this.widthTiles; i4++) {
                for (Gate.Side side : Gate.Side.values) {
                    if (this.gates[i3][i4][side.ordinal()] != null) {
                        json.writeObjectStart();
                        this.gates[i3][i4][side.ordinal()].toJson(json);
                        json.writeObjectEnd();
                    }
                }
            }
        }
        json.writeArrayEnd();
    }

    public void updateCache() {
        this.spawnTiles.clear();
        this.targetTile = null;
        this.coreTiles.clear();
        this.bossTile = null;
        this.xmMusicTrackTile = null;
        this.tilesArray.clear();
        this.teleportGates.clear();
        for (int i = 0; i < this.heightTiles; i++) {
            for (int i2 = 0; i2 < this.widthTiles; i2++) {
                Tile tile = this.tiles[i][i2];
                if (tile != null) {
                    this.tilesArray.add(tile);
                    TileType tileType = tile.type;
                    if (tileType == TileType.SPAWN) {
                        this.spawnTiles.add((SpawnTile) tile);
                    } else if (tileType == TileType.TARGET) {
                        this.targetTile = (TargetTile) tile;
                    } else if (tileType == TileType.CORE) {
                        this.coreTiles.add((CoreTile) tile);
                    } else if (tileType == TileType.BOSS) {
                        this.bossTile = (BossTile) tile;
                    } else if (tileType == TileType.XM_MUSIC_TRACK) {
                        this.xmMusicTrackTile = (XmMusicTrackTile) tile;
                    }
                }
            }
        }
        this.allowedEnemiesSet.clear();
        this.allowedEnemies.clear();
        int i3 = 0;
        while (true) {
            Array<SpawnTile> array = this.spawnTiles;
            if (i3 >= array.size) {
                break;
            }
            Array<SpawnTile.AllowedEnemyConfig> allowedEnemies = array.items[i3].getAllowedEnemies();
            int i4 = allowedEnemies.size;
            for (int i5 = 0; i5 < i4; i5++) {
                EnemyType enemyType = allowedEnemies.items[i5].enemyType;
                if (!this.allowedEnemiesSet.contains(enemyType)) {
                    this.allowedEnemies.add(enemyType);
                    this.allowedEnemiesSet.add(enemyType);
                }
            }
            i3++;
        }
        int i6 = this.tilesArray.size;
        for (int i7 = 0; i7 < i6; i7++) {
            this.tilesArray.items[i7].resetNeighborTilesCache();
        }
        this.gatesArray.clear();
        Array.ArrayIterator<Array<TeleportGate>> it = this.teleportGates.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        for (int i8 = 0; i8 <= this.widthTiles; i8++) {
            for (int i9 = 0; i9 <= this.heightTiles; i9++) {
                for (Gate.Side side : Gate.Side.values) {
                    Gate gate = getGate(i8, i9, side);
                    if (gate != null) {
                        this.gatesArray.add(gate);
                    }
                    if (gate instanceof TeleportGate) {
                        TeleportGate teleportGate = (TeleportGate) gate;
                        int i10 = 0;
                        while (true) {
                            Array<Array<TeleportGate>> array2 = this.teleportGates;
                            if (i10 < array2.size) {
                                if (array2.items[i10].first().index == teleportGate.index) {
                                    break;
                                }
                                i10++;
                            } else {
                                i10 = -1;
                                break;
                            }
                        }
                        if (i10 == -1) {
                            Array<TeleportGate> array3 = new Array<>(TeleportGate.class);
                            array3.add(teleportGate);
                            this.teleportGates.add(array3);
                        } else {
                            this.teleportGates.items[i10].add(teleportGate);
                        }
                    }
                }
            }
        }
        this.f8752b = true;
        this.f8751a = null;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObject(output, this.listeners);
        kryo.writeObjectOrNull(output, this.tiles, Tile[][].class);
        kryo.writeObjectOrNull(output, this.gates, Gate[][][].class);
        kryo.writeObject(output, this.tilesArray);
        kryo.writeObject(output, this.teleportGates);
        kryo.writeObject(output, this.spawnTiles);
        kryo.writeObject(output, this.gatesArray);
        kryo.writeObjectOrNull(output, this.targetTile, TargetTile.class);
        kryo.writeObject(output, this.coreTiles);
        kryo.writeObjectOrNull(output, this.bossTile, BossTile.class);
        kryo.writeObjectOrNull(output, this.xmMusicTrackTile, XmMusicTrackTile.class);
        kryo.writeObject(output, this.allowedEnemies);
        kryo.writeObject(output, this.allowedEnemiesSet);
        output.writeVarInt(this.widthTiles, true);
        output.writeVarInt(this.heightTiles, true);
        output.writeBoolean(this.f8752b);
        kryo.writeObject(output, this.pathfindingNodes);
        kryo.writeObjectOrNull(output, this.f8753d, PathNode[][].class);
        kryo.writeObject(output, this.f8754k);
        output.writeInt(this.f8755p);
        kryo.writeObjectOrNull(output, this.mapSystem, MapSystem.class);
    }

    public static Map fromJson(JsonValue jsonValue) {
        if (jsonValue.isObject()) {
            int i = jsonValue.getInt("width");
            int i2 = jsonValue.getInt("height");
            JsonValue jsonValue2 = jsonValue.get("tiles");
            Tile[][] tileArr = (Tile[][]) java.lang.reflect.Array.newInstance(Tile.class, i2, i);
            Iterator<JsonValue> iterator2 = jsonValue2.iterator2();
            while (iterator2.hasNext()) {
                JsonValue next = iterator2.next();
                Tile createTileFromJson = Game.f8589i.tileManager.createTileFromJson(next);
                Tile[] tileArr2 = tileArr[createTileFromJson.f8902d];
                int i3 = createTileFromJson.f8901b;
                if (tileArr2[i3] == null) {
                    tileArr2[i3] = Game.f8589i.tileManager.createTileFromJson(next);
                } else {
                    throw new IllegalArgumentException("Duplicate tile " + createTileFromJson.f8901b + ":" + createTileFromJson.f8902d);
                }
            }
            Gate[][][] gateArr = (Gate[][][]) java.lang.reflect.Array.newInstance(Gate.class, i2 + 1, i + 1, Gate.Side.values.length);
            JsonValue jsonValue3 = jsonValue.get("gates");
            if (jsonValue3 != null) {
                Iterator<JsonValue> iterator22 = jsonValue3.iterator2();
                while (iterator22.hasNext()) {
                    Gate createGateFromJson = Game.f8589i.gateManager.createGateFromJson(iterator22.next());
                    if (gateArr[createGateFromJson.getY()][createGateFromJson.getX()][createGateFromJson.getSide().ordinal()] == null) {
                        gateArr[createGateFromJson.getY()][createGateFromJson.getX()][createGateFromJson.getSide().ordinal()] = createGateFromJson;
                    } else {
                        throw new IllegalArgumentException("Duplicate gate " + createGateFromJson.getX() + ":" + createGateFromJson.getY() + " " + createGateFromJson.getSide().name());
                    }
                }
            }
            return new Map(tileArr, gateArr);
        }
        throw new IllegalArgumentException("JsonValue must be an object");
    }

    public Map cpyTrimmed() {
        Gate.Side[] sideArr;
        IntRectangle trimBounds = getTrimBounds();
        int i = trimBounds.minX;
        if (i == Integer.MAX_VALUE) {
            return new Map(1, 1);
        }
        Tile[][] tileArr = (Tile[][]) java.lang.reflect.Array.newInstance(Tile.class, (trimBounds.maxY - trimBounds.minY) + 1, (trimBounds.maxX - i) + 1);
        for (int i2 = 0; i2 < this.tiles.length; i2++) {
            int i3 = 0;
            while (true) {
                Tile[] tileArr2 = this.tiles[i2];
                if (i3 < tileArr2.length) {
                    Tile tile = tileArr2[i3];
                    if (tile != null) {
                        tileArr[i2 - trimBounds.minY][i3 - trimBounds.minX] = tile.cloneTile();
                    }
                    i3++;
                }
            }
        }
        Gate[][][] gateArr = (Gate[][][]) java.lang.reflect.Array.newInstance(Gate.class, tileArr.length + 1, tileArr[0].length + 1, Gate.Side.values.length);
        for (int i4 = 0; i4 <= this.heightTiles; i4++) {
            for (int i5 = 0; i5 <= this.widthTiles; i5++) {
                for (Gate.Side side : Gate.Side.values) {
                    if (this.gates[i4][i5][side.ordinal()] != null) {
                        gateArr[i4 - trimBounds.minY][i5 - trimBounds.minX][side.ordinal()] = this.gates[i4][i5][side.ordinal()].cloneGate();
                    }
                }
            }
        }
        return new Map(tileArr, gateArr);
    }

    public void tryReplaceGate(int i, int i2, Gate.Side side, Gate gate) {
        Gate gate2 = getGate(i, i2, side);
        setGate(i, i2, side, gate);
        setGate(i, i2, side, gate2);
    }

    public void tryReplaceTile(int i, int i2, Tile tile) {
        Tile tile2 = getTile(i, i2);
        setTile(i, i2, tile);
        setTile(i, i2, tile2);
    }

    public void validate() {
        updateCache();
        try {
            rebuildPathfindingIfNeeded();
            Array.ArrayIterator<Tile> it = this.tilesArray.iterator();
            boolean z = false;
            boolean z2 = false;
            while (it.hasNext()) {
                TileType tileType = it.next().type;
                if (tileType == TileType.SPAWN) {
                    z2 = true;
                } else if (tileType != TileType.TARGET) {
                    continue;
                } else if (z) {
                    Array array = new Array();
                    Array.ArrayIterator<Tile> it2 = this.tilesArray.iterator();
                    while (it2.hasNext()) {
                        Tile next = it2.next();
                        if (next.type == TileType.TARGET) {
                            array.add(next);
                        }
                    }
                    throw new InvalidMapException(InvalidMapException.Reason.MULTIPLE_TARGETS, array);
                } else {
                    z = true;
                }
            }
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = false;
            int i = 0;
            for (int i2 = 0; i2 < this.heightTiles; i2++) {
                for (int i3 = 0; i3 < this.widthTiles; i3++) {
                    Tile tile = this.tiles[i2][i3];
                    if (tile != null && tile.type == TileType.XM_MUSIC_TRACK) {
                        if (z3) {
                            Array array2 = new Array();
                            for (int i4 = 0; i4 < this.heightTiles; i4++) {
                                for (int i5 = 0; i5 < this.widthTiles; i5++) {
                                    Tile tile2 = this.tiles[i4][i5];
                                    if (tile2 != null && tile2.type == TileType.XM_MUSIC_TRACK) {
                                        array2.add(tile2);
                                    }
                                }
                            }
                            throw new InvalidMapException(InvalidMapException.Reason.MULTIPLE_SOUND_TRACKS, array2);
                        }
                        z3 = true;
                    } else if (tile != null && tile.type == TileType.CORE) {
                        if (z4) {
                            Array array3 = new Array();
                            for (int i6 = 0; i6 < this.heightTiles; i6++) {
                                for (int i7 = 0; i7 < this.widthTiles; i7++) {
                                    Tile tile3 = this.tiles[i6][i7];
                                    if (tile3 != null && tile3.type == TileType.CORE) {
                                        array3.add(tile3);
                                    }
                                }
                            }
                            throw new InvalidMapException(InvalidMapException.Reason.MULTIPLE_CORES, array3);
                        }
                        z4 = true;
                    } else if (tile != null && tile.type == TileType.BOSS) {
                        if (z5) {
                            Array array4 = new Array();
                            for (int i8 = 0; i8 < this.heightTiles; i8++) {
                                for (int i9 = 0; i9 < this.widthTiles; i9++) {
                                    Tile tile4 = this.tiles[i8][i9];
                                    if (tile4 != null && tile4.type == TileType.BOSS) {
                                        array4.add(tile4);
                                    }
                                }
                            }
                            throw new InvalidMapException(InvalidMapException.Reason.MULTIPLE_BOSS_TILES, array4);
                        }
                        z5 = true;
                    } else if (tile != null && tile.type == TileType.SPAWN && (i = i + 1) > 8) {
                        Array array5 = new Array();
                        for (int i10 = 0; i10 < this.heightTiles; i10++) {
                            for (int i11 = 0; i11 < this.widthTiles; i11++) {
                                Tile tile5 = this.tiles[i10][i11];
                                if (tile5 != null && tile5.type == TileType.SPAWN) {
                                    array5.add(tile5);
                                }
                            }
                        }
                        throw new InvalidMapException(InvalidMapException.Reason.TOO_MANY_PORTALS, array5);
                    }
                }
            }
            if (z2) {
                if (z) {
                    Array<EnemyTypeSpawnPair> enemyTypesThatCantFindPath = getEnemyTypesThatCantFindPath();
                    if (enemyTypesThatCantFindPath.size != 0) {
                        Array array6 = new Array();
                        for (int i12 = 0; i12 < enemyTypesThatCantFindPath.size; i12++) {
                            if (!array6.contains(enemyTypesThatCantFindPath.get(i12).spawnTile, true)) {
                                array6.add(enemyTypesThatCantFindPath.get(i12).spawnTile);
                            }
                        }
                        InvalidMapException invalidMapException = new InvalidMapException(InvalidMapException.Reason.NO_PATH_FOUND, array6);
                        invalidMapException.enemiesThatCantFindPath.addAll(enemyTypesThatCantFindPath);
                        throw invalidMapException;
                    } else if (!hasTileThatAllowsWalkablePlatforms()) {
                        int i13 = 0;
                        while (true) {
                            Array<SpawnTile> array7 = this.spawnTiles;
                            if (i13 < array7.size) {
                                SpawnTile spawnTile = array7.items[i13];
                                int m21936d = m21936d(spawnTile);
                                Array<SpawnTile.AllowedEnemyConfig> allowedEnemies = spawnTile.getAllowedEnemies();
                                for (int i14 = 0; i14 < allowedEnemies.size; i14++) {
                                    if (this.f8754k.containsKey(m21936d) && this.f8754k.get(m21936d).containsKey(allowedEnemies.get(i14).enemyType.ordinal()) && this.f8754k.get(m21936d).get(allowedEnemies.get(i14).enemyType.ordinal()).passesThroughTileType(TileType.PLATFORM)) {
                                        InvalidMapException invalidMapException2 = new InvalidMapException(InvalidMapException.Reason.PATH_ON_PLATFORM_NOT_ALLOWED, new Array());
                                        invalidMapException2.enemiesThatCantFindPath.addAll(enemyTypesThatCantFindPath);
                                        throw invalidMapException2;
                                    }
                                }
                                i13++;
                            } else {
                                return;
                            }
                        }
                    }
                } else {
                    throw new InvalidMapException(InvalidMapException.Reason.TARGET_NOT_FOUND, new Array());
                }
            } else {
                throw new InvalidMapException(InvalidMapException.Reason.SPAWN_NOT_FOUND, new Array());
            }
        } catch (PathNotFoundForEnemyTypeException e) {
            InvalidMapException invalidMapException3 = new InvalidMapException(InvalidMapException.Reason.NO_PATH_FOUND, new Array());
            invalidMapException3.enemiesThatCantFindPath.add(new EnemyTypeSpawnPair(e.enemyType, null));
            throw invalidMapException3;
        }
    }

    public boolean findPath(Path path, Tile tile, Tile tile2) {
        if (path != null) {
            if (tile != null) {
                if (tile2 != null) {
                    rebuildPathfindingIfNeeded();
                    f8743s = null;
                    return m21937c().searchNodePath(this.f8753d[tile.getY()][tile.getX()], this.f8753d[tile2.getY()][tile2.getX()], f8744t, path);
                }
                throw new IllegalArgumentException("targetTile is null");
            }
            throw new IllegalArgumentException("startTile is null");
        }
        throw new IllegalArgumentException("outPath is null");
    }

    public Map(int i, int i2) {
        this((Tile[][]) java.lang.reflect.Array.newInstance(Tile.class, i2, i), (Gate[][][]) java.lang.reflect.Array.newInstance(Gate.class, i2 + 1, i + 1, Gate.Side.values.length));
    }

    public Map(Tile[][] tileArr, Gate[][][] gateArr) {
        Gate.Side[] sideArr;
        this.listeners = new ListenerGroup<>(MapListener.class);
        this.tilesArray = new DelayedRemovalArray<>(Tile.class);
        this.teleportGates = new Array<>(Array.class);
        this.spawnTiles = new Array<>(SpawnTile.class);
        this.gatesArray = new Array<>(Gate.class);
        this.coreTiles = new Array<>(CoreTile.class);
        this.allowedEnemies = new Array<>(EnemyType.class);
        this.allowedEnemiesSet = new ObjectSet<>();
        this.throwExceptionOnMissingPath = true;
        this.pathfindingNodes = new Array<>(PathNode.class);
        this.f8754k = new IntMap<>();
        this.f8755p = -1;
        this.f8756q = new IndexedGraph<PathNode>() { // from class: com.prineside.tdi2.Map.1
            @Override // com.badlogic.gdx.p032ai.pfa.indexed.IndexedGraph
            public int getNodeCount() {
                return Map.this.pathfindingNodes.size;
            }

            @Override // com.badlogic.gdx.p032ai.pfa.Graph
            public Array<Connection<PathNode>> getConnections(PathNode pathNode) {
                if (Map.f8743s == null) {
                    Map.f8747w.clear();
                    Map.f8747w.addAll(pathNode.connections);
                    return Map.f8747w;
                }
                Map.f8747w.clear();
                int i = pathNode.connections.size;
                for (int i2 = 0; i2 < i; i2++) {
                    Path.Connection[] connectionArr = pathNode.connections.items;
                    if (connectionArr[i2].isTeleport) {
                        Map.f8747w.add(pathNode.connections.items[i2]);
                    } else {
                        Path.Connection connection = connectionArr[i2];
                        PathNode toNode = connection.getToNode();
                        Gate gate = null;
                        int i3 = pathNode.f8831y;
                        int i4 = toNode.f8831y;
                        if (i3 == i4) {
                            int i5 = pathNode.f8830x;
                            int i6 = i5 + 1;
                            int i7 = toNode.f8830x;
                            if (i6 == i7) {
                                gate = Map.this.getGate(i7, i4, Gate.Side.LEFT);
                            } else if (i7 + 1 == i5) {
                                gate = Map.this.getGate(i5, i3, Gate.Side.LEFT);
                            }
                        } else {
                            int i8 = pathNode.f8830x;
                            int i9 = toNode.f8830x;
                            if (i8 == i9) {
                                if (i3 + 1 == i4) {
                                    gate = Map.this.getGate(i9, i4, Gate.Side.BOTTOM);
                                } else if (i3 == i4 + 1) {
                                    gate = Map.this.getGate(i8, i3, Gate.Side.BOTTOM);
                                }
                            }
                        }
                        if (!(gate instanceof GateBarrier) || ((GateBarrier) gate).canEnemyPass(Map.f8743s)) {
                            Map.f8747w.add(connection);
                        }
                    }
                }
                return Map.f8747w;
            }

            @Override // com.badlogic.gdx.p032ai.pfa.indexed.IndexedGraph
            public int getIndex(PathNode pathNode) {
                return pathNode.index;
            }
        };
        this.tiles = tileArr;
        int length = tileArr.length;
        this.heightTiles = length;
        int length2 = tileArr[0].length;
        this.widthTiles = length2;
        this.gates = gateArr;
        this.widthPixels = length2 * 128;
        this.heightPixels = length * 128;
        for (int i = 0; i < this.heightTiles; i++) {
            for (int i2 = 0; i2 < this.widthTiles; i2++) {
                Tile tile = tileArr[i][i2];
                if (tile != null) {
                    tile.setPos(i2, i);
                    tileArr[i][i2].setMap(this);
                }
            }
        }
        for (int i3 = 0; i3 <= this.heightTiles; i3++) {
            for (int i4 = 0; i4 <= this.widthTiles; i4++) {
                for (Gate.Side side : Gate.Side.values) {
                    if (gateArr[i3][i4][side.ordinal()] != null) {
                        gateArr[i3][i4][side.ordinal()].setPosition(i4, i3, side);
                    }
                }
            }
        }
        updateCache();
    }
}
