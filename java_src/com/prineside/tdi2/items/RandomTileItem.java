package com.prineside.tdi2.items;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.items.TileItem;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class RandomTileItem extends Item {
    public float quality;

    /* loaded from: classes2.dex */
    public static class RandomTileItemFactory implements Item.Factory<RandomTileItem> {
        public RandomTileItem create(float f) {
            return new RandomTileItem(f);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public RandomTileItem createDefault() {
            return create(0.0f);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public RandomTileItem fromJson(JsonValue jsonValue) {
            return create(jsonValue.getFloat("quality"));
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends com.esotericsoftware.kryo.Serializer<RandomTileItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.esotericsoftware.kryo.Serializer
        public RandomTileItem read(Kryo kryo, Input input, Class<? extends RandomTileItem> cls) {
            return Item.C1543D.F_RANDOM_TILE.create(input.readFloat());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, RandomTileItem randomTileItem) {
            output.writeFloat(randomTileItem.quality);
        }
    }

    @Override // com.prineside.tdi2.Item
    public boolean canBeSold() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public boolean canBeUnpacked() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public Item cpy() {
        return Item.C1543D.F_RANDOM_TILE.create(this.quality);
    }

    @Override // com.prineside.tdi2.Item
    public Item from(Item item) {
        return Item.C1543D.F_RANDOM_TILE.create(((RandomTileItem) item).quality);
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.PACKS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("quality") + ": " + MathUtils.round(this.quality * 100.0f) + "/100";
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        return ProgressManager.getRarityFromQuality(this.quality);
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return ItemSubcategoryType.P_DECRYPTED;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        return Game.f8589i.localeManager.i18n.get("random_tile");
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.RANDOM_TILE;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public RandomTileItem(float f) {
        f = f < 0.0f ? 0.0f : f;
        this.quality = f > 1.0f ? 1.0f : f;
    }

    @Override // com.prineside.tdi2.Item
    public void addSellItems(Array<ItemStack> array) {
        array.add(new ItemStack(Item.C1543D.PRESTIGE_DUST, MathUtils.ceil(((this.quality * 199.0f) + 1.0f) * ((float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.PRESTIGE_DUST_DROP_RATE)))));
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        float f2 = f / 128.0f;
        Group group = new Group();
        group.setTransform(false);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("random-tile"));
        image.setSize(f, f);
        group.addActor(image);
        Label label = new Label(MathUtils.round(this.quality * 100.0f) + "%", Game.f8589i.assetManager.getLabelStyle(MathUtils.round(21.0f * f2)));
        label.setPosition(34.0f * f2, f2 * 73.0f);
        group.addActor(label);
        return group;
    }

    @Override // com.prineside.tdi2.Item
    public Array<ItemStack> openPack(ProgressManager.InventoryStatistics inventoryStatistics) {
        Array<ItemStack> array = new Array<>(false, 1, ItemStack.class);
        TileItem.TileItemFactory tileItemFactory = Item.C1543D.F_TILE;
        Game game = Game.f8589i;
        array.add(new ItemStack(tileItemFactory.create(game.tileManager.createRandomTile(this.quality, game.progressManager.otherItemsRandom, inventoryStatistics)), 1));
        return array;
    }

    @Override // com.prineside.tdi2.Item
    public boolean sameAs(Item item) {
        if (!super.sameAs(item) || ((RandomTileItem) item).quality != this.quality) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public void toJson(Json json) {
        super.toJson(json);
        json.writeValue("quality", Float.valueOf(this.quality));
    }
}
