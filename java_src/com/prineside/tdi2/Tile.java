package com.prineside.tdi2;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.Pool;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu;
import com.prineside.tdi2.p036ui.shared.ItemCreationOverlay;
import com.prineside.tdi2.shapes.RangeCircle;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.utils.IntRectangle;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS(arrayLevels = 2, classOnly = true)
/* loaded from: classes2.dex */
public abstract class Tile extends Registrable {

    /* renamed from: a */
    public Map f8900a;

    /* renamed from: b */
    public int f8901b;

    /* renamed from: d */
    public int f8902d;
    @NAGS
    public ParticleEffectPool.PooledEffect highlightParticleA;
    @NAGS
    public ParticleEffectPool.PooledEffect highlightParticleB;
    @NAGS

    /* renamed from: p */
    public Array<Tile> f8904p;
    @NAGS

    /* renamed from: q */
    public Array<Tile> f8905q;
    public TileType type;
    public IntMap userData;
    public DelayedRemovalArray<Enemy.EnemyReference> enemies = new DelayedRemovalArray<>(false, 8, Enemy.EnemyReference.class);
    public DelayedRemovalArray<Unit> units = new DelayedRemovalArray<>(false, 0, Unit.class);
    @NAGS
    public Vector2 center = new Vector2();
    @NAGS
    public final IntRectangle boundingBox = new IntRectangle();
    @NAGS
    public boolean visibleOnScreen = true;
    @NAGS

    /* renamed from: k */
    public boolean f8903k = false;

    /* loaded from: classes2.dex */
    public interface Factory<T extends Tile> extends Disposable {

        /* loaded from: classes2.dex */
        public static abstract class AbstractFactory<T extends Tile> implements Factory<T> {

            /* renamed from: a */
            public final String f8906a;

            /* renamed from: b */
            public final String f8907b;

            @Override // com.prineside.tdi2.Tile.Factory
            public T createRandom(float f, RandomXS128 randomXS128) {
                return create();
            }

            @Override // com.badlogic.gdx.utils.Disposable
            public void dispose() {
            }

            @Override // com.prineside.tdi2.Tile.Factory
            public String getDescription() {
                return Game.f8589i.localeManager.i18n.get(this.f8907b);
            }

            @Override // com.prineside.tdi2.Tile.Factory
            public String getTitle() {
                return Game.f8589i.localeManager.i18n.get(this.f8906a);
            }

            public void setupAssets() {
            }

            @Override // com.prineside.tdi2.Tile.Factory
            public void setup() {
                if (Game.f8589i.assetManager != null) {
                    setupAssets();
                }
            }

            public AbstractFactory(TileType tileType) {
                this.f8906a = "tile_name_" + tileType.name();
                this.f8907b = "tile_description_" + tileType.name();
            }

            @Override // com.prineside.tdi2.Tile.Factory
            public T fromJson(JsonValue jsonValue) {
                T create = create();
                create.setPos(jsonValue.getInt("x", 0), jsonValue.getInt("y", 0));
                return create;
            }
        }

        T create();

        T createRandom(float f, RandomXS128 randomXS128);

        T fromJson(JsonValue jsonValue);

        String getDescription();

        int getProbabilityForPrize(float f, ProgressManager.InventoryStatistics inventoryStatistics);

        String getTitle();

        void setup();
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class Pos implements KryoSerializable, Pool.Poolable {

        /* renamed from: x */
        public int f8908x;

        /* renamed from: y */
        public int f8909y;

        /* renamed from: is */
        public boolean m21897is(int i, int i2) {
            return i == this.f8908x && i2 == this.f8909y;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f8908x = input.readVarInt(true);
            this.f8909y = input.readVarInt(true);
        }

        @Override // com.badlogic.gdx.utils.Pool.Poolable
        public void reset() {
            this.f8908x = 0;
            this.f8909y = 0;
        }

        public String toString() {
            return super.toString() + " (" + this.f8908x + ":" + this.f8909y + ")";
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeVarInt(this.f8908x, true);
            output.writeVarInt(this.f8909y, true);
        }
    }

    public void addSellItems(Array<ItemStack> array) {
    }

    public boolean affectedByLuckyWheelMultiplier() {
        return true;
    }

    public boolean canBeSelected() {
        return true;
    }

    public boolean canBeSold() {
        return true;
    }

    public boolean canBeUpgraded() {
        return false;
    }

    public Tile createUpgradedTile() {
        throw new IllegalStateException("Not implemented");
    }

    public void drawBatch(SpriteBatch spriteBatch, float f, int i, int i2) {
    }

    public void drawExtras(SpriteCache spriteCache, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
    }

    public void drawHoveredRange(Batch batch, RangeCircle rangeCircle) {
    }

    public void drawRoadStatic(SpriteCache spriteCache, float f, float f2, float f3, float f4) {
        Tile tile;
        Tile tile2;
        Tile tile3;
        Map map = this.f8900a;
        Tile tile4 = null;
        if (map != null) {
            tile4 = map.getTile(this.f8901b - 1, this.f8902d);
            tile = this.f8900a.getTile(this.f8901b + 1, this.f8902d);
            tile2 = this.f8900a.getTile(this.f8901b, this.f8902d - 1);
            tile3 = this.f8900a.getTile(this.f8901b, this.f8902d + 1);
        } else {
            tile = null;
            tile2 = null;
            tile3 = null;
        }
        spriteCache.add(Game.f8589i.tileManager.getRoadTexture(tile4, tile, tile3, tile2), f, f2, f3, f4);
    }

    public void drawSelectedRange(Batch batch, RangeCircle rangeCircle) {
    }

    public void fillInventoryWithInfo(Table table, float f) {
    }

    public void fillItemCreationForm(ItemCreationOverlay itemCreationOverlay) {
    }

    public void fillMapEditorMenu(Group group, MapEditorItemInfoMenu mapEditorItemInfoMenu) {
    }

    public void from(Tile tile) {
    }

    public int generateSeedSalt() {
        return 0;
    }

    public abstract Group generateUiIcon(float f);

    public void getData(IntArray intArray) {
    }

    public CharSequence getDescription() {
        return Game.f8589i.tileManager.getFactory(this.type).getDescription();
    }

    public abstract ItemSubcategoryType getInventorySubcategory();

    public Map getMap() {
        return this.f8900a;
    }

    public abstract double getPrestigeScore();

    public float getQuality() {
        return 1.0f;
    }

    public abstract RarityType getRarity();

    public abstract int getSortingScore(ItemSortingType itemSortingType);

    public CharSequence getTitle() {
        return Game.f8589i.tileManager.getFactory(this.type).getTitle();
    }

    public int getUpgradePriceInAccelerators() {
        return 1;
    }

    public int getUpgradePriceInGreenPapers() {
        return 0;
    }

    public int getUpgradePriceInResources(ResourceType resourceType) {
        return 0;
    }

    public Object getUserData(int i) {
        IntMap intMap = this.userData;
        if (intMap == null) {
            return null;
        }
        return intMap.get(i, null);
    }

    public float getValue() {
        return 1.0f;
    }

    public float getWalkCost() {
        return 1.0E12f;
    }

    public int getX() {
        return this.f8901b;
    }

    public int getY() {
        return this.f8902d;
    }

    public abstract boolean isRoadType();

    public void postDrawBatch(SpriteBatch spriteBatch, float f, int i, int i2) {
    }

    public void resetNeighborTilesCache() {
        this.f8903k = false;
    }

    public boolean sameAs(Tile tile) {
        return this.type == tile.type;
    }

    public void setMap(Map map) {
        this.f8900a = map;
    }

    public String toString() {
        return this.type.name() + " (" + this.f8901b + ":" + this.f8902d + ")";
    }

    /* renamed from: a */
    public final void m21899a() {
        Tile tile;
        Array<Tile> array = this.f8904p;
        if (array == null || !this.f8903k) {
            if (this.f8900a != null) {
                if (array == null) {
                    this.f8904p = new Array<>(Tile.class);
                }
                if (this.f8905q == null) {
                    this.f8905q = new Array<>(Tile.class);
                }
                int x = getX();
                int y = getY();
                this.f8904p.clear();
                for (int i = x - 1; i <= x + 1; i++) {
                    for (int i2 = y - 1; i2 <= y + 1; i2++) {
                        if ((i != x || i2 != y) && (tile = this.f8900a.getTile(i, i2)) != null) {
                            this.f8904p.add(tile);
                        }
                    }
                }
                this.f8905q.clear();
                this.f8905q.add(this);
                this.f8905q.addAll(this.f8904p);
                this.f8903k = true;
                return;
            }
            throw new IllegalArgumentException("This tile is not on map");
        }
    }

    /* renamed from: b */
    public final void m21898b() {
        int i = this.f8902d * 128;
        int i2 = this.f8901b * 128;
        IntRectangle intRectangle = this.boundingBox;
        intRectangle.set(i2, i2 + 128, i, i + 128);
        this.center.set(i2 + 64, i + 64);
    }

    public Tile cloneTile() {
        Tile create = Game.f8589i.tileManager.getFactory(this.type).create();
        create.from(this);
        return create;
    }

    public void registerEnemy(Enemy enemy) {
        this.enemies.add(this.f8844S.enemy.getReference(enemy));
        enemy.setCurrentTile(this);
    }

    public void registerUnit(Unit unit) {
        this.units.add(unit);
        unit.currentTile = this;
    }

    public void setPos(int i, int i2) {
        this.f8901b = i;
        this.f8902d = i2;
        m21898b();
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        this.enemies.clear();
        this.units.clear();
        super.setUnregistered();
    }

    public void setUserData(int i, Object obj) {
        if (this.userData == null) {
            this.userData = new IntMap();
        }
        this.userData.put(i, obj);
    }

    public void toJson(Json json) {
        json.writeValue("type", this.type.name());
        int i = this.f8901b;
        if (i != 0) {
            json.writeValue("x", Integer.valueOf(i));
        }
        int i2 = this.f8902d;
        if (i2 != 0) {
            json.writeValue("y", Integer.valueOf(i2));
        }
    }

    public void unregisterUnit(Unit unit) {
        if (unit.currentTile == this) {
            this.units.removeValue(unit, true);
            unit.currentTile = null;
            return;
        }
        throw new IllegalArgumentException("Unit is registered on other walkable tile");
    }

    public Tile(TileType tileType) {
        this.type = tileType;
    }

    public void drawStatic(SpriteCache spriteCache, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        if (isRoadType()) {
            drawRoadStatic(spriteCache, f, f2, f3, f4);
        }
    }

    public Array<Tile> getNeighbourTiles() {
        m21899a();
        return this.f8904p;
    }

    public Array<Tile> getNeighbourTilesAndThis() {
        m21899a();
        return this.f8905q;
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.type = (TileType) kryo.readObject(input, TileType.class);
        this.f8900a = (Map) kryo.readObjectOrNull(input, Map.class);
        this.f8901b = input.readVarInt(true);
        this.f8902d = input.readVarInt(true);
        this.enemies = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        this.units = (DelayedRemovalArray) kryo.readObject(input, DelayedRemovalArray.class);
        m21898b();
        this.userData = (IntMap) kryo.readClassAndObject(input);
    }

    public void unregisterEnemy(Enemy enemy) {
        if (enemy.getCurrentTile() == this) {
            if (!this.enemies.removeValue(this.f8844S.enemy.getReference(enemy), true)) {
                Logger.error("Tile", "Enemy was not removed from currentTile cache");
            }
            enemy.setCurrentTile(null);
            return;
        }
        throw new IllegalArgumentException("Enemy is registered on other tile");
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.type);
        kryo.writeObjectOrNull(output, this.f8900a, Map.class);
        output.writeVarInt(this.f8901b, true);
        output.writeVarInt(this.f8902d, true);
        kryo.writeObject(output, this.enemies);
        kryo.writeObject(output, this.units);
        kryo.writeClassAndObject(output, this.userData);
    }
}
