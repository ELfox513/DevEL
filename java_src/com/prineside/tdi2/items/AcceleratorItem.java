package com.prineside.tdi2.items;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.JsonValue;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class AcceleratorItem extends Item {

    /* loaded from: classes2.dex */
    public static class AcceleratorItemFactory implements Item.Factory<AcceleratorItem> {

        /* renamed from: a */
        public final AcceleratorItem f9462a = new AcceleratorItem();

        /* renamed from: b */
        public Drawable f9463b;

        public AcceleratorItem create() {
            return this.f9462a;
        }

        @Override // com.prineside.tdi2.Item.Factory
        public AcceleratorItem createDefault() {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public AcceleratorItem fromJson(JsonValue jsonValue) {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
            AssetManager assetManager = Game.f8589i.assetManager;
            if (assetManager != null) {
                this.f9463b = assetManager.getDrawable("time-accelerator");
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<AcceleratorItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public AcceleratorItem read() {
            return Item.C1543D.ACCELERATOR;
        }
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.MATERIALS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("item_description_ACCELERATOR");
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        return RarityType.VERY_RARE;
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return ItemSubcategoryType.M_CURRENCY;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        return Game.f8589i.localeManager.i18n.get("item_title_ACCELERATOR");
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.ACCELERATOR;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public AcceleratorItem() {
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        if (z) {
            Group group = new Group();
            group.setTransform(false);
            group.setSize(f, f);
            Image image = new Image(Item.C1543D.F_ACCELERATOR.f9463b);
            image.setSize(f, f);
            image.setPosition(Item.m21960a(f), -Item.m21960a(f));
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            group.addActor(image);
            Image image2 = new Image(Item.C1543D.F_ACCELERATOR.f9463b);
            image2.setSize(f, f);
            group.addActor(image2);
            return group;
        }
        Image image3 = new Image(Item.C1543D.F_ACCELERATOR.f9463b);
        image3.setSize(f, f);
        return image3;
    }
}
