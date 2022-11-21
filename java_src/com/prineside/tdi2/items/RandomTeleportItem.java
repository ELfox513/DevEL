package com.prineside.tdi2.items;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.JsonValue;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.enums.GateType;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class RandomTeleportItem extends Item {

    /* loaded from: classes2.dex */
    public static class RandomTeleportItemFactory implements Item.Factory<RandomTeleportItem> {

        /* renamed from: a */
        public RandomTeleportItem f9499a;

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        public RandomTeleportItem create() {
            if (this.f9499a == null) {
                this.f9499a = new RandomTeleportItem();
            }
            return this.f9499a;
        }

        @Override // com.prineside.tdi2.Item.Factory
        public RandomTeleportItem createDefault() {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public RandomTeleportItem fromJson(JsonValue jsonValue) {
            return create();
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<RandomTeleportItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public RandomTeleportItem read() {
            return Item.C1543D.RANDOM_TELEPORT;
        }
    }

    @Override // com.prineside.tdi2.Item
    public boolean canBeUnpacked() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.PACKS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return "";
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        return RarityType.VERY_RARE;
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return ItemSubcategoryType.P_DECRYPTED;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        return Game.f8589i.localeManager.i18n.get("random_teleport");
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.RANDOM_TELEPORT;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public RandomTeleportItem() {
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        Image image = new Image(Game.f8589i.assetManager.getDrawable("random-teleport"));
        image.setSize(f, f);
        return image;
    }

    @Override // com.prineside.tdi2.Item
    public Array<ItemStack> openPack(ProgressManager.InventoryStatistics inventoryStatistics) {
        Array<ItemStack> array = new Array<>(false, 1, ItemStack.class);
        array.add(new ItemStack(Item.C1543D.F_GATE.create(Game.f8589i.gateManager.createRandomGate(GateType.TELEPORT, 1.0f, Game.f8589i.progressManager.otherItemsRandom)), 1));
        return array;
    }
}
