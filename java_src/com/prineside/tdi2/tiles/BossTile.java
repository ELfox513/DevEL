package com.prineside.tdi2.tiles;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueConfig;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.BossTileType;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
import java.util.Iterator;
@REGS
/* loaded from: classes2.dex */
public class BossTile extends Tile {

    /* renamed from: A */
    public static Color[] f11870A;

    /* renamed from: s */
    public static Array<GameValueConfig> f11871s;

    /* renamed from: t */
    public static final BossWavesConfig f11872t;

    /* renamed from: u */
    public static Array<GameValueConfig> f11873u;

    /* renamed from: v */
    public static BossWavesConfig f11874v;

    /* renamed from: w */
    public static Array<GameValueConfig> f11875w;

    /* renamed from: x */
    public static BossWavesConfig f11876x;

    /* renamed from: y */
    public static Array<GameValueConfig> f11877y;

    /* renamed from: z */
    public static BossWavesConfig[] f11878z;
    public BossWavesConfig customBossWaveConfig;
    public Array<GameValueConfig> customEffects;
    public BossType oneBossType;

    /* renamed from: r */
    public BossTileType f11879r;

    /* renamed from: com.prineside.tdi2.tiles.BossTile$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C23511 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f11880a;

        static {
            int[] iArr = new int[BossTileType.values().length];
            f11880a = iArr;
            try {
                iArr[BossTileType.NO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11880a[BossTileType.RARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11880a[BossTileType.ONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11880a[BossTileType.HARD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11880a[BossTileType.CUSTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class BossTileFactory extends Tile.Factory.AbstractFactory<BossTile> {

        /* renamed from: d */
        public TextureRegion f11881d;

        /* renamed from: k */
        public TextureRegion f11882k;

        /* renamed from: p */
        public TextureRegion f11883p;

        /* renamed from: q */
        public TextureRegion f11884q;

        /* renamed from: r */
        public TextureRegion f11885r;

        /* renamed from: s */
        public TextureRegion f11886s;

        /* renamed from: t */
        public final String[] f11887t;

        @Override // com.prineside.tdi2.Tile.Factory
        public int getProbabilityForPrize(float f, ProgressManager.InventoryStatistics inventoryStatistics) {
            return ((double) f) < 0.9d ? 0 : 1;
        }

        public BossTileFactory() {
            super(TileType.BOSS);
            BossTileType[] bossTileTypeArr = BossTileType.values;
            this.f11887t = new String[bossTileTypeArr.length];
            for (BossTileType bossTileType : bossTileTypeArr) {
                this.f11887t[bossTileType.ordinal()] = "boss_tile_name_" + bossTileType.name();
            }
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public BossTile create() {
            return new BossTile(BossTileType.NO, null);
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public BossTile fromJson(JsonValue jsonValue) {
            BossTile bossTile = (BossTile) super.fromJson(jsonValue);
            JsonValue jsonValue2 = jsonValue.get("d");
            if (jsonValue2 != null) {
                try {
                    bossTile.setBossTileType(BossTileType.valueOf(jsonValue2.getString("btt")));
                } catch (Exception e) {
                    Logger.error("BossTile", "failed to load boss tile type", e);
                }
                if (bossTile.f11879r == BossTileType.ONE) {
                    try {
                        bossTile.oneBossType = BossType.valueOf(jsonValue2.getString("obt"));
                    } catch (Exception e2) {
                        Logger.error("BossTile", "failed to load one boss type", e2);
                    }
                } else if (bossTile.f11879r == BossTileType.CUSTOM) {
                    try {
                        Iterator<JsonValue> iterator2 = jsonValue2.get("ce").iterator2();
                        while (iterator2.hasNext()) {
                            try {
                                bossTile.customEffects.add(GameValueConfig.fromJson(iterator2.next()));
                            } catch (Exception e3) {
                                Logger.error("BossTile", "failed to load custom GV", e3);
                            }
                        }
                    } catch (Exception e4) {
                        Logger.error("BossTile", "failed to load custom GVs", e4);
                    }
                    try {
                        bossTile.customBossWaveConfig = BossWavesConfig.fromJson(jsonValue2.get("cbwc"));
                    } catch (Exception e5) {
                        Logger.error("BossTile", "failed to load custom waves config", e5);
                    }
                }
            }
            return bossTile;
        }

        public String getBossTileTypeName(BossTileType bossTileType) {
            return Game.f8589i.localeManager.i18n.get(this.f11887t[bossTileType.ordinal()]);
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory
        public void setupAssets() {
            this.f11881d = Game.f8589i.assetManager.getTextureRegion("tile-type-boss-custom");
            this.f11882k = Game.f8589i.assetManager.getTextureRegion("tile-type-boss-no");
            this.f11883p = Game.f8589i.assetManager.getTextureRegion("tile-type-boss-hard");
            this.f11884q = Game.f8589i.assetManager.getTextureRegion("tile-type-boss-rare");
            this.f11885r = Game.f8589i.assetManager.getTextureRegion("tile-type-boss-one-bg");
            this.f11886s = Game.f8589i.assetManager.getTextureRegion("tile-type-boss-one-fg");
        }

        public BossTile create(BossTileType bossTileType) {
            return new BossTile(bossTileType, null);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class BossTypeWavePair implements KryoSerializable {
        public BossType bossType;
        public int wave;

        public BossTypeWavePair() {
        }

        public BossTypeWavePair cpy() {
            return new BossTypeWavePair(this.wave, this.bossType);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.wave = input.readVarInt(true);
            this.bossType = (BossType) kryo.readObjectOrNull(input, BossType.class);
        }

        public static BossTypeWavePair fromJson(JsonValue jsonValue) {
            BossTypeWavePair bossTypeWavePair = new BossTypeWavePair();
            bossTypeWavePair.wave = jsonValue.getInt("w");
            try {
                bossTypeWavePair.bossType = BossType.valueOf(jsonValue.getString("bt"));
            } catch (Exception e) {
                Logger.error("BossTile", "failed to load boss type", e);
                bossTypeWavePair.bossType = BossType.BROOT;
            }
            return bossTypeWavePair;
        }

        public boolean sameAs(BossTypeWavePair bossTypeWavePair) {
            if (bossTypeWavePair.bossType != this.bossType || bossTypeWavePair.wave != this.wave) {
                return false;
            }
            return true;
        }

        public void toJson(Json json) {
            json.writeValue("w", Integer.valueOf(this.wave));
            json.writeValue("bt", this.bossType.name());
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeVarInt(this.wave, true);
            kryo.writeObjectOrNull(output, this.bossType, BossType.class);
        }

        public BossTypeWavePair(int i, BossType bossType) {
            this.wave = i;
            this.bossType = bossType;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class BossWavesConfig implements KryoSerializable {
        public Array<BossTypeWavePair> bossWavePairs;
        public int cycleLength;
        public int repeatCount;
        public int startDelay;

        public /* synthetic */ BossWavesConfig(C23511 c23511) {
            this();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.cycleLength = input.readVarInt(true);
            this.repeatCount = input.readInt();
            this.startDelay = input.readVarInt(true);
            this.bossWavePairs = (Array) kryo.readObject(input, Array.class);
        }

        public BossWavesConfig() {
            this.cycleLength = 20;
            this.repeatCount = 1;
            this.startDelay = 0;
            this.bossWavePairs = new Array<>(BossTypeWavePair.class);
        }

        public static BossWavesConfig fromJson(JsonValue jsonValue) {
            BossWavesConfig bossWavesConfig = new BossWavesConfig();
            bossWavesConfig.cycleLength = jsonValue.getInt("cl");
            bossWavesConfig.repeatCount = jsonValue.getInt("rc");
            bossWavesConfig.startDelay = jsonValue.getInt("sd");
            try {
                Iterator<JsonValue> iterator2 = jsonValue.get("bwp").iterator2();
                while (iterator2.hasNext()) {
                    bossWavesConfig.bossWavePairs.add(BossTypeWavePair.fromJson(iterator2.next()));
                }
            } catch (Exception e) {
                Logger.error("BossTile", "failed to load boss wave pairs", e);
            }
            return bossWavesConfig;
        }

        public boolean sameAs(BossWavesConfig bossWavesConfig) {
            if (bossWavesConfig.cycleLength != this.cycleLength || bossWavesConfig.repeatCount != this.repeatCount || bossWavesConfig.startDelay != this.startDelay || this.bossWavePairs.size != bossWavesConfig.bossWavePairs.size) {
                return false;
            }
            int i = 0;
            while (true) {
                Array<BossTypeWavePair> array = this.bossWavePairs;
                if (i < array.size) {
                    if (!array.items[i].sameAs(bossWavesConfig.bossWavePairs.items[i])) {
                        return false;
                    }
                    i++;
                } else {
                    return true;
                }
            }
        }

        public void toJson(Json json) {
            json.writeValue("cl", Integer.valueOf(this.cycleLength));
            json.writeValue("rc", Integer.valueOf(this.repeatCount));
            json.writeValue("sd", Integer.valueOf(this.startDelay));
            json.writeArrayStart("bwp");
            for (int i = 0; i < this.bossWavePairs.size; i++) {
                json.writeObjectStart();
                this.bossWavePairs.items[i].toJson(json);
                json.writeObjectEnd();
            }
            json.writeArrayEnd();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeVarInt(this.cycleLength, true);
            output.writeInt(this.repeatCount);
            output.writeVarInt(this.startDelay, true);
            kryo.writeObject(output, this.bossWavePairs);
        }

        public BossWavesConfig(int i, int i2, int i3, Array<BossTypeWavePair> array) {
            this.cycleLength = 20;
            this.repeatCount = 1;
            this.startDelay = 0;
            Array<BossTypeWavePair> array2 = new Array<>(BossTypeWavePair.class);
            this.bossWavePairs = array2;
            this.cycleLength = i;
            this.repeatCount = i2;
            this.startDelay = i3;
            array2.addAll(array);
        }
    }

    public /* synthetic */ BossTile(BossTileType bossTileType, C23511 c23511) {
        this(bossTileType);
    }

    @Override // com.prineside.tdi2.Tile
    public void addSellItems(Array<ItemStack> array) {
        array.add(new ItemStack(Item.C1543D.BLUEPRINT_SPECIAL_III, 1));
    }

    @Override // com.prineside.tdi2.Tile
    public boolean affectedByLuckyWheelMultiplier() {
        return false;
    }

    @Override // com.prineside.tdi2.Tile
    public boolean canBeUpgraded() {
        return false;
    }

    public BossTileType getBossTileType() {
        return this.f11879r;
    }

    @Override // com.prineside.tdi2.Tile
    public ItemSubcategoryType getInventorySubcategory() {
        return ItemSubcategoryType.ME_SPECIAL;
    }

    @Override // com.prineside.tdi2.Tile
    public double getPrestigeScore() {
        int i = C23511.f11880a[this.f11879r.ordinal()];
        if (i != 1) {
            if (i == 2 || i == 3) {
                return 0.3d;
            }
            if (i != 4) {
                return i != 5 ? 0.0d : 0.1d;
            }
            return 1.0d;
        }
        return 0.1d;
    }

    @Override // com.prineside.tdi2.Tile
    public RarityType getRarity() {
        return RarityType.LEGENDARY;
    }

    @Override // com.prineside.tdi2.Tile
    public boolean isRoadType() {
        return false;
    }

    public void setBossTileType(BossTileType bossTileType) {
        this.f11879r = bossTileType;
    }

    static {
        BossType[] bossTypeArr;
        GameValueType gameValueType = GameValueType.SCORE;
        GameValueType gameValueType2 = GameValueType.MINERS_SPEED;
        GameValueType gameValueType3 = GameValueType.LOOT_RARITY;
        f11871s = new Array<>(new GameValueConfig[]{new GameValueConfig(gameValueType, -50.0d, false, true), new GameValueConfig(gameValueType2, -25.0d, false, true), new GameValueConfig(gameValueType3, -10.0d, false, true)});
        f11872t = new BossWavesConfig(1, 1, 0, new Array());
        f11873u = new Array<>(new GameValueConfig[]{new GameValueConfig(gameValueType, -25.0d, false, true), new GameValueConfig(gameValueType2, -10.0d, false, true)});
        BossType bossType = BossType.BROOT;
        BossType bossType2 = BossType.SNAKE;
        BossType bossType3 = BossType.CONSTRUCTOR;
        BossType bossType4 = BossType.MOBCHAIN;
        BossType bossType5 = BossType.METAPHOR;
        f11874v = new BossWavesConfig(300, 0, 0, new Array(new BossTypeWavePair[]{new BossTypeWavePair(40, bossType), new BossTypeWavePair(90, bossType2), new BossTypeWavePair(150, bossType3), new BossTypeWavePair(220, bossType4), new BossTypeWavePair(300, bossType5)}));
        f11875w = new Array<>(new GameValueConfig[]{new GameValueConfig(gameValueType, 10.0d, false, true), new GameValueConfig(gameValueType3, 10.0d, false, true)});
        f11876x = new BossWavesConfig(50, 0, 10, new Array(new BossTypeWavePair[]{new BossTypeWavePair(10, bossType), new BossTypeWavePair(20, bossType2), new BossTypeWavePair(30, bossType3), new BossTypeWavePair(40, bossType4), new BossTypeWavePair(50, bossType5)}));
        f11877y = new Array<>(new GameValueConfig[]{new GameValueConfig(gameValueType, -25.0d, false, true), new GameValueConfig(gameValueType2, -10.0d, false, true), new GameValueConfig(gameValueType3, -10.0d, false, true)});
        f11878z = new BossWavesConfig[BossType.values().length];
        for (BossType bossType6 : BossType.values) {
            f11878z[bossType6.ordinal()] = new BossWavesConfig(20, 0, 0, new Array(new BossTypeWavePair[]{new BossTypeWavePair(20, bossType6)}));
        }
        Color[] colorArr = new Color[BossType.values.length];
        f11870A = colorArr;
        colorArr[BossType.BROOT.ordinal()] = MaterialColor.ORANGE.P600;
        f11870A[BossType.SNAKE.ordinal()] = MaterialColor.LIGHT_GREEN.P600;
        f11870A[BossType.METAPHOR.ordinal()] = MaterialColor.RED.P600;
        f11870A[BossType.CONSTRUCTOR.ordinal()] = MaterialColor.BLUE_GREY.P500;
        f11870A[BossType.MOBCHAIN.ordinal()] = MaterialColor.DEEP_PURPLE.P400;
    }

    public BossTile() {
        super(TileType.BOSS);
        this.f11879r = BossTileType.NO;
        this.oneBossType = BossType.BROOT;
        this.customEffects = new Array<>(GameValueConfig.class);
        this.customBossWaveConfig = new BossWavesConfig(null);
    }

    @Override // com.prineside.tdi2.Tile
    public void fillInventoryWithInfo(Table table, float f) {
        Label label = new Label(getBossTileTypeName(), Game.f8589i.assetManager.getLabelStyle(24));
        label.setColor(MaterialColor.GREEN.P500);
        label.setWrap(true);
        label.setAlignment(1);
        table.add((Table) label).width(f).row();
    }

    @Override // com.prineside.tdi2.Tile
    public void from(Tile tile) {
        BossTile bossTile = (BossTile) tile;
        this.f11879r = bossTile.f11879r;
        this.oneBossType = bossTile.oneBossType;
        this.customEffects.clear();
        int i = 0;
        int i2 = 0;
        while (true) {
            Array<GameValueConfig> array = bossTile.customEffects;
            if (i2 >= array.size) {
                break;
            }
            this.customEffects.add(array.items[i2].cpy());
            i2++;
        }
        this.customBossWaveConfig.bossWavePairs.clear();
        while (true) {
            BossWavesConfig bossWavesConfig = bossTile.customBossWaveConfig;
            Array<BossTypeWavePair> array2 = bossWavesConfig.bossWavePairs;
            if (i < array2.size) {
                BossWavesConfig bossWavesConfig2 = this.customBossWaveConfig;
                bossWavesConfig2.repeatCount = bossWavesConfig.repeatCount;
                bossWavesConfig2.startDelay = bossWavesConfig.startDelay;
                bossWavesConfig2.cycleLength = bossWavesConfig.cycleLength;
                bossWavesConfig2.bossWavePairs.add(array2.items[i].cpy());
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Tile
    public Group generateUiIcon(float f) {
        Group group = new Group();
        group.setTransform(false);
        group.setSize(f, f);
        BossTileType bossTileType = this.f11879r;
        if (bossTileType == BossTileType.ONE) {
            Image image = new Image(Game.f8589i.tileManager.f10161F.BOSS.f11885r);
            image.setColor(f11870A[this.oneBossType.ordinal()]);
            image.setSize(f, f);
            group.addActor(image);
            Image image2 = new Image(Game.f8589i.tileManager.f10161F.BOSS.f11886s);
            image2.setSize(f, f);
            group.addActor(image2);
        } else if (bossTileType == BossTileType.CUSTOM) {
            Image image3 = new Image(Game.f8589i.tileManager.f10161F.BOSS.f11881d);
            image3.setSize(f, f);
            group.addActor(image3);
        } else if (bossTileType == BossTileType.HARD) {
            Image image4 = new Image(Game.f8589i.tileManager.f10161F.BOSS.f11883p);
            image4.setSize(f, f);
            group.addActor(image4);
        } else if (bossTileType == BossTileType.RARE) {
            Image image5 = new Image(Game.f8589i.tileManager.f10161F.BOSS.f11884q);
            image5.setSize(f, f);
            group.addActor(image5);
        } else if (bossTileType == BossTileType.NO) {
            Image image6 = new Image(Game.f8589i.tileManager.f10161F.BOSS.f11882k);
            image6.setSize(f, f);
            group.addActor(image6);
        }
        return group;
    }

    public String getBossTileTypeName() {
        String bossTileTypeName = Game.f8589i.tileManager.f10161F.BOSS.getBossTileTypeName(this.f11879r);
        if (this.f11879r == BossTileType.ONE) {
            EnemyType bossEnemyType = Game.f8589i.enemyManager.getBossEnemyType(this.oneBossType);
            return bossTileTypeName + " (" + Game.f8589i.enemyManager.getFactory(bossEnemyType).getTitle() + ")";
        }
        return bossTileTypeName;
    }

    public IntMap<BossType> getBossWaveMap() {
        IntMap<BossType> intMap = new IntMap<>();
        BossWavesConfig bossWavesConfig = getBossWavesConfig();
        if (bossWavesConfig.bossWavePairs.size != 0 && bossWavesConfig.cycleLength > 0) {
            int i = 1;
            int i2 = 0;
            while (i < 2000) {
                int i3 = 0;
                while (true) {
                    Array<BossTypeWavePair> array = bossWavesConfig.bossWavePairs;
                    if (i3 >= array.size) {
                        break;
                    }
                    BossTypeWavePair bossTypeWavePair = array.items[i3];
                    intMap.put(bossWavesConfig.startDelay + (bossWavesConfig.cycleLength * i2) + bossTypeWavePair.wave, bossTypeWavePair.bossType);
                    i3++;
                }
                i += bossWavesConfig.cycleLength;
                i2++;
                int i4 = bossWavesConfig.repeatCount;
                if (i4 >= 1 && i2 == i4) {
                    break;
                }
            }
        }
        return intMap;
    }

    public BossWavesConfig getBossWavesConfig() {
        BossTileType bossTileType = this.f11879r;
        if (bossTileType == BossTileType.CUSTOM) {
            return this.customBossWaveConfig;
        }
        if (bossTileType == BossTileType.ONE) {
            return f11878z[this.oneBossType.ordinal()];
        }
        if (bossTileType == BossTileType.HARD) {
            return f11876x;
        }
        if (bossTileType == BossTileType.RARE) {
            return f11874v;
        }
        if (bossTileType == BossTileType.NO) {
            return f11872t;
        }
        throw new IllegalArgumentException("not implemented for " + this.f11879r);
    }

    public Array<GameValueConfig> getGameValues() {
        BossTileType bossTileType = this.f11879r;
        if (bossTileType == BossTileType.CUSTOM) {
            return this.customEffects;
        }
        if (bossTileType == BossTileType.ONE) {
            return f11877y;
        }
        if (bossTileType == BossTileType.HARD) {
            return f11875w;
        }
        if (bossTileType == BossTileType.RARE) {
            return f11873u;
        }
        if (bossTileType == BossTileType.NO) {
            return f11871s;
        }
        throw new IllegalArgumentException("not implemented for " + this.f11879r);
    }

    @Override // com.prineside.tdi2.Tile
    public int getSortingScore(ItemSortingType itemSortingType) {
        if (itemSortingType == ItemSortingType.RARITY) {
            return (getRarity().ordinal() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT) + (10 - this.f11879r.ordinal()) + 150;
        }
        int ordinal = (this.f11879r.ordinal() * 100) + 2000;
        if (this.f11879r == BossTileType.ONE) {
            ordinal += this.oneBossType.ordinal() * 10;
        }
        if (this.f11879r == BossTileType.CUSTOM) {
            return ordinal + (this.customBossWaveConfig.bossWavePairs.size * 10) + (this.customEffects.size * 100);
        }
        return ordinal;
    }

    @Override // com.prineside.tdi2.Tile
    public void drawStatic(SpriteCache spriteCache, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        super.drawStatic(spriteCache, f, f2, f3, f4, drawMode);
        BossTileType bossTileType = this.f11879r;
        if (bossTileType == BossTileType.ONE) {
            spriteCache.setColor(f11870A[this.oneBossType.ordinal()]);
            spriteCache.add(Game.f8589i.tileManager.f10161F.BOSS.f11885r, f, f2, f3, f4);
            spriteCache.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
            spriteCache.add(Game.f8589i.tileManager.f10161F.BOSS.f11886s, f, f2, f3, f4);
        } else if (bossTileType == BossTileType.CUSTOM) {
            spriteCache.add(Game.f8589i.tileManager.f10161F.BOSS.f11881d, f, f2, f3, f4);
        } else if (bossTileType == BossTileType.HARD) {
            spriteCache.add(Game.f8589i.tileManager.f10161F.BOSS.f11883p, f, f2, f3, f4);
        } else if (bossTileType == BossTileType.RARE) {
            spriteCache.add(Game.f8589i.tileManager.f10161F.BOSS.f11884q, f, f2, f3, f4);
        } else if (bossTileType == BossTileType.NO) {
            spriteCache.add(Game.f8589i.tileManager.f10161F.BOSS.f11882k, f, f2, f3, f4);
        }
        spriteCache.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f11879r = (BossTileType) kryo.readObject(input, BossTileType.class);
        this.oneBossType = (BossType) kryo.readObject(input, BossType.class);
        this.customEffects = (Array) kryo.readObject(input, Array.class);
        this.customBossWaveConfig = (BossWavesConfig) kryo.readObject(input, BossWavesConfig.class);
    }

    @Override // com.prineside.tdi2.Tile
    public boolean sameAs(Tile tile) {
        if (!super.sameAs(tile)) {
            return false;
        }
        BossTile bossTile = (BossTile) tile;
        BossTileType bossTileType = bossTile.f11879r;
        BossTileType bossTileType2 = this.f11879r;
        if (bossTileType != bossTileType2) {
            return false;
        }
        if (bossTileType2 == BossTileType.ONE && bossTile.oneBossType != this.oneBossType) {
            return false;
        }
        if (bossTileType2 == BossTileType.CUSTOM) {
            if (bossTile.customEffects.size != this.customEffects.size) {
                return false;
            }
            int i = 0;
            while (true) {
                Array<GameValueConfig> array = bossTile.customEffects;
                if (i < array.size) {
                    if (!array.items[i].sameAs(this.customEffects.items[i])) {
                        return false;
                    }
                    i++;
                } else if (!bossTile.customBossWaveConfig.sameAs(this.customBossWaveConfig)) {
                    return false;
                } else {
                    return true;
                }
            }
        } else {
            return true;
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void toJson(Json json) {
        super.toJson(json);
        json.writeObjectStart("d");
        json.writeValue("btt", this.f11879r.name());
        BossTileType bossTileType = this.f11879r;
        if (bossTileType == BossTileType.ONE) {
            json.writeValue("obt", this.oneBossType.name());
        } else if (bossTileType == BossTileType.CUSTOM) {
            json.writeArrayStart("ce");
            for (int i = 0; i < this.customEffects.size; i++) {
                json.writeObjectStart();
                this.customEffects.items[i].toJson(json);
                json.writeObjectEnd();
            }
            json.writeArrayEnd();
            json.writeObjectStart("cbwc");
            this.customBossWaveConfig.toJson(json);
            json.writeObjectEnd();
        }
        json.writeObjectEnd();
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.f11879r);
        kryo.writeObject(output, this.oneBossType);
        kryo.writeObject(output, this.customEffects);
        kryo.writeObject(output, this.customBossWaveConfig);
    }

    public BossTile(BossTileType bossTileType) {
        super(TileType.BOSS);
        this.f11879r = BossTileType.NO;
        this.oneBossType = BossType.BROOT;
        this.customEffects = new Array<>(GameValueConfig.class);
        this.customBossWaveConfig = new BossWavesConfig(null);
        setBossTileType(bossTileType);
    }
}
