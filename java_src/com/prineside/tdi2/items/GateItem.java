package com.prineside.tdi2.items;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.enums.GateType;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class GateItem extends Item {
    public Gate gate;

    /* loaded from: classes2.dex */
    public static class GateItemFactory implements Item.Factory<GateItem> {
        public GateItem create(Gate gate) {
            return new GateItem(gate);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public GateItem createDefault() {
            return create(Game.f8589i.gateManager.getFactory(GateType.values[0]).create());
        }

        @Override // com.prineside.tdi2.Item.Factory
        public GateItem fromJson(JsonValue jsonValue) {
            return create(Game.f8589i.gateManager.createGateFromJson(jsonValue.get("gate")));
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends com.esotericsoftware.kryo.Serializer<GateItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.esotericsoftware.kryo.Serializer
        public GateItem read(Kryo kryo, Input input, Class<? extends GateItem> cls) {
            return Item.C1543D.F_GATE.create((Gate) kryo.readClassAndObject(input));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, GateItem gateItem) {
            kryo.writeClassAndObject(output, gateItem.gate);
        }
    }

    @Override // com.prineside.tdi2.Item
    public void addSellItems(Array<ItemStack> array) {
        this.gate.addSellItems(array);
    }

    @Override // com.prineside.tdi2.Item
    public boolean canBeSold() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public Item cpy() {
        return Item.C1543D.F_GATE.create(this.gate.cloneGate());
    }

    @Override // com.prineside.tdi2.Item
    public Item from(Item item) {
        this.gate = ((GateItem) item).gate.cloneGate();
        return this;
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        return this.gate.generateIcon(f, z);
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.MAP_EDITOR;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.gateManager.getFactory(this.gate.getType()).getDescription(this.gate);
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        return this.gate.getRarity();
    }

    @Override // com.prineside.tdi2.Item
    public int getSortingScore(ItemSortingType itemSortingType) {
        return this.gate.getSortingScore(itemSortingType);
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return ItemSubcategoryType.ME_ROADS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        return Game.f8589i.gateManager.getFactory(this.gate.getType()).getTitle(this.gate);
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.GATE;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + " (" + this.gate.toString() + ")";
    }

    public GateItem(Gate gate) {
        if (gate != null) {
            this.gate = gate;
            return;
        }
        throw new IllegalArgumentException("Gate is null");
    }

    @Override // com.prineside.tdi2.Item
    public boolean sameAs(Item item) {
        if (!super.sameAs(item)) {
            return false;
        }
        return this.gate.sameAs(((GateItem) item).gate);
    }

    @Override // com.prineside.tdi2.Item
    public void toJson(Json json) {
        super.toJson(json);
        json.writeObjectStart("gate");
        this.gate.toJson(json);
        json.writeObjectEnd();
    }
}
