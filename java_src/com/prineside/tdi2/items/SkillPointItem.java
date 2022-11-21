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
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class SkillPointItem extends Item {

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<SkillPointItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public SkillPointItem read() {
            return Item.C1543D.SKILL_POINT;
        }
    }

    /* loaded from: classes2.dex */
    public static class SkillPointItemFactory implements Item.Factory<SkillPointItem> {

        /* renamed from: a */
        public final SkillPointItem f9507a = new SkillPointItem();

        public SkillPointItem create() {
            return this.f9507a;
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public SkillPointItem createDefault() {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public SkillPointItem fromJson(JsonValue jsonValue) {
            return create();
        }
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.OTHER;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("item_description_SKILL_POINT");
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        return RarityType.LEGENDARY;
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return ItemSubcategoryType.O_OTHER;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        return Game.f8589i.localeManager.i18n.get("item_title_SKILL_POINT");
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.SKILL_POINT;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public SkillPointItem() {
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-skill-point"));
        image.setSize(f, f);
        image.setColor(MaterialColor.CYAN.P500);
        return image;
    }
}
