package com.prineside.tdi2.items;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
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
import com.prineside.tdi2.enums.GateType;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.p036ui.shared.ItemCreationOverlay;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class RandomBarrierItem extends Item {
    public float quality;

    /* loaded from: classes2.dex */
    public static class RandomBarrierItemFactory implements Item.Factory<RandomBarrierItem> {
        public RandomBarrierItem create(float f) {
            return new RandomBarrierItem(f);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public RandomBarrierItem createDefault() {
            return create(0.0f);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public RandomBarrierItem fromJson(JsonValue jsonValue) {
            return create(jsonValue.getFloat("quality"));
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends com.esotericsoftware.kryo.Serializer<RandomBarrierItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.esotericsoftware.kryo.Serializer
        public RandomBarrierItem read(Kryo kryo, Input input, Class<? extends RandomBarrierItem> cls) {
            return Item.C1543D.F_RANDOM_BARRIER.create(input.readFloat());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, RandomBarrierItem randomBarrierItem) {
            output.writeFloat(randomBarrierItem.quality);
        }
    }

    @Override // com.prineside.tdi2.Item
    public boolean canBeUnpacked() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public Item cpy() {
        return Item.C1543D.F_RANDOM_BARRIER.create(this.quality);
    }

    @Override // com.prineside.tdi2.Item
    public Item from(Item item) {
        return Item.C1543D.F_RANDOM_BARRIER.create(((RandomBarrierItem) item).quality);
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
        return Game.f8589i.localeManager.i18n.get("item_title_RANDOM_BARRIER");
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.RANDOM_BARRIER;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public RandomBarrierItem(float f) {
        if (f >= 0.0f && f <= 1.0f) {
            this.quality = f;
            return;
        }
        throw new IllegalArgumentException("Quality is " + f);
    }

    @Override // com.prineside.tdi2.Item
    public void fillItemCreationForm(final ItemCreationOverlay itemCreationOverlay) {
        itemCreationOverlay.label("Quality");
        itemCreationOverlay.textField(String.valueOf(this.quality), new ObjectRetriever<String>() { // from class: com.prineside.tdi2.items.RandomBarrierItem.1
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(String str) {
                try {
                    itemCreationOverlay.currentItem = Item.C1543D.F_RANDOM_BARRIER.create(Float.parseFloat(str));
                    itemCreationOverlay.updateItemIcon();
                } catch (Exception unused) {
                    Logger.error("fillItemCreationForm", "bad value: " + str);
                }
            }
        });
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        Image image = new Image(Game.f8589i.assetManager.getDrawable("random-barrier"));
        image.setSize(f, f);
        return image;
    }

    @Override // com.prineside.tdi2.Item
    public Array<ItemStack> openPack(ProgressManager.InventoryStatistics inventoryStatistics) {
        Array<ItemStack> array = new Array<>(false, 1, ItemStack.class);
        array.add(new ItemStack(Item.C1543D.F_GATE.create(Game.f8589i.gateManager.createRandomGate(GateType.BARRIER_TYPE, this.quality, Game.f8589i.progressManager.otherItemsRandom)), 1));
        return array;
    }

    @Override // com.prineside.tdi2.Item
    public boolean sameAs(Item item) {
        if (!super.sameAs(item) || ((RandomBarrierItem) item).quality != this.quality) {
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
