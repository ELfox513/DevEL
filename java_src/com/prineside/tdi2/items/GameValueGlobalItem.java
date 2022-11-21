package com.prineside.tdi2.items;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.SelectBox;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemDataType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.p036ui.shared.ItemCreationOverlay;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.TextureRegionConfig;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class GameValueGlobalItem extends Item {

    /* renamed from: d */
    public static final StringBuilder f9482d = new StringBuilder();
    public double delta;
    public GameValueType gameValueType;

    /* loaded from: classes2.dex */
    public static class GameValueGlobalItemFactory implements Item.Factory<GameValueGlobalItem> {
        public GameValueGlobalItem create(GameValueType gameValueType, double d) {
            return new GameValueGlobalItem(gameValueType, d);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public GameValueGlobalItem createDefault() {
            return create(GameValueType.values[0], 1.0d);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public GameValueGlobalItem fromJson(JsonValue jsonValue) {
            return create(GameValueType.valueOf(jsonValue.getString("gameValueType")), jsonValue.getDouble("delta"));
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends com.esotericsoftware.kryo.Serializer<GameValueGlobalItem> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.esotericsoftware.kryo.Serializer
        public GameValueGlobalItem read(Kryo kryo, Input input, Class<? extends GameValueGlobalItem> cls) {
            double readDouble = input.readDouble();
            return Item.C1543D.F_GAME_VALUE_GLOBAL.create((GameValueType) kryo.readObject(input, GameValueType.class), readDouble);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, GameValueGlobalItem gameValueGlobalItem) {
            kryo.writeObject(output, gameValueGlobalItem.gameValueType);
            output.writeDouble(gameValueGlobalItem.delta);
        }
    }

    @Override // com.prineside.tdi2.Item
    public Item cpy() {
        return Item.C1543D.F_GAME_VALUE_GLOBAL.create(this.gameValueType, this.delta);
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.OTHER;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("item_description_GAME_VALUE_GLOBAL");
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
    public ItemType getType() {
        return ItemType.GAME_VALUE_GLOBAL;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return false;
    }

    public GameValueGlobalItem(GameValueType gameValueType, double d) {
        if (gameValueType != null) {
            this.delta = d;
            this.gameValueType = gameValueType;
            return;
        }
        throw new IllegalArgumentException("GameValueType is null");
    }

    @Override // com.prineside.tdi2.Item
    public void fillItemCreationForm(final ItemCreationOverlay itemCreationOverlay) {
        itemCreationOverlay.label("Game value");
        final SelectBox selectBox = new SelectBox(itemCreationOverlay.selectBoxStyle);
        selectBox.setItems(GameValueType.values);
        selectBox.setSelected(this.gameValueType);
        selectBox.addListener(new ChangeListener() { // from class: com.prineside.tdi2.items.GameValueGlobalItem.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                itemCreationOverlay.currentItem = Item.C1543D.F_GAME_VALUE_GLOBAL.create((GameValueType) selectBox.getSelected(), GameValueGlobalItem.this.delta);
                itemCreationOverlay.updateItemIcon();
            }
        });
        itemCreationOverlay.selectBox(selectBox);
        itemCreationOverlay.label("Delta");
        itemCreationOverlay.textField(String.valueOf(this.delta), new ObjectRetriever() { // from class: com.prineside.tdi2.items.c
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                GameValueGlobalItem.this.m21730c(itemCreationOverlay, (String) obj);
            }
        });
    }

    @Override // com.prineside.tdi2.Item
    public Item from(Item item) {
        GameValueGlobalItem gameValueGlobalItem = (GameValueGlobalItem) item;
        this.gameValueType = gameValueGlobalItem.gameValueType;
        this.delta = gameValueGlobalItem.delta;
        return this;
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        Group group = new Group();
        group.setTransform(false);
        group.setSize(f, f);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("item-cell-game-value-global"));
        image.setSize(f, f);
        image.setColor(MaterialColor.PURPLE.P300);
        group.addActor(image);
        Array<TextureRegionConfig> icon = Game.f8589i.gameValueManager.getStockValueConfig(this.gameValueType).getIcon();
        for (int i = 0; i < icon.size; i++) {
            TextureRegionConfig textureRegionConfig = icon.items[i];
            Image createImage = textureRegionConfig.createImage(0.25f * f, 0.08f * f, 0.66f * f);
            if (textureRegionConfig.color.toFloatBits() == GameValueManager.ICON_BACKGROUND_COLOR.toFloatBits()) {
                createImage.setColor(MaterialColor.PURPLE.P300);
            } else {
                createImage.setColor(Config.BACKGROUND_COLOR);
            }
            group.addActor(createImage);
        }
        return group;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        StringBuilder stringBuilder = f9482d;
        stringBuilder.setLength(0);
        stringBuilder.append(Game.f8589i.gameValueManager.getTitle(this.gameValueType));
        stringBuilder.append(" ");
        GameValueManager gameValueManager = Game.f8589i.gameValueManager;
        stringBuilder.append(gameValueManager.formatEffectValue(this.delta, gameValueManager.getStockValueConfig(this.gameValueType).units));
        return stringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ void m21730c(ItemCreationOverlay itemCreationOverlay, String str) {
        try {
            itemCreationOverlay.currentItem = Item.C1543D.F_GAME_VALUE_GLOBAL.create(this.gameValueType, Double.parseDouble(str));
            itemCreationOverlay.updateItemIcon();
        } catch (Exception unused) {
            Logger.error("GameValueGlobalItem", "bad value: " + str);
        }
    }

    @Override // com.prineside.tdi2.Item
    public IntArray getData() {
        IntArray data = super.getData();
        data.add(ItemDataType.TYPE.ordinal(), this.gameValueType.ordinal());
        data.add(ItemDataType.VALUE.ordinal(), MathUtils.round((float) (this.delta * 1000.0d)));
        return data;
    }

    @Override // com.prineside.tdi2.Item
    public boolean sameAs(Item item) {
        if (!super.sameAs(item)) {
            return false;
        }
        GameValueGlobalItem gameValueGlobalItem = (GameValueGlobalItem) item;
        if (gameValueGlobalItem.gameValueType != this.gameValueType || gameValueGlobalItem.delta != this.delta) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public void toJson(Json json) {
        super.toJson(json);
        json.writeValue("gameValueType", this.gameValueType.name());
        json.writeValue("delta", Double.valueOf(this.delta));
    }
}
