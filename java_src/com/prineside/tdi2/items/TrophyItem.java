package com.prineside.tdi2.items;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.SelectBox;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemDataType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.TrophyType;
import com.prineside.tdi2.p036ui.shared.ItemCreationOverlay;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class TrophyItem extends Item {
    public final TrophyType trophyType;

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<TrophyItem> {
        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends TrophyItem>) cls);
        }

        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, TrophyItem trophyItem) {
            kryo.writeObject(output, trophyItem.trophyType);
        }

        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public TrophyItem read(Kryo kryo, Input input, Class<? extends TrophyItem> cls) {
            return Item.C1543D.F_TROPHY.create((TrophyType) kryo.readObject(input, TrophyType.class));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public TrophyItem read() {
            throw new IllegalStateException("Do not use");
        }
    }

    /* loaded from: classes2.dex */
    public static class TrophyItemFactory implements Item.Factory<TrophyItem> {

        /* renamed from: a */
        public final TrophyItem[] f9515a;

        public TrophyItem create(TrophyType trophyType) {
            return this.f9515a[trophyType.ordinal()];
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public TrophyItem createDefault() {
            return create(TrophyType.values[0]);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public TrophyItem fromJson(JsonValue jsonValue) {
            return create(TrophyType.valueOf(jsonValue.getString("trophyType")));
        }

        public TrophyItemFactory() {
            TrophyType[] trophyTypeArr = TrophyType.values;
            this.f9515a = new TrophyItem[trophyTypeArr.length];
            for (TrophyType trophyType : trophyTypeArr) {
                this.f9515a[trophyType.ordinal()] = new TrophyItem(trophyType);
            }
        }
    }

    @Override // com.prineside.tdi2.Item
    public Item cpy() {
        return Item.C1543D.F_TROPHY.create(this.trophyType);
    }

    @Override // com.prineside.tdi2.Item
    public Item from(Item item) {
        return Item.C1543D.F_TROPHY.create(((TrophyItem) item).trophyType);
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.OTHER;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.trophyManager.getConfig(this.trophyType).getTitle();
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
        return Game.f8589i.localeManager.i18n.get("item_title_TROPHY");
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.TROPHY;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return false;
    }

    public TrophyItem(TrophyType trophyType) {
        if (trophyType != null) {
            this.trophyType = trophyType;
            return;
        }
        throw new IllegalArgumentException("TrophyType is null");
    }

    @Override // com.prineside.tdi2.Item
    public void fillItemCreationForm(final ItemCreationOverlay itemCreationOverlay) {
        itemCreationOverlay.label("Trophy type");
        final SelectBox selectBox = new SelectBox(itemCreationOverlay.selectBoxStyle);
        selectBox.setItems(TrophyType.values);
        selectBox.setSelected(this.trophyType);
        selectBox.addListener(new ChangeListener() { // from class: com.prineside.tdi2.items.TrophyItem.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                itemCreationOverlay.currentItem = Item.C1543D.F_TROPHY.create((TrophyType) selectBox.getSelected());
                itemCreationOverlay.updateForm();
            }
        });
        itemCreationOverlay.selectBox(selectBox);
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        if (Game.f8589i.trophyManager.getConfig(this.trophyType).isReceived()) {
            Image image = new Image(Game.f8589i.trophyManager.getConfig(this.trophyType).getIconTexture());
            image.setSize(f, f);
            return image;
        }
        Group group = new Group();
        group.setTransform(false);
        group.setSize(f, f);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-question"));
        image2.setSize(f, f);
        group.addActor(image2);
        return group;
    }

    @Override // com.prineside.tdi2.Item
    public IntArray getData() {
        IntArray data = super.getData();
        data.add(ItemDataType.TYPE.ordinal(), this.trophyType.ordinal());
        return data;
    }

    @Override // com.prineside.tdi2.Item
    public boolean sameAs(Item item) {
        if (!super.sameAs(item) || ((TrophyItem) item).trophyType != this.trophyType) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public void toJson(Json json) {
        super.toJson(json);
        json.writeValue("trophyType", this.trophyType);
    }
}
