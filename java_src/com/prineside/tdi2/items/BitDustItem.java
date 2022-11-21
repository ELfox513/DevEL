package com.prineside.tdi2.items;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.utils.JsonValue;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class BitDustItem extends Item {

    /* loaded from: classes2.dex */
    public static class BitDustItemFactory implements Item.Factory<BitDustItem> {

        /* renamed from: a */
        public final BitDustItem f9464a = new BitDustItem();

        public BitDustItem create() {
            return this.f9464a;
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public BitDustItem createDefault() {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public BitDustItem fromJson(JsonValue jsonValue) {
            return create();
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<BitDustItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public BitDustItem read() {
            return Item.C1543D.BIT_DUST;
        }
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.MATERIALS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("item_description_BIT_DUST");
    }

    @Override // com.prineside.tdi2.Item
    public double getPriceInAcceleratorsForResearchReset(int i) {
        double d = i;
        Double.isNaN(d);
        return Math.pow(d * 0.05d, 0.8d);
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        return RarityType.LEGENDARY;
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return ItemSubcategoryType.M_DUST;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        return Game.f8589i.localeManager.i18n.get("item_title_BIT_DUST");
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.BIT_DUST;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isAffectedByDoubleGain() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public BitDustItem() {
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        if (z) {
            Group group = new Group();
            group.setTransform(false);
            group.setSize(f, f);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("dust-item"));
            image.setSize(f, f);
            image.setPosition(Item.m21960a(f), -Item.m21960a(f));
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            group.addActor(image);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("dust-item"));
            image2.setSize(f, f);
            group.addActor(image2);
            return group;
        }
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("dust-item"));
        image3.setSize(f, f);
        return image3;
    }
}
