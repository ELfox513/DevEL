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
import com.prineside.tdi2.enums.ResearchType;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class PrestigeTokenItem extends Item implements Item.UsableItem {

    /* loaded from: classes2.dex */
    public static class PrestigeTokenItemFactory implements Item.Factory<PrestigeTokenItem> {

        /* renamed from: a */
        public final PrestigeTokenItem f9495a = new PrestigeTokenItem();

        /* renamed from: b */
        public Drawable f9496b;

        public PrestigeTokenItem create() {
            return this.f9495a;
        }

        @Override // com.prineside.tdi2.Item.Factory
        public PrestigeTokenItem createDefault() {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public PrestigeTokenItem fromJson(JsonValue jsonValue) {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
            AssetManager assetManager = Game.f8589i.assetManager;
            if (assetManager != null) {
                this.f9496b = assetManager.getDrawable("prestige-token");
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<PrestigeTokenItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public PrestigeTokenItem read() {
            return Item.C1543D.PRESTIGE_TOKEN;
        }
    }

    @Override // com.prineside.tdi2.Item.UsableItem
    public boolean autoUseWhenAdded() {
        return false;
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.MATERIALS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("item_description_PRESTIGE_TOKEN");
    }

    @Override // com.prineside.tdi2.Item
    public double getPriceInAcceleratorsForResearchReset(int i) {
        double d = i;
        Double.isNaN(d);
        return Math.pow(d * 0.01d, 0.95d);
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
        return Game.f8589i.localeManager.i18n.get("item_title_PRESTIGE_TOKEN");
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.PRESTIGE_TOKEN;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    @Override // com.prineside.tdi2.Item.UsableItem
    public boolean useItem() {
        Game.f8589i.screenManager.goToResearchesScreen(ResearchType.PRESTIGE);
        return false;
    }

    @Override // com.prineside.tdi2.Item.UsableItem
    public boolean useItemNeedsConfirmation() {
        return false;
    }

    public PrestigeTokenItem() {
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        if (z) {
            Group group = new Group();
            group.setTransform(false);
            group.setSize(f, f);
            Image image = new Image(Item.C1543D.F_PRESTIGE_TOKEN.f9496b);
            image.setSize(f, f);
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            image.setPosition(Item.m21960a(f), -Item.m21960a(f));
            group.addActor(image);
            Image image2 = new Image(Item.C1543D.F_PRESTIGE_TOKEN.f9496b);
            image2.setSize(f, f);
            group.addActor(image2);
            return group;
        }
        Image image3 = new Image(Item.C1543D.F_PRESTIGE_TOKEN.f9496b);
        image3.setSize(f, f);
        return image3;
    }
}
