package com.prineside.tdi2.items;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.utils.JsonValue;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class LootBoostItem extends Item implements Item.UsableItem {
    public static final float EFFECT_DURATION = 10800.0f;
    public static final int PERCENTAGE_BONUS = 50;

    /* loaded from: classes2.dex */
    public static class LootBoostItemFactory implements Item.Factory<LootBoostItem> {

        /* renamed from: a */
        public final LootBoostItem f9491a = new LootBoostItem();

        public LootBoostItem create() {
            return this.f9491a;
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public LootBoostItem createDefault() {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public LootBoostItem fromJson(JsonValue jsonValue) {
            return create();
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<LootBoostItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public LootBoostItem read() {
            return Item.C1543D.LOOT_BOOST;
        }
    }

    @Override // com.prineside.tdi2.Item.UsableItem
    public boolean autoUseWhenAdded() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.MATERIALS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.format("item_description_LOOT_BOOST", 50, StringFormatter.timePassed(MathUtils.round(10800.0f), false, true));
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
        return Game.f8589i.localeManager.i18n.get("item_title_LOOT_BOOST");
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.LOOT_BOOST;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isAffectedByDoubleGain() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    @Override // com.prineside.tdi2.Item.UsableItem
    public boolean useItemNeedsConfirmation() {
        return false;
    }

    public LootBoostItem() {
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        if (z) {
            Group group = new Group();
            group.setTransform(false);
            group.setSize(f, f);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("loot-token"));
            image.setSize(f, f);
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            image.setPosition(Item.m21960a(f), -Item.m21960a(f));
            group.addActor(image);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("loot-token"));
            image2.setSize(f, f);
            group.addActor(image2);
            return group;
        }
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("loot-token"));
        image3.setSize(f, f);
        return image3;
    }

    @Override // com.prineside.tdi2.Item.UsableItem
    public boolean useItem() {
        if (Game.f8589i.progressManager.removeItems(this, 1)) {
            Game.f8589i.actionResolver.logCurrencySpent(null, "loot_boost", 1);
            Game game = Game.f8589i;
            game.progressManager.lootBoostTimeLeft += 10800.0f;
            UiManager uiManager = game.uiManager;
            if (uiManager != null) {
                uiManager.resourcesAndMoney.updateBoosts();
            }
            return true;
        }
        Logger.error("LootBoostItem", "failed to remove item on usage");
        return false;
    }
}
