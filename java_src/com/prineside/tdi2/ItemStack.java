package com.prineside.tdi2;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.utils.CheatSafeInt;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import java.util.Comparator;
import p218x1.C7221i;
@REGS
/* loaded from: classes2.dex */
public class ItemStack implements KryoSerializable {
    public static final int MAX_COUNT = 999999999;
    public static final Comparator<ItemStack> SORT_COMPARATOR_KIND = new Comparator<ItemStack>() { // from class: com.prineside.tdi2.ItemStack.1
        @Override // java.util.Comparator
        public int compare(ItemStack itemStack, ItemStack itemStack2) {
            Item item = itemStack.getItem();
            ItemSortingType itemSortingType = ItemSortingType.KIND;
            return C7221i.m2085a(item.getSortingScore(itemSortingType), itemStack2.getItem().getSortingScore(itemSortingType));
        }
    };
    public static final Comparator<ItemStack> SORT_COMPARATOR_RARITY_ASC = new Comparator<ItemStack>() { // from class: com.prineside.tdi2.ItemStack.2
        @Override // java.util.Comparator
        public int compare(ItemStack itemStack, ItemStack itemStack2) {
            Item item = itemStack.getItem();
            ItemSortingType itemSortingType = ItemSortingType.RARITY;
            return C7221i.m2085a(item.getSortingScore(itemSortingType), itemStack2.getItem().getSortingScore(itemSortingType));
        }
    };
    public static final Comparator<ItemStack> SORT_COMPARATOR_RARITY_DESC = new Comparator<ItemStack>() { // from class: com.prineside.tdi2.ItemStack.3
        @Override // java.util.Comparator
        public int compare(ItemStack itemStack, ItemStack itemStack2) {
            Item item = itemStack2.getItem();
            ItemSortingType itemSortingType = ItemSortingType.RARITY;
            return C7221i.m2085a(item.getSortingScore(itemSortingType), itemStack.getItem().getSortingScore(itemSortingType));
        }
    };

    /* renamed from: a */
    public Item f8715a;

    /* renamed from: b */
    public CheatSafeInt f8716b;
    public boolean covered;

    public ItemStack() {
        this.f8716b = new CheatSafeInt(1, 1);
        this.covered = false;
    }

    public void add(int i) {
        CheatSafeInt cheatSafeInt = this.f8716b;
        cheatSafeInt.set(PMath.addWithoutOverflow(cheatSafeInt.get(), i));
    }

    public int getCount() {
        return this.f8716b.get();
    }

    public Item getItem() {
        return this.f8715a;
    }

    public void setCount(int i) {
        this.f8716b.set(MathUtils.clamp(i, 0, (int) MAX_COUNT));
    }

    public void setItem(Item item) {
        this.f8715a = item;
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + " (" + this.f8715a.toString() + " x" + this.f8716b + ")";
    }

    public static ItemStack fromJson(JsonValue jsonValue) {
        try {
            JsonValue jsonValue2 = jsonValue.get("i");
            if (jsonValue2 == null) {
                jsonValue2 = jsonValue.get("item");
            }
            Item fromJson = Item.fromJson(jsonValue2);
            int i = jsonValue.getInt("c", -1);
            if (i == -1) {
                i = jsonValue.getInt("count", -1);
            }
            if (i == -1) {
                i = 1;
            }
            return new ItemStack(fromJson, i);
        } catch (Exception e) {
            throw new RuntimeException("Unable to create ItemStack from json: " + jsonValue.toString(), e);
        }
    }

    public ItemStack cpy() {
        ItemStack itemStack = new ItemStack(this.f8715a, getCount());
        itemStack.covered = this.covered;
        return itemStack;
    }

    public ItemStack setItem(Item item, int i) {
        this.f8715a = item;
        setCount(i);
        return this;
    }

    public void toJson(Json json) {
        json.writeObjectStart("i");
        this.f8715a.toJson(json);
        json.writeObjectEnd();
        if (this.f8716b.get() > 1) {
            json.writeValue("c", Integer.valueOf(this.f8716b.get()));
        }
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeClassAndObject(output, this.f8715a);
        kryo.writeObject(output, this.f8716b);
        output.writeBoolean(this.covered);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f8715a = (Item) kryo.readClassAndObject(input);
        this.f8716b = (CheatSafeInt) kryo.readObject(input, CheatSafeInt.class);
        this.covered = input.readBoolean();
    }

    public ItemStack(ItemStack itemStack) {
        this(itemStack.f8715a, itemStack.f8716b.get());
        this.covered = itemStack.covered;
    }

    public ItemStack(Item item, int i) {
        CheatSafeInt cheatSafeInt = new CheatSafeInt(1, 1);
        this.f8716b = cheatSafeInt;
        this.covered = false;
        if (item == null) {
            throw new IllegalArgumentException("Item is null");
        }
        if (i >= 1) {
            this.f8715a = item;
            cheatSafeInt.set(i);
            return;
        }
        throw new IllegalArgumentException("Count is < 1 (" + i + ")");
    }
}
