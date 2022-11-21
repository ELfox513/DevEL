package com.prineside.tdi2.items;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.p033ui.SelectBox;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemDataType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.p036ui.shared.ItemCreationOverlay;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class TileItem extends Item {
    public final Tile tile;

    /* loaded from: classes2.dex */
    public static class Serializer extends com.esotericsoftware.kryo.Serializer<TileItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.esotericsoftware.kryo.Serializer
        public TileItem read(Kryo kryo, Input input, Class<? extends TileItem> cls) {
            return Item.C1543D.F_TILE.create((Tile) kryo.readClassAndObject(input));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, TileItem tileItem) {
            kryo.writeClassAndObject(output, tileItem.tile);
        }
    }

    /* loaded from: classes2.dex */
    public static class TileItemFactory implements Item.Factory<TileItem> {
        public TileItem create(Tile tile) {
            return new TileItem(tile);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public TileItem createDefault() {
            return create(Game.f8589i.tileManager.getFactory(TileType.values[0]).create());
        }

        @Override // com.prineside.tdi2.Item.Factory
        public TileItem fromJson(JsonValue jsonValue) {
            return create(Game.f8589i.tileManager.createTileFromJson(jsonValue.get("tile")));
        }
    }

    @Override // com.prineside.tdi2.Item
    public void addSellItems(Array<ItemStack> array) {
        this.tile.addSellItems(array);
    }

    @Override // com.prineside.tdi2.Item
    public boolean affectedByLuckyWheelMultiplier() {
        return this.tile.affectedByLuckyWheelMultiplier();
    }

    @Override // com.prineside.tdi2.Item
    public boolean canBeSold() {
        return this.tile.canBeSold();
    }

    @Override // com.prineside.tdi2.Item
    public Item cpy() {
        return Item.C1543D.F_TILE.create(this.tile.cloneTile());
    }

    @Override // com.prineside.tdi2.Item
    public void fillWithInfo(Table table, float f) {
        this.tile.fillInventoryWithInfo(table, f);
    }

    @Override // com.prineside.tdi2.Item
    public Item from(Item item) {
        this.tile.from(((TileItem) item).tile);
        return this;
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        return this.tile.generateUiIcon(f);
    }

    @Override // com.prineside.tdi2.Item
    public final ItemCategoryType getCategory() {
        return ItemCategoryType.MAP_EDITOR;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return this.tile.getDescription();
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        return this.tile.getRarity();
    }

    @Override // com.prineside.tdi2.Item
    public int getSortingScore(ItemSortingType itemSortingType) {
        return this.tile.getSortingScore(itemSortingType);
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return this.tile.getInventorySubcategory();
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        return this.tile.getTitle();
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.TILE;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + " (tile: " + String.valueOf(this.tile) + ")";
    }

    public TileItem(Tile tile) {
        if (tile != null) {
            this.tile = tile;
            return;
        }
        throw new IllegalArgumentException("Tile is null");
    }

    @Override // com.prineside.tdi2.Item
    public void fillItemCreationForm(final ItemCreationOverlay itemCreationOverlay) {
        itemCreationOverlay.label("Tile type");
        final SelectBox selectBox = new SelectBox(itemCreationOverlay.selectBoxStyle);
        selectBox.setItems(TileType.values);
        selectBox.setSelected(this.tile.type);
        selectBox.addListener(new ChangeListener() { // from class: com.prineside.tdi2.items.TileItem.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                itemCreationOverlay.currentItem = Item.C1543D.F_TILE.create(Game.f8589i.tileManager.getFactory((TileType) selectBox.getSelected()).create());
                itemCreationOverlay.updateForm();
            }
        });
        itemCreationOverlay.selectBox(selectBox);
        this.tile.fillItemCreationForm(itemCreationOverlay);
    }

    @Override // com.prineside.tdi2.Item
    public IntArray getData() {
        IntArray data = super.getData();
        data.add(ItemDataType.TYPE.ordinal(), this.tile.type.ordinal());
        this.tile.getData(data);
        return data;
    }

    @Override // com.prineside.tdi2.Item
    public boolean sameAs(Item item) {
        if (!super.sameAs(item)) {
            return false;
        }
        return ((TileItem) item).tile.sameAs(this.tile);
    }

    @Override // com.prineside.tdi2.Item
    public void toJson(Json json) {
        super.toJson(json);
        json.writeObjectStart("tile");
        this.tile.toJson(json);
        json.writeObjectEnd();
    }
}
