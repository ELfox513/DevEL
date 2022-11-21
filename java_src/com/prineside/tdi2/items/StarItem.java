package com.prineside.tdi2.items;

import com.badlogic.gdx.scenes.scene2d.Actor;
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
public class StarItem extends Item {

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<StarItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public StarItem read() {
            return Item.C1543D.STAR;
        }
    }

    /* loaded from: classes2.dex */
    public static class StarItemFactory implements Item.Factory<StarItem> {

        /* renamed from: a */
        public final StarItem f9508a = new StarItem();

        public StarItem create() {
            return this.f9508a;
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public StarItem createDefault() {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public StarItem fromJson(JsonValue jsonValue) {
            return create();
        }
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.OTHER;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("item_description_STAR");
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        return RarityType.EPIC;
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return ItemSubcategoryType.O_OTHER;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        return Game.f8589i.localeManager.i18n.get("item_title_STAR");
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.STAR;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public StarItem() {
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-star"));
        image.setSize(f, f);
        return image;
    }
}
