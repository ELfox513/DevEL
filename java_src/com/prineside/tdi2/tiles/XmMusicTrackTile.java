package com.prineside.tdi2.tiles;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
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
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.ibxm.Instrument;
import com.prineside.tdi2.ibxm.Module;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class XmMusicTrackTile extends Tile {

    /* renamed from: x */
    public static final Color[] f12086x = {MaterialColor.PINK.P500, MaterialColor.PURPLE.P500, MaterialColor.DEEP_PURPLE.P500, MaterialColor.INDIGO.P500, MaterialColor.BLUE.P500, MaterialColor.CYAN.P500, MaterialColor.TEAL.P500, MaterialColor.GREEN.P500, MaterialColor.YELLOW.P500, MaterialColor.ORANGE.P500, MaterialColor.BROWN.P500};
    @NAGS

    /* renamed from: r */
    public long f12087r;
    @NAGS

    /* renamed from: s */
    public String f12088s;
    @NAGS

    /* renamed from: t */
    public Color[] f12089t;
    @NAGS

    /* renamed from: u */
    public boolean f12090u;
    @NAGS

    /* renamed from: v */
    public String f12091v;
    @NAGS

    /* renamed from: w */
    public String f12092w;

    /* loaded from: classes2.dex */
    public static class XmMusicTrackTileFactory extends Tile.Factory.AbstractFactory<XmMusicTrackTile> {

        /* renamed from: d */
        public TextureRegion f12093d;

        /* renamed from: k */
        public TextureRegion f12094k;

        /* renamed from: p */
        public TextureRegion f12095p;

        /* renamed from: q */
        public TextureRegion[] f12096q;

        public XmMusicTrackTileFactory() {
            super(TileType.XM_MUSIC_TRACK);
            this.f12096q = new TextureRegion[4];
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public XmMusicTrackTile create() {
            return new XmMusicTrackTile();
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public XmMusicTrackTile fromJson(JsonValue jsonValue) {
            XmMusicTrackTile xmMusicTrackTile = (XmMusicTrackTile) super.fromJson(jsonValue);
            if (jsonValue.has("d")) {
                xmMusicTrackTile.setId(jsonValue.get("d").getLong("id", -1L));
                xmMusicTrackTile.setTrack(jsonValue.get("d").getString("track", null));
            }
            return xmMusicTrackTile;
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public int getProbabilityForPrize(float f, ProgressManager.InventoryStatistics inventoryStatistics) {
            RarityType rarityType = RarityType.RARE;
            if (f < ProgressManager.getMinQuality(rarityType) || f > ProgressManager.getMaxQuality(rarityType) || inventoryStatistics.byTileType[TileType.XM_MUSIC_TRACK.ordinal()] >= 50) {
                return 0;
            }
            return 20;
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory
        public void setupAssets() {
            this.f12095p = Game.f8589i.assetManager.getTextureRegion("icon-note");
            this.f12093d = Game.f8589i.assetManager.getTextureRegion("tile-type-xm-sound-track-base");
            this.f12094k = Game.f8589i.assetManager.getTextureRegion("tile-type-xm-sound-track-disc");
            for (int i = 0; i < 4; i++) {
                TextureRegion[] textureRegionArr = this.f12096q;
                AssetManager assetManager = Game.f8589i.assetManager;
                textureRegionArr[i] = assetManager.getTextureRegion("tile-type-xm-sound-track-corner-" + i);
            }
        }
    }

    public static long generateNewId() {
        return (Game.getTimestampSeconds() << 32) + FastRandom.random.nextInt();
    }

    @Override // com.prineside.tdi2.Tile
    public void addSellItems(Array<ItemStack> array) {
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, CoreTile.FIXED_LEVEL_XP_REQUIREMENT));
    }

    @Override // com.prineside.tdi2.Tile
    public int generateSeedSalt() {
        String str = this.f12088s;
        if (str == null) {
            return 0;
        }
        return str.length();
    }

    public String getDescriptionCached() {
        m20772c(null);
        return this.f12092w;
    }

    public long getId() {
        return this.f12087r;
    }

    @Override // com.prineside.tdi2.Tile
    public ItemSubcategoryType getInventorySubcategory() {
        return ItemSubcategoryType.ME_SOUNDS;
    }

    @Override // com.prineside.tdi2.Tile
    public double getPrestigeScore() {
        return 0.1d;
    }

    @Override // com.prineside.tdi2.Tile
    public RarityType getRarity() {
        return RarityType.RARE;
    }

    public String getTitleCached() {
        m20772c(null);
        return this.f12091v;
    }

    public String getTrackBase64() {
        return this.f12088s;
    }

    @Override // com.prineside.tdi2.Tile
    public boolean isRoadType() {
        return false;
    }

    public void setTrack(String str) {
        this.f12088s = str;
    }

    @Override // com.prineside.tdi2.Tile
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(" (id: ");
        sb.append(getId());
        sb.append(", has track: ");
        sb.append(this.f12088s == null ? "false" : "true");
        sb.append(")");
        return sb.toString();
    }

    public XmMusicTrackTile() {
        super(TileType.XM_MUSIC_TRACK);
        setId(generateNewId());
    }

    /* renamed from: c */
    public final void m20772c(Module module) {
        if (!this.f12090u && this.f12091v == null) {
            if (module == null) {
                try {
                    String str = this.f12088s;
                    if (str == null) {
                        this.f12090u = true;
                        return;
                    }
                    module = Game.f8589i.musicManager.getModule(str);
                } catch (Exception unused) {
                    this.f12090u = true;
                    return;
                }
            }
            if (module != null) {
                this.f12091v = module.songName;
                StringBuilder stringBuilder = new StringBuilder();
                for (Instrument instrument : module.instruments) {
                    String trim = instrument.name.trim();
                    if (trim.length() != 0) {
                        stringBuilder.append(trim).append("\n");
                    }
                }
                this.f12092w = stringBuilder.toString();
                this.f12090u = true;
            }
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void from(Tile tile) {
        XmMusicTrackTile xmMusicTrackTile = (XmMusicTrackTile) tile;
        setId(xmMusicTrackTile.getId());
        setTrack(xmMusicTrackTile.f12088s);
    }

    @Override // com.prineside.tdi2.Tile
    public Group generateUiIcon(float f) {
        Group group = new Group();
        group.setTransform(false);
        Image image = new Image(Game.f8589i.tileManager.f10161F.XM_MUSIC_TRACK.f12093d);
        image.setSize(f, f);
        group.addActor(image);
        Color[] idColors = getIdColors();
        for (int i = 0; i < 4; i++) {
            Image image2 = new Image(Game.f8589i.tileManager.f10161F.XM_MUSIC_TRACK.f12096q[i]);
            image2.setColor(idColors[i]);
            image2.setSize(f, f);
            group.addActor(image2);
        }
        if (this.f12088s == null) {
            Image image3 = new Image(Game.f8589i.tileManager.f10161F.XM_MUSIC_TRACK.f12095p);
            float f2 = 0.25f * f;
            image3.setPosition(f2, f2);
            float f3 = f * 0.5f;
            image3.setSize(f3, f3);
            image3.setColor(idColors[4]);
            group.addActor(image3);
        } else {
            Image image4 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            float f4 = 0.36f * f;
            image4.setSize(f4, f4);
            float f5 = 0.32f * f;
            image4.setPosition(f5, f5);
            image4.setColor(idColors[4]);
            group.addActor(image4);
            Image image5 = new Image(Game.f8589i.tileManager.f10161F.XM_MUSIC_TRACK.f12094k);
            image5.setSize(f, f);
            group.addActor(image5);
        }
        return group;
    }

    public Color[] getIdColors() {
        if (this.f12089t == null) {
            RandomXS128 randomXS128 = FastRandom.random;
            long state = randomXS128.getState(0);
            long state2 = randomXS128.getState(1);
            randomXS128.setSeed(this.f12087r);
            this.f12089t = new Color[5];
            for (int i = 0; i < 5; i++) {
                Color[] colorArr = this.f12089t;
                Color[] colorArr2 = f12086x;
                colorArr[i] = colorArr2[FastRandom.random.nextInt(colorArr2.length)];
            }
            FastRandom.random.setState(state, state2);
        }
        return this.f12089t;
    }

    public Module getModule() {
        String str = this.f12088s;
        if (str == null) {
            return null;
        }
        Module module = Game.f8589i.musicManager.getModule(str);
        m20772c(module);
        return module;
    }

    @Override // com.prineside.tdi2.Tile
    public int getSortingScore(ItemSortingType itemSortingType) {
        if (itemSortingType == ItemSortingType.KIND) {
            return 30000;
        }
        return getRarity().ordinal() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f12087r = input.readLong();
        this.f12091v = (String) kryo.readObjectOrNull(input, String.class);
        this.f12092w = (String) kryo.readObjectOrNull(input, String.class);
    }

    public void setId(long j) {
        this.f12087r = j;
        this.f12089t = null;
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeLong(this.f12087r);
        kryo.writeObjectOrNull(output, this.f12091v, String.class);
        kryo.writeObjectOrNull(output, this.f12092w, String.class);
    }

    @Override // com.prineside.tdi2.Tile
    public void drawExtras(SpriteCache spriteCache, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        Color[] idColors = getIdColors();
        for (int i = 0; i < 4; i++) {
            spriteCache.setColor(idColors[i]);
            spriteCache.add(Game.f8589i.tileManager.f10161F.XM_MUSIC_TRACK.f12096q[i], f, f2, f3, f4);
        }
        spriteCache.setColor(idColors[4]);
        if (getTitleCached() == null) {
            spriteCache.add(Game.f8589i.tileManager.f10161F.XM_MUSIC_TRACK.f12095p, f + (f3 * 0.25f), f2 + (0.25f * f4), f3 * 0.5f, f4 * 0.5f);
            spriteCache.setColor(Color.WHITE);
            return;
        }
        spriteCache.add(Game.f8589i.assetManager.getBlankWhiteTextureRegion(), f + (f3 * 0.32f), f2 + (0.32f * f4), f3 * 0.36f, f4 * 0.36f);
        spriteCache.setColor(Color.WHITE);
        spriteCache.add(Game.f8589i.tileManager.f10161F.XM_MUSIC_TRACK.f12094k, f, f2, f3, f4);
    }

    @Override // com.prineside.tdi2.Tile
    public void drawStatic(SpriteCache spriteCache, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        super.drawStatic(spriteCache, f, f2, f3, f4, drawMode);
        spriteCache.add(Game.f8589i.tileManager.f10161F.XM_MUSIC_TRACK.f12093d, f, f2, f3, f4);
    }

    @Override // com.prineside.tdi2.Tile
    public void fillInventoryWithInfo(Table table, float f) {
        Module module = getModule();
        if (module != null) {
            Label label = new Label(module.songName, Game.f8589i.assetManager.getLabelStyle(24));
            label.setColor(MaterialColor.AMBER.P500);
            label.setAlignment(1);
            label.setWrap(true);
            table.add((Table) label).width(f).row();
            for (Instrument instrument : module.instruments) {
                String trim = instrument.name.trim();
                if (trim.length() != 0) {
                    Label label2 = new Label(trim, Game.f8589i.assetManager.getLabelStyle(21));
                    label2.setWrap(true);
                    label2.setAlignment(1);
                    table.add((Table) label2).width(f).row();
                }
            }
        }
    }

    @Override // com.prineside.tdi2.Tile
    public boolean sameAs(Tile tile) {
        if (!super.sameAs(tile) || getId() != ((XmMusicTrackTile) tile).getId()) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Tile
    public void toJson(Json json) {
        super.toJson(json);
        json.writeObjectStart("d");
        json.writeValue("id", Long.valueOf(getId()));
        String str = this.f12088s;
        if (str != null) {
            json.writeValue("track", str);
        }
        json.writeObjectEnd();
    }
}
