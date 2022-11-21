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
public class AbilityTokenItem extends Item {

    /* loaded from: classes2.dex */
    public static class AbilityTokenItemFactory implements Item.Factory<AbilityTokenItem> {

        /* renamed from: a */
        public final AbilityTokenItem f9460a = new AbilityTokenItem();

        /* renamed from: b */
        public Drawable f9461b;

        public AbilityTokenItem create() {
            return this.f9460a;
        }

        @Override // com.prineside.tdi2.Item.Factory
        public AbilityTokenItem createDefault() {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public AbilityTokenItem fromJson(JsonValue jsonValue) {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
            AssetManager assetManager = Game.f8589i.assetManager;
            if (assetManager != null) {
                this.f9461b = assetManager.getDrawable("ability-token");
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<AbilityTokenItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public AbilityTokenItem read() {
            return Item.C1543D.ABILITY_TOKEN;
        }
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.MATERIALS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("item_description_ABILITY_TOKEN");
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        return RarityType.EPIC;
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return ItemSubcategoryType.M_TOKENS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        return Game.f8589i.localeManager.i18n.get("item_title_ABILITY_TOKEN");
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.ABILITY_TOKEN;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isAffectedByDoubleGain() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public AbilityTokenItem() {
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        if (z) {
            Group group = new Group();
            group.setTransform(false);
            group.setSize(f, f);
            Image image = new Image(Item.C1543D.F_ABILITY_TOKEN.f9461b);
            image.setSize(f, f);
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            image.setPosition(Item.m21960a(f), -Item.m21960a(f));
            group.addActor(image);
            Image image2 = new Image(Item.C1543D.F_ABILITY_TOKEN.f9461b);
            image2.setSize(f, f);
            group.addActor(image2);
            return group;
        }
        Image image3 = new Image(Item.C1543D.F_ABILITY_TOKEN.f9461b);
        image3.setSize(f, f);
        return image3;
    }
}
