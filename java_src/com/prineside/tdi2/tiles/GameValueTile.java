package com.prineside.tdi2.tiles;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS
/* loaded from: classes2.dex */
public class GameValueTile extends Tile {

    /* renamed from: r */
    public GameValueType f11968r;

    /* renamed from: s */
    public double f11969s;

    /* renamed from: t */
    public boolean f11970t;

    /* loaded from: classes2.dex */
    public static class GameValueTileFactory extends Tile.Factory.AbstractFactory<GameValueTile> {

        /* renamed from: d */
        public TextureRegion f11971d;

        public GameValueTileFactory() {
            super(TileType.GAME_VALUE);
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public int getProbabilityForPrize(float f, ProgressManager.InventoryStatistics inventoryStatistics) {
            return 0;
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory
        public void setupAssets() {
            this.f11971d = Game.f8589i.assetManager.getTextureRegion("tile-type-game-value-base");
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public GameValueTile create() {
            return new GameValueTile();
        }

        @Override // com.prineside.tdi2.Tile.Factory.AbstractFactory, com.prineside.tdi2.Tile.Factory
        public GameValueTile fromJson(JsonValue jsonValue) {
            GameValueType gameValueType;
            GameValueTile gameValueTile = (GameValueTile) super.fromJson(jsonValue);
            JsonValue jsonValue2 = jsonValue.get("d");
            if (jsonValue2 != null) {
                try {
                    gameValueType = GameValueType.valueOf(jsonValue2.getString("gv"));
                } catch (Exception unused) {
                    GameValueType gameValueType2 = GameValueType.EMOJI_ENEMIES;
                    Logger.error("GameValueTile", "failed to load GV: " + jsonValue2.getString("gv", "[gv is empty]"));
                    gameValueType = gameValueType2;
                }
                gameValueTile.setGameValueType(gameValueType);
                gameValueTile.setDelta(jsonValue2.getDouble("d", 0.0d));
                gameValueTile.setOverwrite(jsonValue2.getInt("o", 0) == 1);
            }
            return gameValueTile;
        }

        public GameValueTile create(GameValueType gameValueType, double d) {
            GameValueTile gameValueTile = new GameValueTile();
            gameValueTile.setGameValueType(gameValueType);
            gameValueTile.setDelta(d);
            return gameValueTile;
        }

        public GameValueTile create(GameValueType gameValueType, double d, boolean z) {
            GameValueTile gameValueTile = new GameValueTile();
            gameValueTile.setGameValueType(gameValueType);
            gameValueTile.setDelta(d);
            gameValueTile.setOverwrite(z);
            return gameValueTile;
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void addSellItems(Array<ItemStack> array) {
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, 150));
    }

    @Override // com.prineside.tdi2.Tile
    public boolean canBeUpgraded() {
        return false;
    }

    public double getDelta() {
        return this.f11969s;
    }

    public GameValueType getGameValueType() {
        return this.f11968r;
    }

    @Override // com.prineside.tdi2.Tile
    public ItemSubcategoryType getInventorySubcategory() {
        return ItemSubcategoryType.ME_SPECIAL;
    }

    @Override // com.prineside.tdi2.Tile
    public double getPrestigeScore() {
        return 0.02d;
    }

    @Override // com.prineside.tdi2.Tile
    public RarityType getRarity() {
        return RarityType.EPIC;
    }

    public boolean isOverwrite() {
        return this.f11970t;
    }

    @Override // com.prineside.tdi2.Tile
    public boolean isRoadType() {
        return false;
    }

    public void setDelta(double d) {
        this.f11969s = d;
    }

    public void setOverwrite(boolean z) {
        this.f11970t = z;
    }

    public GameValueTile() {
        super(TileType.GAME_VALUE);
        setGameValueType(GameValueType.STARTING_MONEY);
    }

    @Override // com.prineside.tdi2.Tile
    public void fillInventoryWithInfo(Table table, float f) {
        Label label = new Label(Game.f8589i.gameValueManager.getTitle(getGameValueType()), Game.f8589i.assetManager.getLabelStyle(21));
        label.setWrap(true);
        label.setAlignment(1);
        table.add((Table) label).width(f).row();
        Label label2 = new Label(Game.f8589i.gameValueManager.formatEffectValue(getDelta(), Game.f8589i.gameValueManager.getUnits(getGameValueType())), Game.f8589i.assetManager.getLabelStyle(24));
        label2.setWrap(true);
        label2.setAlignment(1);
        label2.setColor(MaterialColor.LIGHT_GREEN.P500);
        table.add((Table) label2).width(f).row();
        if (isOverwrite()) {
            Label label3 = new Label(Game.f8589i.localeManager.i18n.get("overwrites_other_effects"), Game.f8589i.assetManager.getLabelStyle(21));
            label3.setColor(MaterialColor.ORANGE.P500);
            label3.setWrap(true);
            label3.setAlignment(1);
            table.add((Table) label3).width(f).padTop(8.0f).row();
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void from(Tile tile) {
        GameValueTile gameValueTile = (GameValueTile) tile;
        setGameValueType(gameValueTile.f11968r);
        setDelta(gameValueTile.f11969s);
        setOverwrite(gameValueTile.f11970t);
    }

    @Override // com.prineside.tdi2.Tile
    public Group generateUiIcon(float f) {
        Group group = new Group();
        group.setTransform(false);
        group.setSize(f, f);
        Image image = new Image(Game.f8589i.tileManager.f10161F.GAME_VALUE.f11971d);
        image.setSize(f, f);
        group.addActor(image);
        Array<TextureRegionConfig> icon = Game.f8589i.gameValueManager.getStockValueConfig(this.f11968r).getIcon();
        for (int i = 0; i < icon.size; i++) {
            float f2 = 0.15f * f;
            group.addActor(icon.items[i].createImage(f2, f2, 0.7f * f));
        }
        return group;
    }

    @Override // com.prineside.tdi2.Tile
    public int getSortingScore(ItemSortingType itemSortingType) {
        if (itemSortingType == ItemSortingType.RARITY) {
            return getRarity().ordinal() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
        }
        return this.f11968r.ordinal() + 25000;
    }

    public void setGameValueType(GameValueType gameValueType) {
        if (gameValueType != null) {
            this.f11968r = gameValueType;
            return;
        }
        throw new IllegalArgumentException("type is null");
    }

    @Override // com.prineside.tdi2.Tile
    public void drawStatic(SpriteCache spriteCache, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        super.drawStatic(spriteCache, f, f2, f3, f4, drawMode);
        if (this.f11968r != GameValueType.DUMMY || drawMode == MapRenderingSystem.DrawMode.MAP_EDITOR) {
            spriteCache.add(Game.f8589i.tileManager.f10161F.GAME_VALUE.f11971d, f, f2, f3, f4);
        }
        Array<TextureRegionConfig> icon = Game.f8589i.gameValueManager.getStockValueConfig(this.f11968r).getIcon();
        for (int i = 0; i < icon.size; i++) {
            TextureRegionConfig textureRegionConfig = icon.items[i];
            spriteCache.setColor(textureRegionConfig.color);
            textureRegionConfig.drawCache(spriteCache, (f3 * 0.15f) + f, (0.15f * f4) + f2, 0.7f * f3);
        }
        spriteCache.setColor(Color.WHITE);
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f11968r = (GameValueType) kryo.readObjectOrNull(input, GameValueType.class);
        this.f11969s = input.readDouble();
        this.f11970t = input.readBoolean();
    }

    @Override // com.prineside.tdi2.Tile
    public boolean sameAs(Tile tile) {
        if (!super.sameAs(tile)) {
            return false;
        }
        GameValueTile gameValueTile = (GameValueTile) tile;
        if (gameValueTile.f11968r != this.f11968r || gameValueTile.f11969s != this.f11969s || gameValueTile.f11970t != this.f11970t) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Tile
    public void toJson(Json json) {
        super.toJson(json);
        json.writeObjectStart("d");
        json.writeValue("gv", this.f11968r.name());
        json.writeValue("d", Double.valueOf(this.f11969s));
        json.writeValue("o", Integer.valueOf(this.f11970t ? 1 : 0));
        json.writeObjectEnd();
    }

    @Override // com.prineside.tdi2.Tile, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.f11968r, GameValueType.class);
        output.writeDouble(this.f11969s);
        output.writeBoolean(this.f11970t);
    }
}
