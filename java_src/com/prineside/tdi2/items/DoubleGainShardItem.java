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
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.p036ui.shared.ItemCreationOverlay;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
@REGS
/* loaded from: classes2.dex */
public class DoubleGainShardItem extends Item implements Item.UsableItem {
    public static final int DEFAULT_DURATION = 1209600;
    public int duration;

    /* loaded from: classes2.dex */
    public static class DoubleGainShardItemFactory implements Item.Factory<DoubleGainShardItem> {
        public DoubleGainShardItem create() {
            return new DoubleGainShardItem();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public DoubleGainShardItem createDefault() {
            return create();
        }

        @Override // com.prineside.tdi2.Item.Factory
        public DoubleGainShardItem fromJson(JsonValue jsonValue) {
            DoubleGainShardItem create = create();
            create.duration = jsonValue.getInt("duration", DoubleGainShardItem.DEFAULT_DURATION);
            return create;
        }
    }

    public static int getAcceleratorsForDuration(int i) {
        double d = i;
        Double.isNaN(d);
        int round = (int) StrictMath.round((d / 1209600.0d) * 200.0d);
        if (round < 1) {
            return 1;
        }
        return round;
    }

    @Override // com.prineside.tdi2.Item
    public void addSellItems(Array<ItemStack> array) {
        array.add(new ItemStack(Item.C1543D.ACCELERATOR, getAcceleratorsForDuration(this.duration)));
    }

    @Override // com.prineside.tdi2.Item.UsableItem
    public boolean autoUseWhenAdded() {
        return false;
    }

    @Override // com.prineside.tdi2.Item
    public boolean canBeSold() {
        return Game.f8589i.progressManager.isDoubleGainEnabled() && Game.f8589i.progressManager.isDoubleGainPermanent();
    }

    @Override // com.prineside.tdi2.Item
    public Item from(Item item) {
        this.duration = ((DoubleGainShardItem) item).duration;
        return this;
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.MATERIALS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("item_description_DOUBLE_GAIN_SHARD") + " (" + StringFormatter.timePassed(this.duration, false, true) + ")";
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        return RarityType.LEGENDARY;
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return ItemSubcategoryType.M_DUST;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        return Game.f8589i.localeManager.i18n.get("item_title_DOUBLE_GAIN_SHARD");
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.DOUBLE_GAIN_SHARD;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    @Override // com.prineside.tdi2.Item, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.duration = input.readVarInt(true);
    }

    @Override // com.prineside.tdi2.Item.UsableItem
    public boolean useItemNeedsConfirmation() {
        return false;
    }

    @Override // com.prineside.tdi2.Item, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeVarInt(this.duration, true);
    }

    public DoubleGainShardItem() {
        this.duration = DEFAULT_DURATION;
    }

    @Override // com.prineside.tdi2.Item
    public Item cpy() {
        DoubleGainShardItem create = Item.C1543D.F_DOUBLE_GAIN_SHARD.create();
        create.duration = this.duration;
        return create;
    }

    @Override // com.prineside.tdi2.Item
    public void fillItemCreationForm(final ItemCreationOverlay itemCreationOverlay) {
        itemCreationOverlay.label("Duration (s)");
        itemCreationOverlay.textField(PMath.toString(this.duration), new ObjectRetriever<String>() { // from class: com.prineside.tdi2.items.DoubleGainShardItem.1
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public void retrieved(String str) {
                try {
                    ((DoubleGainShardItem) itemCreationOverlay.currentItem).duration = Integer.valueOf(str).intValue();
                    itemCreationOverlay.updateItemIcon();
                } catch (Exception unused) {
                    Logger.error("fillItemCreationForm", "bad value: " + str);
                }
            }
        });
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        if (z) {
            Group group = new Group();
            group.setTransform(false);
            group.setSize(f, f);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("double-gain-shard"));
            image.setSize(f, f);
            image.setPosition(Item.m21960a(f), -Item.m21960a(f));
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            group.addActor(image);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("double-gain-shard"));
            image2.setSize(f, f);
            group.addActor(image2);
            return group;
        }
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("double-gain-shard"));
        image3.setSize(f, f);
        return image3;
    }

    @Override // com.prineside.tdi2.Item.UsableItem
    public boolean useItem() {
        String str;
        if ((Game.f8589i.progressManager.isDoubleGainPermanent() && Game.f8589i.progressManager.isDoubleGainEnabled()) || !Game.f8589i.progressManager.removeItems(this, 1)) {
            return false;
        }
        if (this.duration == 1209600) {
            str = "double_gain_shard_2w";
        } else {
            str = "double_gain_shard";
        }
        Game.f8589i.actionResolver.logCurrencySpent(null, str, 1);
        return Game.f8589i.progressManager.enableDoubleGainTemporary(this.duration);
    }

    @Override // com.prineside.tdi2.Item
    public boolean sameAs(Item item) {
        if (!super.sameAs(item)) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        DoubleGainShardItem doubleGainShardItem = (DoubleGainShardItem) item;
        sb.append(doubleGainShardItem.duration);
        sb.append(" ");
        sb.append(this.duration);
        Logger.log("DoubleGainShardItem", sb.toString());
        if (doubleGainShardItem.duration != this.duration) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public void toJson(Json json) {
        super.toJson(json);
        json.writeValue("duration", Integer.valueOf(this.duration));
    }
}
