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
public class PrestigeDustItem extends Item {
    public static final double RAW_PRESTIGE_COUNT_MULTIPLIER = 0.25d;

    /* loaded from: classes2.dex */
    public static class PrestigeDustItemFactory implements Item.Factory<PrestigeDustItem> {

        /* renamed from: a */
        public final PrestigeDustItem f9494a = new PrestigeDustItem();

        public PrestigeDustItem create() {
            return this.f9494a;
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public PrestigeDustItem createDefault() {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public PrestigeDustItem fromJson(JsonValue jsonValue) {
            return create();
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<PrestigeDustItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public PrestigeDustItem read() {
            return Item.C1543D.PRESTIGE_DUST;
        }
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.MATERIALS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("item_description_PRESTIGE_DUST");
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        return RarityType.EPIC;
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return ItemSubcategoryType.M_DUST;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        return Game.f8589i.localeManager.i18n.get("item_title_PRESTIGE_DUST");
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.PRESTIGE_DUST;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public PrestigeDustItem() {
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        if (z) {
            Group group = new Group();
            group.setTransform(false);
            group.setSize(f, f);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("dust-item-prestige"));
            image.setSize(f, f);
            image.setPosition(Item.m21960a(f), -Item.m21960a(f));
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            group.addActor(image);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("dust-item-prestige"));
            image2.setSize(f, f);
            group.addActor(image2);
            return group;
        }
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("dust-item-prestige"));
        image3.setSize(f, f);
        return image3;
    }
}
