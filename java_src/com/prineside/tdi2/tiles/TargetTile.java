package com.prineside.tdi2.tiles;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueConfig;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.p036ui.actors.LimitedWidthLabel;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.TextureRegionConfig;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
import p218x1.C7221i;
@REGS
/* loaded from: classes2.dex */
public class TargetTile extends Tile {

    /* renamed from: B */
    public static final Color f12027B = new Color();

    /* renamed from: C */
    public static final Comparator<GameValueConfig> f12028C = new Comparator<GameValueConfig>() { // from class: com.prineside.tdi2.tiles.TargetTile.1
        @Override // java.util.Comparator
        public int compare(GameValueConfig gameValueConfig, GameValueConfig gameValueConfig2) {
            return C7221i.m2085a(gameValueConfig.type.ordinal(), gameValueConfig2.type.ordinal());
        }
    };
    @NAGS

    /* renamed from: A */
    public boolean f12029A;

    /* renamed from: r */
    public Array<GameValueConfig> f12030r;

    /* renamed from: s */
    public boolean f12031s;

    /* renamed from: t */
    public boolean f12032t;
    @NAGS

    /* renamed from: u */
    public boolean f12033u;
    @NAGS

    /* renamed from: v */
    public Color f12034v;
    @NAGS

    /* renamed from: w */
    public Color f12035w;
    @NAGS

    /* renamed from: x */
    public TextureRegion f12036x;
    @NAGS

    /* renamed from: y */
    public int f12037y;
    @NAGS

    /* renamed from: z */
    public float f12038z;

    /* renamed from: com.prineside.tdi2.tiles.TargetTile$3 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C23813 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12041a;

        static {
            int[] iArr = new int[RarityType.values().length];
            f12041a = iArr;
            try {
                iArr[RarityType.COMMON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12041a[RarityType.RARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12041a[RarityType.VERY_RARE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12041a[RarityType.EPIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ExplosionInterpolation extends Interpolation {
        public ExplosionInterpolation() {
        }

        @Override // com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            return (Interpolation.pow2In.apply(f) * 0.2f) + (Interpolation.pow5In.apply(f) * 0.3f);
        }
    }

    /* loaded from: classes2.dex */
    public static class TargetTileFactory extends Tile.Factory.AbstractFactory<TargetTile> {

        /* renamed from: d */
        public TextureRegion f12045d;

        /* renamed from: k */
        public TextureRegion f12046k;

        /* renamed from: p */
        public ParticleEffectPool f12047p;

        /* renamed from: q */
        public ParticleEffectPool f12048q;

        public TargetTileFactory() {
            super(TileType.TARGET);
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public int getProbabilityForPrize(float f, ProgressManager.InventoryStatistics inventoryStatistics) {
            int i = inventoryStatistics.byTileType[TileType.TARGET.ordinal()];
            return i == 0 ? CoreTile.FIXED_LEVEL_XP_REQUIREMENT : i > 500 ? 0 : 30;
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public TargetTile create() {
            return new TargetTile();
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public TargetTile createRandom(final float f, RandomXS128 randomXS128) {
            GameValueType[] gameValueTypeArr;
            int nextInt;
            final RandomXS128 randomXS1282 = randomXS128 == null ? FastRandom.random : randomXS128;
            final TargetTile create = create();
            Array array = new Array();
            if (randomXS1282.nextFloat() * f < 0.1f) {
                create.f12031s = true;
            }
            if (randomXS1282.nextFloat() * f < 0.1f) {
                create.f12032t = true;
            }
            int i = 0;
            for (final GameValueType gameValueType : GameValueType.minerCount) {
                if (Game.f8589i.progressManager.isResourceOpened(ResourceType.values[i])) {
                    array.add(new RandomTileValue(10, new Runnable() { // from class: com.prineside.tdi2.tiles.TargetTile.TargetTileFactory.1
                        @Override // java.lang.Runnable
                        public void run() {
                            int round = MathUtils.round(f * 3.0f);
                            if (round == 0) {
                                round = 1;
                            }
                            create.f12030r.add(new GameValueConfig(gameValueType, round, false, true));
                        }
                    }));
                    i++;
                }
            }
            if (create.f12031s && f > 0.2d) {
                array.add(new RandomTileValue(10, new Runnable() { // from class: com.prineside.tdi2.tiles.TargetTile.TargetTileFactory.2
                    @Override // java.lang.Runnable
                    public void run() {
                        int i2;
                        if (randomXS1282.nextFloat() * f > 0.5f) {
                            i2 = 2;
                        } else {
                            i2 = 1;
                        }
                        create.f12030r.add(new GameValueConfig(GameValueType.TOWERS_MAX_UPGRADE_LEVEL, i2, false, true));
                    }
                }));
            }
            if (f >= 0.65f) {
                array.add(new RandomTileValue(5, new Runnable() { // from class: com.prineside.tdi2.tiles.TargetTile.TargetTileFactory.3
                    @Override // java.lang.Runnable
                    public void run() {
                        create.f12030r.add(new GameValueConfig(GameValueType.ENEMIES_WALK_ON_PLATFORMS, 1.0d, false, true));
                    }
                }));
            }
            if (f >= 0.25f) {
                array.add(new RandomTileValue(10, new Runnable() { // from class: com.prineside.tdi2.tiles.TargetTile.TargetTileFactory.4
                    @Override // java.lang.Runnable
                    public void run() {
                        int i2 = 5;
                        int round = MathUtils.round(((f - 0.25f) / 0.75f) * 5.0f) * 5;
                        if (round >= 5) {
                            i2 = round;
                        }
                        create.f12030r.add(new GameValueConfig(GameValueType.MINERS_INSTALL_DURATION, -i2, false, true));
                    }
                }));
            }
            if (f >= 0.5f) {
                array.add(new RandomTileValue(10, new Runnable() { // from class: com.prineside.tdi2.tiles.TargetTile.TargetTileFactory.5
                    @Override // java.lang.Runnable
                    public void run() {
                        int i2 = 5;
                        int round = MathUtils.round(((f - 0.5f) / 0.5f) * 10.0f) * 5;
                        if (round >= 5) {
                            i2 = round;
                        }
                        create.f12030r.add(new GameValueConfig(GameValueType.TOWERS_EXPERIENCE_MULTIPLIER, i2, false, true));
                    }
                }));
            }
            if (f >= 0.25f) {
                array.add(new RandomTileValue(5, new Runnable() { // from class: com.prineside.tdi2.tiles.TargetTile.TargetTileFactory.6
                    @Override // java.lang.Runnable
                    public void run() {
                        double d;
                        double round = MathUtils.round(((f - 0.25f) / 0.75f) * 3.0f);
                        Double.isNaN(round);
                        double d2 = round / 10.0d;
                        if (d2 < 0.1d) {
                            d = 0.1d;
                        } else {
                            d = d2;
                        }
                        create.f12030r.add(new GameValueConfig(GameValueType.TOWERS_EXPERIENCE_GENERATION, d, false, true));
                    }
                }));
            }
            if (f >= 0.5f) {
                array.add(new RandomTileValue(5, new Runnable() { // from class: com.prineside.tdi2.tiles.TargetTile.TargetTileFactory.7
                    @Override // java.lang.Runnable
                    public void run() {
                        int round = MathUtils.round(((f - 0.5f) / 0.5f) * 5.0f);
                        if (round < 1) {
                            round = 1;
                        }
                        create.f12030r.add(new GameValueConfig(GameValueType.TOWERS_UPGRADE_PRICE, -round, false, true));
                    }
                }));
            }
            if (f >= 0.7f) {
                array.add(new RandomTileValue(3, new Runnable() { // from class: com.prineside.tdi2.tiles.TargetTile.TargetTileFactory.8
                    @Override // java.lang.Runnable
                    public void run() {
                        create.f12030r.add(new GameValueConfig(GameValueType.TOWERS_SELL_REFUND, 99.0d, true, false));
                    }
                }));
            }
            if (f >= 0.25f) {
                array.add(new RandomTileValue(10, new Runnable() { // from class: com.prineside.tdi2.tiles.TargetTile.TargetTileFactory.9
                    @Override // java.lang.Runnable
                    public void run() {
                        if (randomXS1282.nextFloat() < 0.1f) {
                            create.f12030r.add(new GameValueConfig(GameValueType.STARTING_HEALTH, 1.0d, true, false));
                            return;
                        }
                        int i2 = 2;
                        int round = MathUtils.round(((f - 0.25f) / 0.75f) * 5.0f) * 2;
                        if (round >= 2) {
                            i2 = round;
                        }
                        create.f12030r.add(new GameValueConfig(GameValueType.STARTING_HEALTH, i2, false, true));
                    }
                }));
            }
            array.add(new RandomTileValue(10, new Runnable() { // from class: com.prineside.tdi2.tiles.TargetTile.TargetTileFactory.10
                @Override // java.lang.Runnable
                public void run() {
                    int i2 = 10;
                    int round = MathUtils.round(f * 5.0f) * 10;
                    if (round >= 10) {
                        i2 = round;
                    }
                    create.f12030r.add(new GameValueConfig(GameValueType.STARTING_MONEY, i2, false, true));
                }
            }));
            GameValueType[] gameValueTypeArr2 = GameValueType.sharedTowerStats;
            int i2 = 0;
            for (int length = gameValueTypeArr2.length; i2 < length; length = length) {
                final GameValueType gameValueType2 = gameValueTypeArr2[i2];
                final RandomXS128 randomXS1283 = randomXS1282;
                array.add(new RandomTileValue(3, new Runnable() { // from class: com.prineside.tdi2.tiles.TargetTile.TargetTileFactory.11
                    @Override // java.lang.Runnable
                    public void run() {
                        int i3 = 10;
                        int round = MathUtils.round(randomXS1283.nextFloat() * f * 5.0f) * 10;
                        if (round >= 10) {
                            i3 = round;
                        }
                        create.f12030r.add(new GameValueConfig(gameValueType2, i3, false, true));
                    }
                }));
                i2++;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < array.size; i4++) {
                i3 += ((RandomTileValue) array.get(i4)).f12042a;
            }
            int i5 = C23813.f12041a[ProgressManager.getRarityFromQuality(f).ordinal()];
            if (i5 == 1) {
                nextInt = randomXS1282.nextInt(3);
            } else if (i5 == 2) {
                nextInt = randomXS1282.nextInt(2) + 3;
            } else if (i5 == 3) {
                nextInt = randomXS1282.nextInt(2) + 5;
            } else if (i5 != 4) {
                nextInt = randomXS1282.nextInt(2) + 9;
            } else {
                nextInt = randomXS1282.nextInt(2) + 7;
            }
            for (int i6 = 0; i6 < nextInt; i6++) {
                int nextInt2 = randomXS1282.nextInt(i3);
                int i7 = 0;
                int i8 = 0;
                while (true) {
                    if (i7 >= array.size) {
                        break;
                    }
                    if (((RandomTileValue) array.get(i7)).f12042a + i8 >= nextInt2 && !((RandomTileValue) array.get(i7)).f12044c) {
                        ((RandomTileValue) array.get(i7)).f12043b.run();
                        ((RandomTileValue) array.get(i7)).f12044c = true;
                        break;
                    }
                    i8 += ((RandomTileValue) array.get(i7)).f12042a;
                    i7++;
                }
            }
            create.f12030r.sort(new Comparator<GameValueConfig>() { // from class: com.prineside.tdi2.tiles.TargetTile.TargetTileFactory.12
                @Override // java.util.Comparator
                public int compare(GameValueConfig gameValueConfig, GameValueConfig gameValueConfig2) {
                    GameValueType gameValueType3 = gameValueConfig.type;
                    if (gameValueType3 == gameValueConfig2.type) {
                        return 0;
                    }
                    return gameValueType3.ordinal() > gameValueConfig2.type.ordinal() ? -1 : 1;
                }
            });
            return create;
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public TargetTile fromJson(JsonValue jsonValue) {
            TargetTile targetTile = (TargetTile) super.fromJson(jsonValue);
            if (jsonValue.has("d")) {
                JsonValue jsonValue2 = jsonValue.get("d");
                JsonValue jsonValue3 = jsonValue2.get("gv");
                if (jsonValue3 != null) {
                    Iterator<JsonValue> iterator2 = jsonValue3.iterator2();
                    while (iterator2.hasNext()) {
                        try {
                            targetTile.f12030r.add(GameValueConfig.fromJson(iterator2.next()));
                        } catch (Exception e) {
                            Logger.error("TargetTile", "failed to load GV", e);
                        }
                    }
                }
                targetTile.f12030r.sort(TargetTile.f12028C);
                targetTile.f12032t = jsonValue2.getBoolean("da", false);
                targetTile.f12031s = jsonValue2.getBoolean("usgv", false);
            }
            return targetTile;
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory
        public void setupAssets() {
            this.f12045d = Game.f8589i.assetManager.getTextureRegion("tile-type-target-hollow");
            this.f12046k = Game.f8589i.assetManager.getTextureRegion("tile-type-target-base");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/base-explosion.prt"), Game.f8589i.assetManager.getTextureRegion("particle-shockwave").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f12047p = new ParticleEffectPool(particleEffect, 1, 8);
            ParticleEffect particleEffect2 = new ParticleEffect();
            particleEffect2.load(Gdx.files.internal("particles/base-hit.prt"), Game.f8589i.assetManager.getTextureRegion("particle-shockwave").getAtlas());
            particleEffect2.setEmittersCleanUpBlendFunction(false);
            this.f12048q = new ParticleEffectPool(particleEffect2, 1, 16);
        }
    }

    @Override // com.prineside.tdi2.Tile
    public boolean canBeUpgraded() {
        return false;
    }

    @Override // com.prineside.tdi2.Tile
    public int generateSeedSalt() {
        int i = 0;
        int i2 = 0;
        while (true) {
            Array<GameValueConfig> array = this.f12030r;
            if (i >= array.size) {
                break;
            }
            GameValueConfig gameValueConfig = array.get(i);
            i2 = (((((((i2 * 21) + gameValueConfig.type.ordinal()) * 23) + (!gameValueConfig.allowBonuses ? 1 : 0)) * 27) + (!gameValueConfig.overwrite ? 1 : 0)) * 31) + ((int) (gameValueConfig.value * 100.0d));
            i++;
        }
        boolean z = this.f12031s;
        if (z) {
            i2 += 1000000;
        }
        if (z) {
            return i2 + 10000000;
        }
        return i2;
    }

    public Array<GameValueConfig> getGameValues() {
        return this.f12030r;
    }

    @Override // com.prineside.tdi2.Tile
    public ItemSubcategoryType getInventorySubcategory() {
        return ItemSubcategoryType.ME_BASES;
    }

    @Override // com.prineside.tdi2.Tile
    public float getWalkCost() {
        return 1.0f;
    }

    public boolean isDisableAbilities() {
        return this.f12032t;
    }

    @Override // com.prineside.tdi2.Tile
    public boolean isRoadType() {
        return true;
    }

    public boolean isUseStockGameValues() {
        return this.f12031s;
    }

    public boolean isWalkableTiles() {
        int i = 0;
        while (true) {
            Array<GameValueConfig> array = this.f12030r;
            if (i >= array.size) {
                return false;
            }
            GameValueConfig gameValueConfig = array.items[i];
            if (gameValueConfig.type == GameValueType.ENEMIES_WALK_ON_PLATFORMS && gameValueConfig.value >= 1.0d) {
                return true;
            }
            i++;
        }
    }

    public void startExplosionEffect() {
        this.f12029A = true;
        if (this.f8844S._particle != null) {
            m20773h();
            this.f8844S._particle.addShatterParticle(Game.f8589i.tileManager.f10161F.TARGET.f12046k, (this.f8901b * 128) + 64, (this.f8902d * 128) + 64, 128.0f, 0.0f, 1.0f, this.f12034v, new ExplosionInterpolation(), false);
            this.f8844S._particle.addShatterParticle(this.f12036x, (this.f8901b * 128) + 64, (this.f8902d * 128) + 64, 128.0f, 0.0f, 1.0f, this.f12035w, new ExplosionInterpolation(), true);
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.tileManager.f10161F.TARGET.f12047p.obtain();
            obtain.setPosition((this.f8901b * 128) + 64, (this.f8902d * 128) + 64);
            this.f8844S._particle.addParticle(obtain, false);
        }
    }

    public void updateAppearance() {
        this.f12033u = true;
    }

    /* loaded from: classes2.dex */
    public static class RandomTileValue {

        /* renamed from: a */
        public int f12042a;

        /* renamed from: b */
        public Runnable f12043b;

        /* renamed from: c */
        public boolean f12044c;

        public RandomTileValue(int i, Runnable runnable) {
            this.f12042a = i;
            this.f12043b = runnable;
        }
    }

    public TargetTile() {
        super(TileType.TARGET);
        this.f12030r = new Array<>(GameValueConfig.class);
        this.f12031s = false;
        this.f12032t = false;
        this.f12033u = true;
        Color color = Color.WHITE;
        this.f12034v = color;
        this.f12035w = color;
    }

    public void addGameValue(GameValueConfig gameValueConfig) {
        this.f12030r.add(gameValueConfig);
        this.f12033u = true;
    }

    @Override // com.prineside.tdi2.Tile
    public void addSellItems(Array<ItemStack> array) {
        int i;
        if (this.f12031s) {
            i = HttpStatus.SC_BAD_REQUEST;
        } else {
            i = HttpStatus.SC_OK;
        }
        if (this.f12032t) {
            i += HttpStatus.SC_OK;
        }
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, i + (this.f12030r.size * 100)));
    }

    @Override // com.prineside.tdi2.Tile
    public void drawBatch(SpriteBatch spriteBatch, float f, int i, int i2) {
        float f2 = this.f12038z - f;
        this.f12038z = f2;
        if (f2 < 0.0f) {
            this.f12038z = 0.0f;
        }
        m20773h();
        Color color = Config.WHITE_COLOR_CACHED_FLOAT_BITS;
        spriteBatch.setColor(color);
        float f3 = i;
        float f4 = i2;
        spriteBatch.draw(Game.f8589i.tileManager.f10161F.TARGET.f12045d, f3, f4, 128.0f, 128.0f);
        if (this.f12029A) {
            return;
        }
        Color color2 = f12027B;
        color2.set(this.f12034v);
        float f5 = this.f12038z;
        color2.mul((1.4f * f5) + 1.0f, (1.9f * f5) + 1.0f, (f5 * 0.7f) + 1.0f, 1.0f);
        spriteBatch.setColor(color2);
        spriteBatch.draw(Game.f8589i.tileManager.f10161F.TARGET.f12046k, f3, f4, 128.0f, 128.0f);
        spriteBatch.setColor(color);
    }

    @Override // com.prineside.tdi2.Tile
    public void fillInventoryWithInfo(Table table, float f) {
        if (isUseStockGameValues()) {
            Label label = new Label(Game.f8589i.localeManager.i18n.get("portal_disables_researches"), Game.f8589i.assetManager.getLabelStyle(21));
            label.setColor(MaterialColor.RED.P500);
            label.setWrap(true);
            label.setAlignment(1);
            table.add((Table) label).width(f - 16.0f).row();
        }
        if (isDisableAbilities()) {
            Label label2 = new Label(Game.f8589i.localeManager.i18n.get("portal_disables_abilities"), Game.f8589i.assetManager.getLabelStyle(21));
            label2.setColor(MaterialColor.YELLOW.P500);
            label2.setWrap(true);
            label2.setAlignment(1);
            table.add((Table) label2).width(f - 16.0f).row();
        }
        if (isWalkableTiles()) {
            Label label3 = new Label(Game.f8589i.gameValueManager.getTitle(GameValueType.ENEMIES_WALK_ON_PLATFORMS), Game.f8589i.assetManager.getLabelStyle(21));
            label3.setColor(MaterialColor.LIGHT_BLUE.P500);
            label3.setWrap(true);
            label3.setAlignment(1);
            table.add((Table) label3).width(f - 16.0f).row();
        }
        Table table2 = new Table();
        table.add(table2).width(f).padTop(8.0f).row();
        Array<GameValueConfig> gameValues = getGameValues();
        if (gameValues.size != 0) {
            for (int i = 0; i < gameValues.size; i++) {
                final GameValueConfig gameValueConfig = gameValues.get(i);
                Group group = new Group();
                group.setTransform(false);
                if (i % 2 == 0) {
                    Image image = new Image(Game.f8589i.assetManager.getDrawable("gradient-horizontal"));
                    image.setSize(f, 43.0f);
                    image.setPosition(0.0f, -2.0f);
                    image.setColor(0.0f, 0.0f, 0.0f, 0.21f);
                    group.addActor(image);
                }
                Array<TextureRegionConfig> icon = Game.f8589i.gameValueManager.getStockValueConfig(gameValueConfig.type).getIcon();
                for (int i2 = 0; i2 < icon.size; i2++) {
                    group.addActor(icon.items[i2].createImage(3.75f, 4.5f, 30.0f));
                }
                LimitedWidthLabel limitedWidthLabel = new LimitedWidthLabel(Game.f8589i.gameValueManager.getTitle(gameValueConfig.type), 21, 18, 172.5f);
                limitedWidthLabel.setSize(150.0f, 39.0f);
                limitedWidthLabel.setPosition(56.0f, 0.0f);
                limitedWidthLabel.setTouchable(Touchable.enabled);
                limitedWidthLabel.addListener(new ClickListener() { // from class: com.prineside.tdi2.tiles.TargetTile.2
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                    public void clicked(InputEvent inputEvent, float f2, float f3) {
                        Game game = Game.f8589i;
                        game.uiManager.dialog.showAlert(game.gameValueManager.getTitle(gameValueConfig.type));
                    }
                });
                group.addActor(limitedWidthLabel);
                if (!gameValueConfig.allowBonuses) {
                    Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-check"));
                    image2.setSize(24.0f, 24.0f);
                    image2.setPosition(310.5f, 7.5f);
                    group.addActor(image2);
                }
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.setLength(0);
                GameValueManager.ValueUnits valueUnits = Game.f8589i.gameValueManager.getStockValueConfig(gameValueConfig.type).units;
                if (valueUnits == GameValueManager.ValueUnits.BOOLEAN) {
                    if (gameValueConfig.value == 0.0d) {
                        stringBuilder.append(Game.f8589i.localeManager.i18n.get("disabled").toLowerCase(Locale.ENGLISH));
                    }
                } else {
                    stringBuilder.append(Game.f8589i.gameValueManager.formatEffectValue(gameValueConfig.value, valueUnits));
                    if (gameValueConfig.overwrite) {
                        stringBuilder.setCharAt(0, SignatureVisitor.INSTANCEOF);
                    }
                    if (stringBuilder.length == 1) {
                        stringBuilder.append('0');
                    }
                }
                Label label4 = new Label(stringBuilder, Game.f8589i.assetManager.getLabelStyle(24));
                label4.setPosition((f - 75.0f) - 8.0f, 0.0f);
                label4.setSize(75.0f, 39.0f);
                label4.setAlignment(16);
                group.addActor(label4);
                table2.add((Table) group).size(f, 39.0f).padBottom(4.0f).row();
            }
            return;
        }
        table.add((Table) new Label(Game.f8589i.localeManager.i18n.get("base_has_no_effects"), Game.f8589i.assetManager.getLabelStyle(21))).row();
    }

    @Override // com.prineside.tdi2.Tile
    public void from(Tile tile) {
        TargetTile targetTile = (TargetTile) tile;
        this.f12030r.clear();
        int i = 0;
        while (true) {
            Array<GameValueConfig> array = targetTile.f12030r;
            if (i < array.size) {
                this.f12030r.add(array.get(i).cpy());
                i++;
            } else {
                this.f12031s = targetTile.f12031s;
                this.f12032t = targetTile.f12032t;
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Tile
    public double getPrestigeScore() {
        double d;
        int i = this.f12030r.size;
        double d2 = i;
        Double.isNaN(d2);
        double d3 = (d2 * 0.5d) + 0.05d;
        if (i >= 8) {
            d = 1.2d;
        } else if (i >= 6) {
            d = 0.95d;
        } else if (i >= 4) {
            d = 0.65d;
        } else if (i >= 2) {
            d = 0.3d;
        } else {
            d = 0.1d;
        }
        double d4 = d3 * d;
        if (this.f12031s) {
            d4 += 1.5d;
        }
        if (this.f12032t) {
            return d4 + 0.8d;
        }
        return d4;
    }

    @Override // com.prineside.tdi2.Tile
    public RarityType getRarity() {
        int i = this.f12030r.size;
        if (i <= 2) {
            return RarityType.COMMON;
        }
        if (i <= 4) {
            return RarityType.RARE;
        }
        if (i <= 6) {
            return RarityType.VERY_RARE;
        }
        if (i <= 8) {
            return RarityType.EPIC;
        }
        return RarityType.LEGENDARY;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    @Override // com.prineside.tdi2.Tile
    public int getSortingScore(ItemSortingType itemSortingType) {
        int i;
        int i2;
        if (itemSortingType == ItemSortingType.RARITY) {
            int ordinal = getRarity().ordinal() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
            if (this.f12031s) {
                ordinal++;
            }
            if (this.f12032t) {
                ordinal++;
            }
            i = this.f12030r.size;
            i2 = ordinal;
        } else {
            ?? r2 = this.f12031s;
            int i3 = r2;
            if (this.f12032t) {
                i3 = r2 + 1;
            }
            i = this.f12030r.size;
            i2 = i3;
        }
        return i2 + i;
    }

    /* renamed from: h */
    public final void m20773h() {
        if (this.f12033u) {
            this.f12033u = false;
            int i = HttpStatus.SC_METHOD_FAILURE;
            int i2 = 0;
            while (true) {
                Array<GameValueConfig> array = this.f12030r;
                int i3 = 3;
                if (i2 >= array.size) {
                    break;
                }
                int ordinal = (((i * 27) + array.get(i2).type.ordinal()) * 31) + (this.f12030r.get(i2).overwrite ? 1 : 0);
                if (!this.f12030r.get(i2).allowBonuses) {
                    i3 = 0;
                }
                i = ((ordinal + i3) * 37) + ((int) (this.f12030r.get(i2).value * 10.0d));
                i2++;
            }
            if (this.f12031s) {
                i = (i * 23) + 7;
            }
            if (this.f12032t) {
                i = (i * 31) + 5;
            }
            int abs = StrictMath.abs(i) % 1296;
            int i4 = abs / 18;
            int i5 = i4 / 18;
            int i6 = i4 % 18;
            int i7 = abs % 18;
            if (i5 != 1) {
                if (i5 != 2) {
                    if (i5 != 3) {
                        this.f12036x = Game.f8589i.assetManager.getTextureRegion("tile-type-target-core-4");
                    } else {
                        this.f12036x = Game.f8589i.assetManager.getTextureRegion("tile-type-target-core-3");
                    }
                } else {
                    this.f12036x = Game.f8589i.assetManager.getTextureRegion("tile-type-target-core-2");
                }
            } else {
                this.f12036x = Game.f8589i.assetManager.getTextureRegion("tile-type-target-core-1");
            }
            Color[][] colorArr = MaterialColor.allColors;
            Color[] colorArr2 = colorArr[i7];
            MaterialColor.Variants variants = MaterialColor.Variants.P500;
            this.f12035w = colorArr2[variants.ordinal()];
            this.f12034v = colorArr[i6][variants.ordinal()];
            this.f12037y = abs;
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void postDrawBatch(SpriteBatch spriteBatch, float f, int i, int i2) {
        if (this.f12029A) {
            return;
        }
        m20773h();
        Color color = f12027B;
        color.set(this.f12035w);
        float f2 = this.f12038z;
        color.mul((1.4f * f2) + 1.0f, (1.9f * f2) + 1.0f, (f2 * 0.7f) + 1.0f, 1.0f);
        spriteBatch.setColor(color);
        spriteBatch.draw(this.f12036x, i, i2, 128.0f, 128.0f);
        spriteBatch.setColor(Config.WHITE_COLOR_CACHED_FLOAT_BITS);
    }

    public void removeGameValue(GameValueConfig gameValueConfig) {
        this.f12030r.removeValue(gameValueConfig, true);
        this.f12033u = true;
    }

    @Override // com.prineside.tdi2.Tile
    public boolean sameAs(Tile tile) {
        if (this.type != tile.type) {
            return false;
        }
        TargetTile targetTile = (TargetTile) tile;
        if (targetTile.f12031s != this.f12031s || targetTile.f12032t != this.f12032t || targetTile.f12030r.size != this.f12030r.size) {
            return false;
        }
        int i = 0;
        while (true) {
            Array<GameValueConfig> array = this.f12030r;
            if (i < array.size) {
                GameValueConfig gameValueConfig = array.get(i);
                GameValueConfig gameValueConfig2 = targetTile.f12030r.get(i);
                if (gameValueConfig.overwrite != gameValueConfig2.overwrite || gameValueConfig.value != gameValueConfig2.value || gameValueConfig.allowBonuses != gameValueConfig2.allowBonuses || gameValueConfig.type != gameValueConfig2.type) {
                    return false;
                }
                i++;
            } else {
                return true;
            }
        }
    }

    public void setDisableAbilities(boolean z) {
        this.f12032t = z;
        this.f12033u = true;
    }

    public void setUseStockGameValues(boolean z) {
        this.f12031s = z;
        this.f12033u = true;
    }

    public void showHitEffect(Vector2 vector2) {
        GameSystemProvider gameSystemProvider = this.f8844S;
        if (gameSystemProvider != null && gameSystemProvider._particle != null) {
            m20773h();
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.tileManager.f10161F.TARGET.f12048q.obtain();
            obtain.setPosition((this.f8901b * 128) + 64, (this.f8902d * 128) + 64);
            this.f8844S._particle.addParticle(obtain, false);
            float f = this.f12038z + 0.4f;
            this.f12038z = f;
            if (f > 1.0f) {
                this.f12038z = 1.0f;
            }
            Color color = f12027B;
            color.set(this.f12034v);
            color.f3889a = 0.5f;
            this.f8844S._particle.addFlashParticle(Game.f8589i.tileManager.f10161F.TARGET.f12046k, (this.f8901b * 128) + 64, (this.f8902d * 128) + 64, 64.0f, 64.0f, 128.0f, 128.0f, 0.0f, color);
            color.set(this.f12035w);
            color.f3889a = 0.5f;
            this.f8844S._particle.addFlashParticle(this.f12036x, (this.f8901b * 128) + 64, (this.f8902d * 128) + 64, 64.0f, 64.0f, 128.0f, 128.0f, 0.0f, color);
        }
    }

    @Override // com.prineside.tdi2.Tile
    public Group generateUiIcon(float f) {
        m20773h();
        float f2 = f / 128.0f;
        Group group = new Group();
        group.setTransform(false);
        Image image = new Image(Game.f8589i.tileManager.getRoadTexture(null, null, null, null));
        image.setSize(f, f);
        group.addActor(image);
        Image image2 = new Image(new TextureRegionDrawable(Game.f8589i.tileManager.f10161F.TARGET.f12045d));
        image2.setSize(f, f);
        group.addActor(image2);
        Image image3 = new Image(new TextureRegionDrawable(Game.f8589i.tileManager.f10161F.TARGET.f12046k));
        image3.setSize(f, f);
        image3.setColor(this.f12034v);
        group.addActor(image3);
        Image image4 = new Image(new TextureRegionDrawable(this.f12036x));
        image4.setSize(f, f);
        image4.setColor(this.f12035w);
        group.addActor(image4);
        for (int i = 0; i < this.f12030r.size; i++) {
            Image image5 = new Image(Game.f8589i.assetManager.getDrawable("small-circle-outline"));
            float f3 = 10.0f * f2;
            image5.setSize(f3, f3);
            float f4 = 12.0f * f2;
            image5.setPosition(((i / 7) * f4) + f3, f3 + (f4 * (i % 7)));
            group.addActor(image5);
        }
        if (isUseStockGameValues()) {
            Image image6 = new Image(Game.f8589i.assetManager.getDrawable("small-circle-outline"));
            float f5 = f2 * 16.0f;
            image6.setSize(f5, f5);
            image6.setPosition(10.0f * f2, f2 * 102.0f);
            image6.setColor(MaterialColor.RED.P500);
            group.addActor(image6);
        }
        if (this.f12032t) {
            Image image7 = new Image(Game.f8589i.assetManager.getDrawable("small-circle-outline"));
            float f6 = f2 * 16.0f;
            image7.setSize(f6, f6);
            image7.setPosition(28.0f * f2, f2 * 102.0f);
            image7.setColor(MaterialColor.YELLOW.P500);
            group.addActor(image7);
        }
        if (isWalkableTiles()) {
            Image image8 = new Image(Game.f8589i.assetManager.getDrawable("small-circle-outline"));
            float f7 = 16.0f * f2;
            image8.setSize(f7, f7);
            image8.setPosition(46.0f * f2, f2 * 102.0f);
            image8.setColor(MaterialColor.LIGHT_BLUE.P500);
            group.addActor(image8);
        }
        return group;
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12030r = (Array) kryo.readObject(input, Array.class);
        this.f12031s = input.readBoolean();
        this.f12032t = input.readBoolean();
    }

    @Override // com.prineside.tdi2.Tile
    public void toJson(Json json) {
        super.toJson(json);
        json.writeObjectStart("d");
        json.writeValue("da", Boolean.valueOf(this.f12032t));
        json.writeValue("usgv", Boolean.valueOf(this.f12031s));
        json.writeArrayStart("gv");
        for (int i = 0; i < this.f12030r.size; i++) {
            json.writeObjectStart();
            this.f12030r.get(i).toJson(json);
            json.writeObjectEnd();
        }
        json.writeArrayEnd();
        json.writeObjectEnd();
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.f12030r);
        output.writeBoolean(this.f12031s);
        output.writeBoolean(this.f12032t);
    }
}
