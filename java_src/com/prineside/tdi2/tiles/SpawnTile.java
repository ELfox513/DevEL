package com.prineside.tdi2.tiles;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFontCache;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Cell;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.EnemyGroup;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.p036ui.actors.LabelToggleButton;
import com.prineside.tdi2.p036ui.actors.TextFieldXPlatform;
import com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu;
import com.prineside.tdi2.p036ui.shared.ItemCreationOverlay;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.REGS;
import java.util.Comparator;
import java.util.Iterator;
import p218x1.C7221i;
@REGS
/* loaded from: classes2.dex */
public class SpawnTile extends Tile {

    /* renamed from: w */
    public static final StringBuilder f12006w = new StringBuilder();
    public int difficulty;
    public Array<Array<EnemyGroup.SpawnEnemyGroup>> enemySpawnQueues;
    public int enemySpawnQueuesFirstWave;

    /* renamed from: r */
    public Array<AllowedEnemyConfig> f12007r;

    /* renamed from: s */
    public ObjectSet<EnemyType> f12008s;
    @NAGS

    /* renamed from: t */
    public float f12009t;
    @NAGS

    /* renamed from: u */
    public ParticleEffectPool.PooledEffect f12010u;
    @NAGS

    /* renamed from: v */
    public BitmapFontCache f12011v;

    /* renamed from: com.prineside.tdi2.tiles.SpawnTile$3 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C23773 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12020a;

        static {
            int[] iArr = new int[RarityType.values().length];
            f12020a = iArr;
            try {
                iArr[RarityType.LEGENDARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12020a[RarityType.EPIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12020a[RarityType.VERY_RARE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12020a[RarityType.RARE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class AllowedEnemyConfig implements KryoSerializable {
        public EnemyType enemyType;
        public int firstWave;
        public int lastWave;

        public AllowedEnemyConfig() {
            this.firstWave = 1;
            this.lastWave = 0;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.enemyType = (EnemyType) kryo.readObjectOrNull(input, EnemyType.class);
            this.firstWave = input.readVarInt(true);
            this.lastWave = input.readInt();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.enemyType, EnemyType.class);
            output.writeVarInt(this.firstWave, true);
            output.writeInt(this.lastWave);
        }

        public AllowedEnemyConfig(EnemyType enemyType, int i, int i2) {
            this.enemyType = enemyType;
            this.firstWave = i;
            this.lastWave = i2;
        }
    }

    /* loaded from: classes2.dex */
    public static class SpawnTileFactory extends Tile.Factory.AbstractFactory<SpawnTile> {

        /* renamed from: d */
        public TextureRegion f12021d;

        /* renamed from: k */
        public TextureRegion f12022k;

        /* renamed from: p */
        public TextureRegion f12023p;

        /* renamed from: q */
        public TextureRegion f12024q;

        /* renamed from: r */
        public ParticleEffectPool f12025r;

        public SpawnTileFactory() {
            super(TileType.SPAWN);
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public int getProbabilityForPrize(float f, ProgressManager.InventoryStatistics inventoryStatistics) {
            int i = inventoryStatistics.byTileType[TileType.SPAWN.ordinal()];
            return i == 0 ? CoreTile.FIXED_LEVEL_XP_REQUIREMENT : i > 500 ? 0 : 50;
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public SpawnTile create() {
            return new SpawnTile();
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public SpawnTile createRandom(float f, RandomXS128 randomXS128) {
            int i;
            boolean z;
            if (randomXS128 == null) {
                randomXS128 = FastRandom.random;
            }
            SpawnTile create = create();
            RarityType rarityFromQuality = ProgressManager.getRarityFromQuality(f);
            int i2 = 100;
            if (randomXS128.nextFloat() < 0.5f) {
                int i3 = C23773.f12020a[rarityFromQuality.ordinal()];
                if (i3 == 1) {
                    i2 = 50;
                    i = 59;
                } else if (i3 == 2) {
                    i2 = 60;
                    i = 69;
                } else if (i3 == 3) {
                    i2 = 70;
                    i = 79;
                } else if (i3 != 4) {
                    i = 100;
                    i2 = 90;
                } else {
                    i2 = 80;
                    i = 89;
                }
            } else {
                int i4 = C23773.f12020a[rarityFromQuality.ordinal()];
                if (i4 == 1) {
                    i = 500;
                    i2 = 449;
                } else if (i4 == 2) {
                    i2 = 350;
                    i = 449;
                } else if (i4 == 3) {
                    i2 = 250;
                    i = 349;
                } else if (i4 != 4) {
                    i = 149;
                } else {
                    i = 249;
                    i2 = 150;
                }
            }
            int round = i2 + MathUtils.round((i - i2) * randomXS128.nextFloat());
            create.difficulty = round;
            if (round < 150) {
                create.difficulty = round - (round % 5);
            } else if (round > 495) {
                create.difficulty = 500;
            } else {
                create.difficulty = round - (round % 10);
            }
            Array<AllowedEnemyConfig> array = new Array<>(AllowedEnemyConfig.class);
            array.add(new AllowedEnemyConfig(EnemyType.REGULAR, 1, 0));
            array.add(new AllowedEnemyConfig(EnemyType.BOSS, 1, 0));
            int round2 = StrictMath.round(randomXS128.nextFloat() * f * 3.0f) + 4;
            while (round2 > 0) {
                EnemyType[] enemyTypeArr = EnemyType.mainEnemyTypes;
                EnemyType enemyType = enemyTypeArr[randomXS128.nextInt(enemyTypeArr.length)];
                int i5 = 0;
                while (true) {
                    if (i5 >= array.size) {
                        z = false;
                        break;
                    } else if (array.items[i5].enemyType == enemyType) {
                        z = true;
                        break;
                    } else {
                        i5++;
                    }
                }
                if (!z) {
                    round2--;
                    array.add(new AllowedEnemyConfig(enemyType, 1, 0));
                }
            }
            array.sort(new Comparator<AllowedEnemyConfig>() { // from class: com.prineside.tdi2.tiles.SpawnTile.SpawnTileFactory.1
                @Override // java.util.Comparator
                public int compare(AllowedEnemyConfig allowedEnemyConfig, AllowedEnemyConfig allowedEnemyConfig2) {
                    return C7221i.m2085a(allowedEnemyConfig.enemyType.ordinal(), allowedEnemyConfig2.enemyType.ordinal());
                }
            });
            create.setAllowedEnemies(array);
            return create;
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public SpawnTile fromJson(JsonValue jsonValue) {
            SpawnTile spawnTile = (SpawnTile) super.fromJson(jsonValue);
            if (jsonValue.has("d")) {
                JsonValue jsonValue2 = jsonValue.get("d");
                JsonValue jsonValue3 = jsonValue2.get("et");
                if (jsonValue3 != null) {
                    Array<AllowedEnemyConfig> array = new Array<>();
                    Iterator<JsonValue> iterator2 = jsonValue3.iterator2();
                    while (iterator2.hasNext()) {
                        array.add(new AllowedEnemyConfig(EnemyType.valueOf(iterator2.next().asString()), 1, 0));
                    }
                    spawnTile.setAllowedEnemies(array);
                } else {
                    int i = Integer.MAX_VALUE;
                    JsonValue jsonValue4 = jsonValue2.get("ae");
                    Array<AllowedEnemyConfig> array2 = new Array<>();
                    Iterator<JsonValue> iterator22 = jsonValue4.iterator2();
                    while (iterator22.hasNext()) {
                        JsonValue next = iterator22.next();
                        AllowedEnemyConfig allowedEnemyConfig = new AllowedEnemyConfig(EnemyType.valueOf(next.getString("t")), next.getInt("f", 1), next.getInt("l", 0));
                        int i2 = allowedEnemyConfig.firstWave;
                        if (i2 < i) {
                            i = i2;
                        }
                        array2.add(allowedEnemyConfig);
                    }
                    if (array2.size == 0) {
                        array2.add(new AllowedEnemyConfig(EnemyType.REGULAR, 1, 0));
                    }
                    if (i > 1) {
                        array2.get(0).firstWave = 1;
                    }
                    spawnTile.setAllowedEnemies(array2);
                }
                int i3 = jsonValue2.getInt("d", 100);
                spawnTile.difficulty = i3;
                if (i3 < 1) {
                    spawnTile.difficulty = 1;
                }
                if (spawnTile.difficulty > 65535) {
                    spawnTile.difficulty = MeshBuilder.MAX_INDEX;
                }
            }
            return spawnTile;
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory
        public void setupAssets() {
            this.f12021d = Game.f8589i.assetManager.getTextureRegion("tile-type-spawn-overlay");
            this.f12022k = Game.f8589i.assetManager.getTextureRegion("tile-type-spawn-portal");
            this.f12023p = Game.f8589i.assetManager.getTextureRegion("tile-type-spawn-glow");
            this.f12024q = Game.f8589i.assetManager.getTextureRegion("tile-type-spawn-inactive");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/portal.prt"), Game.f8589i.assetManager.getTextureRegion("particle-twist").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f12025r = new ParticleEffectPool(particleEffect, 1, 128);
        }
    }

    public void addAllowedEnemy(EnemyType enemyType, int i, int i2) {
        boolean z = false;
        int i3 = 0;
        while (true) {
            Array<AllowedEnemyConfig> array = this.f12007r;
            if (i3 >= array.size) {
                break;
            }
            AllowedEnemyConfig allowedEnemyConfig = array.items[i3];
            if (allowedEnemyConfig.enemyType == enemyType) {
                allowedEnemyConfig.firstWave = i;
                allowedEnemyConfig.lastWave = i2;
                z = true;
                break;
            }
            i3++;
        }
        if (!z) {
            AllowedEnemyConfig allowedEnemyConfig2 = new AllowedEnemyConfig();
            allowedEnemyConfig2.enemyType = enemyType;
            allowedEnemyConfig2.firstWave = i;
            allowedEnemyConfig2.lastWave = i2;
            this.f12007r.add(allowedEnemyConfig2);
            this.f12008s.add(enemyType);
        }
    }

    @Override // com.prineside.tdi2.Tile
    public boolean canBeUpgraded() {
        return false;
    }

    public Array<AllowedEnemyConfig> getAllowedEnemies() {
        return this.f12007r;
    }

    public ObjectSet<EnemyType> getAllowedEnemiesSet() {
        return this.f12008s;
    }

    public AllowedEnemyConfig getEnemyConfig(EnemyType enemyType) {
        int i = 0;
        while (true) {
            Array<AllowedEnemyConfig> array = this.f12007r;
            if (i < array.size) {
                AllowedEnemyConfig[] allowedEnemyConfigArr = array.items;
                if (allowedEnemyConfigArr[i].enemyType == enemyType) {
                    return allowedEnemyConfigArr[i];
                }
                i++;
            } else {
                return null;
            }
        }
    }

    @Override // com.prineside.tdi2.Tile
    public ItemSubcategoryType getInventorySubcategory() {
        return ItemSubcategoryType.ME_SPAWNS;
    }

    @Override // com.prineside.tdi2.Tile
    public float getValue() {
        return this.difficulty * 0.01f;
    }

    @Override // com.prineside.tdi2.Tile
    public float getWalkCost() {
        return 1.0f;
    }

    @Override // com.prineside.tdi2.Tile
    public boolean isRoadType() {
        return true;
    }

    public SpawnTile() {
        super(TileType.SPAWN);
        this.difficulty = 100;
        this.f12007r = new Array<>(AllowedEnemyConfig.class);
        this.f12008s = new ObjectSet<>();
        this.enemySpawnQueuesFirstWave = -1;
        this.enemySpawnQueues = new Array<>(Array.class);
        for (int i = 0; i <= 10; i++) {
            this.enemySpawnQueues.add(new Array<>(EnemyGroup.SpawnEnemyGroup.class));
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void addSellItems(Array<ItemStack> array) {
        float f;
        int i = this.difficulty;
        if (i < 100) {
            f = 100.0f - ((i - 50) * 2.0f);
        } else {
            f = (i - 100) / 4.0f;
        }
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, MathUtils.ceil((float) StrictMath.pow(f * 3.0f, 1.2999999523162842d)) + HttpStatus.SC_OK));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
        if (r21.enemySpawnQueues.get(1).size != 0) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01c3 A[ORIG_RETURN, RETURN] */
    @Override // com.prineside.tdi2.Tile
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawBatch(com.badlogic.gdx.graphics.g2d.SpriteBatch r22, float r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.tiles.SpawnTile.drawBatch(com.badlogic.gdx.graphics.g2d.SpriteBatch, float, int, int):void");
    }

    /* renamed from: e */
    public final BitmapFontCache m20781e() {
        if (this.f12011v == null && this.f8844S._mapRendering != null) {
            this.f12011v = new BitmapFontCache(Game.f8589i.assetManager.getFont(21));
            StringBuilder stringBuilder = f12006w;
            stringBuilder.setLength(0);
            stringBuilder.append(this.difficulty).append('%');
            this.f12011v.addText(stringBuilder, 0.0f, 0.0f);
            this.f12011v.translate((getX() * 128) + 10.0f, (getY() * 128) + 8.0f + 21.0f);
        }
        return this.f12011v;
    }

    @Override // com.prineside.tdi2.Tile
    public void fillInventoryWithInfo(Table table, float f) {
        Table table2 = new Table();
        table.add(table2).width(f).row();
        table2.add();
        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-wave"));
        image.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        table2.add((Table) image).size(32.0f).top().left().padLeft(12.0f).padBottom(4.0f).row();
        Array.ArrayIterator<AllowedEnemyConfig> it = getAllowedEnemies().iterator();
        while (it.hasNext()) {
            AllowedEnemyConfig next = it.next();
            table2.add((Table) new Image(Game.f8589i.enemyManager.getFactory(next.enemyType).getTexture())).size(32.0f).padRight(16.0f).padLeft(16.0f).padTop(4.0f);
            Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(24));
            int max = StrictMath.max(next.firstWave, 1);
            if (next.lastWave < 1) {
                label.setText(max + " - " + ((Object) Game.f8589i.assetManager.replaceRegionAliasesWithChars("<@icon-infinity>")));
            } else {
                label.setText(max + " - " + next.lastWave);
            }
            table2.add((Table) label).minWidth(100.0f).row();
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void fillItemCreationForm(final ItemCreationOverlay itemCreationOverlay) {
        EnemyType[] enemyTypeArr;
        String valueOf;
        String valueOf2;
        itemCreationOverlay.label("Difficulty");
        itemCreationOverlay.textField(String.valueOf(this.difficulty), new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.a0
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                SpawnTile.this.m20780f(itemCreationOverlay, (String) obj);
            }
        });
        itemCreationOverlay.label("Allowed enemies");
        Table table = new Table();
        itemCreationOverlay.form.add(table).top().left().row();
        for (final EnemyType enemyType : EnemyType.mainEnemyTypes) {
            table.add((Table) new Image(Game.f8589i.enemyManager.getFactory(enemyType).getTexture())).size(32.0f).pad(8.0f).padRight(12.0f);
            final LabelToggleButton labelToggleButton = itemCreationOverlay.toggle(false, Game.f8589i.enemyManager.getFactory(enemyType).getTitle(), getAllowedEnemiesSet().contains(enemyType), new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.b0
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public final void retrieved(Object obj) {
                    SpawnTile.this.m20779g(enemyType, itemCreationOverlay, (Boolean) obj);
                }
            });
            table.add(labelToggleButton).height(48.0f).width(400.0f).padLeft(16.0f).padBottom(4.0f);
            AllowedEnemyConfig enemyConfig = getEnemyConfig(enemyType);
            if (enemyConfig == null) {
                valueOf = Config.SITE_API_VERSION;
            } else {
                valueOf = String.valueOf(enemyConfig.firstWave);
            }
            final TextFieldXPlatform textFieldXPlatform = new TextFieldXPlatform(valueOf, itemCreationOverlay.textFieldStyle);
            table.add((Table) textFieldXPlatform).size(100.0f, 48.0f).padLeft(16.0f);
            textFieldXPlatform.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.SpawnTile.1
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    try {
                        int parseInt = Integer.parseInt(textFieldXPlatform.getText());
                        if (parseInt >= 1) {
                            AllowedEnemyConfig enemyConfig2 = SpawnTile.this.getEnemyConfig(enemyType);
                            if (enemyConfig2 == null) {
                                SpawnTile.this.addAllowedEnemy(enemyType, parseInt, 0);
                                labelToggleButton.setEnabled(true);
                            } else {
                                enemyConfig2.firstWave = parseInt;
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            });
            if (enemyConfig == null) {
                valueOf2 = "0";
            } else {
                valueOf2 = String.valueOf(enemyConfig.lastWave);
            }
            final TextFieldXPlatform textFieldXPlatform2 = new TextFieldXPlatform(valueOf2, itemCreationOverlay.textFieldStyle);
            table.add((Table) textFieldXPlatform2).size(100.0f, 48.0f).padLeft(16.0f).row();
            textFieldXPlatform2.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.SpawnTile.2
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    try {
                        int parseInt = Integer.parseInt(textFieldXPlatform2.getText());
                        if (parseInt >= 0) {
                            AllowedEnemyConfig enemyConfig2 = SpawnTile.this.getEnemyConfig(enemyType);
                            if (enemyConfig2 == null) {
                                SpawnTile.this.addAllowedEnemy(enemyType, 1, parseInt);
                                labelToggleButton.setEnabled(true);
                            } else {
                                enemyConfig2.lastWave = parseInt;
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void fillMapEditorMenu(Group group, MapEditorItemInfoMenu mapEditorItemInfoMenu) {
        Actor label = new Label(Game.f8589i.localeManager.i18n.get("difficulty") + ": " + this.difficulty + "%", Game.f8589i.assetManager.getLabelStyle(30));
        float f = 40.0f;
        label.setPosition(40.0f, 770.0f);
        group.addActor(label);
        Actor label2 = new Label(Game.f8589i.localeManager.i18n.get("enemies_that_can_be_spawned").toUpperCase(), new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), Color.WHITE));
        label2.setColor(1.0f, 1.0f, 1.0f, 0.28f);
        label2.setPosition(40.0f, 730.0f);
        label2.setSize(100.0f, 17.0f);
        group.addActor(label2);
        Group group2 = new Group();
        group2.setTransform(false);
        group2.setSize(520.0f, 32.0f);
        group2.setPosition(0.0f, 680.0f);
        group.addActor(group2);
        int i = getAllowedEnemies().size;
        float f2 = 64.0f;
        float f3 = i * 64.0f;
        if (f3 <= 440.0f) {
            f = (440.0f - f3) / 2.0f;
        } else {
            f2 = 376.0f / (i - 1);
        }
        Array.ArrayIterator<AllowedEnemyConfig> it = getAllowedEnemies().iterator();
        while (it.hasNext()) {
            Image image = new Image(Game.f8589i.enemyManager.getFactory(it.next().enemyType).getTexture());
            image.setSize(32.0f, 32.0f);
            image.setPosition(f, 0.0f);
            group2.addActor(image);
            f += f2;
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void from(Tile tile) {
        SpawnTile spawnTile = (SpawnTile) tile;
        Array<AllowedEnemyConfig> array = new Array<>();
        int i = 0;
        while (true) {
            Array<AllowedEnemyConfig> array2 = spawnTile.f12007r;
            if (i < array2.size) {
                AllowedEnemyConfig allowedEnemyConfig = array2.items[i];
                array.add(new AllowedEnemyConfig(allowedEnemyConfig.enemyType, allowedEnemyConfig.firstWave, allowedEnemyConfig.lastWave));
                i++;
            } else {
                setAllowedEnemies(array);
                this.difficulty = spawnTile.difficulty;
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Tile
    public int generateSeedSalt() {
        int i = this.difficulty;
        int i2 = 0;
        while (true) {
            Array<AllowedEnemyConfig> array = this.f12007r;
            if (i2 < array.size) {
                i = (i * 29) + array.get(i2).enemyType.ordinal();
                i2++;
            } else {
                return i;
            }
        }
    }

    @Override // com.prineside.tdi2.Tile
    public Group generateUiIcon(float f) {
        float f2 = f / 128.0f;
        Group group = new Group();
        int i = 0;
        group.setTransform(false);
        Image image = new Image(Game.f8589i.tileManager.getRoadTexture(null, null, null, null));
        image.setSize(f, f);
        group.addActor(image);
        Image image2 = new Image(new TextureRegionDrawable(Game.f8589i.tileManager.f10161F.SPAWN.f12022k));
        image2.setSize(f, f);
        group.addActor(image2);
        Image image3 = new Image(new TextureRegionDrawable(Game.f8589i.tileManager.f10161F.SPAWN.f12021d));
        image3.setSize(f, f);
        group.addActor(image3);
        Image image4 = new Image(new TextureRegionDrawable(Game.f8589i.tileManager.f10161F.SPAWN.f12023p));
        image4.setSize(f, f);
        image4.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        group.addActor(image4);
        StringBuilder stringBuilder = f12006w;
        stringBuilder.setLength(0);
        stringBuilder.append(this.difficulty).append('%');
        float f3 = 24.0f * f2;
        Label label = new Label(stringBuilder, Game.f8589i.assetManager.getLabelStyle(MathUtils.round(f3)));
        label.setPosition(10.0f, 8.0f);
        group.addActor(label);
        Table table = new Table();
        table.setSize(f, f - f3);
        table.setPosition(0.0f, f3);
        group.addActor(table);
        while (true) {
            Array<AllowedEnemyConfig> array = this.f12007r;
            if (i < array.size) {
                float f4 = 20.0f * f2;
                Cell pad = table.add((Table) new Image(Game.f8589i.enemyManager.getFactory(array.items[i].enemyType).getTexture())).size(f4, f4).pad(2.0f * f2);
                if (i % 4 == 3) {
                    pad.row();
                }
                i++;
            } else {
                return group;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x008f A[SYNTHETIC] */
    @Override // com.prineside.tdi2.Tile
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double getPrestigeScore() {
        /*
            r9 = this;
            int r0 = r9.difficulty
            double r1 = (double) r0
            r3 = 4647503709213818880(0x407f400000000000, double:500.0)
            java.lang.Double.isNaN(r1)
            double r1 = r1 / r3
            r3 = 4605380978949069210(0x3fe999999999999a, double:0.8)
            double r1 = r1 * r3
            r3 = 4587366580439587226(0x3fa999999999999a, double:0.05)
            r5 = 400(0x190, float:5.6E-43)
            if (r0 <= r5) goto L23
            r5 = 4596373779694328218(0x3fc999999999999a, double:0.2)
        L21:
            double r1 = r1 + r5
            goto L3a
        L23:
            r5 = 300(0x12c, float:4.2E-43)
            if (r0 <= r5) goto L2a
            r5 = 4593671619917905920(0x3fc0000000000000, double:0.125)
            goto L21
        L2a:
            r5 = 200(0xc8, float:2.8E-43)
            if (r0 <= r5) goto L30
            double r1 = r1 + r3
            goto L3a
        L30:
            r5 = 100
            if (r0 <= r5) goto L3a
            r5 = 4581421828931458171(0x3f947ae147ae147b, double:0.02)
            goto L21
        L3a:
            com.badlogic.gdx.utils.Array<com.prineside.tdi2.tiles.SpawnTile$AllowedEnemyConfig> r0 = r9.f12007r
            int r0 = r0.size
            r5 = 2
            if (r0 > r5) goto L47
            r5 = 4594572339843380019(0x3fc3333333333333, double:0.15)
            goto L64
        L47:
            r5 = 3
            if (r0 != r5) goto L4d
            r5 = 4598175219545276416(0x3fd0000000000000, double:0.25)
            goto L64
        L4d:
            r5 = 4
            if (r0 != r5) goto L56
            r5 = 4600877379321698714(0x3fd999999999999a, double:0.4)
            goto L64
        L56:
            r5 = 5
            if (r0 != r5) goto L5f
            r5 = 4603579539098121011(0x3fe3333333333333, double:0.6)
            goto L64
        L5f:
            r5 = 4605831338911806259(0x3feb333333333333, double:0.85)
        L64:
            r0 = 0
        L65:
            com.badlogic.gdx.utils.Array<com.prineside.tdi2.tiles.SpawnTile$AllowedEnemyConfig> r7 = r9.f12007r
            int r8 = r7.size
            if (r0 >= r8) goto L8f
            T[] r7 = r7.items
            com.prineside.tdi2.tiles.SpawnTile$AllowedEnemyConfig[] r7 = (com.prineside.tdi2.tiles.SpawnTile.AllowedEnemyConfig[]) r7
            r7 = r7[r0]
            com.prineside.tdi2.enums.EnemyType r7 = r7.enemyType
            com.prineside.tdi2.enums.EnemyType r8 = com.prineside.tdi2.enums.EnemyType.ARMORED
            if (r7 == r8) goto L86
            com.prineside.tdi2.enums.EnemyType r8 = com.prineside.tdi2.enums.EnemyType.HEALER
            if (r7 != r8) goto L7c
            goto L86
        L7c:
            com.prineside.tdi2.enums.EnemyType r8 = com.prineside.tdi2.enums.EnemyType.LIGHT
            if (r7 == r8) goto L84
            com.prineside.tdi2.enums.EnemyType r8 = com.prineside.tdi2.enums.EnemyType.ICY
            if (r7 != r8) goto L8c
        L84:
            double r5 = r5 + r3
            goto L8c
        L86:
            r7 = 4590068740216009523(0x3fb3333333333333, double:0.075)
            double r5 = r5 + r7
        L8c:
            int r0 = r0 + 1
            goto L65
        L8f:
            r3 = 4576918229304087675(0x3f847ae147ae147b, double:0.01)
            double r1 = r1 * r5
            double r1 = r1 + r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.tiles.SpawnTile.getPrestigeScore():double");
    }

    @Override // com.prineside.tdi2.Tile
    public RarityType getRarity() {
        int i = this.difficulty;
        if (i < 450 && i >= 60) {
            if (i < 350 && i >= 70) {
                if (i < 250 && i >= 80) {
                    if (i < 150 && i >= 90) {
                        return RarityType.COMMON;
                    }
                    return RarityType.RARE;
                }
                return RarityType.VERY_RARE;
            }
            return RarityType.EPIC;
        }
        return RarityType.LEGENDARY;
    }

    @Override // com.prineside.tdi2.Tile
    public int getSortingScore(ItemSortingType itemSortingType) {
        if (itemSortingType == ItemSortingType.KIND) {
            return this.difficulty + 5000;
        }
        if (this.difficulty < 100) {
            return (getRarity().ordinal() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT) + (100 - this.difficulty);
        }
        return (getRarity().ordinal() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT) + this.difficulty;
    }

    public boolean isEnemyAllowedOnWave(EnemyType enemyType, int i) {
        if (this.f12008s.contains(enemyType)) {
            int i2 = 0;
            while (true) {
                Array<AllowedEnemyConfig> array = this.f12007r;
                if (i2 >= array.size) {
                    break;
                }
                AllowedEnemyConfig allowedEnemyConfig = array.items[i2];
                if (allowedEnemyConfig.enemyType == enemyType) {
                    if (i < allowedEnemyConfig.firstWave) {
                        return false;
                    }
                    int i3 = allowedEnemyConfig.lastWave;
                    if (i > i3 && i3 >= 1) {
                        return false;
                    }
                    return true;
                }
                i2++;
            }
        }
        return false;
    }

    public void removeAllowedEnemy(EnemyType enemyType) {
        if (this.f12008s.contains(enemyType)) {
            this.f12008s.remove(enemyType);
            int i = 0;
            while (true) {
                Array<AllowedEnemyConfig> array = this.f12007r;
                if (i < array.size) {
                    if (array.items[i].enemyType == enemyType) {
                        array.removeIndex(i);
                        return;
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Tile
    public boolean sameAs(Tile tile) {
        if (this.type != tile.type) {
            return false;
        }
        SpawnTile spawnTile = (SpawnTile) tile;
        if (spawnTile.difficulty != this.difficulty || spawnTile.f12007r.size != this.f12007r.size) {
            return false;
        }
        int i = 0;
        while (true) {
            Array<AllowedEnemyConfig> array = this.f12007r;
            if (i < array.size) {
                AllowedEnemyConfig allowedEnemyConfig = array.items[i];
                if (!spawnTile.f12008s.contains(allowedEnemyConfig.enemyType)) {
                    return false;
                }
                int i2 = 0;
                while (true) {
                    Array<AllowedEnemyConfig> array2 = spawnTile.f12007r;
                    if (i2 < array2.size) {
                        AllowedEnemyConfig allowedEnemyConfig2 = array2.items[i2];
                        if (allowedEnemyConfig2.enemyType == allowedEnemyConfig.enemyType) {
                            if (allowedEnemyConfig2.firstWave != allowedEnemyConfig.firstWave || allowedEnemyConfig2.lastWave != allowedEnemyConfig.lastWave) {
                                break;
                            }
                        } else {
                            i2++;
                        }
                    }
                }
                i++;
            } else {
                return true;
            }
        }
        return false;
    }

    public void setAllowedEnemies(Array<AllowedEnemyConfig> array) {
        this.f12007r.clear();
        this.f12007r.addAll(array);
        this.f12008s.clear();
        for (int i = 0; i < array.size; i++) {
            this.f12008s.add(array.get(i).enemyType);
        }
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable
    public void setUnregistered() {
        ParticleEffectPool.PooledEffect pooledEffect = this.f12010u;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f12010u = null;
        }
        this.enemySpawnQueues.clear();
        super.setUnregistered();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m20780f(ItemCreationOverlay itemCreationOverlay, String str) {
        try {
            this.difficulty = Integer.parseInt(str);
            itemCreationOverlay.updateItemIcon();
        } catch (Exception unused) {
            Logger.error("SpawnTile", "bad value: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m20779g(EnemyType enemyType, ItemCreationOverlay itemCreationOverlay, Boolean bool) {
        if (bool.booleanValue()) {
            addAllowedEnemy(enemyType, 1, 0);
        } else {
            removeAllowedEnemy(enemyType);
        }
        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
        itemCreationOverlay.updateForm();
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.difficulty = input.readVarInt(true);
        this.f12007r = (Array) kryo.readObject(input, Array.class);
        this.f12008s = (ObjectSet) kryo.readObject(input, ObjectSet.class);
        this.enemySpawnQueuesFirstWave = input.readInt();
        this.enemySpawnQueues = (Array) kryo.readObject(input, Array.class);
    }

    @Override // com.prineside.tdi2.Tile
    public void toJson(Json json) {
        super.toJson(json);
        json.writeObjectStart("d");
        json.writeValue("d", Integer.valueOf(this.difficulty));
        json.writeArrayStart("ae");
        int i = 0;
        while (true) {
            Array<AllowedEnemyConfig> array = this.f12007r;
            if (i < array.size) {
                AllowedEnemyConfig allowedEnemyConfig = array.get(i);
                json.writeObjectStart();
                json.writeValue("t", allowedEnemyConfig.enemyType.name());
                json.writeValue("f", Integer.valueOf(allowedEnemyConfig.firstWave));
                json.writeValue("l", Integer.valueOf(allowedEnemyConfig.lastWave));
                json.writeObjectEnd();
                i++;
            } else {
                json.writeArrayEnd();
                json.writeObjectEnd();
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeVarInt(this.difficulty, true);
        kryo.writeObject(output, this.f12007r);
        kryo.writeObject(output, this.f12008s);
        output.writeInt(this.enemySpawnQueuesFirstWave);
        kryo.writeObject(output, this.enemySpawnQueues);
    }
}
