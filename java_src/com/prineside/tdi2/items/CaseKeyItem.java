package com.prineside.tdi2.items;

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
import com.prineside.tdi2.enums.CaseType;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemDataType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class CaseKeyItem extends Item implements Item.UsableItem {
    public CaseType caseType;

    /* renamed from: com.prineside.tdi2.items.CaseKeyItem$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C16711 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9477a;

        static {
            int[] iArr = new int[CaseType.values().length];
            f9477a = iArr;
            try {
                iArr[CaseType.GREEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9477a[CaseType.BLUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9477a[CaseType.PURPLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9477a[CaseType.ORANGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9477a[CaseType.CYAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f9477a[CaseType.BLUEPRINT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class CaseKeyItemFactory implements Item.Factory<CaseKeyItem> {

        /* renamed from: a */
        public final CaseKeyItem[] f9478a;

        public CaseKeyItem create(CaseType caseType) {
            return this.f9478a[caseType.ordinal()];
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
        }

        @Override // com.prineside.tdi2.Item.Factory
        public CaseKeyItem createDefault() {
            return create(CaseType.BLUE);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public CaseKeyItem fromJson(JsonValue jsonValue) {
            return create(CaseType.valueOf(jsonValue.getString("caseType")));
        }

        public CaseKeyItemFactory() {
            CaseType[] caseTypeArr = CaseType.values;
            this.f9478a = new CaseKeyItem[caseTypeArr.length];
            for (CaseType caseType : caseTypeArr) {
                this.f9478a[caseType.ordinal()] = new CaseKeyItem(caseType, null);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<CaseKeyItem> {
        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends CaseKeyItem>) cls);
        }

        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, CaseKeyItem caseKeyItem) {
            kryo.writeObject(output, caseKeyItem.caseType);
        }

        @Override // com.prineside.tdi2.serializers.SingletonSerializer, com.esotericsoftware.kryo.Serializer
        public CaseKeyItem read(Kryo kryo, Input input, Class<? extends CaseKeyItem> cls) {
            return Item.C1543D.F_CASE_KEY.create((CaseType) kryo.readObject(input, CaseType.class));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public CaseKeyItem read() {
            throw new IllegalStateException("Do not use");
        }
    }

    public /* synthetic */ CaseKeyItem(CaseType caseType, C16711 c16711) {
        this(caseType);
    }

    @Override // com.prineside.tdi2.Item.UsableItem
    public boolean autoUseWhenAdded() {
        return false;
    }

    @Override // com.prineside.tdi2.Item
    public boolean canBeSold() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public Item from(Item item) {
        return Item.C1543D.F_CASE_KEY.create(((CaseKeyItem) item).caseType);
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.PACKS;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        return Game.f8589i.localeManager.i18n.get("item_description_CASE_KEY");
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        return Item.C1543D.F_CASE.create(this.caseType, false, true).getRarity();
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return ItemSubcategoryType.P_DECRYPTED;
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.CASE_KEY;
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
    public boolean useItem() {
        Game.f8589i.screenManager.goToMoneyScreen();
        return true;
    }

    @Override // com.prineside.tdi2.Item.UsableItem
    public boolean useItemNeedsConfirmation() {
        return false;
    }

    public CaseKeyItem(CaseType caseType) {
        if (caseType != null) {
            this.caseType = caseType;
            return;
        }
        throw new IllegalArgumentException("caseType is null");
    }

    @Override // com.prineside.tdi2.Item
    public void addSellItems(Array<ItemStack> array) {
        int i = 300;
        switch (C16711.f9477a[this.caseType.ordinal()]) {
            case 1:
            case 6:
                break;
            case 2:
                i = 500;
                break;
            case 3:
                i = 800;
                break;
            case 4:
                i = 1200;
                break;
            case 5:
                i = 2000;
                break;
            default:
                i = 1;
                break;
        }
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, i));
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        Image image = new Image(Game.f8589i.assetManager.getDrawable("icon-key"));
        int i = C16711.f9477a[this.caseType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            image.setColor(MaterialColor.CYAN.P300);
                        }
                    } else {
                        image.setColor(MaterialColor.ORANGE.P300);
                    }
                } else {
                    image.setColor(MaterialColor.PURPLE.P300);
                }
            } else {
                image.setColor(MaterialColor.INDIGO.P300);
            }
        } else {
            image.setColor(MaterialColor.GREEN.P300);
        }
        image.setSize(f, f);
        if (z) {
            Group group = new Group();
            group.setTransform(false);
            group.setSize(f, f);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("icon-key"));
            image2.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            image2.setSize(f, f);
            image2.setPosition(Item.m21960a(f), -Item.m21960a(f));
            group.addActor(image2);
            group.addActor(image);
            return group;
        }
        return image;
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        return Game.f8589i.localeManager.i18n.get("case_key_title_" + this.caseType.name());
    }

    @Override // com.prineside.tdi2.Item
    public IntArray getData() {
        IntArray data = super.getData();
        data.add(ItemDataType.TYPE.ordinal(), this.caseType.ordinal());
        return data;
    }

    @Override // com.prineside.tdi2.Item
    public boolean sameAs(Item item) {
        if (!super.sameAs(item) || this.caseType != ((CaseKeyItem) item).caseType) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public void toJson(Json json) {
        super.toJson(json);
        json.writeValue("caseType", this.caseType.name());
    }
}
