package com.prineside.tdi2.items;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.ResearchType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class OpenedResearchItem extends Item {
    public final ResearchType researchType;

    /* loaded from: classes2.dex */
    public static class OpenedResearchItemFactory implements Item.Factory<OpenedResearchItem> {
        public OpenedResearchItem create(ResearchType researchType) {
            return new OpenedResearchItem(researchType);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public OpenedResearchItem createDefault() {
            return create(ResearchType.values[0]);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public OpenedResearchItem fromJson(JsonValue jsonValue) {
            return create(ResearchType.valueOf(jsonValue.getString("researchType")));
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends com.esotericsoftware.kryo.Serializer<OpenedResearchItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.esotericsoftware.kryo.Serializer
        public OpenedResearchItem read(Kryo kryo, Input input, Class<? extends OpenedResearchItem> cls) {
            return Item.C1543D.F_OPENED_RESEARCH.create((ResearchType) kryo.readObject(input, ResearchType.class));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, OpenedResearchItem openedResearchItem) {
            kryo.writeObject(output, openedResearchItem.researchType);
        }
    }

    @Override // com.prineside.tdi2.Item
    public Item cpy() {
        return Item.C1543D.F_OPENED_RESEARCH.create(this.researchType);
    }

    @Override // com.prineside.tdi2.Item
    public Item from(Item item) {
        return Item.C1543D.F_OPENED_RESEARCH.create(((OpenedResearchItem) item).researchType);
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.OTHER;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("item_description_OPENED_RESEARCH");
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
        return Game.f8589i.researchManager.getResearchInstance(this.researchType).getTitle();
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.OPENED_RESEARCH;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return false;
    }

    public OpenedResearchItem(ResearchType researchType) {
        if (researchType != null) {
            this.researchType = researchType;
            return;
        }
        throw new IllegalArgumentException("ResearchType is null");
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        Group group = new Group();
        group.setTransform(false);
        group.setSize(f, f);
        Array<TextureRegionConfig> icon = Game.f8589i.researchManager.getResearchInstance(this.researchType).category.getIcon();
        for (int i = 0; i < icon.size; i++) {
            group.addActor(icon.items[i].createImage(0.0f, 0.0f, f));
        }
        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-research"));
        float f2 = 0.4f * f;
        image.setSize(f2, f2);
        float f3 = f * 0.6f;
        image.setPosition(5.0f, f3 - 5.0f);
        image.setColor(Config.BACKGROUND_COLOR);
        group.addActor(image);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-research"));
        image2.setSize(f2, f2);
        image2.setPosition(0.0f, f3);
        image2.setColor(MaterialColor.CYAN.P500);
        group.addActor(image2);
        return group;
    }

    @Override // com.prineside.tdi2.Item
    public boolean sameAs(Item item) {
        if (!super.sameAs(item) || ((OpenedResearchItem) item).researchType != this.researchType) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public void toJson(Json json) {
        super.toJson(json);
        json.writeValue("researchType", this.researchType.name());
    }
}
