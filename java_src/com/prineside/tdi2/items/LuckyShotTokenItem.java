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
public class LuckyShotTokenItem extends Item {

    /* loaded from: classes2.dex */
    public static class LuckyShotTokenItemFactory implements Item.Factory<LuckyShotTokenItem> {

        /* renamed from: a */
        public final LuckyShotTokenItem f9492a = new LuckyShotTokenItem();

        /* renamed from: b */
        public Drawable f9493b;

        public LuckyShotTokenItem create() {
            return this.f9492a;
        }

        @Override // com.prineside.tdi2.Item.Factory
        public LuckyShotTokenItem createDefault() {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public LuckyShotTokenItem fromJson(JsonValue jsonValue) {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
            AssetManager assetManager = Game.f8589i.assetManager;
            if (assetManager != null) {
                this.f9493b = assetManager.getDrawable("lucky-shot-token");
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<LuckyShotTokenItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public LuckyShotTokenItem read() {
            return Item.C1543D.LUCKY_SHOT_TOKEN;
        }
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.MATERIALS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("item_description_LUCKY_SHOT_TOKEN");
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        return RarityType.LEGENDARY;
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return ItemSubcategoryType.M_TOKENS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        return Game.f8589i.localeManager.i18n.get("item_title_LUCKY_SHOT_TOKEN");
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.LUCKY_SHOT_TOKEN;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isAffectedByDoubleGain() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public LuckyShotTokenItem() {
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        if (z) {
            Group group = new Group();
            group.setTransform(false);
            group.setSize(f, f);
            Image image = new Image(Item.C1543D.F_LUCKY_SHOT_TOKEN.f9493b);
            image.setSize(f, f);
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            image.setPosition(Item.m21960a(f), -Item.m21960a(f));
            group.addActor(image);
            Image image2 = new Image(Item.C1543D.F_LUCKY_SHOT_TOKEN.f9493b);
            image2.setSize(f, f);
            group.addActor(image2);
            return group;
        }
        Image image3 = new Image(Item.C1543D.F_LUCKY_SHOT_TOKEN.f9493b);
        image3.setSize(f, f);
        return image3;
    }
}
