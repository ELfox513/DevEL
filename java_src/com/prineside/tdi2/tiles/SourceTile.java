package com.prineside.tdi2.tiles;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.SelectBox;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Resource;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.MinerType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.p036ui.components.MapEditorItemInfoMenu;
import com.prineside.tdi2.p036ui.components.TileResources;
import com.prineside.tdi2.p036ui.shared.ItemCreationOverlay;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import java.util.Arrays;
import java.util.Iterator;
@REGS
/* loaded from: classes2.dex */
public class SourceTile extends Tile {

    /* renamed from: A */
    public static final StringBuilder f11984A;

    /* renamed from: w */
    public static final Color f11985w;

    /* renamed from: x */
    public static final Color f11986x;

    /* renamed from: y */
    public static final float[] f11987y;

    /* renamed from: z */
    public static final ResourceAmount[] f11988z;
    public int[] minedResources;
    public Miner miner;

    /* renamed from: r */
    public float f11989r;

    /* renamed from: s */
    public int[] f11990s;
    @NAGS

    /* renamed from: t */
    public boolean f11991t;
    @NAGS

    /* renamed from: u */
    public final Color[] f11992u;
    @NAGS

    /* renamed from: v */
    public final int[] f11993v;

    /* renamed from: com.prineside.tdi2.tiles.SourceTile$3 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C23743 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12000a;

        static {
            int[] iArr = new int[ResourceType.values().length];
            f12000a = iArr;
            try {
                iArr[ResourceType.SCALAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12000a[ResourceType.VECTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12000a[ResourceType.MATRIX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12000a[ResourceType.TENSOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12000a[ResourceType.INFIAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ResourceAmount {

        /* renamed from: a */
        public ResourceType f12001a;

        /* renamed from: b */
        public float f12002b;

        /* renamed from: c */
        public float f12003c;

        public ResourceAmount() {
        }
    }

    /* loaded from: classes2.dex */
    public static class SourceTileFactory extends Tile.Factory.AbstractFactory<SourceTile> {

        /* renamed from: d */
        public TextureRegion f12004d;

        /* renamed from: k */
        public final TextureRegion[] f12005k;

        @Override // com.prineside.tdi2.Tile.Factory
        public int getProbabilityForPrize(float f, ProgressManager.InventoryStatistics inventoryStatistics) {
            return inventoryStatistics.byTileType[TileType.SOURCE.ordinal()] >= 500 ? 0 : 100;
        }

        public SourceTileFactory() {
            super(TileType.SOURCE);
            this.f12005k = new TextureRegion[8];
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public SourceTile create() {
            return new SourceTile();
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public SourceTile createRandom(float f, RandomXS128 randomXS128) {
            int nextInt;
            if (randomXS128 == null) {
                randomXS128 = FastRandom.random;
            }
            SourceTile create = create();
            float f2 = 1.0f;
            for (int i = 0; i < 5; i++) {
                if (randomXS128.nextFloat() > (0.25f * f) + 0.75f) {
                    f2 -= 0.2f;
                }
            }
            if (f2 < 0.2f) {
                f2 = 0.2f;
            }
            create.setResourceDensity(f2 <= 1.0f ? f2 : 1.0f);
            RarityType rarityFromQuality = ProgressManager.getRarityFromQuality(f);
            int ordinal = rarityFromQuality.ordinal();
            ResourceType[] resourceTypeArr = ResourceType.values;
            ResourceType resourceType = ordinal < resourceTypeArr.length ? resourceTypeArr[rarityFromQuality.ordinal()] : ResourceType.INFIAR;
            int round = MathUtils.round(PMath.randomTriangular(randomXS128) * 6.0f);
            if (round < 1) {
                round = 1;
            }
            if (round > resourceType.ordinal() + 1) {
                round = resourceType.ordinal() + 1;
            }
            for (int i2 = 0; i2 < round; i2++) {
                if (i2 == 0) {
                    nextInt = resourceType.ordinal();
                } else {
                    nextInt = randomXS128.nextInt(round);
                }
                ResourceType[] resourceTypeArr2 = ResourceType.values;
                int length = (int) ((((resourceTypeArr2.length - nextInt) + 1.5f) * ((15.0f * f) + 55.0f)) / round);
                int i3 = length - (length % 10);
                if (i3 < 0) {
                    i3 = 0;
                }
                ResourceType resourceType2 = resourceTypeArr2[nextInt];
                create.setResourcesCount(resourceType2, create.getResourcesCount(resourceType2) + i3 + 10);
            }
            return create;
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public SourceTile fromJson(JsonValue jsonValue) {
            SourceTile sourceTile = (SourceTile) super.fromJson(jsonValue);
            if (jsonValue.has("d")) {
                JsonValue jsonValue2 = jsonValue.get("d");
                sourceTile.f11989r = jsonValue2.getFloat("rd", 1.0f);
                if (sourceTile.f11989r > 1.0f) {
                    sourceTile.f11989r = 1.0f;
                }
                if (sourceTile.f11989r < 0.0f) {
                    sourceTile.f11989r = 0.0f;
                }
                JsonValue jsonValue3 = jsonValue2.get("r");
                if (jsonValue3 != null) {
                    Iterator<JsonValue> iterator2 = jsonValue3.iterator2();
                    while (iterator2.hasNext()) {
                        JsonValue next = iterator2.next();
                        ResourceType valueOf = ResourceType.valueOf(next.getString("t"));
                        int i = next.getInt("a");
                        if (i < 0) {
                            i = 0;
                        }
                        sourceTile.f11990s[valueOf.ordinal()] = i;
                    }
                }
                sourceTile.f11991t = true;
            }
            if (jsonValue.has("miner")) {
                sourceTile.miner = Game.f8589i.minerManager.fromJson(jsonValue.get("miner"));
            }
            return sourceTile;
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory
        public void setupAssets() {
            this.f12004d = Game.f8589i.assetManager.getTextureRegion("tile-type-source-crack");
            for (int i = 1; i <= 8; i++) {
                AssetManager assetManager = Game.f8589i.assetManager;
                this.f12005k[i - 1] = assetManager.getTextureRegion("tile-type-source-" + i);
            }
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void addSellItems(Array<ItemStack> array) {
        int[] iArr;
        ResourceType[] resourceTypeArr;
        float f = 0.0f;
        int i = 0;
        while (true) {
            if (i >= this.f11990s.length) {
                break;
            }
            f += iArr[i] * ((i * 0.02f) + 0.1f);
            i++;
        }
        int ceil = MathUtils.ceil(((this.f11989r * 0.75f) + 0.25f) * f);
        if (ceil < 1) {
            ceil = 1;
        }
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, ceil));
        for (ResourceType resourceType : ResourceType.values) {
            int i2 = this.f11990s[resourceType.ordinal()] / 5;
            if (i2 > 0) {
                array.add(new ItemStack(Item.C1543D.F_RESOURCE.create(resourceType), i2));
            }
        }
    }

    @Override // com.prineside.tdi2.Tile
    public boolean canBeUpgraded() {
        return false;
    }

    @Override // com.prineside.tdi2.Tile
    public ItemSubcategoryType getInventorySubcategory() {
        return ItemSubcategoryType.ME_SOURCES;
    }

    public float getResourceDensity() {
        return this.f11989r;
    }

    public int getResourcesCount(ResourceType resourceType) {
        return this.f11990s[resourceType.ordinal()];
    }

    @Override // com.prineside.tdi2.Tile
    public boolean isRoadType() {
        return false;
    }

    /* renamed from: k */
    public final void m20784k() {
        this.f11991t = false;
        float f = 1.0f - this.f11989r;
        float f2 = 0.0f;
        if (f < 0.0f) {
            f = 0.0f;
        }
        int i = 0;
        for (ResourceType resourceType : ResourceType.values) {
            i += this.f11990s[resourceType.ordinal()];
        }
        if (i == 0) {
            for (int i2 = 0; i2 < 8; i2++) {
                this.f11992u[i2] = f11985w;
            }
            return;
        }
        int i3 = 0;
        while (true) {
            ResourceType[] resourceTypeArr = ResourceType.values;
            if (i3 >= resourceTypeArr.length) {
                break;
            }
            ResourceAmount resourceAmount = f11988z[i3];
            resourceAmount.f12001a = resourceTypeArr[i3];
            resourceAmount.f12002b = this.f11990s[i3] / i;
            i3++;
        }
        for (int i4 = 0; i4 < 8; i4++) {
            this.f11993v[i4] = i4;
        }
        for (int i5 = 0; i5 < ResourceType.values.length; i5++) {
            float f3 = f11988z[i5].f12002b;
            if (f3 != 0.0f && f3 < 0.125f) {
                float f4 = 0.125f - f3;
                float f5 = 0.0f;
                for (int i6 = 0; i6 < ResourceType.values.length; i6++) {
                    float f6 = f11988z[i6].f12002b;
                    if (f6 > 0.125f) {
                        float f7 = f6 - 0.125f;
                        f11987y[i6] = f7;
                        f5 += f7;
                    } else {
                        f11987y[i6] = 0.0f;
                    }
                }
                float f8 = 1.0f - ((f5 - f4) / f5);
                for (int i7 = 0; i7 < ResourceType.values.length; i7++) {
                    float f9 = f11987y[i7];
                    if (f9 != 0.0f) {
                        f11988z[i7].f12002b -= f9 * f8;
                    }
                }
                f11988z[i5].f12002b = 0.125f;
            }
        }
        int i8 = 0;
        while (i8 < ResourceType.values.length) {
            int i9 = i8 + 1;
            for (int i10 = i9; i10 < ResourceType.values.length; i10++) {
                ResourceAmount[] resourceAmountArr = f11988z;
                ResourceAmount resourceAmount2 = resourceAmountArr[i8];
                float f10 = resourceAmount2.f12002b;
                ResourceAmount resourceAmount3 = resourceAmountArr[i10];
                if (f10 < resourceAmount3.f12002b) {
                    resourceAmountArr[i8] = resourceAmount3;
                    resourceAmountArr[i10] = resourceAmount2;
                }
            }
            i8 = i9;
        }
        for (int i11 = 0; i11 < ResourceType.values.length; i11++) {
            ResourceAmount resourceAmount4 = f11988z[i11];
            resourceAmount4.f12003c = f;
            f += resourceAmount4.f12002b * this.f11989r;
        }
        for (int i12 = 0; i12 < 8; i12++) {
            int i13 = FastRandom.getInt(8);
            int[] iArr = this.f11993v;
            int i14 = iArr[i12];
            iArr[i12] = iArr[i13];
            iArr[i13] = i14;
        }
        for (int i15 = 0; i15 < 8; i15++) {
            int i16 = -1;
            for (int i17 = 0; i17 < ResourceType.values.length; i17++) {
                if (f2 >= f11988z[i17].f12003c) {
                    i16 = i17;
                }
            }
            if (i16 == -1) {
                this.f11992u[this.f11993v[i15]] = f11985w;
            } else {
                this.f11992u[this.f11993v[i15]] = Game.f8589i.resourceManager.getColor(f11988z[i16].f12001a);
            }
            f2 += 0.125f;
        }
    }

    static {
        Color color = new Color(858993663);
        f11985w = color;
        f11986x = color;
        ResourceType[] resourceTypeArr = ResourceType.values;
        f11987y = new float[resourceTypeArr.length];
        f11988z = new ResourceAmount[resourceTypeArr.length];
        int i = 0;
        while (true) {
            ResourceAmount[] resourceAmountArr = f11988z;
            if (i < resourceAmountArr.length) {
                resourceAmountArr[i] = new ResourceAmount();
                i++;
            } else {
                f11984A = new StringBuilder();
                return;
            }
        }
    }

    public SourceTile() {
        super(TileType.SOURCE);
        this.f11989r = 1.0f;
        ResourceType[] resourceTypeArr = ResourceType.values;
        this.f11990s = new int[resourceTypeArr.length];
        this.f11991t = true;
        Color[] colorArr = new Color[8];
        this.f11992u = colorArr;
        this.f11993v = new int[8];
        this.minedResources = new int[resourceTypeArr.length];
        Arrays.fill(colorArr, Color.WHITE);
    }

    @Override // com.prineside.tdi2.Tile
    public void drawExtras(SpriteCache spriteCache, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        if (this.f11991t) {
            m20784k();
        }
        for (int i = 0; i < 8; i++) {
            if (this.miner == null) {
                spriteCache.setColor(this.f11992u[i]);
            } else {
                spriteCache.setColor(f11986x);
            }
            spriteCache.add(Game.f8589i.tileManager.f10161F.SOURCE.f12005k[i], f, f2, f3, f4);
        }
        spriteCache.setColor(Color.WHITE);
    }

    @Override // com.prineside.tdi2.Tile
    public void fillInventoryWithInfo(Table table, float f) {
        TileResources tileResources = new TileResources(f);
        tileResources.setTile(this);
        table.add((Table) tileResources).width(f);
    }

    @Override // com.prineside.tdi2.Tile
    public void fillItemCreationForm(final ItemCreationOverlay itemCreationOverlay) {
        ResourceType[] resourceTypeArr;
        itemCreationOverlay.label("Resource density");
        itemCreationOverlay.textField(String.valueOf(getResourceDensity()), new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.y
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                SourceTile.this.m20786i(itemCreationOverlay, (String) obj);
            }
        });
        itemCreationOverlay.label("Resources");
        Table table = new Table();
        itemCreationOverlay.form.add(table).top().left().row();
        for (final ResourceType resourceType : ResourceType.values) {
            Image image = new Image(Game.f8589i.assetManager.getDrawable(Resource.TEXTURE_REGION_NAMES[resourceType.ordinal()]));
            image.setColor(Game.f8589i.resourceManager.getColor(resourceType));
            table.add((Table) image).size(32.0f).pad(8.0f).padRight(16.0f);
            table.add((Table) itemCreationOverlay.textField(String.valueOf(getResourcesCount(resourceType)), new ObjectRetriever() { // from class: com.prineside.tdi2.tiles.z
                @Override // com.prineside.tdi2.utils.ObjectRetriever
                public final void retrieved(Object obj) {
                    SourceTile.this.m20785j(resourceType, itemCreationOverlay, (String) obj);
                }
            })).size(400.0f, 48.0f).padBottom(4.0f).row();
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void fillMapEditorMenu(Group group, final MapEditorItemInfoMenu mapEditorItemInfoMenu) {
        TileResources tileResources = new TileResources(520.0f);
        tileResources.setPosition(0.0f, 720.0f);
        tileResources.setTile(this);
        group.addActor(tileResources);
        if (Game.f8589i.progressManager.isDeveloperModeEnabled() && getMap() != null) {
            final SelectBox selectBox = new SelectBox(mapEditorItemInfoMenu.selectBoxStyle);
            selectBox.setName("map_editor_menu_miner_type_select");
            Array array = new Array();
            array.add("No miner");
            int i = 0;
            while (true) {
                MinerType[] minerTypeArr = MinerType.values;
                if (i >= minerTypeArr.length) {
                    break;
                }
                array.add(minerTypeArr[i].name());
                i++;
            }
            selectBox.setItems(array);
            selectBox.setPosition(40.0f, 650.0f);
            selectBox.setSize(440.0f, 64.0f);
            group.addActor(selectBox);
            Miner miner = this.miner;
            if (miner != null) {
                selectBox.setSelected(miner.type.name());
            } else {
                selectBox.setSelected("No miner");
            }
            selectBox.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.SourceTile.1
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                    String str = (String) selectBox.getSelected();
                    if (str.equals("No miner")) {
                        Miner miner2 = SourceTile.this.miner;
                        if (miner2 != null) {
                            miner2.setTile(null);
                            SourceTile.this.miner = null;
                        }
                    } else {
                        Miner miner3 = SourceTile.this.miner;
                        if (miner3 != null) {
                            miner3.setTile(null);
                        }
                        SourceTile.this.miner = Game.f8589i.minerManager.getFactory(MinerType.valueOf(str)).create();
                        SourceTile sourceTile = SourceTile.this;
                        sourceTile.miner.setTile(sourceTile);
                    }
                    mapEditorItemInfoMenu.notifySelectedTileChanged();
                    MapEditorItemInfoMenu mapEditorItemInfoMenu2 = mapEditorItemInfoMenu;
                    mapEditorItemInfoMenu2.setItem(mapEditorItemInfoMenu2.currentItem);
                }
            });
            if (this.miner != null) {
                final SelectBox selectBox2 = new SelectBox(mapEditorItemInfoMenu.selectBoxStyle);
                selectBox2.setName("map_editor_menu_source_upgrade_level_select");
                Array array2 = new Array();
                for (int i2 = 0; i2 <= 10; i2++) {
                    array2.add(String.valueOf(i2));
                }
                selectBox2.setItems(array2);
                selectBox2.setPosition(220.0f, 460.0f);
                selectBox2.setSize(80.0f, 64.0f);
                group.addActor(selectBox2);
                selectBox2.setSelected(String.valueOf(this.miner.getUpgradeLevel()));
                selectBox2.addListener(new ChangeListener() { // from class: com.prineside.tdi2.tiles.SourceTile.2
                    @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
                    public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                        SourceTile.this.miner.setUpgradeLevel(Integer.parseInt((String) selectBox2.getSelected()));
                        mapEditorItemInfoMenu.notifySelectedTileChanged();
                        MapEditorItemInfoMenu mapEditorItemInfoMenu2 = mapEditorItemInfoMenu;
                        mapEditorItemInfoMenu2.setItem(mapEditorItemInfoMenu2.currentItem);
                    }
                });
            }
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void from(Tile tile) {
        Miner cloneMiner;
        SourceTile sourceTile = (SourceTile) tile;
        int[] iArr = sourceTile.f11990s;
        int[] iArr2 = this.f11990s;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        this.f11989r = sourceTile.f11989r;
        Miner miner = sourceTile.miner;
        if (miner == null) {
            cloneMiner = null;
        } else {
            cloneMiner = miner.cloneMiner();
        }
        this.miner = cloneMiner;
    }

    @Override // com.prineside.tdi2.Tile
    public int generateSeedSalt() {
        ResourceType[] resourceTypeArr;
        int floor = MathUtils.floor(this.f11989r * 100.0f);
        for (ResourceType resourceType : ResourceType.values) {
            double d = floor;
            double pow = StrictMath.pow(10.0d, resourceType.ordinal());
            double d2 = this.f11990s[resourceType.ordinal()];
            Double.isNaN(d2);
            Double.isNaN(d);
            floor = (int) (d + (pow * d2));
        }
        return floor;
    }

    @Override // com.prineside.tdi2.Tile
    public Group generateUiIcon(float f) {
        ResourceType[] resourceTypeArr;
        if (this.f11991t) {
            m20784k();
        }
        float f2 = f / 128.0f;
        Group group = new Group();
        group.setTransform(false);
        Image image = new Image(new TextureRegionDrawable(Game.f8589i.tileManager.f10161F.SOURCE.f12004d));
        float f3 = 128.0f * f2;
        image.setSize(f3, f3);
        group.addActor(image);
        for (int i = 0; i < 8; i++) {
            Image image2 = new Image(new TextureRegionDrawable(Game.f8589i.tileManager.f10161F.SOURCE.f12005k[i]));
            image2.setSize(f3, f3);
            image2.setColor(this.f11992u[i]);
            group.addActor(image2);
        }
        int i2 = 0;
        for (ResourceType resourceType : ResourceType.values) {
            if (this.f11990s[resourceType.ordinal()] > 0) {
                StringBuilder stringBuilder = f11984A;
                stringBuilder.setLength(0);
                stringBuilder.append(this.f11990s[resourceType.ordinal()]);
                float f4 = 24.0f * f2;
                Label label = new Label(stringBuilder, Game.f8589i.assetManager.getLabelStyle(MathUtils.round(f4)));
                float f5 = i2 * 20.0f;
                label.setPosition(12.0f * f2, (6.0f + f5) * f2);
                label.setColor(0.0f, 0.0f, 0.0f, 0.56f);
                group.addActor(label);
                Label label2 = new Label(stringBuilder, Game.f8589i.assetManager.getLabelStyle(MathUtils.round(f4)));
                label2.setPosition(10.0f * f2, (f5 + 8.0f) * f2);
                label2.setColor(Game.f8589i.resourceManager.getColor(resourceType));
                group.addActor(label2);
                i2++;
            }
        }
        return group;
    }

    @Override // com.prineside.tdi2.Tile
    public double getPrestigeScore() {
        ResourceType[] resourceTypeArr;
        double d;
        double d2;
        double d3 = 0.002d;
        int i = 0;
        for (ResourceType resourceType : ResourceType.values) {
            if (this.f11990s[resourceType.ordinal()] > 0) {
                i++;
                double d4 = this.f11990s[resourceType.ordinal()];
                Double.isNaN(d4);
                double d5 = d4 * 0.01d;
                int i2 = C23743.f12000a[resourceType.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 != 4) {
                                if (i2 == 5) {
                                    d2 = 0.355d;
                                }
                                d3 += d5;
                            } else {
                                d2 = 0.197d;
                            }
                        } else {
                            d2 = 0.116d;
                        }
                    } else {
                        d2 = 0.075d;
                    }
                } else {
                    d2 = 0.05d;
                }
                d5 *= d2;
                d3 += d5;
            }
        }
        if (i >= 5) {
            d = 0.30000001192092896d;
        } else if (i >= 4) {
            d = 0.3499999940395355d;
        } else if (i >= 3) {
            d = 0.44999998807907104d;
        } else {
            if (i >= 2) {
                d = 0.75d;
            }
            double d6 = this.f11989r + 1.0f;
            Double.isNaN(d6);
            return d3 * d6 * 0.5d;
        }
        d3 *= d;
        double d62 = this.f11989r + 1.0f;
        Double.isNaN(d62);
        return d3 * d62 * 0.5d;
    }

    @Override // com.prineside.tdi2.Tile
    public RarityType getRarity() {
        if (this.f11990s[ResourceType.INFIAR.ordinal()] != 0) {
            return RarityType.LEGENDARY;
        }
        if (this.f11990s[ResourceType.TENSOR.ordinal()] != 0) {
            return RarityType.EPIC;
        }
        if (this.f11990s[ResourceType.MATRIX.ordinal()] != 0) {
            return RarityType.VERY_RARE;
        }
        if (this.f11990s[ResourceType.VECTOR.ordinal()] != 0) {
            return RarityType.RARE;
        }
        return RarityType.COMMON;
    }

    @Override // com.prineside.tdi2.Tile
    public int getSortingScore(ItemSortingType itemSortingType) {
        ResourceType[] resourceTypeArr;
        if (itemSortingType == ItemSortingType.RARITY) {
            int i = 0;
            for (ResourceType resourceType : ResourceType.values) {
                i += (resourceType.ordinal() + 1) * 5 * this.f11990s[resourceType.ordinal()];
            }
            return (getRarity().ordinal() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT) + ((int) (i * this.f11989r));
        }
        for (int length = ResourceType.values.length - 1; length >= 0; length--) {
            if (this.f11990s[length] != 0) {
                return length;
            }
        }
        return 0;
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f11989r = input.readFloat();
        this.f11990s = (int[]) kryo.readObject(input, int[].class);
        this.minedResources = (int[]) kryo.readObject(input, int[].class);
        this.miner = (Miner) kryo.readClassAndObject(input);
    }

    @Override // com.prineside.tdi2.Tile
    public boolean sameAs(Tile tile) {
        ResourceType[] resourceTypeArr;
        if (this.type != tile.type) {
            return false;
        }
        SourceTile sourceTile = (SourceTile) tile;
        if (getResourceDensity() != sourceTile.getResourceDensity()) {
            return false;
        }
        for (ResourceType resourceType : ResourceType.values) {
            if (getResourcesCount(resourceType) != sourceTile.getResourcesCount(resourceType)) {
                return false;
            }
        }
        return true;
    }

    public void setResourceDensity(float f) {
        this.f11989r = f;
        this.f11991t = true;
    }

    public void setResourcesCount(ResourceType resourceType, int i) {
        this.f11990s[resourceType.ordinal()] = i;
        this.f11991t = true;
    }

    @Override // com.prineside.tdi2.Tile
    public String toString() {
        ResourceType[] resourceTypeArr;
        StringBuilder sb = new StringBuilder(getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + " (density: " + getResourceDensity());
        for (ResourceType resourceType : ResourceType.values) {
            sb.append(" | ");
            sb.append(resourceType.name());
            sb.append(": ");
            sb.append(getResourcesCount(resourceType));
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m20786i(ItemCreationOverlay itemCreationOverlay, String str) {
        try {
            setResourceDensity(Float.parseFloat(str));
            itemCreationOverlay.updateItemIcon();
        } catch (Exception unused) {
            Logger.error("SourceTile", "bad value: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m20785j(ResourceType resourceType, ItemCreationOverlay itemCreationOverlay, String str) {
        try {
            setResourcesCount(resourceType, Integer.parseInt(str));
            itemCreationOverlay.updateItemIcon();
        } catch (Exception unused) {
            Logger.error("SourceTile", "bad value: " + str);
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void drawStatic(SpriteCache spriteCache, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        super.drawStatic(spriteCache, f, f2, f3, f4, drawMode);
        spriteCache.add(Game.f8589i.tileManager.f10161F.SOURCE.f12004d, f, f2, f3, f4);
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable
    public void setUnregistered() {
        super.setUnregistered();
        this.miner = null;
    }

    @Override // com.prineside.tdi2.Tile
    public void toJson(Json json) {
        ResourceType[] resourceTypeArr;
        super.toJson(json);
        json.writeObjectStart("d");
        json.writeValue("rd", Float.valueOf(this.f11989r));
        json.writeArrayStart("r");
        for (ResourceType resourceType : ResourceType.values) {
            if (this.f11990s[resourceType.ordinal()] > 0) {
                json.writeObjectStart();
                json.writeValue("t", resourceType.name());
                json.writeValue("a", Integer.valueOf(this.f11990s[resourceType.ordinal()]));
                json.writeObjectEnd();
            }
        }
        json.writeArrayEnd();
        json.writeObjectEnd();
        if (this.miner != null) {
            json.writeObjectStart("miner");
            this.miner.toJson(json);
            json.writeObjectEnd();
        }
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f11989r);
        kryo.writeObject(output, this.f11990s);
        kryo.writeObject(output, this.minedResources);
        kryo.writeClassAndObject(output, this.miner);
    }
}
