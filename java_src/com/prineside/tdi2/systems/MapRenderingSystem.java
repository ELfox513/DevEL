package com.prineside.tdi2.systems;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.ObjectSet;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Map;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.Path;
import com.prineside.tdi2.PathNode;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.SpaceTileBonusType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.systems.TowerSystem;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.utils.DrawUtils;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
@NAGS
/* loaded from: classes2.dex */
public class MapRenderingSystem extends GameSystem {

    /* renamed from: J */
    public static final Color f11569J = new Color(0.0f, 1.0f, 0.0f, 0.28f);

    /* renamed from: K */
    public static final Color f11570K = new Color(1.0f, 1.0f, 0.0f, 0.28f);

    /* renamed from: D */
    public TextureRegion[] f11574D;

    /* renamed from: E */
    public int f11575E;

    /* renamed from: a */
    public boolean f11580a;

    /* renamed from: b */
    public DrawMode f11581b;

    /* renamed from: d */
    public SpriteCache f11582d;

    /* renamed from: k */
    public int f11583k;

    /* renamed from: p */
    public int f11584p;

    /* renamed from: q */
    public SpriteCache f11585q;

    /* renamed from: r */
    public int f11586r;

    /* renamed from: s */
    public int f11587s;

    /* renamed from: t */
    public SpriteCache f11588t;

    /* renamed from: u */
    public int f11589u;

    /* renamed from: v */
    public int f11590v;

    /* renamed from: w */
    public boolean f11591w;

    /* renamed from: x */
    public boolean f11592x;

    /* renamed from: y */
    public boolean f11593y;
    public final ObjectSet<SpaceTileBonusType> spaceTileBonusesToDrawColoredOnFreeTiles = new ObjectSet<>();
    public boolean drawMapGrid = false;

    /* renamed from: z */
    public SplatConfig[] f11594z = new SplatConfig[1024];

    /* renamed from: A */
    public SplatConfig[] f11571A = new SplatConfig[256];

    /* renamed from: B */
    public int f11572B = 0;

    /* renamed from: C */
    public int f11573C = 0;

    /* renamed from: F */
    public Color f11576F = new Color();
    public final ListenerGroup<MapRenderingSystemListener> listeners = new ListenerGroup<>(MapRenderingSystemListener.class);

    /* renamed from: G */
    public _TowerSystemListener f11577G = new _TowerSystemListener();

    /* renamed from: H */
    public _MapSystemListener f11578H = new _MapSystemListener();

    /* renamed from: I */
    public _EnemySystemListener f11579I = new _EnemySystemListener();

    /* loaded from: classes2.dex */
    public enum DrawMode {
        DEFAULT,
        DETAILED,
        MAP_EDITOR;
        
        public static final DrawMode[] values = values();
    }

    /* loaded from: classes2.dex */
    public interface MapRenderingSystemListener extends GameListener {
        void drawModeChanged();
    }

    /* loaded from: classes2.dex */
    public class SplatConfig {

        /* renamed from: a */
        public TextureRegion f11599a;

        /* renamed from: b */
        public float f11600b;

        /* renamed from: c */
        public float f11601c;

        /* renamed from: d */
        public float f11602d;

        public SplatConfig() {
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter {
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            if (Game.f8589i.settingsManager.isStainsEnabled()) {
                SplatConfig splatConfig = MapRenderingSystem.this.f11594z[MapRenderingSystem.this.f11573C];
                if (splatConfig == null) {
                    splatConfig = new SplatConfig();
                    MapRenderingSystem.this.f11594z[MapRenderingSystem.this.f11573C] = splatConfig;
                }
                MapRenderingSystem.this.f11576F.set(enemy.getColor());
                MapRenderingSystem.this.f11576F.lerp(0.0f, 0.0f, 0.0f, 1.0f, FastRandom.getFloat() * 0.14f);
                MapRenderingSystem.this.f11576F.f3889a = 0.5f;
                splatConfig.f11600b = MapRenderingSystem.this.f11576F.toFloatBits();
                splatConfig.f11601c = enemy.getPosition().f5527x;
                splatConfig.f11602d = enemy.getPosition().f5528y;
                splatConfig.f11599a = MapRenderingSystem.this.f11574D[MapRenderingSystem.m20988j(MapRenderingSystem.this)];
                if (MapRenderingSystem.this.f11575E == MapRenderingSystem.this.f11574D.length) {
                    MapRenderingSystem.this.f11575E = 0;
                }
                MapRenderingSystem.m20993e(MapRenderingSystem.this);
                if (MapRenderingSystem.this.f11573C == 1024) {
                    if (1024 - MapRenderingSystem.this.f11572B >= 0) {
                        System.arraycopy(MapRenderingSystem.this.f11594z, 0, MapRenderingSystem.this.f11571A, 0, MapRenderingSystem.this.f11571A.length);
                        System.arraycopy(MapRenderingSystem.this.f11594z, MapRenderingSystem.this.f11572B + 1, MapRenderingSystem.this.f11594z, 0, GL20.GL_SRC_COLOR);
                        System.arraycopy(MapRenderingSystem.this.f11571A, 0, MapRenderingSystem.this.f11594z, GL20.GL_SRC_COLOR, MapRenderingSystem.this.f11571A.length);
                    }
                    MapRenderingSystem.this.f11573C = GL20.GL_SRC_COLOR;
                    MapRenderingSystem.this.f11572B = 0;
                }
                if (MapRenderingSystem.this.f11573C - MapRenderingSystem.this.f11572B == 769) {
                    MapRenderingSystem.m20985m(MapRenderingSystem.this);
                }
            }
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void minerPlacedOnMap(Miner miner) {
            MapRenderingSystem.this.forceTilesRedraw(false);
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void minerRemovedFromMap(Miner miner, SourceTile sourceTile) {
            MapRenderingSystem.this.forceTilesRedraw(false);
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void modifierPlacedOnMap(Modifier modifier) {
            MapRenderingSystem.this.forceTilesRedraw(false);
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void buildingRemovedFromMap(Building building, PlatformTile platformTile) {
            MapRenderingSystem.this.forceTilesRedraw(false);
            MapRenderingSystem.this.forceTowersRedraw();
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void towerPlacedOnMap(Tower tower) {
            MapRenderingSystem.this.forceTilesRedraw(false);
            MapRenderingSystem.this.forceTowersRedraw();
        }
    }

    @NAGS
    /* loaded from: classes2.dex */
    public class _TowerSystemListener extends TowerSystem.TowerSystemListener.TowerSystemListenerAdapter {
        public _TowerSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerAbilityChanged(Tower tower, int i, boolean z) {
            MapRenderingSystem.this.forceTowersRedraw();
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerAimStrategyChanged(Tower tower) {
            if (MapRenderingSystem.this.f11581b == DrawMode.DETAILED) {
                MapRenderingSystem.this.forceTowersRedraw();
            }
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerLeveledUp(Tower tower) {
            if (MapRenderingSystem.this.f11581b == DrawMode.DETAILED) {
                MapRenderingSystem.this.forceTowersRedraw();
            }
        }

        @Override // com.prineside.tdi2.systems.TowerSystem.TowerSystemListener.TowerSystemListenerAdapter, com.prineside.tdi2.systems.TowerSystem.TowerSystemListener
        public void towerUpgraded(Tower tower, int i) {
            if (MapRenderingSystem.this.f11581b == DrawMode.DETAILED) {
                MapRenderingSystem.this.forceTowersRedraw();
            }
        }
    }

    /* renamed from: e */
    public static /* synthetic */ int m20993e(MapRenderingSystem mapRenderingSystem) {
        int i = mapRenderingSystem.f11573C;
        mapRenderingSystem.f11573C = i + 1;
        return i;
    }

    /* renamed from: j */
    public static /* synthetic */ int m20988j(MapRenderingSystem mapRenderingSystem) {
        int i = mapRenderingSystem.f11575E;
        mapRenderingSystem.f11575E = i + 1;
        return i;
    }

    /* renamed from: m */
    public static /* synthetic */ int m20985m(MapRenderingSystem mapRenderingSystem) {
        int i = mapRenderingSystem.f11572B;
        mapRenderingSystem.f11572B = i + 1;
        return i;
    }

    /* renamed from: p */
    public static /* synthetic */ int m20982p(MapRenderingSystem mapRenderingSystem, int i) {
        int i2 = mapRenderingSystem.f11584p + i;
        mapRenderingSystem.f11584p = i2;
        return i2;
    }

    /* renamed from: r */
    public static /* synthetic */ int m20980r(MapRenderingSystem mapRenderingSystem, int i) {
        int i2 = mapRenderingSystem.f11587s + i;
        mapRenderingSystem.f11587s = i2;
        return i2;
    }

    /* renamed from: t */
    public static /* synthetic */ int m20978t(MapRenderingSystem mapRenderingSystem, int i) {
        int i2 = mapRenderingSystem.f11590v + i;
        mapRenderingSystem.f11590v = i2;
        return i2;
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return false;
    }

    public void forceTilesRedraw(boolean z) {
        if (z) {
            this.f11591w = true;
        }
        this.f11593y = true;
    }

    public void forceTowersRedraw() {
        this.f11592x = true;
    }

    public DrawMode getDrawMode() {
        return this.f11581b;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "MapRendering";
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean profileUpdate() {
        return false;
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f11580a = true;
        try {
            this.f11582d.dispose();
        } catch (Exception e) {
            Logger.error("MapRenderingSystem", e.getMessage());
        }
        try {
            this.f11585q.dispose();
        } catch (Exception e2) {
            Logger.error("MapRenderingSystem", e2.getMessage());
        }
        try {
            this.f11588t.dispose();
        } catch (Exception e3) {
            Logger.error("MapRenderingSystem", e3.getMessage());
        }
        this.f11582d = null;
        this.f11585q = null;
        this.f11588t = null;
        this.listeners.clear();
        Game.f8589i.debugManager.unregisterValue("Tiles bake time");
        Game.f8589i.debugManager.unregisterValue("Towers bake time");
        super.dispose();
    }

    public void drawBatch(SpriteBatch spriteBatch, float f) {
        Tile selectedTile;
        int i;
        int i2;
        BitmapFont bitmapFont;
        if (!this.f11580a) {
            if (f >= 0.0f) {
                Map map = this.f8844S.map.getMap();
                int i3 = map.tilesArray.size;
                for (int i4 = 0; i4 < i3; i4++) {
                    Tile tile = map.tilesArray.items[i4];
                    tile.drawBatch(spriteBatch, f, tile.getX() * 128, tile.getY() * 128);
                }
                int i5 = 0;
                while (true) {
                    Array<Gate> array = map.gatesArray;
                    if (i5 >= array.size) {
                        break;
                    }
                    Gate gate = array.items[i5];
                    gate.drawBatch(spriteBatch, f, gate.getX(), gate.getY());
                    i5++;
                }
                if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_TILE_POS) != 0.0d) {
                    BitmapFont debugFont = Game.f8589i.assetManager.getDebugFont(false);
                    debugFont.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                    int i6 = 0;
                    while (i6 < map.heightTiles) {
                        int i7 = 0;
                        while (i7 < map.widthTiles) {
                            Tile tile2 = map.getTile(i7, i6);
                            if (tile2 != null) {
                                i = i7;
                                i2 = i6;
                                bitmapFont = debugFont;
                                debugFont.draw(spriteBatch, tile2.type.name(), i7 * 128, (i6 * 128) + 20.0f + 64.0f, 128.0f, 1, false);
                            } else {
                                i = i7;
                                i2 = i6;
                                bitmapFont = debugFont;
                            }
                            bitmapFont.draw(spriteBatch, "xy " + i + ":" + i2, i * 128, (i2 * 128) + 10.0f + 64.0f, 128.0f, 1, false);
                            i7 = i + 1;
                            i6 = i2;
                            debugFont = bitmapFont;
                        }
                        i6++;
                    }
                }
                if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_PATHFINDING) != 0.0d) {
                    ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
                    BitmapFont debugFont2 = Game.f8589i.assetManager.getDebugFont(false);
                    debugFont2.setColor(1.0f, 0.3f, 1.0f, 0.56f);
                    int i8 = 0;
                    while (true) {
                        Array<PathNode> array2 = map.pathfindingNodes;
                        if (i8 >= array2.size) {
                            break;
                        }
                        PathNode pathNode = array2.items[i8];
                        int i9 = 0;
                        while (true) {
                            Array<Path.Connection> array3 = pathNode.connections;
                            if (i9 < array3.size) {
                                Path.Connection connection = array3.items[i9];
                                PathNode fromNode = connection.getFromNode();
                                PathNode toNode = connection.getToNode();
                                DrawUtils.texturedLine(spriteBatch, blankWhiteTextureRegion, (fromNode.f8830x * 128) + 64, (fromNode.f8831y * 128) + 64, (toNode.f8830x * 128) + 64, (toNode.f8831y * 128) + 64, 6.0f, 1.0f, f11569J, f11570K);
                                i9++;
                                debugFont2 = debugFont2;
                                pathNode = pathNode;
                                i8 = i8;
                            }
                        }
                        PathNode pathNode2 = pathNode;
                        debugFont2.draw(spriteBatch, String.valueOf(pathNode2.index), pathNode2.f8830x * 128, (pathNode2.f8831y * 128) + 30.0f + 64.0f, 128.0f, 1, false);
                        i8++;
                    }
                    debugFont2.setColor(Color.WHITE);
                }
                if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_DRAW_NEIGHBOR_TILES) != 0.0d && (selectedTile = this.f8844S.map.getSelectedTile()) != null) {
                    ResourcePack.AtlasTextureRegion textureRegion = Game.f8589i.assetManager.getTextureRegion("small-circle");
                    Array<Tile> neighbourTiles = selectedTile.getNeighbourTiles();
                    for (int i10 = 0; i10 < neighbourTiles.size; i10++) {
                        Vector2 vector2 = neighbourTiles.items[i10].center;
                        spriteBatch.draw(textureRegion, vector2.f5527x - 8.0f, vector2.f5528y - 8.0f, 16.0f, 16.0f);
                    }
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("deltaTime is " + f);
        }
        throw new IllegalStateException("System is already disposed");
    }

    public void drawStains(SpriteBatch spriteBatch) {
        for (int i = this.f11572B; i < this.f11573C; i++) {
            SplatConfig splatConfig = this.f11594z[i];
            spriteBatch.setPackedColor(splatConfig.f11600b);
            spriteBatch.draw(splatConfig.f11599a, splatConfig.f11601c - 20.0f, splatConfig.f11602d - 20.0f, 40.0f, 40.0f);
        }
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
    }

    public void drawTiles(OrthographicCamera orthographicCamera) {
        if (!this.f11580a) {
            if (this.f11591w) {
                this.f11591w = false;
                m20976v();
            }
            this.f11582d.setProjectionMatrix(orthographicCamera.combined);
            this.f11582d.begin();
            Gdx.f3119gl.glEnable(GL20.GL_BLEND);
            this.f11582d.draw(this.f11583k);
            this.f11582d.end();
            return;
        }
        throw new IllegalStateException("System is already disposed");
    }

    public void drawTilesExtras(OrthographicCamera orthographicCamera) {
        if (!this.f11580a) {
            if (this.f11593y) {
                this.f11593y = false;
                m20977u();
            }
            this.f11585q.setProjectionMatrix(orthographicCamera.combined);
            this.f11585q.begin();
            Gdx.f3119gl.glEnable(GL20.GL_BLEND);
            this.f11585q.draw(this.f11586r);
            this.f11585q.end();
            return;
        }
        throw new IllegalStateException("System is already disposed");
    }

    public void drawTowers(OrthographicCamera orthographicCamera) {
        if (!this.f11580a) {
            if (this.f11592x) {
                this.f11592x = false;
                m20975w();
            }
            this.f11588t.setProjectionMatrix(orthographicCamera.combined);
            this.f11588t.begin();
            Gdx.f3119gl.glEnable(GL20.GL_BLEND);
            this.f11588t.draw(this.f11589u);
            this.f11588t.end();
            return;
        }
        throw new IllegalStateException("System is already disposed");
    }

    public void postDrawBatch(SpriteBatch spriteBatch, float f) {
        if (!this.f11580a) {
            Map map = this.f8844S.map.getMap();
            int i = map.tilesArray.size;
            for (int i2 = 0; i2 < i; i2++) {
                Tile tile = map.tilesArray.items[i2];
                tile.postDrawBatch(spriteBatch, f, tile.getX() * 128, tile.getY() * 128);
            }
            return;
        }
        throw new IllegalStateException("System is already disposed");
    }

    public void setDrawMode(DrawMode drawMode) {
        this.f11581b = drawMode;
        forceTilesRedraw(false);
        forceTowersRedraw();
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        DrawMode drawMode;
        this.f8844S.map.listeners.add(this.f11578H);
        TowerSystem towerSystem = this.f8844S.tower;
        if (towerSystem != null) {
            towerSystem.listeners.add(this.f11577G);
        }
        EnemySystem enemySystem = this.f8844S.enemy;
        if (enemySystem != null) {
            enemySystem.listeners.add(this.f11579I);
        }
        this.f11582d = new SpriteCache(32767, false) { // from class: com.prineside.tdi2.systems.MapRenderingSystem.1
            @Override // com.badlogic.gdx.graphics.g2d.SpriteCache
            public void add(Texture texture, float[] fArr, int i, int i2) {
                super.add(texture, fArr, i, i2);
                MapRenderingSystem.m20982p(MapRenderingSystem.this, i2 / 30);
            }

            @Override // com.badlogic.gdx.graphics.g2d.SpriteCache
            public void beginCache() {
                super.beginCache();
                MapRenderingSystem.this.f11584p = 0;
            }
        };
        this.f11585q = new SpriteCache(32767, false) { // from class: com.prineside.tdi2.systems.MapRenderingSystem.2
            @Override // com.badlogic.gdx.graphics.g2d.SpriteCache
            public void add(Texture texture, float[] fArr, int i, int i2) {
                super.add(texture, fArr, i, i2);
                MapRenderingSystem.m20980r(MapRenderingSystem.this, i2 / 30);
            }

            @Override // com.badlogic.gdx.graphics.g2d.SpriteCache
            public void beginCache() {
                super.beginCache();
                MapRenderingSystem.this.f11587s = 0;
            }
        };
        this.f11588t = new SpriteCache(32767, false) { // from class: com.prineside.tdi2.systems.MapRenderingSystem.3
            @Override // com.badlogic.gdx.graphics.g2d.SpriteCache
            public void add(Texture texture, float[] fArr, int i, int i2) {
                super.add(texture, fArr, i, i2);
                MapRenderingSystem.m20978t(MapRenderingSystem.this, i2 / 30);
            }

            @Override // com.badlogic.gdx.graphics.g2d.SpriteCache
            public void beginCache() {
                super.beginCache();
                MapRenderingSystem.this.f11590v = 0;
            }
        };
        AssetManager assetManager = Game.f8589i.assetManager;
        if (assetManager != null) {
            TextureRegion[] textureRegionArr = new TextureRegion[3];
            this.f11574D = textureRegionArr;
            textureRegionArr[0] = assetManager.getTextureRegion("splatter-1");
            this.f11574D[1] = Game.f8589i.assetManager.getTextureRegion("splatter-2");
            this.f11574D[2] = Game.f8589i.assetManager.getTextureRegion("splatter-3");
        }
        this.f11591w = true;
        this.f11593y = true;
        this.f11592x = true;
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.UI_DETAILED_MODE_ENABLED) == 0.0d) {
            drawMode = DrawMode.DEFAULT;
        } else {
            drawMode = DrawMode.DETAILED;
        }
        this.f11581b = drawMode;
    }

    public void switchMapDrawMode() {
        double d;
        DrawMode drawMode = this.f11581b;
        DrawMode drawMode2 = DrawMode.DEFAULT;
        if (drawMode == drawMode2) {
            setDrawMode(DrawMode.DETAILED);
        } else {
            setDrawMode(drawMode2);
        }
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        SettingsManager.CustomValueType customValueType = SettingsManager.CustomValueType.UI_DETAILED_MODE_ENABLED;
        if (this.f11581b == DrawMode.DETAILED) {
            d = 1.0d;
        } else {
            d = 0.0d;
        }
        settingsManager.setCustomValue(customValueType, d);
        this.listeners.begin();
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            this.listeners.get(i).drawModeChanged();
        }
        this.listeners.end();
    }

    /* renamed from: v */
    public final void m20976v() {
        Game.getRealTickCount();
        Map map = this.f8844S.map.getMap();
        this.f11582d.clear();
        this.f11582d.beginCache();
        if (this.drawMapGrid) {
            ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
            for (int i = 1; i < map.heightTiles; i++) {
                if (i % 10 == 0) {
                    this.f11582d.setColor(MaterialColor.BLUE_GREY.P800);
                } else {
                    this.f11582d.setColor(MaterialColor.BLUE_GREY.P900);
                }
                this.f11582d.add(blankWhiteTextureRegion, 0.0f, (i * 128) - 2.0f, map.widthPixels, 4.0f);
            }
            for (int i2 = 1; i2 < map.widthTiles; i2++) {
                if (i2 % 10 == 0) {
                    this.f11582d.setColor(MaterialColor.BLUE_GREY.P800);
                } else {
                    this.f11582d.setColor(MaterialColor.BLUE_GREY.P900);
                }
                this.f11582d.add(blankWhiteTextureRegion, (i2 * 128) - 2.0f, 0.0f, 4.0f, map.heightPixels);
            }
            this.f11582d.setColor(0.0f, 0.0f, 0.0f, 0.14f);
            this.f11582d.add(blankWhiteTextureRegion, -16.0f, -16.0f, 16.0f, map.heightPixels + 32.0f);
            this.f11582d.add(blankWhiteTextureRegion, map.widthPixels, -16.0f, 16.0f, map.heightPixels + 32.0f);
            this.f11582d.add(blankWhiteTextureRegion, 0.0f, -16.0f, map.widthPixels, 16.0f);
            this.f11582d.add(blankWhiteTextureRegion, 0.0f, map.heightPixels, map.widthPixels, 16.0f);
            this.f11582d.setColor(MaterialColor.BLUE_GREY.P800);
            this.f11582d.add(blankWhiteTextureRegion, -8.0f, -8.0f, 8.0f, map.heightPixels + 16.0f);
            this.f11582d.add(blankWhiteTextureRegion, map.widthPixels, -8.0f, 8.0f, map.heightPixels + 16.0f);
            this.f11582d.add(blankWhiteTextureRegion, 0.0f, -8.0f, map.widthPixels, 8.0f);
            this.f11582d.add(blankWhiteTextureRegion, 0.0f, map.heightPixels, map.widthPixels, 8.0f);
            this.f11582d.setColor(Color.WHITE);
            SpriteCache spriteCache = this.f11582d;
            DrawUtils.drawFontToCache(spriteCache, map.widthTiles + " x " + map.heightTiles, Game.f8589i.assetManager.getFont(24), MaterialColor.BLUE_GREY.P500.toFloatBits(), map.widthPixels + 16.0f, map.heightPixels + 32.0f, 100.0f, 12, false);
        }
        int i3 = map.tilesArray.size;
        for (int i4 = 0; i4 < i3; i4++) {
            Tile tile = map.tilesArray.items[i4];
            tile.drawStatic(this.f11582d, tile.getX() * 128, tile.getY() * 128, 128.0f, 128.0f, this.f11581b);
        }
        this.f11583k = this.f11582d.endCache();
    }

    /* renamed from: u */
    public final void m20977u() {
        Game.getRealTickCount();
        Map map = this.f8844S.map.getMap();
        this.f11585q.clear();
        this.f11585q.beginCache();
        int i = map.tilesArray.size;
        for (int i2 = 0; i2 < i; i2++) {
            Tile tile = map.tilesArray.items[i2];
            tile.drawExtras(this.f11585q, tile.getX() * 128, tile.getY() * 128, 128.0f, 128.0f, this.f11581b);
        }
        for (int i3 = 0; i3 < map.heightTiles + 1; i3++) {
            for (int i4 = 0; i4 < map.widthTiles + 1; i4++) {
                Gate gate = map.gates[i3][i4][Gate.Side.LEFT.ordinal()];
                if (gate != null) {
                    gate.drawStatic(this.f11585q, i4, i3);
                }
                Gate gate2 = map.gates[i3][i4][Gate.Side.BOTTOM.ordinal()];
                if (gate2 != null) {
                    gate2.drawStatic(this.f11585q, i4, i3);
                }
            }
        }
        this.f11586r = this.f11585q.endCache();
    }

    /* renamed from: w */
    public final void m20975w() {
        Building building;
        Game.getRealTickCount();
        Map map = this.f8844S.map.getMap();
        this.f11588t.clear();
        this.f11588t.beginCache();
        int i = map.tilesArray.size;
        for (int i2 = 0; i2 < i; i2++) {
            Tile tile = map.tilesArray.items[i2];
            if (tile.type == TileType.PLATFORM && (building = ((PlatformTile) tile).building) != null) {
                building.drawBase(this.f11588t, tile.getX() * 128, tile.getY() * 128, this.f11581b);
            }
        }
        this.f11589u = this.f11588t.endCache();
    }
}
