package com.prineside.tdi2.systems;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.EnemyGroup;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.Path;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.systems.WaveSystem;
import com.prineside.tdi2.tiles.SpawnTile;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.NAGS;
@NAGS
/* loaded from: classes2.dex */
public class PathRenderingSystem extends GameSystem {

    /* renamed from: u */
    public static final Vector2 f11714u = new Vector2();

    /* renamed from: a */
    public float f11715a;

    /* renamed from: b */
    public boolean f11716b;
    public boolean dontDrawOverPlatforms = false;

    /* renamed from: d */
    public Array<PathConfig> f11717d = new Array<>(PathConfig.class);

    /* renamed from: k */
    public Pool<PathConfig> f11718k = new Pool<PathConfig>() { // from class: com.prineside.tdi2.systems.PathRenderingSystem.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public PathConfig newObject() {
            return new PathConfig();
        }
    };

    /* renamed from: p */
    public boolean f11719p = false;

    /* renamed from: q */
    public TextureRegion[] f11720q = new TextureRegion[4];

    /* renamed from: r */
    public _MapListener f11721r = new _MapListener();

    /* renamed from: s */
    public _WaveSystemListener f11722s = new _WaveSystemListener();

    /* renamed from: t */
    public _GameStateSystemListener f11723t = new _GameStateSystemListener();

    /* loaded from: classes2.dex */
    public static class PathConfig implements Pool.Poolable {

        /* renamed from: a */
        public float f11725a;

        /* renamed from: b */
        public int f11726b;

        /* renamed from: d */
        public TextureRegion f11727d;

        /* renamed from: k */
        public int f11728k;

        /* renamed from: p */
        public Path f11729p;

        /* renamed from: q */
        public float f11730q;

        /* renamed from: r */
        public Array<Path.PathSegment> f11731r;

        /* renamed from: s */
        public boolean f11732s;

        public PathConfig() {
            this.f11731r = new Array<>(Path.PathSegment.class);
        }

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            this.f11729p = null;
            int i = 0;
            this.f11732s = false;
            this.f11728k = 0;
            this.f11726b = 0;
            this.f11727d = null;
            this.f11725a = 0.0f;
            while (true) {
                Array<Path.PathSegment> array = this.f11731r;
                if (i < array.size) {
                    array.items[i].free();
                    i++;
                } else {
                    array.clear();
                    return;
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class PathEnemyPair {
        public EnemyType enemyType;
        public Path path;
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _GameStateSystemListener extends GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter {
        public _GameStateSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener.GameStateSystemListenerAdapter, com.prineside.tdi2.systems.GameStateSystem.GameStateSystemListener
        public void gameResumed() {
            PathRenderingSystem.this.updatePathTracesRendering();
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _MapListener implements Map.MapListener {
        public _MapListener() {
        }

        @Override // com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return false;
        }

        @Override // com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 0;
        }

        @Override // com.prineside.tdi2.Map.MapListener
        public void pathfindingRebuilt(boolean z) {
            if (z) {
                PathRenderingSystem.this.updatePathTracesRendering();
            }
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _WaveSystemListener extends WaveSystem.WaveSystemListener.WaveSystemListenerAdapter {
        public _WaveSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.WaveSystem.WaveSystemListener.WaveSystemListenerAdapter, com.prineside.tdi2.systems.WaveSystem.WaveSystemListener
        public void statusChanged(WaveSystem.Status status) {
            PathRenderingSystem.this.updatePathTracesRendering();
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return false;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "PathRendering";
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean profileUpdate() {
        return false;
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f11717d.clear();
        this.f11718k.clear();
        super.dispose();
    }

    public void draw(SpriteBatch spriteBatch, float f) {
        boolean z;
        if (!this.f11719p) {
            updatePathTracesRendering();
        }
        if (this.f11717d.size != 0 && Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DISABLE_PATH_RENDERING) != 1.0d) {
            int i = 0;
            if (this.f11716b) {
                float f2 = this.f11715a - f;
                this.f11715a = f2;
                if (f2 <= 0.0f) {
                    this.f11716b = false;
                    this.f11715a = 0.0f;
                    while (true) {
                        Array<PathConfig> array = this.f11717d;
                        if (i < array.size) {
                            this.f11718k.free(array.items[i]);
                            i++;
                        } else {
                            array.clear();
                            return;
                        }
                    }
                }
            } else {
                float f3 = this.f11715a + f;
                this.f11715a = f3;
                if (f3 > 0.66f) {
                    this.f11715a = 0.66f;
                }
            }
            float f4 = f * 1.0f;
            spriteBatch.setColor(1.0f, 1.0f, 1.0f, this.f11715a);
            boolean z2 = false;
            int i2 = 0;
            while (true) {
                Array<PathConfig> array2 = this.f11717d;
                if (i2 < array2.size) {
                    PathConfig pathConfig = array2.items[i2];
                    Path path = pathConfig.f11729p;
                    if (path != null) {
                        if (!z2 && path.isPrepared()) {
                            pathConfig.f11730q = pathConfig.f11729p.getPositionSimpleSegmentsForGraphics(pathConfig.f11728k, pathConfig.f11731r);
                            pathConfig.f11732s = pathConfig.f11729p.passesThroughTileType(TileType.PLATFORM);
                            pathConfig.f11729p = null;
                            z = true;
                        }
                        i2++;
                    } else {
                        z = z2;
                    }
                    if (!this.dontDrawOverPlatforms || !pathConfig.f11732s) {
                        float f5 = pathConfig.f11725a + f4;
                        pathConfig.f11725a = f5;
                        if (f5 >= 1.0f) {
                            pathConfig.f11725a = f5 - 1.0f;
                            pathConfig.f11726b++;
                        }
                        float f6 = pathConfig.f11725a * 32.0f;
                        int i3 = pathConfig.f11726b;
                        int i4 = 0;
                        while (f6 < pathConfig.f11730q) {
                            Path.PathSegment pathSegment = pathConfig.f11731r.items[0];
                            int i5 = i4;
                            while (true) {
                                Array<Path.PathSegment> array3 = pathConfig.f11731r;
                                if (i4 >= array3.size) {
                                    break;
                                }
                                pathSegment = array3.items[i4];
                                float f7 = f6 - pathSegment.distanceFromStart;
                                float f8 = pathSegment.length;
                                if (f7 < f8) {
                                    float f9 = f7 / f8;
                                    Vector2 vector2 = f11714u;
                                    float f10 = pathSegment.f8817x1;
                                    vector2.f5527x = f10 + ((pathSegment.f8818x2 - f10) * f9);
                                    float f11 = pathSegment.f8819y1;
                                    vector2.f5528y = f11 + ((pathSegment.f8820y2 - f11) * f9);
                                    break;
                                }
                                i5 = i4;
                                i4++;
                            }
                            if (i3 % 4 == 0) {
                                TextureRegion textureRegion = pathConfig.f11727d;
                                Vector2 vector22 = f11714u;
                                spriteBatch.draw(textureRegion, vector22.f5527x - 11.2f, vector22.f5528y - 11.2f, 22.4f, 22.4f);
                            } else {
                                TextureRegion textureRegion2 = this.f11720q[pathSegment.direction.ordinal()];
                                Vector2 vector23 = f11714u;
                                spriteBatch.draw(textureRegion2, vector23.f5527x - 6.0f, vector23.f5528y - 6.0f, 12.0f, 12.0f);
                            }
                            f6 += 32.0f;
                            i3--;
                            i4 = i5;
                        }
                    }
                    z2 = z;
                    i2++;
                } else {
                    spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
                    return;
                }
            }
        } else {
            this.f11715a = 0.0f;
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postSetup() {
        this.f8844S.map.getMap().listeners.add(this.f11721r);
        WaveSystem waveSystem = this.f8844S.wave;
        if (waveSystem != null) {
            waveSystem.listeners.add(this.f11722s);
        }
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if (gameStateSystem != null) {
            gameStateSystem.listeners.add(this.f11723t);
        }
    }

    public void removePaths() {
        if (this.f11717d.size != 0) {
            this.f11716b = true;
        }
    }

    public void setPaths(Array<PathEnemyPair> array) {
        Array<PathConfig> array2;
        if (array.size == 0) {
            removePaths();
            return;
        }
        this.f11716b = false;
        int i = 0;
        while (true) {
            array2 = this.f11717d;
            if (i >= array2.size) {
                break;
            }
            this.f11718k.free(array2.items[i]);
            i++;
        }
        array2.clear();
        int min = StrictMath.min(array.size, 11);
        int[] iArr = Path.SIDE_SHIFT_BY_COUNT[min];
        for (int i2 = 0; i2 < min; i2++) {
            PathEnemyPair pathEnemyPair = array.items[i2];
            PathConfig obtain = this.f11718k.obtain();
            float f = i2 / array.size;
            obtain.f11726b = FastRandom.getInt(4);
            obtain.f11725a = f;
            obtain.f11727d = Game.f8589i.enemyManager.getFactory(pathEnemyPair.enemyType).getTexture();
            obtain.f11729p = pathEnemyPair.path;
            obtain.f11728k = iArr[i2];
            this.f11717d.add(obtain);
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        this.f11720q[Path.PathSegment.Direction.TOP.ordinal()] = Game.f8589i.assetManager.getTextureRegion("path-arrow-up");
        this.f11720q[Path.PathSegment.Direction.LEFT.ordinal()] = Game.f8589i.assetManager.getTextureRegion("path-arrow-left");
        this.f11720q[Path.PathSegment.Direction.RIGHT.ordinal()] = Game.f8589i.assetManager.getTextureRegion("path-arrow-right");
        this.f11720q[Path.PathSegment.Direction.BOTTOM.ordinal()] = Game.f8589i.assetManager.getTextureRegion("path-arrow-bottom");
    }

    public void updatePathTracesRendering() {
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if ((gameStateSystem != null && gameStateSystem.canSkipMediaUpdate()) || this.f8844S.wave == null) {
            return;
        }
        removePaths();
        WaveSystem.Status status = this.f8844S.wave.status;
        if (status == WaveSystem.Status.SPAWNED || status == WaveSystem.Status.NOT_STARTED) {
            Array<PathEnemyPair> array = new Array<>(PathEnemyPair.class);
            Map map = this.f8844S.map.getMap();
            int i = 0;
            while (true) {
                Array<SpawnTile> array2 = map.spawnTiles;
                if (i < array2.size) {
                    SpawnTile spawnTile = array2.get(i);
                    Array<EnemyGroup.SpawnEnemyGroup> array3 = spawnTile.enemySpawnQueues.get(1);
                    if (array3.size != 0) {
                        for (int i2 = 0; i2 < array3.size; i2++) {
                            EnemyGroup.SpawnEnemyGroup spawnEnemyGroup = array3.get(i2);
                            Path defaultPath = map.getDefaultPath(spawnEnemyGroup.type, spawnTile);
                            if (defaultPath != null) {
                                PathEnemyPair pathEnemyPair = new PathEnemyPair();
                                pathEnemyPair.path = defaultPath;
                                pathEnemyPair.enemyType = spawnEnemyGroup.type;
                                array.add(pathEnemyPair);
                            } else {
                                throw new RuntimeException("Path is null for " + spawnEnemyGroup.type.name() + " " + spawnTile.getX() + ":" + spawnTile.getY());
                            }
                        }
                        continue;
                    }
                    i++;
                } else {
                    setPaths(array);
                    break;
                }
            }
        }
        this.f11719p = true;
    }
}
