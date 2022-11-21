package com.prineside.tdi2.items;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.enums.BlueprintType;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemDataType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class BlueprintItem extends Item {

    /* renamed from: d */
    public BlueprintType f9465d;

    /* renamed from: com.prineside.tdi2.items.BlueprintItem$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C16681 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9466a;

        static {
            int[] iArr = new int[BlueprintType.values().length];
            f9466a = iArr;
            try {
                iArr[BlueprintType.POWER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9466a[BlueprintType.AGILITY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9466a[BlueprintType.EXPERIENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9466a[BlueprintType.SPECIAL_I.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9466a[BlueprintType.SPECIAL_II.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f9466a[BlueprintType.SPECIAL_III.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f9466a[BlueprintType.SPECIAL_IV.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class BlueprintItemFactory implements Item.Factory<BlueprintItem> {

        /* renamed from: a */
        public BlueprintItem[] f9467a;

        /* renamed from: b */
        public TextureRegion[] f9468b;

        public BlueprintItem create(BlueprintType blueprintType) {
            return this.f9467a[blueprintType.ordinal()];
        }

        @Override // com.prineside.tdi2.Item.Factory
        public BlueprintItem createDefault() {
            return create(BlueprintType.values[0]);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public BlueprintItem fromJson(JsonValue jsonValue) {
            return create(BlueprintType.valueOf(jsonValue.getString("blueprintType")));
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
            BlueprintType[] blueprintTypeArr;
            if (Game.f8589i.assetManager != null) {
                for (BlueprintType blueprintType : BlueprintType.values) {
                    this.f9468b[blueprintType.ordinal()] = Game.f8589i.assetManager.getTextureRegion("blueprint-" + blueprintType.name());
                }
            }
        }

        public BlueprintItemFactory() {
            BlueprintType[] blueprintTypeArr = BlueprintType.values;
            this.f9467a = new BlueprintItem[blueprintTypeArr.length];
            this.f9468b = new TextureRegion[blueprintTypeArr.length];
            for (BlueprintType blueprintType : blueprintTypeArr) {
                this.f9467a[blueprintType.ordinal()] = new BlueprintItem(blueprintType, null);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<BlueprintItem> {
        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends BlueprintItem>) cls);
        }

        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, BlueprintItem blueprintItem) {
            kryo.writeObject(output, blueprintItem.f9465d);
        }

        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public BlueprintItem read(Kryo kryo, Input input, Class<? extends BlueprintItem> cls) {
            return Item.C1543D.F_BLUEPRINT.create((BlueprintType) kryo.readObject(input, BlueprintType.class));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public BlueprintItem read() {
            throw new IllegalStateException("Do not use");
        }
    }

    public /* synthetic */ BlueprintItem(BlueprintType blueprintType, C16681 c16681) {
        this(blueprintType);
    }

    @Override // com.prineside.tdi2.Item
    public boolean canBeSold() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public Item from(Item item) {
        return Item.C1543D.F_BLUEPRINT.create(((BlueprintItem) item).f9465d);
    }

    public BlueprintType getBlueprintType() {
        return this.f9465d;
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.MATERIALS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("item_description_BLUEPRINT");
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return ItemSubcategoryType.M_BLUEPRINT;
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.BLUEPRINT;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isAffectedByDoubleGain() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public BlueprintItem(BlueprintType blueprintType) {
        this.f9465d = blueprintType;
    }

    @Override // com.prineside.tdi2.Item
    public void addSellItems(Array<ItemStack> array) {
        int i;
        switch (C16681.f9466a[this.f9465d.ordinal()]) {
            case 1:
            case 2:
            case 3:
                i = 300;
                break;
            case 4:
                i = CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
                break;
            case 5:
                i = 2500;
                break;
            case 6:
                i = 6500;
                break;
            case 7:
                i = 15000;
                break;
            default:
                i = 1;
                break;
        }
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, i));
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        if (z) {
            Group group = new Group();
            group.setTransform(false);
            group.setSize(f, f);
            Image image = new Image(Item.C1543D.F_BLUEPRINT.f9468b[this.f9465d.ordinal()]);
            image.setSize(f, f);
            image.setPosition(Item.m21960a(f), -Item.m21960a(f));
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            group.addActor(image);
            Image image2 = new Image(Item.C1543D.F_BLUEPRINT.f9468b[this.f9465d.ordinal()]);
            image2.setSize(f, f);
            group.addActor(image2);
            return group;
        }
        Image image3 = new Image(Item.C1543D.F_BLUEPRINT.f9468b[this.f9465d.ordinal()]);
        image3.setSize(f, f);
        return image3;
    }

    @Override // com.prineside.tdi2.Item
    public double getPriceInAcceleratorsForResearchReset(int i) {
        switch (C16681.f9466a[this.f9465d.ordinal()]) {
            case 1:
            case 2:
            case 3:
                i *= 300;
                break;
            case 4:
                i *= CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
                break;
            case 5:
                i *= 2500;
                break;
            case 6:
                i *= 6500;
                break;
            case 7:
                i *= 15000;
                break;
        }
        return Item.C1543D.GREEN_PAPER.getPriceInAcceleratorsForResearchReset(i);
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        switch (C16681.f9466a[this.f9465d.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return RarityType.COMMON;
            case 4:
                return RarityType.RARE;
            case 5:
                return RarityType.VERY_RARE;
            case 6:
                return RarityType.EPIC;
            case 7:
                return RarityType.LEGENDARY;
            default:
                return null;
        }
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        switch (C16681.f9466a[this.f9465d.ordinal()]) {
            case 1:
                return Game.f8589i.localeManager.i18n.get("item_title_BLUEPRINT_POWER");
            case 2:
                return Game.f8589i.localeManager.i18n.get("item_title_BLUEPRINT_AGILITY");
            case 3:
                return Game.f8589i.localeManager.i18n.get("item_title_BLUEPRINT_EXPERIENCE");
            case 4:
                return Game.f8589i.localeManager.i18n.get("item_title_BLUEPRINT_SPECIAL_I");
            case 5:
                return Game.f8589i.localeManager.i18n.get("item_title_BLUEPRINT_SPECIAL_II");
            case 6:
                return Game.f8589i.localeManager.i18n.get("item_title_BLUEPRINT_SPECIAL_III");
            case 7:
                return Game.f8589i.localeManager.i18n.get("item_title_BLUEPRINT_SPECIAL_IV");
            default:
                return null;
        }
    }

    @Override // com.prineside.tdi2.Item
    public IntArray getData() {
        IntArray data = super.getData();
        data.add(ItemDataType.TYPE.ordinal(), this.f9465d.ordinal());
        return data;
    }

    @Override // com.prineside.tdi2.Item
    public boolean sameAs(Item item) {
        if (!super.sameAs(item) || ((BlueprintItem) item).f9465d != this.f9465d) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public void toJson(Json json) {
        super.toJson(json);
        json.writeValue("blueprintType", this.f9465d.name());
    }
}
