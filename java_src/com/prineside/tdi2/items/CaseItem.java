package com.prineside.tdi2.items;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.SelectBox;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
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
import com.prineside.tdi2.enums.CaseType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemDataType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.ItemManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.p036ui.shared.ItemCreationOverlay;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import java.lang.reflect.Array;
@REGS
/* loaded from: classes2.dex */
public class CaseItem extends Item {
    public CaseType caseType;
    public boolean containsPapers;
    @NAGS

    /* renamed from: d */
    public String f9469d;
    @NAGS
    public boolean encrypted;

    /* renamed from: com.prineside.tdi2.items.CaseItem$2 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C16702 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9473a;

        static {
            int[] iArr = new int[CaseType.values().length];
            f9473a = iArr;
            try {
                iArr[CaseType.GREEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9473a[CaseType.BLUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9473a[CaseType.ORANGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9473a[CaseType.PURPLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9473a[CaseType.CYAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f9473a[CaseType.BLUEPRINT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class CaseItemFactory implements Item.Factory<CaseItem> {

        /* renamed from: a */
        public final CaseItem[][] f9474a;

        /* renamed from: b */
        public final CaseItem[][] f9475b;

        /* renamed from: c */
        public final Drawable[][] f9476c;

        public CaseItemFactory() {
            CaseType[] caseTypeArr = CaseType.values;
            this.f9474a = (CaseItem[][]) Array.newInstance(CaseItem.class, caseTypeArr.length, 2);
            this.f9475b = (CaseItem[][]) Array.newInstance(CaseItem.class, caseTypeArr.length, 2);
            this.f9476c = (Drawable[][]) Array.newInstance(Drawable.class, caseTypeArr.length, 2);
            for (CaseType caseType : caseTypeArr) {
                this.f9474a[caseType.ordinal()][0] = new CaseItem(caseType, false, false);
                this.f9475b[caseType.ordinal()][0] = new CaseItem(caseType, true, false);
                this.f9474a[caseType.ordinal()][1] = new CaseItem(caseType, false, true);
                this.f9475b[caseType.ordinal()][1] = new CaseItem(caseType, true, true);
            }
        }

        public CaseItem create(CaseType caseType, boolean z, boolean z2) {
            if (caseType != null) {
                if (z) {
                    return this.f9475b[caseType.ordinal()][z2 ? 1 : 0];
                }
                return this.f9474a[caseType.ordinal()][z2 ? 1 : 0];
            }
            throw new IllegalArgumentException("CaseType is null");
        }

        @Override // com.prineside.tdi2.Item.Factory
        public CaseItem createDefault() {
            return create(CaseType.values[0], false, false);
        }

        @Override // com.prineside.tdi2.Item.Factory
        public CaseItem fromJson(JsonValue jsonValue) {
            return create(CaseType.valueOf(jsonValue.getString("caseType")), jsonValue.getBoolean("encrypted", false), jsonValue.getBoolean("containsPapers", true));
        }

        @Override // com.prineside.tdi2.Item.Factory
        public void setup() {
            if (Game.f8589i.assetManager != null) {
                Drawable[][] drawableArr = this.f9476c;
                CaseType caseType = CaseType.GREEN;
                drawableArr[caseType.ordinal()][0] = Game.f8589i.assetManager.getDrawable("chest-green");
                Drawable[][] drawableArr2 = this.f9476c;
                CaseType caseType2 = CaseType.BLUE;
                drawableArr2[caseType2.ordinal()][0] = Game.f8589i.assetManager.getDrawable("chest-blue");
                Drawable[][] drawableArr3 = this.f9476c;
                CaseType caseType3 = CaseType.ORANGE;
                drawableArr3[caseType3.ordinal()][0] = Game.f8589i.assetManager.getDrawable("chest-orange");
                Drawable[][] drawableArr4 = this.f9476c;
                CaseType caseType4 = CaseType.PURPLE;
                drawableArr4[caseType4.ordinal()][0] = Game.f8589i.assetManager.getDrawable("chest-purple");
                Drawable[][] drawableArr5 = this.f9476c;
                CaseType caseType5 = CaseType.CYAN;
                drawableArr5[caseType5.ordinal()][0] = Game.f8589i.assetManager.getDrawable("chest-cyan");
                Drawable[][] drawableArr6 = this.f9476c;
                CaseType caseType6 = CaseType.BLUEPRINT;
                drawableArr6[caseType6.ordinal()][0] = Game.f8589i.assetManager.getDrawable("chest-pink");
                this.f9476c[caseType.ordinal()][1] = Game.f8589i.assetManager.getDrawable("chest-green-encrypted");
                this.f9476c[caseType2.ordinal()][1] = Game.f8589i.assetManager.getDrawable("chest-blue-encrypted");
                this.f9476c[caseType3.ordinal()][1] = Game.f8589i.assetManager.getDrawable("chest-orange-encrypted");
                this.f9476c[caseType4.ordinal()][1] = Game.f8589i.assetManager.getDrawable("chest-purple-encrypted");
                this.f9476c[caseType5.ordinal()][1] = Game.f8589i.assetManager.getDrawable("chest-cyan-encrypted");
                this.f9476c[caseType6.ordinal()][1] = Game.f8589i.assetManager.getDrawable("chest-pink-encrypted");
            }
        }
    }

    @Override // com.prineside.tdi2.Item
    public boolean canBeUnpacked() {
        return !this.encrypted;
    }

    @Override // com.prineside.tdi2.Item
    public Item cpy() {
        return Item.C1543D.F_CASE.create(this.caseType, this.encrypted, this.containsPapers);
    }

    public int getCasePriceInAccelerators() {
        return this.caseType == CaseType.CYAN ? 100 : 0;
    }

    public int getCasePriceInKeys() {
        int i = C16702.f9473a[this.caseType.ordinal()];
        return (i == 2 || i == 3 || i == 4 || i == 5) ? 10 : 0;
    }

    public int getCasePriceInPapers() {
        int i = C16702.f9473a[this.caseType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return i != 4 ? 0 : 30000;
                }
                return 120000;
            }
            return 7500;
        }
        return 7000;
    }

    @Override // com.prineside.tdi2.Item
    public ItemCategoryType getCategory() {
        return ItemCategoryType.PACKS;
    }

    public float getDecryptionTime() {
        switch (C16702.f9473a[this.caseType.ordinal()]) {
            case 1:
                return 5400.0f;
            case 2:
                return 10800.0f;
            case 3:
                return 43200.0f;
            case 4:
                return 21600.0f;
            case 5:
                return 64800.0f;
            case 6:
                return 21600.0f;
            default:
                return 86400.0f;
        }
    }

    public Drawable getIconDrawable() {
        return Item.C1543D.F_CASE.f9476c[this.caseType.ordinal()][this.encrypted ? 1 : 0];
    }

    public int getItemCount() {
        switch (C16702.f9473a[this.caseType.ordinal()]) {
            case 1:
                return 4;
            case 2:
                return 5;
            case 3:
                return 7;
            case 4:
                return 6;
            case 5:
                return 8;
            case 6:
                return 3;
            default:
                return 0;
        }
    }

    @Override // com.prineside.tdi2.Item
    public ItemSubcategoryType getSubcategory() {
        return this.encrypted ? ItemSubcategoryType.P_ENCRYPTED : ItemSubcategoryType.P_DECRYPTED;
    }

    @Override // com.prineside.tdi2.Item
    public ItemType getType() {
        return ItemType.CASE;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isAffectedByDoubleGain() {
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public boolean isCountable() {
        return true;
    }

    public CaseItem() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m21734d(ItemCreationOverlay itemCreationOverlay, Boolean bool) {
        itemCreationOverlay.currentItem = Item.C1543D.F_CASE.create(this.caseType, bool.booleanValue(), this.containsPapers);
        itemCreationOverlay.updateForm();
        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m21733e(ItemCreationOverlay itemCreationOverlay, Boolean bool) {
        itemCreationOverlay.currentItem = Item.C1543D.F_CASE.create(this.caseType, this.encrypted, bool.booleanValue());
        itemCreationOverlay.updateForm();
        Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
    }

    @Override // com.prineside.tdi2.Item
    public void fillItemCreationForm(final ItemCreationOverlay itemCreationOverlay) {
        itemCreationOverlay.label("Case type");
        final SelectBox selectBox = new SelectBox(itemCreationOverlay.selectBoxStyle);
        selectBox.setItems(CaseType.values);
        selectBox.setSelected(this.caseType);
        selectBox.addListener(new ChangeListener() { // from class: com.prineside.tdi2.items.CaseItem.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ChangeListener
            public void changed(ChangeListener.ChangeEvent changeEvent, Actor actor) {
                ItemCreationOverlay itemCreationOverlay2 = itemCreationOverlay;
                CaseItem caseItem = CaseItem.this;
                itemCreationOverlay2.currentItem = Item.C1543D.F_CASE.create((CaseType) selectBox.getSelected(), caseItem.encrypted, caseItem.containsPapers);
                itemCreationOverlay.updateItemIcon();
            }
        });
        itemCreationOverlay.selectBox(selectBox);
        itemCreationOverlay.toggle("Encrypted", this.encrypted, new ObjectRetriever() { // from class: com.prineside.tdi2.items.a
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                CaseItem.this.m21734d(itemCreationOverlay, (Boolean) obj);
            }
        });
        itemCreationOverlay.toggle("Contains papers", this.containsPapers, new ObjectRetriever() { // from class: com.prineside.tdi2.items.b
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                CaseItem.this.m21733e(itemCreationOverlay, (Boolean) obj);
            }
        });
    }

    @Override // com.prineside.tdi2.Item
    public Item from(Item item) {
        CaseItem caseItem = (CaseItem) item;
        return Item.C1543D.F_CASE.create(caseItem.caseType, caseItem.encrypted, caseItem.containsPapers);
    }

    @Override // com.prineside.tdi2.Item
    public Actor generateIcon(float f, boolean z) {
        Group group = new Group();
        group.setTransform(false);
        group.setSize(f, f);
        Drawable drawable = Item.C1543D.F_CASE.f9476c[this.caseType.ordinal()][this.encrypted ? 1 : 0];
        if (z) {
            Image image = new Image(drawable);
            image.setSize(f, f);
            image.setPosition(Item.m21960a(f), -Item.m21960a(f));
            image.setColor(0.0f, 0.0f, 0.0f, 0.28f);
            group.addActor(image);
        }
        Image image2 = new Image(drawable);
        image2.setSize(f, f);
        group.addActor(image2);
        return group;
    }

    public Color getColor() {
        switch (C16702.f9473a[this.caseType.ordinal()]) {
            case 1:
                return MaterialColor.GREEN.P500;
            case 2:
                return MaterialColor.INDIGO.P400;
            case 3:
                return MaterialColor.ORANGE.P500;
            case 4:
                return MaterialColor.PURPLE.P400;
            case 5:
                return MaterialColor.CYAN.P500;
            case 6:
                return MaterialColor.PINK.P600;
            default:
                return null;
        }
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getDescription() {
        if (this.encrypted) {
            return Game.f8589i.localeManager.i18n.get("item_description_CASE_encrypted");
        }
        return Game.f8589i.localeManager.i18n.get("item_description_CASE");
    }

    public RarityType getGuaranteedItemType() {
        int i = C16702.f9473a[this.caseType.ordinal()];
        if (i != 3) {
            if (i != 4) {
                if (i != 5) {
                    return null;
                }
                return RarityType.LEGENDARY;
            }
            return RarityType.VERY_RARE;
        }
        return RarityType.EPIC;
    }

    public int[] getItemRarityChances() {
        switch (C16702.f9473a[this.caseType.ordinal()]) {
            case 1:
                return new int[]{88, 12, 0, 0, 0};
            case 2:
                return new int[]{70, 25, 5, 0, 0};
            case 3:
                return new int[]{29, 38, 18, 12, 3};
            case 4:
                return new int[]{51, 34, 12, 3, 0};
            case 5:
                return new int[]{14, 30, 24, 20, 12};
            case 6:
                return new int[]{100, 0, 0, 0, 0};
            default:
                return null;
        }
    }

    @Override // com.prineside.tdi2.Item
    public RarityType getRarity() {
        switch (C16702.f9473a[this.caseType.ordinal()]) {
            case 1:
                return RarityType.COMMON;
            case 2:
                return RarityType.RARE;
            case 3:
                return RarityType.EPIC;
            case 4:
                return RarityType.VERY_RARE;
            case 5:
                return RarityType.LEGENDARY;
            case 6:
                return RarityType.EPIC;
            default:
                return RarityType.COMMON;
        }
    }

    @Override // com.prineside.tdi2.Item
    public CharSequence getTitle() {
        if (this.f9469d == null) {
            this.f9469d = "item_title_CASE_" + this.caseType.name();
        }
        return Game.f8589i.localeManager.i18n.get(this.f9469d);
    }

    @Override // com.prineside.tdi2.Item
    public com.badlogic.gdx.utils.Array<ItemStack> openPack(ProgressManager.InventoryStatistics inventoryStatistics) {
        BlueprintItem blueprintItem;
        float f;
        float f2;
        boolean z;
        BlueprintItem blueprintItem2;
        BlueprintItem blueprintItem3;
        float f3;
        float f4;
        boolean z2;
        BlueprintItem blueprintItem4;
        BlueprintItem blueprintItem5;
        int byChance;
        float f5;
        float f6;
        boolean z3;
        BlueprintItem blueprintItem6;
        BlueprintItem blueprintItem7;
        int byChance2;
        float f7;
        float f8;
        boolean z4;
        BlueprintItem blueprintItem8;
        BlueprintItem blueprintItem9;
        int byChance3;
        float f9;
        boolean z5;
        int i = 8;
        com.badlogic.gdx.utils.Array<ItemStack> array = new com.badlogic.gdx.utils.Array<>(false, 8, ItemStack.class);
        RandomXS128 randomXS128 = Game.f8589i.progressManager.caseRandoms[this.caseType.ordinal()];
        IntArray intArray = new IntArray();
        int i2 = 20;
        int i3 = 11;
        int i4 = 6;
        int i5 = 25;
        int i6 = 5;
        switch (C16702.f9473a[this.caseType.ordinal()]) {
            case 1:
                int i7 = 4;
                intArray.add(88, RarityType.COMMON.ordinal());
                intArray.add(12, RarityType.RARE.ordinal());
                boolean z6 = false;
                while (array.size != i7) {
                    if (this.containsPapers && !z6) {
                        ProgressManager.addItemToStacksArray(array, Item.C1543D.GREEN_PAPER, (randomXS128.nextInt(5) + 8) * 100);
                        z6 = true;
                    } else {
                        int byChance4 = PMath.getByChance(randomXS128, intArray);
                        float nextFloat = randomXS128.nextFloat();
                        ItemManager itemManager = Game.f8589i.itemManager;
                        RarityType rarityType = RarityType.values[byChance4];
                        if (Game.f8589i.progressManager.isResourceOpened(ResourceType.SCALAR)) {
                            f = 1.0f;
                        } else {
                            f = 0.0f;
                        }
                        float percentValueAsMultiplier = (float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.BIT_DUST_DROP_RATE);
                        if (byChance4 >= RarityType.RARE.ordinal()) {
                            f2 = 2.0f;
                        } else {
                            f2 = 0.0f;
                        }
                        ItemStack generateItemByRarity = itemManager.generateItemByRarity(randomXS128, rarityType, nextFloat, 1.0f, f, 1.0f, percentValueAsMultiplier, 0.0f, 0.0f, f2, false, inventoryStatistics);
                        int i8 = 0;
                        while (true) {
                            if (i8 < array.size) {
                                if (array.items[i8].getItem().sameAs(generateItemByRarity.getItem())) {
                                    z = true;
                                } else {
                                    i8++;
                                }
                            } else {
                                z = false;
                            }
                        }
                        if (!z && generateItemByRarity.getItem().getType() == ItemType.RESOURCE && !Game.f8589i.progressManager.isResourceOpened(((ResourceItem) generateItemByRarity.getItem()).resourceType)) {
                            z = true;
                        }
                        if (!z) {
                            array.add(generateItemByRarity);
                        }
                        i7 = 4;
                    }
                }
                if (this.containsPapers) {
                    int nextInt = randomXS128.nextInt(3);
                    if (nextInt == 0) {
                        blueprintItem = Item.C1543D.BLUEPRINT_AGILITY;
                    } else if (nextInt == 1) {
                        blueprintItem = Item.C1543D.BLUEPRINT_EXPERIENCE;
                    } else {
                        blueprintItem = Item.C1543D.BLUEPRINT_POWER;
                    }
                    ProgressManager.addItemToStacksArray(array, blueprintItem, randomXS128.nextInt(3) + 2);
                    break;
                }
                break;
            case 2:
                int i9 = 5;
                intArray.add(70, RarityType.COMMON.ordinal());
                intArray.add(25, RarityType.RARE.ordinal());
                intArray.add(5, RarityType.VERY_RARE.ordinal());
                boolean z7 = false;
                while (array.size != i9) {
                    if (this.containsPapers && !z7) {
                        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, (randomXS128.nextInt(11) + i2) * 100));
                        z7 = true;
                    } else {
                        int byChance5 = PMath.getByChance(randomXS128, intArray);
                        float nextFloat2 = randomXS128.nextFloat();
                        if (byChance5 == RarityType.COMMON.ordinal()) {
                            f3 = 2.0f;
                        } else {
                            f3 = 1.0f;
                        }
                        ItemManager itemManager2 = Game.f8589i.itemManager;
                        RarityType rarityType2 = RarityType.values[byChance5];
                        float percentValueAsMultiplier2 = (float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.BIT_DUST_DROP_RATE);
                        if (byChance5 >= RarityType.VERY_RARE.ordinal()) {
                            f4 = 2.0f;
                        } else {
                            f4 = 0.0f;
                        }
                        ItemStack generateItemByRarity2 = itemManager2.generateItemByRarity(randomXS128, rarityType2, nextFloat2, f3, 1.0f, 1.0f, percentValueAsMultiplier2, 0.0f, 0.0f, f4, false, inventoryStatistics);
                        int i10 = 0;
                        while (true) {
                            if (i10 < array.size) {
                                if (array.items[i10].getItem().sameAs(generateItemByRarity2.getItem())) {
                                    z2 = true;
                                } else {
                                    i10++;
                                }
                            } else {
                                z2 = false;
                            }
                        }
                        if (!z2 && generateItemByRarity2.getItem().getType() == ItemType.RESOURCE && !Game.f8589i.progressManager.isResourceOpened(((ResourceItem) generateItemByRarity2.getItem()).resourceType)) {
                            z2 = true;
                        }
                        if (!z2) {
                            array.add(generateItemByRarity2);
                        }
                        i9 = 5;
                        i2 = 20;
                    }
                }
                if (this.containsPapers) {
                    int nextInt2 = randomXS128.nextInt(3);
                    int i11 = nextInt2;
                    while (i11 == nextInt2) {
                        i11 = randomXS128.nextInt(3);
                    }
                    if (nextInt2 == 0) {
                        blueprintItem2 = Item.C1543D.BLUEPRINT_AGILITY;
                    } else if (nextInt2 == 1) {
                        blueprintItem2 = Item.C1543D.BLUEPRINT_EXPERIENCE;
                    } else {
                        blueprintItem2 = Item.C1543D.BLUEPRINT_POWER;
                    }
                    ProgressManager.addItemToStacksArray(array, blueprintItem2, randomXS128.nextInt(4) + 3);
                    if (i11 == 0) {
                        blueprintItem3 = Item.C1543D.BLUEPRINT_AGILITY;
                    } else if (i11 == 1) {
                        blueprintItem3 = Item.C1543D.BLUEPRINT_EXPERIENCE;
                    } else {
                        blueprintItem3 = Item.C1543D.BLUEPRINT_POWER;
                    }
                    ProgressManager.addItemToStacksArray(array, blueprintItem3, randomXS128.nextInt(4) + 3);
                    break;
                }
                break;
            case 3:
                intArray.add(29, RarityType.COMMON.ordinal());
                intArray.add(38, RarityType.RARE.ordinal());
                intArray.add(18, RarityType.VERY_RARE.ordinal());
                intArray.add(12, RarityType.EPIC.ordinal());
                intArray.add(3, RarityType.LEGENDARY.ordinal());
                boolean z8 = false;
                while (true) {
                    int i12 = array.size;
                    if (i12 != 7) {
                        if (this.containsPapers && !z8) {
                            array.add(new ItemStack(Item.C1543D.GREEN_PAPER, (randomXS128.nextInt(11) + 25) * 500));
                            z8 = true;
                        } else {
                            if (i12 == 1) {
                                byChance = RarityType.EPIC.ordinal();
                            } else {
                                byChance = PMath.getByChance(randomXS128, intArray);
                            }
                            float nextFloat3 = randomXS128.nextFloat();
                            if (byChance == RarityType.COMMON.ordinal()) {
                                f5 = 8.0f;
                            } else if (byChance == RarityType.RARE.ordinal()) {
                                f5 = 4.0f;
                            } else if (byChance == RarityType.VERY_RARE.ordinal()) {
                                f5 = 2.0f;
                            } else {
                                f5 = 1.0f;
                            }
                            ItemManager itemManager3 = Game.f8589i.itemManager;
                            RarityType rarityType3 = RarityType.values[byChance];
                            float percentValueAsMultiplier3 = (float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.BIT_DUST_DROP_RATE);
                            if (byChance >= RarityType.LEGENDARY.ordinal()) {
                                f6 = 2.0f;
                            } else {
                                f6 = 0.0f;
                            }
                            ItemStack generateItemByRarity3 = itemManager3.generateItemByRarity(randomXS128, rarityType3, nextFloat3, f5, 1.0f, 1.0f, percentValueAsMultiplier3, 0.0f, 0.0f, f6, false, inventoryStatistics);
                            int i13 = 0;
                            while (true) {
                                if (i13 < array.size) {
                                    if (array.items[i13].getItem().sameAs(generateItemByRarity3.getItem())) {
                                        z3 = true;
                                    } else {
                                        i13++;
                                    }
                                } else {
                                    z3 = false;
                                }
                            }
                            if (!z3 && generateItemByRarity3.getItem().getType() == ItemType.RESOURCE && !Game.f8589i.progressManager.isResourceOpened(((ResourceItem) generateItemByRarity3.getItem()).resourceType)) {
                                z3 = true;
                            }
                            if (!z3) {
                                array.add(generateItemByRarity3);
                            }
                        }
                    } else if (this.containsPapers) {
                        int nextInt3 = randomXS128.nextInt(3);
                        int i14 = nextInt3;
                        while (i14 == nextInt3) {
                            i14 = randomXS128.nextInt(3);
                        }
                        if (nextInt3 == 0) {
                            blueprintItem4 = Item.C1543D.BLUEPRINT_AGILITY;
                        } else if (nextInt3 == 1) {
                            blueprintItem4 = Item.C1543D.BLUEPRINT_EXPERIENCE;
                        } else {
                            blueprintItem4 = Item.C1543D.BLUEPRINT_POWER;
                        }
                        ProgressManager.addItemToStacksArray(array, blueprintItem4, randomXS128.nextInt(7) + 6);
                        if (i14 == 0) {
                            blueprintItem5 = Item.C1543D.BLUEPRINT_AGILITY;
                        } else if (i14 == 1) {
                            blueprintItem5 = Item.C1543D.BLUEPRINT_EXPERIENCE;
                        } else {
                            blueprintItem5 = Item.C1543D.BLUEPRINT_POWER;
                        }
                        ProgressManager.addItemToStacksArray(array, blueprintItem5, randomXS128.nextInt(7) + 6);
                        ProgressManager.addItemToStacksArray(array, Item.C1543D.BLUEPRINT_SPECIAL_I, randomXS128.nextInt(3) + 1);
                        break;
                    }
                }
                break;
            case 4:
                intArray.add(51, RarityType.COMMON.ordinal());
                intArray.add(34, RarityType.RARE.ordinal());
                intArray.add(12, RarityType.VERY_RARE.ordinal());
                intArray.add(3, RarityType.EPIC.ordinal());
                boolean z9 = false;
                while (true) {
                    int i15 = array.size;
                    if (i15 != i4) {
                        if (this.containsPapers && !z9) {
                            array.add(new ItemStack(Item.C1543D.GREEN_PAPER, (randomXS128.nextInt(i3) + i5) * HttpStatus.SC_OK));
                            z9 = true;
                        } else {
                            if (i15 == 1) {
                                byChance2 = RarityType.VERY_RARE.ordinal();
                            } else {
                                byChance2 = PMath.getByChance(randomXS128, intArray);
                            }
                            float nextFloat4 = randomXS128.nextFloat();
                            if (byChance2 == RarityType.COMMON.ordinal()) {
                                f7 = 4.0f;
                            } else if (byChance2 == RarityType.RARE.ordinal()) {
                                f7 = 2.0f;
                            } else {
                                f7 = 1.0f;
                            }
                            ItemManager itemManager4 = Game.f8589i.itemManager;
                            RarityType rarityType4 = RarityType.values[byChance2];
                            float percentValueAsMultiplier4 = (float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.BIT_DUST_DROP_RATE);
                            if (byChance2 >= RarityType.EPIC.ordinal()) {
                                f8 = 2.0f;
                            } else {
                                f8 = 0.0f;
                            }
                            ItemStack generateItemByRarity4 = itemManager4.generateItemByRarity(randomXS128, rarityType4, nextFloat4, f7, 1.0f, 1.0f, percentValueAsMultiplier4, 0.0f, 0.0f, f8, false, inventoryStatistics);
                            int i16 = 0;
                            while (true) {
                                if (i16 < array.size) {
                                    if (array.items[i16].getItem().sameAs(generateItemByRarity4.getItem())) {
                                        z4 = true;
                                    } else {
                                        i16++;
                                    }
                                } else {
                                    z4 = false;
                                }
                            }
                            if (!z4 && generateItemByRarity4.getItem().getType() == ItemType.RESOURCE && !Game.f8589i.progressManager.isResourceOpened(((ResourceItem) generateItemByRarity4.getItem()).resourceType)) {
                                z4 = true;
                            }
                            if (!z4) {
                                array.add(generateItemByRarity4);
                            }
                            i5 = 25;
                            i4 = 6;
                            i3 = 11;
                        }
                    } else if (this.containsPapers) {
                        int nextInt4 = randomXS128.nextInt(3);
                        int i17 = nextInt4;
                        while (i17 == nextInt4) {
                            i17 = randomXS128.nextInt(3);
                        }
                        if (nextInt4 == 0) {
                            blueprintItem6 = Item.C1543D.BLUEPRINT_AGILITY;
                        } else if (nextInt4 == 1) {
                            blueprintItem6 = Item.C1543D.BLUEPRINT_EXPERIENCE;
                        } else {
                            blueprintItem6 = Item.C1543D.BLUEPRINT_POWER;
                        }
                        ProgressManager.addItemToStacksArray(array, blueprintItem6, randomXS128.nextInt(5) + 4);
                        if (i17 == 0) {
                            blueprintItem7 = Item.C1543D.BLUEPRINT_AGILITY;
                        } else if (i17 == 1) {
                            blueprintItem7 = Item.C1543D.BLUEPRINT_EXPERIENCE;
                        } else {
                            blueprintItem7 = Item.C1543D.BLUEPRINT_POWER;
                        }
                        ProgressManager.addItemToStacksArray(array, blueprintItem7, randomXS128.nextInt(5) + 4);
                        ProgressManager.addItemToStacksArray(array, Item.C1543D.BLUEPRINT_SPECIAL_I, 1);
                        break;
                    }
                }
                break;
            case 5:
                intArray.add(14, RarityType.COMMON.ordinal());
                intArray.add(30, RarityType.RARE.ordinal());
                intArray.add(24, RarityType.VERY_RARE.ordinal());
                intArray.add(20, RarityType.EPIC.ordinal());
                intArray.add(12, RarityType.LEGENDARY.ordinal());
                boolean z10 = false;
                while (true) {
                    int i18 = array.size;
                    if (i18 != i) {
                        if (this.containsPapers && !z10) {
                            array.add(new ItemStack(Item.C1543D.GREEN_PAPER, (randomXS128.nextInt(i6) + 28) * CoreTile.FIXED_LEVEL_XP_REQUIREMENT));
                            z10 = true;
                        } else {
                            if (i18 == 1) {
                                byChance3 = RarityType.LEGENDARY.ordinal();
                            } else {
                                byChance3 = PMath.getByChance(randomXS128, intArray);
                            }
                            float nextFloat5 = randomXS128.nextFloat();
                            if (byChance3 == RarityType.COMMON.ordinal()) {
                                f9 = 16.0f;
                            } else if (byChance3 == RarityType.RARE.ordinal()) {
                                f9 = 8.0f;
                            } else if (byChance3 == RarityType.VERY_RARE.ordinal()) {
                                f9 = 4.0f;
                            } else if (byChance3 == RarityType.EPIC.ordinal()) {
                                f9 = 2.0f;
                            } else {
                                f9 = 1.0f;
                            }
                            ItemStack generateItemByRarity5 = Game.f8589i.itemManager.generateItemByRarity(randomXS128, RarityType.values[byChance3], nextFloat5, f9, 1.0f, 1.0f, (float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.BIT_DUST_DROP_RATE), 0.0f, 0.0f, 0.0f, false, inventoryStatistics);
                            int i19 = 0;
                            while (true) {
                                if (i19 < array.size) {
                                    if (array.items[i19].getItem().sameAs(generateItemByRarity5.getItem())) {
                                        z5 = true;
                                    } else {
                                        i19++;
                                    }
                                } else {
                                    z5 = false;
                                }
                            }
                            if (!z5 && generateItemByRarity5.getItem().getType() == ItemType.RESOURCE && !Game.f8589i.progressManager.isResourceOpened(((ResourceItem) generateItemByRarity5.getItem()).resourceType)) {
                                z5 = true;
                            }
                            if (!z5) {
                                array.add(generateItemByRarity5);
                            }
                            i = 8;
                            i6 = 5;
                        }
                    } else if (this.containsPapers) {
                        int nextInt5 = randomXS128.nextInt(3);
                        int i20 = nextInt5;
                        while (i20 == nextInt5) {
                            i20 = randomXS128.nextInt(3);
                        }
                        if (nextInt5 == 0) {
                            blueprintItem8 = Item.C1543D.BLUEPRINT_AGILITY;
                        } else if (nextInt5 == 1) {
                            blueprintItem8 = Item.C1543D.BLUEPRINT_EXPERIENCE;
                        } else {
                            blueprintItem8 = Item.C1543D.BLUEPRINT_POWER;
                        }
                        ProgressManager.addItemToStacksArray(array, blueprintItem8, randomXS128.nextInt(9) + 8);
                        if (i20 == 0) {
                            blueprintItem9 = Item.C1543D.BLUEPRINT_AGILITY;
                        } else if (i20 == 1) {
                            blueprintItem9 = Item.C1543D.BLUEPRINT_EXPERIENCE;
                        } else {
                            blueprintItem9 = Item.C1543D.BLUEPRINT_POWER;
                        }
                        ProgressManager.addItemToStacksArray(array, blueprintItem9, randomXS128.nextInt(9) + 8);
                        ProgressManager.addItemToStacksArray(array, Item.C1543D.BLUEPRINT_SPECIAL_II, 1);
                        break;
                    }
                }
                break;
            case 6:
                array.add(new ItemStack(Item.C1543D.F_BLUEPRINT.create(BlueprintType.AGILITY), randomXS128.nextInt(19) + 38));
                array.add(new ItemStack(Item.C1543D.F_BLUEPRINT.create(BlueprintType.POWER), randomXS128.nextInt(19) + 38));
                array.add(new ItemStack(Item.C1543D.F_BLUEPRINT.create(BlueprintType.EXPERIENCE), randomXS128.nextInt(19) + 38));
                break;
        }
        return array;
    }

    @Override // com.prineside.tdi2.Item, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.caseType = (CaseType) kryo.readObject(input, CaseType.class);
        this.encrypted = input.readBoolean();
        this.containsPapers = input.readBoolean();
    }

    @Override // com.prineside.tdi2.Item, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObject(output, this.caseType);
        output.writeBoolean(this.encrypted);
        output.writeBoolean(this.containsPapers);
    }

    public CaseItem(CaseType caseType, boolean z, boolean z2) {
        if (caseType != null) {
            this.caseType = caseType;
            this.encrypted = z;
            this.containsPapers = z2;
            return;
        }
        throw new IllegalArgumentException("CaseType is null");
    }

    @Override // com.prineside.tdi2.Item
    public IntArray getData() {
        IntArray data = super.getData();
        data.add(ItemDataType.TYPE.ordinal(), this.caseType.ordinal());
        data.add(ItemDataType.CASE_ENCRYPTED.ordinal(), this.encrypted ? 1 : 0);
        data.add(ItemDataType.CASE_CONTAINS_PAPERS.ordinal(), this.containsPapers ? 1 : 0);
        return data;
    }

    @Override // com.prineside.tdi2.Item
    public boolean sameAs(Item item) {
        if (!super.sameAs(item)) {
            return false;
        }
        CaseItem caseItem = (CaseItem) item;
        if (caseItem.caseType != this.caseType || caseItem.encrypted != this.encrypted) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Item
    public void toJson(Json json) {
        super.toJson(json);
        json.writeValue("caseType", this.caseType.toString());
        json.writeValue("encrypted", Boolean.valueOf(this.encrypted));
        json.writeValue("containsPapers", Boolean.valueOf(this.containsPapers));
    }
}
