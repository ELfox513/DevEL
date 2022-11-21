package com.prineside.tdi2.tiles;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Building;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.SpaceTileBonus;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.ItemDataType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.SpaceTileBonusType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.shapes.RangeCircle;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class PlatformTile extends Tile {
    public int bonusLevel;
    public SpaceTileBonusType bonusType;
    public Building building;
    public boolean walkableEnabled;

    /* renamed from: com.prineside.tdi2.tiles.PlatformTile$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C23691 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f11972a;

        static {
            int[] iArr = new int[ItemSortingType.values().length];
            f11972a = iArr;
            try {
                iArr[ItemSortingType.KIND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11972a[ItemSortingType.RARITY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class SpaceTileFactory extends Tile.Factory.AbstractFactory<PlatformTile> {

        /* renamed from: d */
        public TextureRegion f11973d;

        /* renamed from: k */
        public TextureRegion[] f11974k;

        /* renamed from: p */
        public TextureRegion[] f11975p;

        /* renamed from: q */
        public final TextureRegion[] f11976q;

        @Override // com.prineside.tdi2.Tile.Factory
        public int getProbabilityForPrize(float f, ProgressManager.InventoryStatistics inventoryStatistics) {
            return 500;
        }

        public SpaceTileFactory() {
            super(TileType.PLATFORM);
            this.f11974k = new TextureRegion[4];
            this.f11975p = new TextureRegion[6];
            this.f11976q = new TextureRegion[SpaceTileBonusType.values.length];
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public PlatformTile create() {
            return new PlatformTile(null);
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public PlatformTile createRandom(float f, RandomXS128 randomXS128) {
            PlatformTile create = create();
            double d = f;
            if (d < 0.075d) {
                create.bonusLevel = 0;
            } else {
                SpaceTileBonusType[] spaceTileBonusTypeArr = SpaceTileBonusType.values;
                create.bonusType = spaceTileBonusTypeArr[randomXS128.nextInt(spaceTileBonusTypeArr.length)];
                if (d < 0.2d) {
                    create.bonusLevel = 1;
                } else if (d < 0.4d) {
                    create.bonusLevel = 2;
                } else if (d < 0.6d) {
                    create.bonusLevel = 3;
                } else if (d < 0.8d) {
                    create.bonusLevel = 4;
                } else {
                    create.bonusLevel = 5;
                }
            }
            return create;
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public PlatformTile fromJson(JsonValue jsonValue) {
            PlatformTile platformTile = (PlatformTile) super.fromJson(jsonValue);
            if (jsonValue.has("d")) {
                JsonValue jsonValue2 = jsonValue.get("d");
                platformTile.bonusType = SpaceTileBonusType.valueOf(jsonValue2.getString("bt"));
                int i = jsonValue2.getInt("bl");
                platformTile.bonusLevel = i;
                if (i < 0) {
                    platformTile.bonusLevel = 0;
                }
                if (platformTile.bonusLevel > 5) {
                    platformTile.bonusLevel = 5;
                }
            }
            if (jsonValue.has("building")) {
                Building fromJson = Building.fromJson(jsonValue.get("building"));
                platformTile.building = fromJson;
                fromJson.setTile(platformTile);
            }
            return platformTile;
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory
        public void setupAssets() {
            SpaceTileBonusType[] spaceTileBonusTypeArr;
            this.f11973d = Game.f8589i.assetManager.getTextureRegion("tile-type-platform");
            for (int i = 2; i <= 5; i++) {
                this.f11974k[i - 2] = Game.f8589i.assetManager.getTextureRegion("tile-type-platform-extra-" + i);
            }
            for (int i2 = 0; i2 <= 5; i2++) {
                this.f11975p[i2] = Game.f8589i.assetManager.getTextureRegion("tile-type-platform-shade-" + i2);
            }
            for (SpaceTileBonusType spaceTileBonusType : SpaceTileBonusType.values) {
                this.f11976q[spaceTileBonusType.ordinal()] = Game.f8589i.assetManager.getTextureRegion(SpaceTileBonus.getIconName(spaceTileBonusType));
            }
        }
    }

    public /* synthetic */ PlatformTile(C23691 c23691) {
        this();
    }

    @Override // com.prineside.tdi2.Tile
    public boolean canBeUpgraded() {
        return this.bonusLevel < 5 && this.bonusType != null;
    }

    public void drawBonusExtras(SpriteCache spriteCache, float f, float f2, float f3, float f4, boolean z, boolean z2) {
        int i;
        boolean z3 = false;
        if (z) {
            TextureRegion[] textureRegionArr = Game.f8589i.tileManager.f10161F.PLATFORM.f11975p;
            if (this.bonusType == null) {
                i = 0;
            } else {
                i = this.bonusLevel;
            }
            spriteCache.add(textureRegionArr[i], f, f2, f3, f4);
        }
        if (z2 && this.bonusType != null && this.bonusLevel > 0) {
            boolean z4 = true;
            if (isRegistered()) {
                GameSystemProvider gameSystemProvider = this.f8844S;
                if (gameSystemProvider != null) {
                    MapRenderingSystem mapRenderingSystem = gameSystemProvider._mapRendering;
                    if (mapRenderingSystem != null) {
                        z4 = (mapRenderingSystem.getDrawMode() == MapRenderingSystem.DrawMode.DETAILED || this.f8844S._mapRendering.getDrawMode() == MapRenderingSystem.DrawMode.MAP_EDITOR || mapRenderingSystem.spaceTileBonusesToDrawColoredOnFreeTiles.contains(this.bonusType) || Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.DBG_ALWAYS_DRAW_TILE_EXTRAS) == 1.0d) ? true : true;
                    } else {
                        throw new IllegalStateException("S._mapRendering is null " + this.f8844S);
                    }
                } else {
                    throw new IllegalStateException("S is null");
                }
            }
            float f5 = (f3 / 32.0f) * 11.0f;
            float f6 = f3 - (2.0f * f5);
            if (z4) {
                spriteCache.setColor(SpaceTileBonus.getColor(this.bonusType));
            } else {
                spriteCache.setColor(1.0f, 1.0f, 1.0f, 0.18f);
            }
            int i2 = this.bonusLevel;
            if (i2 >= 2) {
                spriteCache.add(Game.f8589i.tileManager.f10161F.PLATFORM.f11974k[i2 - 2], f, f2, f3, f4);
            }
            spriteCache.add(Game.f8589i.tileManager.f10161F.PLATFORM.f11976q[this.bonusType.ordinal()], f + f5, f2 + f5, f6, f6);
            spriteCache.setColor(Color.WHITE);
        }
    }

    @Override // com.prineside.tdi2.Tile
    public ItemSubcategoryType getInventorySubcategory() {
        return ItemSubcategoryType.ME_PLATFORMS;
    }

    @Override // com.prineside.tdi2.Tile
    public int getUpgradePriceInAccelerators() {
        return this.bonusLevel;
    }

    @Override // com.prineside.tdi2.Tile
    public int getUpgradePriceInGreenPapers() {
        int i = 250;
        for (int i2 = 1; i2 <= this.bonusLevel; i2++) {
            i += i2 * 150;
        }
        return i;
    }

    @Override // com.prineside.tdi2.Tile
    public float getValue() {
        return 1.0f;
    }

    @Override // com.prineside.tdi2.Tile
    public boolean isRoadType() {
        return false;
    }

    public PlatformTile() {
        super(TileType.PLATFORM);
        this.bonusType = null;
        this.bonusLevel = 0;
    }

    @Override // com.prineside.tdi2.Tile
    public void addSellItems(Array<ItemStack> array) {
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, (this.bonusLevel + 2) * 50));
        int i = this.bonusLevel;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            array.add(new ItemStack(Item.C1543D.RESOURCE_MATRIX, MathUtils.round((this.bonusType.ordinal() + 4) * 1.2f)));
                            array.add(new ItemStack(Item.C1543D.RESOURCE_TENSOR, MathUtils.round((this.bonusType.ordinal() + 7) * 1.1f)));
                            array.add(new ItemStack(Item.C1543D.RESOURCE_INFIAR, MathUtils.round((this.bonusType.ordinal() + 8) * 0.55f)));
                            return;
                        }
                        return;
                    }
                    array.add(new ItemStack(Item.C1543D.RESOURCE_VECTOR, MathUtils.round((this.bonusType.ordinal() + 4) * 1.5f)));
                    array.add(new ItemStack(Item.C1543D.RESOURCE_MATRIX, MathUtils.round((this.bonusType.ordinal() + 8) * 1.1f)));
                    array.add(new ItemStack(Item.C1543D.RESOURCE_TENSOR, MathUtils.round((this.bonusType.ordinal() + 7) * 0.8f)));
                    return;
                }
                array.add(new ItemStack(Item.C1543D.RESOURCE_SCALAR, MathUtils.round((this.bonusType.ordinal() + 3) * 1.4f)));
                array.add(new ItemStack(Item.C1543D.RESOURCE_VECTOR, MathUtils.round((this.bonusType.ordinal() + 7) * 1.3f)));
                array.add(new ItemStack(Item.C1543D.RESOURCE_MATRIX, MathUtils.round((this.bonusType.ordinal() + 6) * 0.95f)));
                return;
            }
            array.add(new ItemStack(Item.C1543D.RESOURCE_SCALAR, MathUtils.round((this.bonusType.ordinal() + 7) * 1.6f)));
            array.add(new ItemStack(Item.C1543D.RESOURCE_VECTOR, MathUtils.round((this.bonusType.ordinal() + 5) * 1.2f)));
            return;
        }
        array.add(new ItemStack(Item.C1543D.RESOURCE_SCALAR, MathUtils.round((this.bonusType.ordinal() + 5) * 1.5f)));
    }

    @Override // com.prineside.tdi2.Tile
    public void drawExtras(SpriteCache spriteCache, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        if (drawMode != MapRenderingSystem.DrawMode.MAP_EDITOR && this.building != null) {
            drawBonusExtras(spriteCache, f, f2, f3, f4, true, false);
        } else {
            drawBonusExtras(spriteCache, f, f2, f3, f4, true, true);
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void drawHoveredRange(Batch batch, RangeCircle rangeCircle) {
        Building building = this.building;
        if (building != null) {
            building.drawHoveredRange(batch, rangeCircle);
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void drawSelectedRange(Batch batch, RangeCircle rangeCircle) {
        Building building = this.building;
        if (building != null) {
            building.drawSelectedRange(batch, rangeCircle);
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void fillInventoryWithInfo(Table table, float f) {
        SpaceTileBonusType spaceTileBonusType = this.bonusType;
        if (spaceTileBonusType != null && this.bonusLevel != 0) {
            Color brightColor = SpaceTileBonus.getBrightColor(spaceTileBonusType);
            Image image = new Image(Game.f8589i.assetManager.getDrawable(SpaceTileBonus.getIconName(this.bonusType)));
            image.setColor(brightColor);
            table.add((Table) image).size(64.0f).row();
            Label label = new Label(SpaceTileBonus.getDetailedName(this.bonusType, this.bonusLevel), Game.f8589i.assetManager.getLabelStyle(21));
            label.setColor(brightColor);
            label.setWrap(true);
            label.setAlignment(1);
            table.add((Table) label).width(f).padTop(4.0f).row();
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void from(Tile tile) {
        Building cloneBuilding;
        PlatformTile platformTile = (PlatformTile) tile;
        this.bonusLevel = platformTile.bonusLevel;
        this.bonusType = platformTile.bonusType;
        Building building = platformTile.building;
        if (building == null) {
            cloneBuilding = null;
        } else {
            cloneBuilding = building.cloneBuilding();
        }
        this.building = cloneBuilding;
    }

    @Override // com.prineside.tdi2.Tile
    public int generateSeedSalt() {
        int i;
        SpaceTileBonusType spaceTileBonusType = this.bonusType;
        if (spaceTileBonusType != null && (i = this.bonusLevel) != 0) {
            return i + (spaceTileBonusType.ordinal() * 6);
        }
        return 0;
    }

    @Override // com.prineside.tdi2.Tile
    public Group generateUiIcon(float f) {
        Group group = new Group();
        int i = 0;
        group.setTransform(false);
        Image image = new Image(new TextureRegionDrawable(Game.f8589i.tileManager.f10161F.PLATFORM.f11973d));
        float f2 = (f / 128.0f) * 128.0f;
        image.setSize(f2, f2);
        group.addActor(image);
        TextureRegion[] textureRegionArr = Game.f8589i.tileManager.f10161F.PLATFORM.f11975p;
        if (this.bonusType != null) {
            i = this.bonusLevel;
        }
        Image image2 = new Image(new TextureRegionDrawable(textureRegionArr[i]));
        image2.setSize(f2, f2);
        group.addActor(image2);
        SpaceTileBonusType spaceTileBonusType = this.bonusType;
        if (spaceTileBonusType != null && this.bonusLevel != 0) {
            float f3 = (f / 32.0f) * 11.0f;
            float f4 = f - (2.0f * f3);
            Image image3 = new Image(Game.f8589i.tileManager.f10161F.PLATFORM.f11976q[spaceTileBonusType.ordinal()]);
            image3.setSize(f4, f4);
            image3.setPosition(f3, f3);
            image3.setColor(SpaceTileBonus.getColor(this.bonusType));
            group.addActor(image3);
            int i2 = this.bonusLevel;
            if (i2 > 1) {
                Image image4 = new Image(Game.f8589i.tileManager.f10161F.PLATFORM.f11974k[i2 - 2]);
                image4.setSize(f, f);
                image4.setColor(SpaceTileBonus.getColor(this.bonusType));
                group.addActor(image4);
            }
        }
        return group;
    }

    @Override // com.prineside.tdi2.Tile
    public void getData(IntArray intArray) {
        int i;
        if (this.bonusType != null) {
            intArray.add(ItemDataType.BONUS_TYPE.ordinal(), this.bonusType.ordinal());
        }
        int ordinal = ItemDataType.BONUS_LEVEL.ordinal();
        if (this.bonusType == null) {
            i = 0;
        } else {
            i = this.bonusLevel;
        }
        intArray.add(ordinal, i);
    }

    @Override // com.prineside.tdi2.Tile
    public double getPrestigeScore() {
        double d;
        SpaceTileBonusType spaceTileBonusType = this.bonusType;
        if (spaceTileBonusType == null) {
            return 0.002d;
        }
        double ordinal = spaceTileBonusType.ordinal();
        Double.isNaN(ordinal);
        double d2 = (ordinal * 0.03d) + 1.0d;
        int i = this.bonusLevel;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return 0.002d;
                        }
                        d = 0.24d;
                    } else {
                        d = 0.077d;
                    }
                } else {
                    d = 0.025d;
                }
            } else {
                d = 0.008d;
            }
            return d2 * d;
        }
        return d2 * 0.002d;
    }

    @Override // com.prineside.tdi2.Tile
    public RarityType getRarity() {
        int i = this.bonusLevel;
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    if (i != 5) {
                        return RarityType.COMMON;
                    }
                    return RarityType.LEGENDARY;
                }
                return RarityType.EPIC;
            }
            return RarityType.VERY_RARE;
        }
        return RarityType.RARE;
    }

    @Override // com.prineside.tdi2.Tile
    public int getSortingScore(ItemSortingType itemSortingType) {
        int i = C23691.f11972a[itemSortingType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return 1;
            }
            int ordinal = getRarity().ordinal() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
            SpaceTileBonusType spaceTileBonusType = this.bonusType;
            if (spaceTileBonusType != null) {
                return ordinal + spaceTileBonusType.ordinal() + (this.bonusLevel * SpaceTileBonusType.values.length);
            }
            return ordinal;
        }
        SpaceTileBonusType spaceTileBonusType2 = this.bonusType;
        if (spaceTileBonusType2 == null) {
            return 0;
        }
        return (spaceTileBonusType2.ordinal() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT) + this.bonusLevel;
    }

    @Override // com.prineside.tdi2.Tile
    public float getWalkCost() {
        if (this.walkableEnabled) {
            if (this.building != null) {
                return 10000.0f;
            }
            return 1.0f;
        } else if (this.building == null) {
            return 10000.0f;
        } else {
            return 1.0E8f;
        }
    }

    @Override // com.prineside.tdi2.Tile
    public boolean sameAs(Tile tile) {
        if (this.type != tile.type) {
            return false;
        }
        PlatformTile platformTile = (PlatformTile) tile;
        SpaceTileBonusType spaceTileBonusType = platformTile.bonusType;
        if (((spaceTileBonusType != null && platformTile.bonusLevel != 0) || (this.bonusType != null && this.bonusLevel != 0)) && (spaceTileBonusType != this.bonusType || platformTile.bonusLevel != this.bonusLevel)) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Tile
    public Tile createUpgradedTile() {
        Building building;
        if (canBeUpgraded()) {
            PlatformTile create = Game.f8589i.tileManager.f10161F.PLATFORM.create();
            create.bonusType = this.bonusType;
            create.bonusLevel = this.bonusLevel + 1;
            Building building2 = this.building;
            if (building2 != null) {
                building = building2.cloneBuilding();
            } else {
                building = null;
            }
            create.building = building;
            return create;
        }
        throw new IllegalStateException("PlatformTile can't be upgraded more");
    }

    @Override // com.prineside.tdi2.Tile
    public void drawStatic(SpriteCache spriteCache, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        super.drawStatic(spriteCache, f, f2, f3, f4, drawMode);
        spriteCache.add(Game.f8589i.tileManager.f10161F.PLATFORM.f11973d, f, f2, f3, f4);
    }

    @Override // com.prineside.tdi2.Tile
    public int getUpgradePriceInResources(ResourceType resourceType) {
        if (!canBeUpgraded()) {
            return 0;
        }
        int i = this.bonusLevel + 1;
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    if (i == 5) {
                        if (resourceType == ResourceType.TENSOR) {
                            return MathUtils.floor((this.bonusType.ordinal() + 15) * 8.5f);
                        }
                        if (resourceType == ResourceType.INFIAR) {
                            return MathUtils.floor((this.bonusType.ordinal() + 28) * 8.0f);
                        }
                    }
                } else if (resourceType == ResourceType.MATRIX) {
                    return MathUtils.floor((this.bonusType.ordinal() + 17) * 7.5f);
                } else {
                    if (resourceType == ResourceType.TENSOR) {
                        return MathUtils.floor((this.bonusType.ordinal() + 28) * 7.0f);
                    }
                }
            } else if (resourceType == ResourceType.VECTOR) {
                return MathUtils.floor((this.bonusType.ordinal() + 12) * 7.0f);
            } else {
                if (resourceType == ResourceType.MATRIX) {
                    return MathUtils.floor((this.bonusType.ordinal() + 17) * 6.0f);
                }
            }
        } else if (resourceType == ResourceType.SCALAR) {
            return MathUtils.floor((this.bonusType.ordinal() + 8) * 6.5f);
        } else {
            if (resourceType == ResourceType.VECTOR) {
                return MathUtils.floor((this.bonusType.ordinal() + 12) * 5.5f);
            }
        }
        return 0;
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.bonusType = (SpaceTileBonusType) kryo.readObjectOrNull(input, SpaceTileBonusType.class);
        this.bonusLevel = input.readVarInt(true);
        this.walkableEnabled = input.readBoolean();
        this.building = (Building) kryo.readClassAndObject(input);
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable
    public void setUnregistered() {
        super.setUnregistered();
        this.building = null;
    }

    @Override // com.prineside.tdi2.Tile
    public void toJson(Json json) {
        super.toJson(json);
        if (this.bonusType != null && this.bonusLevel > 0) {
            json.writeObjectStart("d");
            json.writeValue("bt", this.bonusType.name());
            json.writeValue("bl", Integer.valueOf(this.bonusLevel));
            json.writeObjectEnd();
        }
        if (this.building != null) {
            json.writeObjectStart("building");
            this.building.toJson(json);
            json.writeObjectEnd();
        }
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.bonusType, SpaceTileBonusType.class);
        output.writeVarInt(this.bonusLevel, true);
        output.writeBoolean(this.walkableEnabled);
        kryo.writeClassAndObject(output, this.building);
    }
}
