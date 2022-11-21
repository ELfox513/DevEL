package com.prineside.tdi2.tiles;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Animation;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.SelectBox;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemDataType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.PredefinedCoreTileType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.enums.TriggeredActionType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.p036ui.actors.AnimatedImage;
import com.prineside.tdi2.p036ui.actors.ComplexButton;
import com.prineside.tdi2.p036ui.actors.LabelToggleButton;
import com.prineside.tdi2.p036ui.actors.RectButton;
import com.prineside.tdi2.p036ui.actors.TextFieldXPlatform;
import com.prineside.tdi2.p036ui.shared.ItemCreationOverlay;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.TextureRegionConfig;
import java.util.Iterator;
import p168r4.C6226s;
@REGS
/* loaded from: classes2.dex */
public class CoreTile extends Tile {

    /* renamed from: D */
    public static final Color[] f11888D;

    /* renamed from: E */
    public static final Color[] f11889E;
    public static final int FIXED_LEVEL_XP_REQUIREMENT = 1000;
    public static final int[] LEVEL_EXPERIENCE;
    public static final int[] LEVEL_EXPERIENCE_MILESTONES;
    public static final int[] LINK_DIRECTION_BITS;
    public static final int MAX_LEVEL = 256;
    public static final int[] TIER_COLS;
    public static final int[] TIER_ROWS;

    /* renamed from: A */
    public float f11890A;

    /* renamed from: B */
    public float f11891B;

    /* renamed from: C */
    public IntIntMap f11892C;
    public float doubleSpeedTimeLeft;
    public PredefinedCoreTileType predefinedType;

    /* renamed from: r */
    public String f11893r;

    /* renamed from: s */
    public String f11894s;

    /* renamed from: t */
    public Tier f11895t;
    @NAGS
    public float timeDrawn;

    /* renamed from: u */
    public float f11896u;
    @NAGS
    public ParticleEffectPool.PooledEffect upgradeAvailableParticleEffect;

    /* renamed from: v */
    public boolean f11897v;

    /* renamed from: w */
    public Array<Upgrade> f11898w;
    @NAGS

    /* renamed from: x */
    public int f11899x;

    /* renamed from: y */
    public int f11900y;

    /* renamed from: z */
    public float f11901z;

    /* loaded from: classes2.dex */
    public static class CoreTileFactory extends Tile.Factory.AbstractFactory<CoreTile> {

        /* renamed from: d */
        public TextureRegion[] f11944d;

        /* renamed from: k */
        public CoreTile[] f11945k;

        /* renamed from: p */
        public Animation<ResourcePack.AtlasTextureRegion> f11946p;

        public float getExperienceGeneration(CoreTile coreTile, GameValueProvider gameValueProvider) {
            return coreTile.getExperienceGeneration() * ((float) gameValueProvider.getPercentValueAsMultiplier(GameValueType.CORES_LEVEL_UP_SPEED));
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public int getProbabilityForPrize(float f, ProgressManager.InventoryStatistics inventoryStatistics) {
            if (f < 0.4f) {
                return 0;
            }
            if (f < 0.6f) {
                return 10;
            }
            return f < 0.8f ? 2 : 0;
        }

        public CoreTileFactory() {
            super(TileType.CORE);
            this.f11944d = new TextureRegion[4];
            this.f11945k = new CoreTile[PredefinedCoreTileType.values.length];
            Iterator<JsonValue> iterator2 = new JsonReader().parse(Gdx.files.internal("res/core-tiles.json")).iterator2();
            while (iterator2.hasNext()) {
                JsonValue next = iterator2.next();
                try {
                    this.f11945k[PredefinedCoreTileType.valueOf(next.name).ordinal()] = fromJson(next);
                } catch (Exception e) {
                    Logger.error("CoreTile", "failed to load predefined core tile '" + next.name + "'", e);
                }
            }
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public CoreTile create() {
            return new CoreTile();
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public CoreTile createRandom(float f, RandomXS128 randomXS128) {
            CoreTile create = create();
            if (f < 0.6f) {
                create.f11895t = Tier.REGULAR;
            } else if (f < 0.8f) {
                create.f11895t = Tier.RARE;
            } else {
                create.f11895t = Tier.LEGENDARY;
            }
            int i = C235411.f11909b[create.f11895t.ordinal()];
            if (i == 1) {
                int nextInt = randomXS128.nextInt(2);
                if (nextInt == 0) {
                    create.predefinedType = PredefinedCoreTileType.ALPHA;
                } else if (nextInt == 1) {
                    create.predefinedType = PredefinedCoreTileType.BETA;
                }
            } else if (i == 2) {
                int nextInt2 = randomXS128.nextInt(2);
                if (nextInt2 == 0) {
                    create.predefinedType = PredefinedCoreTileType.DELTA;
                } else if (nextInt2 == 1) {
                    create.predefinedType = PredefinedCoreTileType.THETA;
                }
            } else if (i == 3) {
                int nextInt3 = randomXS128.nextInt(2);
                if (nextInt3 == 0) {
                    create.predefinedType = PredefinedCoreTileType.ZETA;
                } else if (nextInt3 == 1) {
                    create.predefinedType = PredefinedCoreTileType.XI;
                }
            }
            return create;
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public CoreTile fromJson(JsonValue jsonValue) {
            CoreTile coreTile = (CoreTile) super.fromJson(jsonValue);
            JsonValue jsonValue2 = jsonValue.get("d");
            if (jsonValue2.has("pt")) {
                coreTile.predefinedType = PredefinedCoreTileType.valueOf(jsonValue2.getString("pt"));
            }
            coreTile.f11893r = jsonValue2.getString("n", "");
            coreTile.f11894s = jsonValue2.getString("icon", null);
            coreTile.f11896u = jsonValue2.getFloat("eg", 1.0f);
            coreTile.f11897v = jsonValue2.getBoolean("flx", false);
            coreTile.f11895t = Tier.valueOf(jsonValue2.getString("t"));
            JsonValue jsonValue3 = jsonValue2.get("u");
            if (jsonValue3 != null) {
                Iterator<JsonValue> iterator2 = jsonValue3.iterator2();
                while (iterator2.hasNext()) {
                    JsonValue next = iterator2.next();
                    if (next.isNull()) {
                        coreTile.f11898w.add(null);
                    } else {
                        coreTile.f11898w.add(Upgrade.fromJson(next));
                    }
                }
            }
            return coreTile;
        }

        public Color getTierColor(Tier tier) {
            int i = C235411.f11909b[tier.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return MaterialColor.CYAN.P500;
                }
                return MaterialColor.ORANGE.P500;
            }
            return MaterialColor.PURPLE.P400;
        }

        public CharSequence getTierDescription(Tier tier) {
            int i = C235411.f11909b[tier.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return Game.f8589i.progressManager.getRarityName(RarityType.LEGENDARY);
                }
                return Game.f8589i.progressManager.getRarityName(RarityType.EPIC);
            }
            return Game.f8589i.progressManager.getRarityName(RarityType.VERY_RARE);
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory
        public void setupAssets() {
            this.f11944d[0] = Game.f8589i.assetManager.getTextureRegion("tile-type-core-left");
            this.f11944d[1] = Game.f8589i.assetManager.getTextureRegion("tile-type-core-right");
            this.f11944d[2] = Game.f8589i.assetManager.getTextureRegion("tile-type-core-top");
            this.f11944d[3] = Game.f8589i.assetManager.getTextureRegion("tile-type-core-bottom");
            this.f11946p = new Animation<>(0.033f, Game.f8589i.assetManager.getTextureRegions("3d-sphere"), Animation.PlayMode.LOOP);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public enum LinkDirection {
        TOP_LEFT,
        TOP,
        TOP_RIGHT,
        LEFT,
        RIGHT,
        BOTTOM_LEFT,
        BOTTOM,
        BOTTOM_RIGHT;
        
        public static final LinkDirection[] values = values();

        public static int getDeltaCol(LinkDirection linkDirection) {
            if (linkDirection != LEFT && linkDirection != TOP_LEFT && linkDirection != BOTTOM_LEFT) {
                if (linkDirection != RIGHT && linkDirection != TOP_RIGHT && linkDirection != BOTTOM_RIGHT) {
                    return 0;
                }
                return 1;
            }
            return -1;
        }

        public static int getDeltaRow(LinkDirection linkDirection) {
            if (linkDirection != BOTTOM && linkDirection != BOTTOM_LEFT && linkDirection != BOTTOM_RIGHT) {
                if (linkDirection != TOP && linkDirection != TOP_LEFT && linkDirection != TOP_RIGHT) {
                    return 0;
                }
                return -1;
            }
            return 1;
        }

        public static LinkDirection getOpposite(LinkDirection linkDirection) {
            switch (C235411.f11908a[linkDirection.ordinal()]) {
                case 1:
                    return BOTTOM;
                case 2:
                    return RIGHT;
                case 3:
                    return LEFT;
                case 4:
                    return TOP;
                case 5:
                    return BOTTOM_RIGHT;
                case 6:
                    return BOTTOM_LEFT;
                case 7:
                    return TOP_RIGHT;
                case 8:
                    return TOP_LEFT;
                default:
                    return null;
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public enum Tier {
        REGULAR,
        RARE,
        LEGENDARY;
        
        public static final Tier[] values = values();
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class Upgrade implements KryoSerializable {

        /* renamed from: a */
        public GameValueType f11949a;

        /* renamed from: b */
        public TriggeredActionType f11950b;
        public boolean costsCoins;
        public boolean isAction;
        public int links;
        public boolean starting;
        public Array<UpgradeLevel> upgradeLevels = new Array<>(true, 1, UpgradeLevel.class);

        @REGS
        /* loaded from: classes2.dex */
        public static class UpgradeLevel implements KryoSerializable {
            public float delta;
            public int price;

            public UpgradeLevel() {
            }

            public static UpgradeLevel fromJson(JsonValue jsonValue) {
                UpgradeLevel upgradeLevel = new UpgradeLevel();
                upgradeLevel.delta = jsonValue.getFloat("d");
                upgradeLevel.price = jsonValue.getInt("p");
                return upgradeLevel;
            }

            public UpgradeLevel cpy() {
                UpgradeLevel upgradeLevel = new UpgradeLevel();
                upgradeLevel.delta = this.delta;
                upgradeLevel.price = this.price;
                return upgradeLevel;
            }

            public void toJson(Json json) {
                json.writeValue("d", Float.valueOf(this.delta));
                json.writeValue("p", Integer.valueOf(this.price));
            }

            @Override // com.esotericsoftware.kryo.KryoSerializable
            public void write(Kryo kryo, Output output) {
                output.writeFloat(this.delta);
                output.writeVarInt(this.price, true);
            }

            public UpgradeLevel(float f, int i) {
                this.delta = f;
                this.price = i;
            }

            @Override // com.esotericsoftware.kryo.KryoSerializable
            public void read(Kryo kryo, Input input) {
                this.delta = input.readFloat();
                this.price = input.readVarInt(true);
            }
        }

        public Upgrade() {
        }

        public boolean hasLink(LinkDirection linkDirection) {
            return (CoreTile.LINK_DIRECTION_BITS[linkDirection.ordinal()] & this.links) != 0;
        }

        public static Upgrade fromJson(JsonValue jsonValue) {
            TriggeredActionType triggeredActionType;
            GameValueType gameValueType;
            boolean z = jsonValue.getBoolean(C6226s.f31189J);
            boolean z2 = jsonValue.getBoolean("ia", false);
            GameValueType gameValueType2 = null;
            if (z2) {
                try {
                    triggeredActionType = TriggeredActionType.valueOf(jsonValue.getString("a", TriggeredActionType.GIVE_COINS.name()));
                } catch (Exception unused) {
                    TriggeredActionType triggeredActionType2 = TriggeredActionType.GIVE_COINS;
                    Logger.error("CoreTile", "failed to load action type from json (" + jsonValue.getString("a") + ", fallback to GIVE_COINS");
                    triggeredActionType = triggeredActionType2;
                }
            } else {
                try {
                    gameValueType = GameValueType.valueOf(jsonValue.getString("gv", GameValueType.EMOJI_ENEMIES.name()));
                } catch (Exception unused2) {
                    gameValueType = GameValueType.EMOJI_ENEMIES;
                    Logger.error("CoreTile", "failed to load GV type from json (" + jsonValue.getString("gv") + ", fallback to EMOJI_ENEMIES");
                }
                triggeredActionType = null;
                gameValueType2 = gameValueType;
            }
            int i = jsonValue.getInt("l");
            boolean z3 = jsonValue.getBoolean("cc", false);
            Array array = new Array(UpgradeLevel.class);
            if (jsonValue.get("d") != null && jsonValue.get("p") != null) {
                float f = jsonValue.getFloat("d");
                int i2 = jsonValue.getInt("p");
                UpgradeLevel upgradeLevel = new UpgradeLevel();
                upgradeLevel.delta = f;
                upgradeLevel.price = i2;
                array.add(upgradeLevel);
            } else {
                Iterator<JsonValue> iterator2 = jsonValue.get("ul").iterator2();
                while (iterator2.hasNext()) {
                    array.add(UpgradeLevel.fromJson(iterator2.next()));
                }
            }
            return new Upgrade(z, z2, gameValueType2, triggeredActionType, array, i, z3);
        }

        public Upgrade cloneUpgrade() {
            Array array = new Array(UpgradeLevel.class);
            int i = 0;
            while (true) {
                Array<UpgradeLevel> array2 = this.upgradeLevels;
                if (i < array2.size) {
                    array.add(array2.items[i].cpy());
                    i++;
                } else {
                    return new Upgrade(this.starting, this.isAction, this.f11949a, this.f11950b, array, this.links, this.costsCoins);
                }
            }
        }

        public int generateHash() {
            int i = ((((this.starting ? 1 : 0) + 31) * 31) + (this.isAction ? 1 : 0)) * 31;
            Enum r2 = this.f11949a;
            if (r2 == null) {
                r2 = this.f11950b;
            }
            int ordinal = ((((i + r2.ordinal()) * 31) + this.links) * 31) + (this.costsCoins ? 1 : 0);
            int i2 = 0;
            while (true) {
                Array<UpgradeLevel> array = this.upgradeLevels;
                if (i2 < array.size) {
                    UpgradeLevel upgradeLevel = array.items[i2];
                    ordinal = (((ordinal * 31) + upgradeLevel.price) * 31) + ((int) (upgradeLevel.delta * 1000.0f));
                    i2++;
                } else {
                    return ordinal;
                }
            }
        }

        public TriggeredActionType getActionType() {
            if (this.isAction) {
                TriggeredActionType triggeredActionType = this.f11950b;
                if (triggeredActionType == null) {
                    return TriggeredActionType.DUMMY;
                }
                return triggeredActionType;
            }
            throw new IllegalStateException("upgrade is a GameValue");
        }

        public GameValueType getGameValueType() {
            if (!this.isAction) {
                GameValueType gameValueType = this.f11949a;
                if (gameValueType == null) {
                    return GameValueType.DUMMY;
                }
                return gameValueType;
            }
            throw new IllegalStateException("upgrade is an action");
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0069, code lost:
            return false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean sameAs(com.prineside.tdi2.tiles.CoreTile.Upgrade r7) {
            /*
                r6 = this;
                boolean r0 = r7.starting
                boolean r1 = r6.starting
                r2 = 0
                if (r0 == r1) goto L8
                return r2
            L8:
                boolean r0 = r7.isAction
                boolean r1 = r6.isAction
                if (r0 == r1) goto Lf
                return r2
            Lf:
                if (r1 == 0) goto L18
                com.prineside.tdi2.enums.TriggeredActionType r0 = r7.f11950b
                com.prineside.tdi2.enums.TriggeredActionType r1 = r6.f11950b
                if (r0 == r1) goto L1f
                return r2
            L18:
                com.prineside.tdi2.enums.GameValueType r0 = r7.f11949a
                com.prineside.tdi2.enums.GameValueType r1 = r6.f11949a
                if (r0 == r1) goto L1f
                return r2
            L1f:
                int r0 = r7.links
                int r1 = r6.links
                if (r0 == r1) goto L26
                return r2
            L26:
                boolean r0 = r7.costsCoins
                boolean r1 = r6.costsCoins
                if (r0 == r1) goto L2d
                return r2
            L2d:
                com.badlogic.gdx.utils.Array<com.prineside.tdi2.tiles.CoreTile$Upgrade$UpgradeLevel> r0 = r7.upgradeLevels
                int r0 = r0.size
                com.badlogic.gdx.utils.Array<com.prineside.tdi2.tiles.CoreTile$Upgrade$UpgradeLevel> r1 = r6.upgradeLevels
                int r1 = r1.size
                if (r0 == r1) goto L38
                return r2
            L38:
                r0 = 0
            L39:
                com.badlogic.gdx.utils.Array<com.prineside.tdi2.tiles.CoreTile$Upgrade$UpgradeLevel> r1 = r6.upgradeLevels
                int r3 = r1.size
                if (r0 >= r3) goto L6a
                com.badlogic.gdx.utils.Array<com.prineside.tdi2.tiles.CoreTile$Upgrade$UpgradeLevel> r3 = r7.upgradeLevels
                T[] r3 = r3.items
                r4 = r3
                com.prineside.tdi2.tiles.CoreTile$Upgrade$UpgradeLevel[] r4 = (com.prineside.tdi2.tiles.CoreTile.Upgrade.UpgradeLevel[]) r4
                r4 = r4[r0]
                int r4 = r4.price
                T[] r1 = r1.items
                r5 = r1
                com.prineside.tdi2.tiles.CoreTile$Upgrade$UpgradeLevel[] r5 = (com.prineside.tdi2.tiles.CoreTile.Upgrade.UpgradeLevel[]) r5
                r5 = r5[r0]
                int r5 = r5.price
                if (r4 != r5) goto L69
                com.prineside.tdi2.tiles.CoreTile$Upgrade$UpgradeLevel[] r3 = (com.prineside.tdi2.tiles.CoreTile.Upgrade.UpgradeLevel[]) r3
                r3 = r3[r0]
                float r3 = r3.delta
                com.prineside.tdi2.tiles.CoreTile$Upgrade$UpgradeLevel[] r1 = (com.prineside.tdi2.tiles.CoreTile.Upgrade.UpgradeLevel[]) r1
                r1 = r1[r0]
                float r1 = r1.delta
                int r1 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
                if (r1 == 0) goto L66
                goto L69
            L66:
                int r0 = r0 + 1
                goto L39
            L69:
                return r2
            L6a:
                r7 = 1
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.tiles.CoreTile.Upgrade.sameAs(com.prineside.tdi2.tiles.CoreTile$Upgrade):boolean");
        }

        public void setActionType(TriggeredActionType triggeredActionType) {
            if (triggeredActionType != null) {
                if (this.isAction) {
                    this.f11950b = triggeredActionType;
                    return;
                }
                throw new IllegalStateException("upgrade is a GameValue");
            }
            throw new IllegalStateException("type is null");
        }

        public void setGameValueType(GameValueType gameValueType) {
            if (gameValueType != null) {
                if (!this.isAction) {
                    this.f11949a = gameValueType;
                    return;
                }
                throw new IllegalStateException("upgrade is an action");
            }
            throw new IllegalStateException("type is null");
        }

        public void setHasLink(LinkDirection linkDirection, boolean z) {
            if (z) {
                this.links = CoreTile.LINK_DIRECTION_BITS[linkDirection.ordinal()] | this.links;
                return;
            }
            int i = CoreTile.LINK_DIRECTION_BITS[linkDirection.ordinal()];
            this.links = i ^ (this.links | i);
        }

        public void toJson(Json json) {
            json.writeValue(C6226s.f31189J, Boolean.valueOf(this.starting));
            json.writeValue("ia", Boolean.valueOf(this.isAction));
            GameValueType gameValueType = this.f11949a;
            if (gameValueType != null) {
                json.writeValue("gv", gameValueType.name());
            }
            TriggeredActionType triggeredActionType = this.f11950b;
            if (triggeredActionType != null) {
                json.writeValue("a", triggeredActionType.name());
            }
            json.writeValue("l", Integer.valueOf(this.links));
            json.writeValue("cc", Boolean.valueOf(this.costsCoins));
            json.writeArrayStart("ul");
            for (int i = 0; i < this.upgradeLevels.size; i++) {
                json.writeObjectStart();
                this.upgradeLevels.items[i].toJson(json);
                json.writeObjectEnd();
            }
            json.writeArrayEnd();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeBoolean(this.starting);
            output.writeBoolean(this.isAction);
            kryo.writeObjectOrNull(output, this.f11949a, GameValueType.class);
            kryo.writeObjectOrNull(output, this.f11950b, TriggeredActionType.class);
            output.writeBoolean(this.costsCoins);
            output.writeInt(this.links);
            kryo.writeObject(output, this.upgradeLevels);
        }

        public Upgrade(boolean z, boolean z2, GameValueType gameValueType, TriggeredActionType triggeredActionType, Array<UpgradeLevel> array, int i, boolean z3) {
            this.starting = z;
            this.isAction = z2;
            this.f11950b = triggeredActionType;
            this.f11949a = gameValueType;
            this.links = i;
            this.costsCoins = z3;
            if (array == null) {
                array = new Array<>(UpgradeLevel.class);
                array.add(new UpgradeLevel(5.0f, 1));
            }
            this.upgradeLevels.addAll(array);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.starting = input.readBoolean();
            this.isAction = input.readBoolean();
            this.f11949a = (GameValueType) kryo.readObjectOrNull(input, GameValueType.class);
            this.f11950b = (TriggeredActionType) kryo.readObjectOrNull(input, TriggeredActionType.class);
            this.costsCoins = input.readBoolean();
            this.links = input.readInt();
            this.upgradeLevels = (Array) kryo.readObject(input, Array.class);
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void drawBatch(SpriteBatch spriteBatch, float f, int i, int i2) {
        MapRenderingSystem mapRenderingSystem;
        ResourcePack.AtlasTextureRegion textureRegion;
        if (f >= 0.0f) {
            this.timeDrawn += f;
            spriteBatch.setColor(getSphereColor());
            if (this.timeDrawn >= 0.0f) {
                float f2 = i;
                float f3 = i2;
                spriteBatch.draw((TextureRegion) Game.f8589i.tileManager.f10161F.CORE.f11946p.getKeyFrame(this.timeDrawn, true), f2 + 32.0f, f3 + 32.0f, 64.0f, 64.0f);
                String icon = getIcon();
                if (icon != null && (textureRegion = Game.f8589i.assetManager.getTextureRegion(icon, false)) != null) {
                    spriteBatch.setColor(1.0f, 1.0f, 1.0f, 0.65f);
                    spriteBatch.draw(textureRegion, f2 + 42.24f, f3 + 42.24f, 43.52f, 43.52f);
                }
                GameSystemProvider gameSystemProvider = this.f8844S;
                if (gameSystemProvider != null && (mapRenderingSystem = gameSystemProvider._mapRendering) != null && mapRenderingSystem.getDrawMode() == MapRenderingSystem.DrawMode.DETAILED) {
                    int freeUpgradePoints = getFreeUpgradePoints();
                    if (freeUpgradePoints > 7) {
                        freeUpgradePoints = 7;
                    }
                    for (int i3 = 0; i3 < freeUpgradePoints; i3++) {
                        spriteBatch.setColor(1.0f, 1.0f, 1.0f, 0.56f);
                        spriteBatch.draw(Game.f8589i.assetManager.f9555TR.particlePentagon, f2 + 12.0f, 12.0f + f3 + (i3 * 128 * 0.125f), 12.0f, 12.0f);
                    }
                }
                spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
                return;
            }
            throw new IllegalStateException("timeDrawn is " + this.timeDrawn);
        }
        throw new IllegalStateException("deltaTime is " + f);
    }

    public float getCurrentLevelExperience() {
        return this.f11891B;
    }

    @Override // com.prineside.tdi2.Tile
    public void getData(IntArray intArray) {
        if (this.predefinedType != null) {
            intArray.add(ItemDataType.TILE_PREDEFINED_CORE_TYPE.ordinal(), this.predefinedType.ordinal());
        }
    }

    @Override // com.prineside.tdi2.Tile
    public CharSequence getDescription() {
        return Game.f8589i.tileManager.f10161F.CORE.getTierDescription(getTier());
    }

    public float getExperience() {
        return this.f11901z;
    }

    @Override // com.prineside.tdi2.Tile
    public ItemSubcategoryType getInventorySubcategory() {
        return ItemSubcategoryType.ME_SPECIAL;
    }

    public int getLevel() {
        return this.f11900y;
    }

    public float getNextLevelExperience() {
        return this.f11890A;
    }

    @Override // com.prineside.tdi2.Tile
    public double getPrestigeScore() {
        int i = C235411.f11910c[getRarity().ordinal()];
        if (i != 1) {
            if (i != 2) {
                return i != 3 ? 0.0d : 7.5d;
            }
            return 0.6d;
        }
        return 0.05d;
    }

    @Override // com.prineside.tdi2.Tile
    public CharSequence getTitle() {
        return getName();
    }

    public int getUpgradeCols() {
        return TIER_COLS[getTier().ordinal()];
    }

    public int getUpgradeInstallLevel(int i) {
        return this.f11892C.get(i, 0);
    }

    public int getUpgradeRows() {
        return TIER_ROWS[getTier().ordinal()];
    }

    @Override // com.prineside.tdi2.Tile
    public boolean isRoadType() {
        return false;
    }

    public boolean isXpLevelRequirementFixed() {
        return this.f11897v;
    }

    /* renamed from: com.prineside.tdi2.tiles.CoreTile$11 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C235411 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f11908a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f11909b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f11910c;

        static {
            int[] iArr = new int[RarityType.values().length];
            f11910c = iArr;
            try {
                iArr[RarityType.VERY_RARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11910c[RarityType.EPIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11910c[RarityType.LEGENDARY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Tier.values().length];
            f11909b = iArr2;
            try {
                iArr2[Tier.REGULAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11909b[Tier.RARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f11909b[Tier.LEGENDARY.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[LinkDirection.values().length];
            f11908a = iArr3;
            try {
                iArr3[LinkDirection.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f11908a[LinkDirection.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f11908a[LinkDirection.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f11908a[LinkDirection.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f11908a[LinkDirection.TOP_LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f11908a[LinkDirection.TOP_RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f11908a[LinkDirection.BOTTOM_LEFT.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f11908a[LinkDirection.BOTTOM_RIGHT.ordinal()] = 8;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    static {
        int[] iArr = new int[257];
        LEVEL_EXPERIENCE = iArr;
        iArr[0] = 0;
        iArr[1] = 0;
        for (int i = 2; i < 257; i++) {
            int i2 = i - 2;
            LEVEL_EXPERIENCE[i] = (i2 * 10) + ((i2 / 10) * 10) + 180;
        }
        LEVEL_EXPERIENCE_MILESTONES = new int[257];
        int i3 = 0;
        for (int i4 = 0; i4 <= 256; i4++) {
            i3 += LEVEL_EXPERIENCE[i4];
            LEVEL_EXPERIENCE_MILESTONES[i4] = i3;
        }
        f11888D = new Color[]{MaterialColor.RED.P500, MaterialColor.PINK.P500, MaterialColor.PURPLE.P400, MaterialColor.DEEP_PURPLE.P300, MaterialColor.BLUE.P500, MaterialColor.CYAN.P500, MaterialColor.GREEN.P500, MaterialColor.LIME.P500, MaterialColor.YELLOW.P500, MaterialColor.ORANGE.P500};
        TIER_COLS = new int[]{3, 4, 4};
        TIER_ROWS = new int[]{4, 4, 5};
        LINK_DIRECTION_BITS = new int[]{1, 2, 4, 8, 16, 32, 64, 128};
        f11889E = new Color[4];
    }

    public CoreTile() {
        super(TileType.CORE);
        this.predefinedType = null;
        this.f11893r = "";
        this.f11895t = Tier.REGULAR;
        this.f11896u = 1.0f;
        this.f11897v = false;
        this.f11898w = new Array<>(Upgrade.class);
        this.f11899x = -1;
        this.timeDrawn = 0.0f;
        this.doubleSpeedTimeLeft = 0.0f;
        this.f11900y = 1;
        this.f11892C = new IntIntMap();
    }

    public static int getUpgradeIdx(Tier tier, int i, int i2) {
        int i3 = TIER_COLS[tier.ordinal()];
        int i4 = TIER_ROWS[tier.ordinal()];
        if (i >= 0 && i < i3) {
            if (i2 >= 0 && i2 < i4) {
                return (i2 * i3) + i;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("core tier has max ");
            sb.append(i4 - 1);
            sb.append(" row idx, ");
            sb.append(i2);
            sb.append(" given");
            throw new IllegalArgumentException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("core tier has max ");
        sb2.append(i3 - 1);
        sb2.append(" col idx, ");
        sb2.append(i);
        sb2.append(" given");
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public /* synthetic */ void m20837v(ItemCreationOverlay itemCreationOverlay, String str) {
        try {
            if (str.equals("")) {
                str = null;
            }
            setIcon(str);
            itemCreationOverlay.updateItemIcon();
        } catch (Exception unused) {
            Logger.error("CoreTile", "bad value: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public /* synthetic */ void m20834y(ItemCreationOverlay itemCreationOverlay) {
        setUpgrade(itemCreationOverlay.customIntA, itemCreationOverlay.customIntB, new Upgrade(false, false, GameValueType.COINS_GENERATION, null, null, 0, false));
        itemCreationOverlay.updateForm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public /* synthetic */ void m20833z(ItemCreationOverlay itemCreationOverlay) {
        setUpgrade(itemCreationOverlay.customIntA, itemCreationOverlay.customIntB, null);
        itemCreationOverlay.updateForm();
    }

    @Override // com.prineside.tdi2.Tile
    public void addSellItems(Array<ItemStack> array) {
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, ((getTier().ordinal() * 2) + 2) * 500));
        int i = C235411.f11909b[getTier().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    array.add(new ItemStack(Item.C1543D.RESOURCE_MATRIX, HttpStatus.SC_OK));
                    array.add(new ItemStack(Item.C1543D.RESOURCE_TENSOR, 100));
                    array.add(new ItemStack(Item.C1543D.RESOURCE_INFIAR, 50));
                    return;
                }
                return;
            }
            array.add(new ItemStack(Item.C1543D.RESOURCE_VECTOR, HttpStatus.SC_OK));
            array.add(new ItemStack(Item.C1543D.RESOURCE_MATRIX, 100));
            array.add(new ItemStack(Item.C1543D.RESOURCE_TENSOR, 50));
            return;
        }
        array.add(new ItemStack(Item.C1543D.RESOURCE_SCALAR, HttpStatus.SC_OK));
        array.add(new ItemStack(Item.C1543D.RESOURCE_VECTOR, 100));
    }

    @Override // com.prineside.tdi2.Tile
    public void fillItemCreationForm(final ItemCreationOverlay itemCreationOverlay) {
        String icon;
        LinkDirection[] linkDirectionArr;
        String str;
        String str2;
        int i;
        int i2;
        String str3;
        String str4;
        itemCreationOverlay.label("Predefined type");
        final SelectBox selectBox = new SelectBox(itemCreationOverlay.selectBoxStyle);
        Array array = new Array();
        String str5 = "None";
        array.add("None");
        for (PredefinedCoreTileType predefinedCoreTileType : PredefinedCoreTileType.values) {
            array.add(predefinedCoreTileType.name());
        }
        selectBox.setItems(array);
        PredefinedCoreTileType predefinedCoreTileType2 = this.predefinedType;
        if (predefinedCoreTileType2 != null) {
            str5 = predefinedCoreTileType2.name();
        }
        selectBox.setSelected(str5);
        selectBox.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.CoreTile.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                if (((String) selectBox.getSelected()).equals("None")) {
                    CoreTile.this.predefinedType = null;
                } else {
                    CoreTile.this.predefinedType = PredefinedCoreTileType.valueOf((String) selectBox.getSelected());
                }
                itemCreationOverlay.updateForm();
            }
        });
        itemCreationOverlay.selectBox(selectBox);
        if (this.predefinedType == null) {
            itemCreationOverlay.label("Tier");
            final SelectBox selectBox2 = new SelectBox(itemCreationOverlay.selectBoxStyle);
            Array array2 = new Array();
            for (Tier tier : Tier.values) {
                array2.add(tier.name());
            }
            selectBox2.setItems(array2);
            selectBox2.setSelected(getTier().name());
            selectBox2.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.CoreTile.2
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    CoreTile.this.setTier(Tier.valueOf((String) selectBox2.getSelected()));
                    itemCreationOverlay.updateForm();
                }
            });
            itemCreationOverlay.selectBox(selectBox2);
            itemCreationOverlay.label("Name");
            itemCreationOverlay.textField(String.valueOf(getName()), new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.a
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public final void retrieved(Object obj) {
                    CoreTile.this.m20838u(itemCreationOverlay, (String) obj);
                }
            });
            itemCreationOverlay.label("Icon");
            String str6 = "";
            if (getIcon() == null) {
                icon = "";
            } else {
                icon = getIcon();
            }
            itemCreationOverlay.textField(icon, new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.b
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public final void retrieved(Object obj) {
                    CoreTile.this.m20837v(itemCreationOverlay, (String) obj);
                }
            });
            itemCreationOverlay.label("XP generation");
            itemCreationOverlay.textField(String.valueOf(getExperienceGeneration()), new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.c
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public final void retrieved(Object obj) {
                    CoreTile.this.m20836w(itemCreationOverlay, (String) obj);
                }
            });
            itemCreationOverlay.toggle("Fixed XP levels (1000 XP)", isXpLevelRequirementFixed(), new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.d
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public final void retrieved(Object obj) {
                    CoreTile.this.m20835x(itemCreationOverlay, (Boolean) obj);
                }
            });
            itemCreationOverlay.label("Upgrades");
            Table table = new Table();
            itemCreationOverlay.form.add(table).top().left().pad(10.0f).top().left().row();
            Group group = new Group();
            group.setTransform(false);
            float f = 64.0f;
            int upgradeRows = getUpgradeRows();
            final int i3 = 0;
            while (true) {
                String str7 = "blank";
                float f2 = 32.0f;
                if (i3 >= upgradeRows) {
                    break;
                }
                int upgradeCols = getUpgradeCols();
                final int i4 = 0;
                while (i4 < upgradeCols) {
                    Upgrade upgrade = getUpgrade(i4, i3);
                    float f3 = i4;
                    float f4 = (f3 * f) + (f3 * f2);
                    float upgradeRows2 = ((getUpgradeRows() - 1) * 96.0f) - (i3 * 96.0f);
                    if (itemCreationOverlay.customIntA == i4 && itemCreationOverlay.customIntB == i3) {
                        Image image = new Image(Game.f8589i.assetManager.getDrawable(str7));
                        image.setSize(68.0f, 68.0f);
                        i = upgradeRows;
                        i2 = upgradeCols;
                        image.setPosition(f4 - 2.0f, upgradeRows2 - 2.0f);
                        group.addActor(image);
                    } else {
                        i = upgradeRows;
                        i2 = upgradeCols;
                    }
                    Image image2 = new Image(Game.f8589i.assetManager.getDrawable(str7));
                    image2.setSize(64.0f, 64.0f);
                    image2.setPosition(f4, upgradeRows2);
                    image2.setTouchable(Touchable.enabled);
                    image2.addListener(new ClickListener() { // from class: com.prineside.tdi2.tiles.CoreTile.3
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                        public void clicked(InputEvent inputEvent, float f5, float f6) {
                            ItemCreationOverlay itemCreationOverlay2 = itemCreationOverlay;
                            itemCreationOverlay2.customIntA = i4;
                            itemCreationOverlay2.customIntB = i3;
                            itemCreationOverlay2.updateForm();
                            Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
                        }
                    });
                    group.addActor(image2);
                    if (upgrade == null) {
                        image2.setColor(0.0f, 0.0f, 0.0f, 0.28f);
                        str3 = str6;
                        str4 = str7;
                    } else {
                        if (upgrade.starting) {
                            image2.setColor(MaterialColor.LIGHT_GREEN.P800);
                        } else {
                            image2.setColor(MaterialColor.LIGHT_BLUE.P800);
                        }
                        float f5 = 51.2f;
                        if (upgrade.isAction) {
                            str4 = str7;
                            str3 = str6;
                            Group generateIcon = Game.f8589i.triggeredActionManager.generateIcon(upgrade.getActionType(), 51.2f, new Color(1.0f, 1.0f, 1.0f, 0.78f));
                            generateIcon.setPosition(f4 + 6.4f, 6.4f + upgradeRows2);
                            generateIcon.setTouchable(Touchable.disabled);
                            group.addActor(generateIcon);
                        } else {
                            str3 = str6;
                            str4 = str7;
                            Array<TextureRegionConfig> icon2 = Game.f8589i.gameValueManager.getStockValueConfig(upgrade.getGameValueType()).getIcon();
                            int i5 = 0;
                            while (i5 < icon2.size) {
                                Array<TextureRegionConfig> array3 = icon2;
                                Image createImage = icon2.items[i5].createImage(f4 + 6.4f, upgradeRows2 + 6.4f, f5);
                                createImage.setTouchable(Touchable.disabled);
                                createImage.setColor(createImage.getColor().mul(1.0f, 1.0f, 1.0f, 0.78f));
                                group.addActor(createImage);
                                i5++;
                                icon2 = array3;
                                f5 = 51.2f;
                            }
                        }
                        String str8 = "L" + upgrade.upgradeLevels.size;
                        if (upgrade.costsCoins) {
                            str8 = str8 + " <@icon-coin>";
                        }
                        String charSequence = Game.f8589i.assetManager.replaceRegionAliasesWithChars(str8).toString();
                        Label label = new Label(charSequence, Game.f8589i.assetManager.getLabelStyle(21));
                        label.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                        float f6 = 3.0f + f4;
                        label.setPosition(f6 + 2.0f, upgradeRows2 - 2.0f);
                        Touchable touchable = Touchable.disabled;
                        label.setTouchable(touchable);
                        group.addActor(label);
                        Label label2 = new Label(charSequence, Game.f8589i.assetManager.getLabelStyle(21));
                        label2.setPosition(f6, upgradeRows2);
                        label2.setTouchable(touchable);
                        group.addActor(label2);
                        if (upgrade.hasLink(LinkDirection.LEFT)) {
                            Image image3 = new Image(Game.f8589i.assetManager.getDrawable("tiny-arrow-left"));
                            image3.setSize(32.0f, 32.0f);
                            image3.setPosition(f4 - 32.0f, (upgradeRows2 + 32.0f) - 16.0f);
                            group.addActor(image3);
                        }
                        if (upgrade.hasLink(LinkDirection.RIGHT)) {
                            Image image4 = new Image(Game.f8589i.assetManager.getDrawable("tiny-arrow-right"));
                            image4.setSize(32.0f, 32.0f);
                            image4.setPosition(f4 + 64.0f, (upgradeRows2 + 32.0f) - 16.0f);
                            group.addActor(image4);
                        }
                        if (upgrade.hasLink(LinkDirection.TOP)) {
                            Image image5 = new Image(Game.f8589i.assetManager.getDrawable("tiny-arrow-top"));
                            image5.setSize(32.0f, 32.0f);
                            image5.setPosition((f4 + 32.0f) - 16.0f, upgradeRows2 + 64.0f);
                            group.addActor(image5);
                        }
                        if (upgrade.hasLink(LinkDirection.BOTTOM)) {
                            Image image6 = new Image(Game.f8589i.assetManager.getDrawable("tiny-arrow-bottom"));
                            image6.setSize(32.0f, 32.0f);
                            image6.setPosition((f4 + 32.0f) - 16.0f, upgradeRows2 - 32.0f);
                            group.addActor(image6);
                        }
                        if (upgrade.hasLink(LinkDirection.TOP_LEFT)) {
                            Image image7 = new Image(Game.f8589i.assetManager.getDrawable("tiny-arrow-top-left"));
                            image7.setSize(32.0f, 32.0f);
                            image7.setPosition(f4 - 32.0f, upgradeRows2 + 64.0f);
                            group.addActor(image7);
                        }
                        if (upgrade.hasLink(LinkDirection.TOP_RIGHT)) {
                            Image image8 = new Image(Game.f8589i.assetManager.getDrawable("tiny-arrow-top-right"));
                            image8.setSize(32.0f, 32.0f);
                            image8.setPosition(f4 + 64.0f, upgradeRows2 + 64.0f);
                            group.addActor(image8);
                        }
                        if (upgrade.hasLink(LinkDirection.BOTTOM_LEFT)) {
                            Image image9 = new Image(Game.f8589i.assetManager.getDrawable("tiny-arrow-bottom-left"));
                            image9.setSize(32.0f, 32.0f);
                            image9.setPosition(f4 - 32.0f, upgradeRows2 - 32.0f);
                            group.addActor(image9);
                        }
                        if (upgrade.hasLink(LinkDirection.BOTTOM_RIGHT)) {
                            Image image10 = new Image(Game.f8589i.assetManager.getDrawable("tiny-arrow-bottom-right"));
                            image10.setSize(32.0f, 32.0f);
                            image10.setPosition(f4 + 64.0f, upgradeRows2 - 32.0f);
                            group.addActor(image10);
                        }
                    }
                    i4++;
                    upgradeRows = i;
                    upgradeCols = i2;
                    str7 = str4;
                    str6 = str3;
                    f = 64.0f;
                    f2 = 32.0f;
                }
                i3++;
                f = 64.0f;
            }
            String str9 = str6;
            String str10 = "blank";
            table.add((Table) group).size((getUpgradeCols() * 64.0f) + ((getUpgradeCols() - 1) * 32.0f), (getUpgradeRows() * 64.0f) + ((getUpgradeRows() - 1) * 32.0f)).padRight(16.0f);
            if (isValidUpgradePos(itemCreationOverlay.customIntA, itemCreationOverlay.customIntB)) {
                Table table2 = new Table();
                table.add(table2);
                final Upgrade upgrade2 = getUpgrade(itemCreationOverlay.customIntA, itemCreationOverlay.customIntB);
                if (upgrade2 == null) {
                    table2.add((Table) new RectButton("Add upgrade", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.tiles.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            CoreTile.this.m20834y(itemCreationOverlay);
                        }
                    })).size(200.0f, 48.0f);
                    return;
                }
                table2.add((Table) new RectButton("Remove upgrade", Game.f8589i.assetManager.getLabelStyle(24), new Runnable() { // from class: com.prineside.tdi2.tiles.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        CoreTile.this.m20833z(itemCreationOverlay);
                    }
                })).size(200.0f, 48.0f).top().left().row();
                float f7 = 8.0f;
                table2.add(new LabelToggleButton("Is action", upgrade2.isAction, 24, 24.0f, false, new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.g
                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                    public final void retrieved(Object obj) {
                        CoreTile.this.m20859A(upgrade2, itemCreationOverlay, (Boolean) obj);
                    }
                })).top().left().padTop(8.0f).padBottom(8.0f).row();
                if (upgrade2.isAction) {
                    final SelectBox selectBox3 = new SelectBox(itemCreationOverlay.selectBoxStyle);
                    Array array4 = new Array(TriggeredActionType.class);
                    for (TriggeredActionType triggeredActionType : TriggeredActionType.values) {
                        array4.add(triggeredActionType);
                    }
                    selectBox3.setItems(array4);
                    selectBox3.setSelected(upgrade2.getActionType());
                    selectBox3.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.CoreTile.4
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            upgrade2.setActionType((TriggeredActionType) selectBox3.getSelected());
                            CoreTile coreTile = CoreTile.this;
                            ItemCreationOverlay itemCreationOverlay2 = itemCreationOverlay;
                            coreTile.setUpgrade(itemCreationOverlay2.customIntA, itemCreationOverlay2.customIntB, upgrade2);
                            itemCreationOverlay.updateForm();
                        }
                    });
                    table2.add((Table) selectBox3).height(48.0f).width(320.0f).top().left().row();
                } else {
                    final SelectBox selectBox4 = new SelectBox(itemCreationOverlay.selectBoxStyle);
                    Array array5 = new Array(GameValueType.class);
                    for (GameValueType gameValueType : GameValueType.values) {
                        array5.add(gameValueType);
                    }
                    selectBox4.setItems(array5);
                    selectBox4.setSelected(upgrade2.getGameValueType());
                    selectBox4.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.CoreTile.5
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                        public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                            upgrade2.setGameValueType((GameValueType) selectBox4.getSelected());
                            CoreTile coreTile = CoreTile.this;
                            ItemCreationOverlay itemCreationOverlay2 = itemCreationOverlay;
                            coreTile.setUpgrade(itemCreationOverlay2.customIntA, itemCreationOverlay2.customIntB, upgrade2);
                            itemCreationOverlay.updateForm();
                        }
                    });
                    table2.add((Table) selectBox4).height(48.0f).width(320.0f).top().left().row();
                }
                Table table3 = new Table();
                table2.add(table3).row();
                Table table4 = new Table();
                table3.add(table4);
                Table table5 = new Table();
                table3.add(table5).padLeft(30.0f);
                final int i6 = 0;
                table4.add(itemCreationOverlay.toggle(false, "Starting", upgrade2.starting, new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.h
                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                    public final void retrieved(Object obj) {
                        CoreTile.this.m20858B(upgrade2, itemCreationOverlay, (Boolean) obj);
                    }
                })).height(48.0f).top().left().row();
                table4.add(itemCreationOverlay.toggle(false, "Costs coins", upgrade2.costsCoins, new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.i
                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                    public final void retrieved(Object obj) {
                        CoreTile.this.m20857C(upgrade2, itemCreationOverlay, (Boolean) obj);
                    }
                })).height(48.0f).top().left().row();
                Table table6 = new Table();
                table5.add(table6);
                for (final LinkDirection linkDirection : LinkDirection.values) {
                    switch (C235411.f11908a[linkDirection.ordinal()]) {
                        case 1:
                            str2 = "tiny-arrow-top";
                            break;
                        case 2:
                            str2 = "tiny-arrow-left";
                            break;
                        case 3:
                            str2 = "tiny-arrow-right";
                            break;
                        case 4:
                            str2 = "tiny-arrow-bottom";
                            break;
                        case 5:
                            str2 = "tiny-arrow-top-left";
                            break;
                        case 6:
                            str2 = "tiny-arrow-top-right";
                            break;
                        case 7:
                            str2 = "tiny-arrow-bottom-left";
                            break;
                        case 8:
                            str2 = "tiny-arrow-bottom-right";
                            break;
                        default:
                            str2 = str10;
                            break;
                    }
                    Image image11 = new Image(Game.f8589i.assetManager.getDrawable(str2));
                    if (!upgrade2.hasLink(linkDirection)) {
                        image11.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                    }
                    image11.setTouchable(Touchable.enabled);
                    LinkDirection linkDirection2 = LinkDirection.RIGHT;
                    if (linkDirection == linkDirection2) {
                        table6.add();
                    }
                    table6.add((Table) image11).size(32.0f).pad(8.0f);
                    image11.addListener(new ClickListener() { // from class: com.prineside.tdi2.tiles.CoreTile.6
                        @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                        public void clicked(InputEvent inputEvent, float f8, float f9) {
                            Upgrade upgrade3 = upgrade2;
                            LinkDirection linkDirection3 = linkDirection;
                            upgrade3.setHasLink(linkDirection3, !upgrade3.hasLink(linkDirection3));
                            CoreTile coreTile = CoreTile.this;
                            ItemCreationOverlay itemCreationOverlay2 = itemCreationOverlay;
                            coreTile.setUpgrade(itemCreationOverlay2.customIntA, itemCreationOverlay2.customIntB, upgrade2);
                            itemCreationOverlay.updateForm();
                        }
                    });
                    if (linkDirection == LinkDirection.TOP_RIGHT || linkDirection == linkDirection2) {
                        table6.row();
                    }
                }
                Table table7 = new Table();
                table2.row();
                table2.add(table7).top().left();
                table7.add();
                Label label3 = new Label("Delta", Game.f8589i.assetManager.getLabelStyle(21));
                label3.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                float f8 = 40.0f;
                table7.add((Table) label3).height(40.0f).padBottom(2.0f);
                Label label4 = new Label("Price", Game.f8589i.assetManager.getLabelStyle(21));
                label4.setColor(1.0f, 1.0f, 1.0f, 0.28f);
                table7.add((Table) label4).height(40.0f).padBottom(2.0f);
                table7.add();
                table7.row();
                while (true) {
                    Array<Upgrade.UpgradeLevel> array6 = upgrade2.upgradeLevels;
                    if (i6 < array6.size) {
                        Upgrade.UpgradeLevel upgradeLevel = array6.items[i6];
                        StringBuilder sb = new StringBuilder();
                        int i7 = i6 + 1;
                        sb.append(i7);
                        String str11 = str9;
                        sb.append(str11);
                        table7.add((Table) new Label(sb.toString(), Game.f8589i.assetManager.getLabelStyle(21))).minWidth(f8).padRight(f7);
                        final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform(upgradeLevel.delta + str11, itemCreationOverlay.textFieldStyle);
                        final int i8 = i6;
                        textFieldXPlatform.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.CoreTile.7
                            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                String text = textFieldXPlatform.getText();
                                try {
                                    upgrade2.upgradeLevels.items[i8].delta = Float.parseFloat(text);
                                    CoreTile coreTile = CoreTile.this;
                                    ItemCreationOverlay itemCreationOverlay2 = itemCreationOverlay;
                                    coreTile.setUpgrade(itemCreationOverlay2.customIntA, itemCreationOverlay2.customIntB, upgrade2);
                                } catch (Exception unused) {
                                    Logger.error("CoreTile", "bad value: " + text);
                                }
                                itemCreationOverlay.updateItemIcon();
                            }
                        });
                        table7.add((Table) textFieldXPlatform).minWidth(60.0f).height(40.0f).padLeft(2.0f).padBottom(2.0f);
                        final TextFieldXPlatform textFieldXPlatform2 = new TextFieldXPlatform(upgradeLevel.price + str11, itemCreationOverlay.textFieldStyle);
                        textFieldXPlatform2.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.CoreTile.8
                            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                                String text = textFieldXPlatform2.getText();
                                try {
                                    upgrade2.upgradeLevels.items[i8].price = Integer.parseInt(text);
                                    CoreTile coreTile = CoreTile.this;
                                    ItemCreationOverlay itemCreationOverlay2 = itemCreationOverlay;
                                    coreTile.setUpgrade(itemCreationOverlay2.customIntA, itemCreationOverlay2.customIntB, upgrade2);
                                } catch (Exception unused) {
                                    Logger.error("CoreTile", "bad value: " + text);
                                }
                                itemCreationOverlay.updateItemIcon();
                            }
                        });
                        table7.add((Table) textFieldXPlatform2).minWidth(60.0f).height(40.0f).padLeft(2.0f).padBottom(2.0f);
                        if (i6 == 0) {
                            table7.add();
                            str = str10;
                        } else {
                            ComplexButton complexButton = new ComplexButton(str11, Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.tiles.CoreTile.9
                                @Override // java.lang.Runnable
                                public void run() {
                                    upgrade2.upgradeLevels.removeIndex(i6);
                                    CoreTile coreTile = CoreTile.this;
                                    ItemCreationOverlay itemCreationOverlay2 = itemCreationOverlay;
                                    coreTile.setUpgrade(itemCreationOverlay2.customIntA, itemCreationOverlay2.customIntB, upgrade2);
                                    itemCreationOverlay.updateForm();
                                }
                            });
                            str = str10;
                            complexButton.setBackground(Game.f8589i.assetManager.getDrawable(str), 0.0f, 0.0f, 40.0f, 40.0f);
                            complexButton.setIcon(Game.f8589i.assetManager.getDrawable("icon-times"), 4.0f, 4.0f, 32.0f, 32.0f);
                            table7.add((Table) complexButton).size(40.0f).padLeft(2.0f);
                        }
                        table7.row();
                        str10 = str;
                        i6 = i7;
                        str9 = str11;
                        f7 = 8.0f;
                        f8 = 40.0f;
                    } else {
                        table7.add((Table) new RectButton("Add new level", Game.f8589i.assetManager.getLabelStyle(21), new Runnable() { // from class: com.prineside.tdi2.tiles.CoreTile.10
                            @Override // java.lang.Runnable
                            public void run() {
                                upgrade2.upgradeLevels.add(new Upgrade.UpgradeLevel(0.0f, 1));
                                CoreTile coreTile = CoreTile.this;
                                ItemCreationOverlay itemCreationOverlay2 = itemCreationOverlay;
                                coreTile.setUpgrade(itemCreationOverlay2.customIntA, itemCreationOverlay2.customIntB, upgrade2);
                                itemCreationOverlay.updateForm();
                            }
                        })).size(164.0f, 40.0f).colspan(3).top().left();
                        return;
                    }
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void from(Tile tile) {
        CoreTile coreTile = (CoreTile) tile;
        this.f11893r = coreTile.f11893r;
        this.f11894s = coreTile.f11894s;
        this.f11895t = coreTile.f11895t;
        this.f11896u = coreTile.f11896u;
        this.f11897v = coreTile.f11897v;
        this.f11898w.clear();
        PredefinedCoreTileType predefinedCoreTileType = coreTile.predefinedType;
        if (predefinedCoreTileType == null) {
            this.predefinedType = null;
            int i = 0;
            while (true) {
                Array<Upgrade> array = coreTile.f11898w;
                if (i < array.size) {
                    Upgrade[] upgradeArr = array.items;
                    if (upgradeArr[i] == null) {
                        this.f11898w.add(null);
                    } else {
                        this.f11898w.add(upgradeArr[i].cloneUpgrade());
                    }
                    i++;
                } else {
                    return;
                }
            }
        } else {
            this.predefinedType = predefinedCoreTileType;
        }
    }

    @Override // com.prineside.tdi2.Tile
    public int generateSeedSalt() {
        int ordinal;
        PredefinedCoreTileType predefinedCoreTileType = this.predefinedType;
        if (predefinedCoreTileType == null) {
            ordinal = 0;
        } else {
            ordinal = predefinedCoreTileType.ordinal();
        }
        int ordinal2 = ((((ordinal + 31) * 31) + getTier().ordinal()) * 31) + ((int) (getExperienceGeneration() * 100.0f));
        Array<Upgrade> upgrades = getUpgrades();
        for (int i = 0; i < upgrades.size; i++) {
            Upgrade[] upgradeArr = upgrades.items;
            if (upgradeArr[i] == null) {
                ordinal2 *= 31;
            } else {
                ordinal2 = (ordinal2 * 31) + upgradeArr[i].generateHash();
            }
        }
        return ordinal2;
    }

    @Override // com.prineside.tdi2.Tile
    public Group generateUiIcon(float f) {
        ResourcePack.AtlasTextureRegion textureRegion;
        float f2 = f / 128.0f;
        Group group = new Group();
        group.setTransform(false);
        Color[] baseColors = getBaseColors();
        for (int i = 0; i < 4; i++) {
            if ((getTier() != Tier.REGULAR || (i != 0 && i != 1)) && (getTier() != Tier.RARE || (i != 2 && i != 3))) {
                Image image = new Image(Game.f8589i.tileManager.f10161F.CORE.f11944d[i]);
                float f3 = f2 * 128.0f;
                image.setSize(f3, f3);
                image.setColor(baseColors[i]);
                group.addActor(image);
            }
        }
        AnimatedImage animatedImage = new AnimatedImage(Game.f8589i.tileManager.f10161F.CORE.f11946p);
        float f4 = 64.0f * f2;
        animatedImage.setSize(f4, f4);
        float f5 = 32.0f * f2;
        animatedImage.setPosition(f5, f5);
        animatedImage.setColor(getSphereColor());
        group.addActor(animatedImage);
        String icon = getIcon();
        if (icon != null && (textureRegion = Game.f8589i.assetManager.getTextureRegion(icon, false)) != null) {
            Image image2 = new Image(textureRegion);
            float f6 = 42.24f * f2;
            image2.setSize(f6, f6);
            image2.setPosition(42.66624f * f2, f2 * 42.666622f);
            image2.setColor(1.0f, 1.0f, 1.0f, 0.65f);
            group.addActor(image2);
        }
        return group;
    }

    public Color[] getBaseColors() {
        RandomXS128 randomXS128 = FastRandom.random;
        randomXS128.setSeed(m20839t());
        Color[] colorArr = f11889E;
        Color[] colorArr2 = f11888D;
        colorArr[0] = colorArr2[randomXS128.nextInt(colorArr2.length)];
        colorArr[1] = colorArr2[randomXS128.nextInt(colorArr2.length)];
        colorArr[2] = colorArr2[randomXS128.nextInt(colorArr2.length)];
        colorArr[3] = colorArr2[randomXS128.nextInt(colorArr2.length)];
        return colorArr;
    }

    public float getExperienceGeneration() {
        if (this.predefinedType == null) {
            return this.f11896u;
        }
        return Game.f8589i.tileManager.f10161F.CORE.f11945k[this.predefinedType.ordinal()].f11896u;
    }

    public String getIcon() {
        if (this.predefinedType != null) {
            return Game.f8589i.tileManager.f10161F.CORE.f11945k[this.predefinedType.ordinal()].f11894s;
        }
        return this.f11894s;
    }

    public String getName() {
        if (this.predefinedType != null) {
            return Game.f8589i.tileManager.f10161F.CORE.f11945k[this.predefinedType.ordinal()].f11893r;
        }
        return this.f11893r;
    }

    @Override // com.prineside.tdi2.Tile
    public RarityType getRarity() {
        int i = C235411.f11909b[getTier().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return RarityType.COMMON;
                }
                return RarityType.LEGENDARY;
            }
            return RarityType.EPIC;
        }
        return RarityType.VERY_RARE;
    }

    @Override // com.prineside.tdi2.Tile
    public int getSortingScore(ItemSortingType itemSortingType) {
        int ordinal;
        if (itemSortingType == ItemSortingType.KIND) {
            PredefinedCoreTileType predefinedCoreTileType = this.predefinedType;
            if (predefinedCoreTileType != null) {
                ordinal = predefinedCoreTileType.ordinal() * 10;
            } else {
                ordinal = (getRarity().ordinal() * 10) + 300;
            }
            return ordinal + 15000;
        }
        return (getRarity().ordinal() * FIXED_LEVEL_XP_REQUIREMENT) + (5 - getTier().ordinal()) + 100;
    }

    public Color getSphereColor() {
        int i = C235411.f11909b[getTier().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return null;
                }
                return MaterialColor.CYAN.P600;
            }
            return MaterialColor.ORANGE.P700;
        }
        return MaterialColor.PURPLE.P500;
    }

    public Tier getTier() {
        if (this.predefinedType != null) {
            return Game.f8589i.tileManager.f10161F.CORE.f11945k[this.predefinedType.ordinal()].f11895t;
        }
        return this.f11895t;
    }

    public Upgrade getUpgrade(int i, int i2) {
        Array<Upgrade> array;
        if (this.predefinedType == null) {
            array = this.f11898w;
        } else {
            array = Game.f8589i.tileManager.f10161F.CORE.f11945k[this.predefinedType.ordinal()].f11898w;
        }
        int upgradeIdx = getUpgradeIdx(getTier(), i, i2);
        if (array.size > upgradeIdx) {
            return array.items[upgradeIdx];
        }
        return null;
    }

    public int getUpgradeInstallLevel(int i, int i2) {
        return getUpgradeInstallLevel(getUpgradeIdx(getTier(), i, i2));
    }

    public Array<Upgrade> getUpgrades() {
        if (this.predefinedType != null) {
            return Game.f8589i.tileManager.f10161F.CORE.f11945k[this.predefinedType.ordinal()].f11898w;
        }
        return this.f11898w;
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.predefinedType = (PredefinedCoreTileType) kryo.readObjectOrNull(input, PredefinedCoreTileType.class);
        this.f11893r = (String) kryo.readObject(input, String.class);
        this.f11894s = (String) kryo.readObjectOrNull(input, String.class);
        this.f11895t = (Tier) kryo.readObject(input, Tier.class);
        this.f11896u = input.readFloat();
        this.f11897v = input.readBoolean();
        this.f11898w = (Array) kryo.readObject(input, Array.class);
        this.doubleSpeedTimeLeft = input.readFloat();
        this.f11900y = input.readVarInt(true);
        this.f11901z = input.readFloat();
        this.f11890A = input.readFloat();
        this.f11891B = input.readFloat();
        this.f11892C = (IntIntMap) kryo.readObject(input, IntIntMap.class);
    }

    /* renamed from: s */
    public final int m20840s(int i) {
        if (this.f11897v) {
            return (i - 1) * FIXED_LEVEL_XP_REQUIREMENT;
        }
        return LEVEL_EXPERIENCE_MILESTONES[i];
    }

    public void setExperience(float f) {
        this.f11901z = f;
        int i = this.f11900y;
        if (i != 256) {
            while (true) {
                i++;
                if (i > 256 || ((int) this.f11901z) < m20840s(i)) {
                    break;
                }
                this.f11900y = i;
            }
            int i2 = this.f11900y;
            if (i2 != 256) {
                if (this.f11897v) {
                    this.f11890A = 1000.0f;
                } else {
                    this.f11890A = LEVEL_EXPERIENCE[i2 + 1];
                }
            } else {
                this.f11890A = 0.0f;
            }
        }
        this.f11891B = this.f11901z - m20840s(this.f11900y);
    }

    public void setExperienceGeneration(float f) {
        if (this.predefinedType == null) {
            this.f11896u = f;
            this.f11899x = -1;
            return;
        }
        throw new IllegalStateException("can't edit predefined core");
    }

    public void setIcon(String str) {
        if (this.predefinedType == null) {
            this.f11894s = str;
            this.f11899x = -1;
            return;
        }
        throw new IllegalStateException("can't edit predefined core");
    }

    public void setName(String str) {
        if (this.predefinedType == null) {
            this.f11893r = str;
            return;
        }
        throw new IllegalStateException("can't edit predefined core");
    }

    public void setTier(Tier tier) {
        if (this.predefinedType == null) {
            this.f11895t = tier;
            this.f11899x = -1;
            return;
        }
        throw new IllegalStateException("can't edit predefined core");
    }

    public void setUpgrade(int i, int i2, Upgrade upgrade) {
        if (this.predefinedType == null) {
            int upgradeIdx = getUpgradeIdx(getTier(), i, i2);
            while (true) {
                Array<Upgrade> array = this.f11898w;
                if (array.size <= upgradeIdx) {
                    array.add(null);
                } else {
                    array.set(upgradeIdx, upgrade);
                    this.f11899x = -1;
                    return;
                }
            }
        } else {
            throw new IllegalStateException("Can't change upgrades of predefined Cores");
        }
    }

    public void setUpgradeInstallLevel(int i, int i2, int i3) {
        if (i3 != 0) {
            this.f11892C.put(getUpgradeIdx(getTier(), i, i2), i3);
        } else {
            this.f11892C.remove(getUpgradeIdx(getTier(), i, i2), 0);
        }
    }

    public void setXpLevelRequirementFixed(boolean z) {
        this.f11897v = z;
        this.f11899x = -1;
    }

    /* renamed from: t */
    public final int m20839t() {
        if (this.f11899x == -1) {
            this.f11899x = generateSeedSalt();
        }
        return this.f11899x;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A */
    public /* synthetic */ void m20859A(Upgrade upgrade, ItemCreationOverlay itemCreationOverlay, Boolean bool) {
        upgrade.isAction = bool.booleanValue();
        setUpgrade(itemCreationOverlay.customIntA, itemCreationOverlay.customIntB, upgrade);
        itemCreationOverlay.updateForm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B */
    public /* synthetic */ void m20858B(Upgrade upgrade, ItemCreationOverlay itemCreationOverlay, Boolean bool) {
        upgrade.starting = bool.booleanValue();
        setUpgrade(itemCreationOverlay.customIntA, itemCreationOverlay.customIntB, upgrade);
        itemCreationOverlay.updateForm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C */
    public /* synthetic */ void m20857C(Upgrade upgrade, ItemCreationOverlay itemCreationOverlay, Boolean bool) {
        upgrade.costsCoins = bool.booleanValue();
        setUpgrade(itemCreationOverlay.customIntA, itemCreationOverlay.customIntB, upgrade);
        itemCreationOverlay.updateForm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public /* synthetic */ void m20838u(ItemCreationOverlay itemCreationOverlay, String str) {
        try {
            setName(str);
            itemCreationOverlay.updateItemIcon();
        } catch (Exception unused) {
            Logger.error("CoreTile", "bad value: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public /* synthetic */ void m20836w(ItemCreationOverlay itemCreationOverlay, String str) {
        try {
            setExperienceGeneration(Float.valueOf(str).floatValue());
            itemCreationOverlay.updateItemIcon();
        } catch (Exception unused) {
            Logger.error("CoreTile", "bad value: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public /* synthetic */ void m20835x(ItemCreationOverlay itemCreationOverlay, Boolean bool) {
        setXpLevelRequirementFixed(bool.booleanValue());
        itemCreationOverlay.updateForm();
    }

    public boolean canUpgradeBeInstalled(int i, int i2) {
        LinkDirection[] linkDirectionArr;
        Upgrade upgrade;
        if (getUpgrade(i, i2).starting) {
            return true;
        }
        int upgradeCols = getUpgradeCols();
        int upgradeRows = getUpgradeRows();
        for (LinkDirection linkDirection : LinkDirection.values) {
            int deltaCol = LinkDirection.getDeltaCol(linkDirection) + i;
            int deltaRow = LinkDirection.getDeltaRow(linkDirection) + i2;
            if (deltaCol >= 0 && deltaCol < upgradeCols && deltaRow >= 0 && deltaRow < upgradeRows && (upgrade = getUpgrade(deltaCol, deltaRow)) != null && getUpgradeInstallLevel(deltaCol, deltaRow) != 0 && upgrade.hasLink(LinkDirection.getOpposite(linkDirection))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.prineside.tdi2.Tile
    public void drawStatic(SpriteCache spriteCache, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        super.drawStatic(spriteCache, f, f2, f3, f4, drawMode);
        Color[] baseColors = getBaseColors();
        for (int i = 0; i < 4; i++) {
            if ((getTier() != Tier.REGULAR || (i != 0 && i != 1)) && (getTier() != Tier.RARE || (i != 2 && i != 3))) {
                spriteCache.setColor(baseColors[i]);
                spriteCache.add(Game.f8589i.tileManager.f10161F.CORE.f11944d[i], f, f2, f3, f4);
            }
        }
        spriteCache.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
    }

    public int getFreeUpgradePoints() {
        int level = getLevel() - 1;
        int upgradeCols = getUpgradeCols();
        int upgradeRows = getUpgradeRows();
        int i = 0;
        for (int i2 = 0; i2 < upgradeRows; i2++) {
            for (int i3 = 0; i3 < upgradeCols; i3++) {
                Upgrade upgrade = getUpgrade(i3, i2);
                if (upgrade != null && !upgrade.costsCoins) {
                    int upgradeInstallLevel = getUpgradeInstallLevel(i3, i2);
                    for (int i4 = 0; i4 < upgradeInstallLevel; i4++) {
                        i += upgrade.upgradeLevels.items[i4].price;
                    }
                }
            }
        }
        return level - i;
    }

    public boolean hasSomethingToUpgrade() {
        boolean z;
        int freeUpgradePoints = getFreeUpgradePoints();
        int upgradeCols = getUpgradeCols();
        int upgradeRows = getUpgradeRows();
        int money = this.f8844S.gameState.getMoney();
        for (int i = 0; i < upgradeRows; i++) {
            for (int i2 = 0; i2 < upgradeCols; i2++) {
                Upgrade upgrade = getUpgrade(i2, i);
                if (upgrade != null) {
                    int upgradeInstallLevel = getUpgradeInstallLevel(i2, i);
                    Array<Upgrade.UpgradeLevel> array = upgrade.upgradeLevels;
                    if (upgradeInstallLevel >= array.size) {
                        continue;
                    } else {
                        Upgrade.UpgradeLevel upgradeLevel = array.items[upgradeInstallLevel];
                        if (!upgrade.costsCoins ? upgradeLevel.price <= freeUpgradePoints : upgradeLevel.price <= money) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z && canUpgradeBeInstalled(i2, i)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public boolean isValidUpgradePos(int i, int i2) {
        Tier tier = getTier();
        if (i >= 0 && i < TIER_COLS[tier.ordinal()] && i2 >= 0 && i2 < TIER_ROWS[tier.ordinal()]) {
            return true;
        }
        return false;
    }

    @Override // com.prineside.tdi2.Tile
    public boolean sameAs(Tile tile) {
        if (!super.sameAs(tile)) {
            return false;
        }
        CoreTile coreTile = (CoreTile) tile;
        PredefinedCoreTileType predefinedCoreTileType = this.predefinedType;
        if (predefinedCoreTileType != null && coreTile.predefinedType == predefinedCoreTileType) {
            return true;
        }
        if (coreTile.predefinedType != predefinedCoreTileType || coreTile.f11895t != this.f11895t || !coreTile.f11893r.equals(this.f11893r)) {
            return false;
        }
        String str = coreTile.f11894s;
        if (str == null && this.f11894s != null) {
            return false;
        }
        if (str != null && this.f11894s == null) {
            return false;
        }
        String str2 = this.f11894s;
        if ((str2 != null && !str.equals(str2)) || coreTile.f11896u != this.f11896u || coreTile.f11897v != this.f11897v || coreTile.f11898w.size != this.f11898w.size) {
            return false;
        }
        int i = 0;
        while (true) {
            Array<Upgrade> array = this.f11898w;
            if (i >= array.size) {
                return true;
            }
            Upgrade[] upgradeArr = array.items;
            if ((upgradeArr[i] != null || coreTile.f11898w.items[i] == null) && ((upgradeArr[i] == null || coreTile.f11898w.items[i] != null) && (upgradeArr[i] == null || upgradeArr[i].sameAs(coreTile.f11898w.items[i])))) {
                i++;
            }
        }
        return false;
    }

    @Override // com.prineside.tdi2.Registrable
    public void setRegistered(GameSystemProvider gameSystemProvider) {
        super.setRegistered(gameSystemProvider);
        setExperience(this.f11901z);
    }

    @Override // com.prineside.tdi2.Tile
    public void toJson(Json json) {
        super.toJson(json);
        json.writeObjectStart("d");
        json.writeValue("n", this.f11893r);
        String str = this.f11894s;
        if (str != null) {
            json.writeValue("icon", str);
        }
        json.writeValue("t", getTier());
        json.writeValue("eg", Float.valueOf(this.f11896u));
        json.writeValue("flx", Boolean.valueOf(this.f11897v));
        PredefinedCoreTileType predefinedCoreTileType = this.predefinedType;
        if (predefinedCoreTileType != null) {
            json.writeValue("pt", predefinedCoreTileType.name());
        } else {
            json.writeArrayStart("u");
            for (int i = this.f11898w.size - 1; i >= 0; i--) {
                Array<Upgrade> array = this.f11898w;
                if (array.items[i] != null) {
                    break;
                }
                array.size = i;
            }
            for (int i2 = 0; i2 < this.f11898w.size && i2 < getUpgradeCols() * getUpgradeRows(); i2++) {
                if (this.f11898w.items[i2] == null) {
                    json.writeValue(null);
                } else {
                    json.writeObjectStart();
                    this.f11898w.items[i2].toJson(json);
                    json.writeObjectEnd();
                }
            }
            json.writeArrayEnd();
        }
        json.writeObjectEnd();
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.predefinedType, PredefinedCoreTileType.class);
        kryo.writeObject(output, this.f11893r);
        kryo.writeObjectOrNull(output, this.f11894s, String.class);
        kryo.writeObject(output, this.f11895t);
        output.writeFloat(this.f11896u);
        output.writeBoolean(this.f11897v);
        kryo.writeObject(output, this.f11898w);
        output.writeFloat(this.doubleSpeedTimeLeft);
        output.writeVarInt(this.f11900y, true);
        output.writeFloat(this.f11901z);
        output.writeFloat(this.f11890A);
        output.writeFloat(this.f11891B);
        kryo.writeObject(output, this.f11892C);
    }
}
