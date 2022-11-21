package com.prineside.tdi2.managers;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.prineside.tdi2.CraftRecipe;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.BlueprintType;
import com.prineside.tdi2.enums.CaseType;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemDataType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.PredefinedCoreTileType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.SpaceTileBonusType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.items.AbilityItem;
import com.prineside.tdi2.items.AbilityTokenItem;
import com.prineside.tdi2.items.AcceleratorItem;
import com.prineside.tdi2.items.BitDustItem;
import com.prineside.tdi2.items.BlueprintItem;
import com.prineside.tdi2.items.CaseItem;
import com.prineside.tdi2.items.CaseKeyItem;
import com.prineside.tdi2.items.DatPaperItem;
import com.prineside.tdi2.items.DoubleGainShardItem;
import com.prineside.tdi2.items.GameValueGlobalItem;
import com.prineside.tdi2.items.GameValueLevelItem;
import com.prineside.tdi2.items.GateItem;
import com.prineside.tdi2.items.GreenPaperItem;
import com.prineside.tdi2.items.LootBoostItem;
import com.prineside.tdi2.items.LuckyShotTokenItem;
import com.prineside.tdi2.items.OpenedResearchItem;
import com.prineside.tdi2.items.PrestigeDustItem;
import com.prineside.tdi2.items.PrestigeTokenItem;
import com.prineside.tdi2.items.RandomBarrierItem;
import com.prineside.tdi2.items.RandomTeleportItem;
import com.prineside.tdi2.items.RandomTileItem;
import com.prineside.tdi2.items.RarityBoostItem;
import com.prineside.tdi2.items.ResearchTokenItem;
import com.prineside.tdi2.items.ResearchTokenUsedItem;
import com.prineside.tdi2.items.ResourceItem;
import com.prineside.tdi2.items.SkillPointItem;
import com.prineside.tdi2.items.StarItem;
import com.prineside.tdi2.items.TileItem;
import com.prineside.tdi2.items.TrophyItem;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.tiles.PlatformTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class ItemManager extends Manager.ManagerAdapter {
    public static final CaseType[] ENCRYPTED_CASES_QUEUE;

    /* renamed from: b */
    public static String[] f9812b;

    /* renamed from: d */
    public static final IntArray f9813d;

    /* renamed from: a */
    public final Item.Factory[] f9814a = new Item.Factory[ItemType.values.length];
    public Array<CraftRecipe> craftRecipes = new Array<>(CraftRecipe.class);

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<ItemManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public ItemManager read() {
            return Game.f8589i.itemManager;
        }
    }

    public ItemStack generateItemByRarity(RandomXS128 randomXS128, RarityType rarityType, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, boolean z, ProgressManager.InventoryStatistics inventoryStatistics) {
        return generateItemByRarity(new ItemStack(Item.C1543D.GREEN_PAPER, 1), randomXS128, rarityType, f, f2, f3, f4, f5, f6, f7, f8, z, inventoryStatistics);
    }

    public Item.Factory<? extends Item> getFactory(ItemType itemType) {
        return this.f9814a[itemType.ordinal()];
    }

    public CaseType getQueuedEncryptedCaseType(int i) {
        CaseType[] caseTypeArr = ENCRYPTED_CASES_QUEUE;
        return caseTypeArr[i % caseTypeArr.length];
    }

    public String getSubcategoryIconAlias(ItemSubcategoryType itemSubcategoryType) {
        return f9812b[itemSubcategoryType.ordinal()];
    }

    /* renamed from: com.prineside.tdi2.managers.ItemManager$2 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C17872 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9817a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f9818b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f9819c;

        /* renamed from: d */
        public static final /* synthetic */ int[] f9820d;

        static {
            int[] iArr = new int[RarityType.values().length];
            f9820d = iArr;
            try {
                iArr[RarityType.COMMON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9820d[RarityType.RARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9820d[RarityType.VERY_RARE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9820d[RarityType.EPIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9820d[RarityType.LEGENDARY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[ItemSubcategoryType.values().length];
            f9819c = iArr2;
            try {
                iArr2[ItemSubcategoryType.M_DUST.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f9819c[ItemSubcategoryType.M_BLUEPRINT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f9819c[ItemSubcategoryType.M_CURRENCY.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f9819c[ItemSubcategoryType.M_RESOURCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f9819c[ItemSubcategoryType.M_TOKENS.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f9819c[ItemSubcategoryType.ME_PLATFORMS.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f9819c[ItemSubcategoryType.ME_ROADS.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f9819c[ItemSubcategoryType.ME_SOUNDS.ordinal()] = 8;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f9819c[ItemSubcategoryType.ME_SOURCES.ordinal()] = 9;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f9819c[ItemSubcategoryType.ME_SPAWNS.ordinal()] = 10;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f9819c[ItemSubcategoryType.ME_BASES.ordinal()] = 11;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f9819c[ItemSubcategoryType.ME_SPECIAL.ordinal()] = 12;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f9819c[ItemSubcategoryType.O_OTHER.ordinal()] = 13;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f9819c[ItemSubcategoryType.P_ENCRYPTED.ordinal()] = 14;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f9819c[ItemSubcategoryType.P_DECRYPTED.ordinal()] = 15;
            } catch (NoSuchFieldError unused20) {
            }
            int[] iArr3 = new int[ResourceType.values().length];
            f9818b = iArr3;
            try {
                iArr3[ResourceType.VECTOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f9818b[ResourceType.MATRIX.ordinal()] = 2;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f9818b[ResourceType.TENSOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f9818b[ResourceType.INFIAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused24) {
            }
            int[] iArr4 = new int[BlueprintType.values().length];
            f9817a = iArr4;
            try {
                iArr4[BlueprintType.SPECIAL_II.ordinal()] = 1;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f9817a[BlueprintType.SPECIAL_III.ordinal()] = 2;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f9817a[BlueprintType.SPECIAL_IV.ordinal()] = 3;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f9817a[BlueprintType.SPECIAL_I.ordinal()] = 4;
            } catch (NoSuchFieldError unused28) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x003f, code lost:
        if (r5 == 5) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0366  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0382  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.prineside.tdi2.ItemStack generateItemByRarity(com.prineside.tdi2.ItemStack r20, com.badlogic.gdx.math.RandomXS128 r21, com.prineside.tdi2.enums.RarityType r22, float r23, float r24, float r25, float r26, float r27, float r28, float r29, float r30, boolean r31, com.prineside.tdi2.managers.ProgressManager.InventoryStatistics r32) {
        /*
            Method dump skipped, instructions count: 1286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.managers.ItemManager.generateItemByRarity(com.prineside.tdi2.ItemStack, com.badlogic.gdx.math.RandomXS128, com.prineside.tdi2.enums.RarityType, float, float, float, float, float, float, float, float, boolean, com.prineside.tdi2.managers.ProgressManager$InventoryStatistics):com.prineside.tdi2.ItemStack");
    }

    public String getCategoryNameAlias(ItemCategoryType itemCategoryType) {
        return Game.f8589i.localeManager.i18n.get("item_category_" + itemCategoryType.name());
    }

    public Array<CraftRecipe> getCraftRecipes(Item item) {
        Array<CraftRecipe> array = new Array<>(CraftRecipe.class);
        int i = 0;
        while (true) {
            Array<CraftRecipe> array2 = this.craftRecipes;
            if (i < array2.size) {
                if (array2.items[i].result.getItem().sameAs(item)) {
                    array.add(this.craftRecipes.items[i]);
                }
                i++;
            } else {
                return array;
            }
        }
    }

    public Color getSubcategoryColor(ItemSubcategoryType itemSubcategoryType) {
        switch (C17872.f9819c[itemSubcategoryType.ordinal()]) {
            case 1:
                return MaterialColor.CYAN.P500;
            case 2:
                return MaterialColor.LIGHT_GREEN.P500;
            case 3:
                return MaterialColor.AMBER.P500;
            case 4:
                return MaterialColor.PINK.P400;
            case 5:
                return MaterialColor.PURPLE.P400;
            case 6:
                return MaterialColor.BLUE.P500;
            case 7:
                return MaterialColor.GREEN.P500;
            case 8:
                return MaterialColor.DEEP_ORANGE.P400;
            case 9:
                return MaterialColor.ORANGE.P500;
            case 10:
                return MaterialColor.PURPLE.P300;
            case 11:
                return MaterialColor.TEAL.P400;
            case 12:
                return MaterialColor.YELLOW.P500;
            case 13:
                return MaterialColor.GREY.P500;
            case 14:
                return MaterialColor.PURPLE.P400;
            case 15:
                return MaterialColor.LIGHT_GREEN.P500;
            default:
                return Color.WHITE;
        }
    }

    public String getSubcategoryName(ItemSubcategoryType itemSubcategoryType) {
        return Game.f8589i.localeManager.i18n.get("item_subcategory_" + itemSubcategoryType.name());
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        float f;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        super.setup();
        char c = 0;
        for (Item.Factory factory : this.f9814a) {
            factory.setup();
        }
        Item.C1543D.setup();
        this.craftRecipes.clear();
        BlueprintType[] blueprintTypeArr = {BlueprintType.SPECIAL_II, BlueprintType.SPECIAL_III, BlueprintType.SPECIAL_IV};
        int i7 = 0;
        while (true) {
            f = 1800.0f;
            if (i7 >= 3) {
                break;
            }
            BlueprintType blueprintType = blueprintTypeArr[i7];
            CraftRecipe craftRecipe = new CraftRecipe();
            this.craftRecipes.add(craftRecipe);
            craftRecipe.result = new ItemStack(Item.C1543D.F_BLUEPRINT.create(blueprintType), 1);
            int i8 = C17872.f9817a[blueprintType.ordinal()];
            if (i8 != 1) {
                if (i8 != 2) {
                    if (i8 != 3) {
                        i6 = 0;
                    } else {
                        craftRecipe.setStockTime(7200.0f);
                        i6 = 15000;
                    }
                } else {
                    craftRecipe.setStockTime(1800.0f);
                    i6 = 3000;
                }
            } else {
                craftRecipe.setStockTime(300.0f);
                i6 = 500;
            }
            craftRecipe.setStockMaxQueueStack(10);
            craftRecipe.ingredients.add(new CraftRecipe.Ingredient(ItemType.GREEN_PAPER, i6, new int[0]));
            BlueprintType blueprintType2 = BlueprintType.values[blueprintType.ordinal() - 1];
            CraftRecipe.Ingredient ingredient = new CraftRecipe.Ingredient(ItemType.BLUEPRINT, 5, new int[]{ItemDataType.TYPE.ordinal(), blueprintType2.ordinal()});
            ingredient.minCount = 2;
            ingredient.exampleItems = new Item[]{Item.C1543D.F_BLUEPRINT.create(blueprintType2)};
            craftRecipe.ingredients.add(ingredient);
            i7++;
        }
        BlueprintType[] blueprintTypeArr2 = {BlueprintType.SPECIAL_I, BlueprintType.SPECIAL_II, BlueprintType.SPECIAL_III};
        int i9 = 0;
        while (true) {
            i = 4;
            if (i9 >= 3) {
                break;
            }
            BlueprintType blueprintType3 = blueprintTypeArr2[i9];
            CraftRecipe craftRecipe2 = new CraftRecipe();
            this.craftRecipes.add(craftRecipe2);
            craftRecipe2.result = new ItemStack(Item.C1543D.F_BLUEPRINT.create(blueprintType3), 3);
            int i10 = C17872.f9817a[blueprintType3.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 4) {
                        i5 = 0;
                    } else {
                        craftRecipe2.setStockTime(60.0f);
                        i5 = 100;
                    }
                } else {
                    craftRecipe2.setStockTime(f);
                    i5 = 3000;
                }
            } else {
                craftRecipe2.setStockTime(300.0f);
                i5 = 500;
            }
            craftRecipe2.setStockMaxQueueStack(10);
            craftRecipe2.ingredients.add(new CraftRecipe.Ingredient(ItemType.GREEN_PAPER, i5, new int[0]));
            BlueprintType blueprintType4 = BlueprintType.values[blueprintType3.ordinal() + 1];
            CraftRecipe.Ingredient ingredient2 = new CraftRecipe.Ingredient(ItemType.BLUEPRINT, 1, new int[]{ItemDataType.TYPE.ordinal(), blueprintType4.ordinal()});
            ingredient2.exampleItems = new Item[]{Item.C1543D.F_BLUEPRINT.create(blueprintType4)};
            craftRecipe2.ingredients.add(ingredient2);
            i9++;
            f = 1800.0f;
        }
        CraftRecipe craftRecipe3 = new CraftRecipe();
        this.craftRecipes.add(craftRecipe3);
        craftRecipe3.result = new ItemStack(Item.C1543D.F_CASE.create(CaseType.BLUEPRINT, false, false), 1);
        craftRecipe3.setStockTime(14400.0f);
        craftRecipe3.setStockMaxQueueStack(3);
        ItemType itemType = ItemType.BLUEPRINT;
        BlueprintType blueprintType5 = BlueprintType.SPECIAL_III;
        CraftRecipe.Ingredient ingredient3 = new CraftRecipe.Ingredient(itemType, 1, new int[]{ItemDataType.TYPE.ordinal(), blueprintType5.ordinal()});
        ingredient3.exampleItems = new Item[]{Item.C1543D.F_BLUEPRINT.create(blueprintType5)};
        craftRecipe3.ingredients.add(ingredient3);
        ResourceType[] resourceTypeArr = {ResourceType.VECTOR, ResourceType.MATRIX, ResourceType.TENSOR, ResourceType.INFIAR};
        for (int i11 = 0; i11 < 4; i11++) {
            final ResourceType resourceType = resourceTypeArr[i11];
            CraftRecipe craftRecipe4 = new CraftRecipe() { // from class: com.prineside.tdi2.managers.ItemManager.1
                @Override // com.prineside.tdi2.CraftRecipe
                public boolean isAvailable() {
                    return Game.f8589i.progressManager.isResourceOpened(resourceType);
                }
            };
            this.craftRecipes.add(craftRecipe4);
            craftRecipe4.result = new ItemStack(Item.C1543D.F_RESOURCE.create(resourceType), 1);
            int i12 = C17872.f9818b[resourceType.ordinal()];
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 3) {
                        if (i12 != 4) {
                            i4 = 0;
                        } else {
                            craftRecipe4.setStockTime(20.0f);
                            i4 = 4;
                        }
                    } else {
                        craftRecipe4.setStockTime(15.0f);
                        i4 = 3;
                    }
                } else {
                    craftRecipe4.setStockTime(10.0f);
                    i4 = 2;
                }
            } else {
                craftRecipe4.setStockTime(5.0f);
                i4 = 1;
            }
            craftRecipe4.setStockMaxQueueStack(CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
            craftRecipe4.ingredients.add(new CraftRecipe.Ingredient(ItemType.GREEN_PAPER, i4));
            ResourceType resourceType2 = ResourceType.values[resourceType.ordinal() - 1];
            CraftRecipe.Ingredient ingredient4 = new CraftRecipe.Ingredient(ItemType.RESOURCE, 3, new int[]{ItemDataType.TYPE.ordinal(), resourceType2.ordinal()});
            ingredient4.minCount = 2;
            ingredient4.exampleItems = new Item[]{Item.C1543D.F_RESOURCE.create(resourceType2)};
            craftRecipe4.ingredients.add(ingredient4);
        }
        CraftRecipe craftRecipe5 = new CraftRecipe();
        this.craftRecipes.add(craftRecipe5);
        craftRecipe5.result = new ItemStack(Item.C1543D.BLUEPRINT_SPECIAL_I, 1);
        craftRecipe5.setStockTime(600.0f);
        craftRecipe5.setStockMaxQueueStack(5);
        CraftRecipe.Ingredient ingredient5 = new CraftRecipe.Ingredient(ItemType.BLUEPRINT, 20, RarityType.COMMON);
        ingredient5.minCount = 5;
        ingredient5.exampleItems = new Item[]{Item.C1543D.BLUEPRINT_EXPERIENCE, Item.C1543D.BLUEPRINT_AGILITY, Item.C1543D.BLUEPRINT_POWER};
        craftRecipe5.ingredients.add(ingredient5);
        CraftRecipe craftRecipe6 = new CraftRecipe();
        this.craftRecipes.add(craftRecipe6);
        craftRecipe6.result = new ItemStack(Item.C1543D.PRESTIGE_TOKEN, 1);
        craftRecipe6.setStockTime(360.0f);
        craftRecipe6.setStockMaxQueueStack(100);
        CraftRecipe.Ingredient ingredient6 = new CraftRecipe.Ingredient(ItemType.PRESTIGE_DUST, 1500);
        ingredient6.exampleItems = new Item[]{Item.C1543D.PRESTIGE_DUST};
        craftRecipe6.ingredients.add(ingredient6);
        craftRecipe6.ingredients.add(new CraftRecipe.Ingredient(ItemType.GREEN_PAPER, CoreTile.FIXED_LEVEL_XP_REQUIREMENT));
        CraftRecipe craftRecipe7 = new CraftRecipe();
        this.craftRecipes.add(craftRecipe7);
        craftRecipe7.result = new ItemStack(Item.C1543D.RESEARCH_TOKEN, 1);
        craftRecipe7.setStockTime(3600.0f);
        craftRecipe7.setStockMaxQueueStack(10);
        craftRecipe7.ingredients.add(new CraftRecipe.Ingredient(ItemType.PRESTIGE_TOKEN, 100));
        craftRecipe7.ingredients.add(new CraftRecipe.Ingredient(ItemType.LUCKY_SHOT_TOKEN, 7));
        craftRecipe7.ingredients.add(new CraftRecipe.Ingredient(ItemType.ACCELERATOR, 80));
        CraftRecipe craftRecipe8 = new CraftRecipe();
        this.craftRecipes.add(craftRecipe8);
        craftRecipe8.result = new ItemStack(Item.C1543D.RESEARCH_TOKEN, 1);
        craftRecipe8.setStockTime(3600.0f);
        craftRecipe8.setStockMaxQueueStack(10);
        CraftRecipe.Ingredient ingredient7 = new CraftRecipe.Ingredient(ItemType.RESEARCH_TOKEN_USED, 2);
        ingredient7.ignoresDiscounts = true;
        craftRecipe8.ingredients.add(ingredient7);
        TileManager tileManager = Game.f8589i.tileManager;
        TileType tileType = TileType.CORE;
        CoreTile.CoreTileFactory coreTileFactory = (CoreTile.CoreTileFactory) tileManager.getFactory(tileType);
        CoreTile create = coreTileFactory.create();
        PredefinedCoreTileType predefinedCoreTileType = PredefinedCoreTileType.DELTA;
        create.predefinedType = predefinedCoreTileType;
        CraftRecipe craftRecipe9 = new CraftRecipe();
        this.craftRecipes.add(craftRecipe9);
        craftRecipe9.result = new ItemStack(Item.C1543D.F_TILE.create(create), 1);
        craftRecipe9.setStockTime(14400.0f);
        craftRecipe9.setStockMaxQueueStack(1);
        ItemType itemType2 = ItemType.TILE;
        ItemDataType itemDataType = ItemDataType.TYPE;
        ItemDataType itemDataType2 = ItemDataType.TILE_PREDEFINED_CORE_TYPE;
        PredefinedCoreTileType predefinedCoreTileType2 = PredefinedCoreTileType.ALPHA;
        CraftRecipe.Ingredient ingredient8 = new CraftRecipe.Ingredient(itemType2, 10, new int[]{itemDataType.ordinal(), tileType.ordinal(), itemDataType2.ordinal(), predefinedCoreTileType2.ordinal()});
        ingredient8.minCount = 2;
        CoreTile create2 = coreTileFactory.create();
        create2.predefinedType = predefinedCoreTileType2;
        ingredient8.exampleItems = new Item[]{Item.C1543D.F_TILE.create(create2)};
        craftRecipe9.ingredients.add(ingredient8);
        CoreTile create3 = coreTileFactory.create();
        create3.predefinedType = PredefinedCoreTileType.ZETA;
        CraftRecipe craftRecipe10 = new CraftRecipe();
        this.craftRecipes.add(craftRecipe10);
        craftRecipe10.result = new ItemStack(Item.C1543D.F_TILE.create(create3), 1);
        craftRecipe10.setStockTime(64800.0f);
        craftRecipe10.setStockMaxQueueStack(1);
        CraftRecipe.Ingredient ingredient9 = new CraftRecipe.Ingredient(itemType2, 10, new int[]{itemDataType.ordinal(), tileType.ordinal(), itemDataType2.ordinal(), predefinedCoreTileType.ordinal()});
        ingredient9.minCount = 2;
        CoreTile create4 = coreTileFactory.create();
        create4.predefinedType = predefinedCoreTileType;
        ingredient9.exampleItems = new Item[]{Item.C1543D.F_TILE.create(create4)};
        craftRecipe10.ingredients.add(ingredient9);
        CoreTile create5 = coreTileFactory.create();
        PredefinedCoreTileType predefinedCoreTileType3 = PredefinedCoreTileType.THETA;
        create5.predefinedType = predefinedCoreTileType3;
        CraftRecipe craftRecipe11 = new CraftRecipe();
        this.craftRecipes.add(craftRecipe11);
        craftRecipe11.result = new ItemStack(Item.C1543D.F_TILE.create(create5), 1);
        craftRecipe11.setStockTime(14400.0f);
        craftRecipe11.setStockMaxQueueStack(1);
        PredefinedCoreTileType predefinedCoreTileType4 = PredefinedCoreTileType.BETA;
        CraftRecipe.Ingredient ingredient10 = new CraftRecipe.Ingredient(itemType2, 10, new int[]{itemDataType.ordinal(), tileType.ordinal(), itemDataType2.ordinal(), predefinedCoreTileType4.ordinal()});
        ingredient10.minCount = 2;
        CoreTile create6 = coreTileFactory.create();
        create6.predefinedType = predefinedCoreTileType4;
        ingredient10.exampleItems = new Item[]{Item.C1543D.F_TILE.create(create6)};
        craftRecipe11.ingredients.add(ingredient10);
        CoreTile create7 = coreTileFactory.create();
        create7.predefinedType = PredefinedCoreTileType.XI;
        CraftRecipe craftRecipe12 = new CraftRecipe();
        this.craftRecipes.add(craftRecipe12);
        craftRecipe12.result = new ItemStack(Item.C1543D.F_TILE.create(create7), 1);
        craftRecipe12.setStockTime(64800.0f);
        craftRecipe12.setStockMaxQueueStack(1);
        CraftRecipe.Ingredient ingredient11 = new CraftRecipe.Ingredient(itemType2, 10, new int[]{itemDataType.ordinal(), tileType.ordinal(), itemDataType2.ordinal(), predefinedCoreTileType3.ordinal()});
        ingredient11.minCount = 2;
        CoreTile create8 = coreTileFactory.create();
        create8.predefinedType = predefinedCoreTileType3;
        ingredient11.exampleItems = new Item[]{Item.C1543D.F_TILE.create(create8)};
        craftRecipe12.ingredients.add(ingredient11);
        PlatformTile.SpaceTileFactory spaceTileFactory = (PlatformTile.SpaceTileFactory) Game.f8589i.tileManager.getFactory(TileType.PLATFORM);
        SpaceTileBonusType[] spaceTileBonusTypeArr = SpaceTileBonusType.values;
        int length = spaceTileBonusTypeArr.length;
        int i13 = 0;
        while (i13 < length) {
            SpaceTileBonusType spaceTileBonusType = spaceTileBonusTypeArr[i13];
            int i14 = 2;
            int i15 = 5;
            while (i14 <= i15) {
                PlatformTile create9 = spaceTileFactory.create();
                create9.bonusType = spaceTileBonusType;
                create9.bonusLevel = i14;
                CraftRecipe craftRecipe13 = new CraftRecipe();
                this.craftRecipes.add(craftRecipe13);
                craftRecipe13.result = new ItemStack(Item.C1543D.F_TILE.create(create9), 1);
                if (i14 != 2) {
                    if (i14 != 3) {
                        if (i14 != i) {
                            i2 = 5;
                            if (i14 != 5) {
                                i3 = 0;
                            } else {
                                craftRecipe13.setStockTime(480.0f);
                                i2 = 5;
                                i3 = 15000;
                            }
                        } else {
                            craftRecipe13.setStockTime(180.0f);
                            i2 = 5;
                            i3 = 5000;
                        }
                    } else {
                        craftRecipe13.setStockTime(60.0f);
                        i2 = 5;
                        i3 = 1500;
                    }
                } else {
                    craftRecipe13.setStockTime(15.0f);
                    i2 = 5;
                    i3 = 500;
                }
                craftRecipe13.setStockMaxQueueStack(i2);
                ItemType itemType3 = ItemType.TILE;
                int[] iArr = new int[6];
                iArr[c] = ItemDataType.TYPE.ordinal();
                iArr[1] = TileType.PLATFORM.ordinal();
                iArr[2] = ItemDataType.BONUS_TYPE.ordinal();
                iArr[3] = spaceTileBonusType.ordinal();
                iArr[4] = ItemDataType.BONUS_LEVEL.ordinal();
                int i16 = i14 - 1;
                iArr[5] = i16;
                CraftRecipe.Ingredient ingredient12 = new CraftRecipe.Ingredient(itemType3, 3, iArr);
                ingredient12.minCount = 2;
                PlatformTile create10 = spaceTileFactory.create();
                create10.bonusLevel = i16;
                create10.bonusType = spaceTileBonusType;
                ingredient12.exampleItems = new Item[]{Item.C1543D.F_TILE.create(create10)};
                craftRecipe13.ingredients.add(ingredient12);
                craftRecipe13.ingredients.add(new CraftRecipe.Ingredient(ItemType.GREEN_PAPER, i3));
                i14++;
                c = 0;
                i15 = 5;
                i = 4;
            }
            i13++;
            c = 0;
            i = 4;
        }
    }

    static {
        String[] strArr = new String[ItemSubcategoryType.values().length];
        f9812b = strArr;
        strArr[ItemSubcategoryType.P_DECRYPTED.ordinal()] = "icon-lock-unlocked";
        f9812b[ItemSubcategoryType.P_ENCRYPTED.ordinal()] = "icon-lock";
        f9812b[ItemSubcategoryType.ME_ROADS.ordinal()] = "icon-road";
        f9812b[ItemSubcategoryType.ME_SOUNDS.ordinal()] = "icon-note";
        f9812b[ItemSubcategoryType.ME_SOURCES.ordinal()] = "icon-pickaxe";
        f9812b[ItemSubcategoryType.ME_PLATFORMS.ordinal()] = "icon-platform";
        f9812b[ItemSubcategoryType.ME_BASES.ordinal()] = "icon-flag";
        f9812b[ItemSubcategoryType.ME_SPAWNS.ordinal()] = "icon-skull";
        f9812b[ItemSubcategoryType.ME_SPECIAL.ordinal()] = "icon-star";
        f9812b[ItemSubcategoryType.M_CURRENCY.ordinal()] = "icon-money";
        f9812b[ItemSubcategoryType.M_TOKENS.ordinal()] = "icon-token";
        f9812b[ItemSubcategoryType.M_DUST.ordinal()] = "icon-dust";
        f9812b[ItemSubcategoryType.M_BLUEPRINT.ordinal()] = "icon-blueprint";
        f9812b[ItemSubcategoryType.M_RESOURCE.ordinal()] = "resource-scalar";
        f9812b[ItemSubcategoryType.O_OTHER.ordinal()] = "icon-cubes-stacked";
        ENCRYPTED_CASES_QUEUE = new CaseType[120];
        f9813d = new IntArray();
    }

    public ItemManager() {
        for (int i = 0; i < 120; i++) {
            ENCRYPTED_CASES_QUEUE[i] = CaseType.GREEN;
        }
        for (float f = 3.0f; f < 120.0f; f += 2.5f) {
            ENCRYPTED_CASES_QUEUE[MathUtils.floor(f)] = CaseType.BLUE;
        }
        for (int i2 = 18; i2 < 120; i2 += 12) {
            ENCRYPTED_CASES_QUEUE[i2] = CaseType.PURPLE;
        }
        for (int i3 = 36; i3 < 120; i3 += 24) {
            ENCRYPTED_CASES_QUEUE[i3] = CaseType.ORANGE;
        }
        ENCRYPTED_CASES_QUEUE[119] = CaseType.CYAN;
        this.f9814a[ItemType.ACCELERATOR.ordinal()] = new AcceleratorItem.AcceleratorItemFactory();
        this.f9814a[ItemType.GREEN_PAPER.ordinal()] = new GreenPaperItem.GreenPaperItemFactory();
        this.f9814a[ItemType.TILE.ordinal()] = new TileItem.TileItemFactory();
        this.f9814a[ItemType.GATE.ordinal()] = new GateItem.GateItemFactory();
        this.f9814a[ItemType.RANDOM_TILE.ordinal()] = new RandomTileItem.RandomTileItemFactory();
        this.f9814a[ItemType.RANDOM_BARRIER.ordinal()] = new RandomBarrierItem.RandomBarrierItemFactory();
        this.f9814a[ItemType.RANDOM_TELEPORT.ordinal()] = new RandomTeleportItem.RandomTeleportItemFactory();
        this.f9814a[ItemType.RESOURCE.ordinal()] = new ResourceItem.ResourceItemFactory();
        this.f9814a[ItemType.CASE.ordinal()] = new CaseItem.CaseItemFactory();
        this.f9814a[ItemType.TROPHY.ordinal()] = new TrophyItem.TrophyItemFactory();
        this.f9814a[ItemType.GAME_VALUE_GLOBAL.ordinal()] = new GameValueGlobalItem.GameValueGlobalItemFactory();
        this.f9814a[ItemType.GAME_VALUE_LEVEL.ordinal()] = new GameValueLevelItem.GameValueLevelItemFactory();
        this.f9814a[ItemType.OPENED_RESEARCH.ordinal()] = new OpenedResearchItem.OpenedResearchItemFactory();
        this.f9814a[ItemType.STAR.ordinal()] = new StarItem.StarItemFactory();
        this.f9814a[ItemType.SKILL_POINT.ordinal()] = new SkillPointItem.SkillPointItemFactory();
        this.f9814a[ItemType.ABILITY.ordinal()] = new AbilityItem.AbilityItemFactory();
        this.f9814a[ItemType.BIT_DUST.ordinal()] = new BitDustItem.BitDustItemFactory();
        this.f9814a[ItemType.PRESTIGE_DUST.ordinal()] = new PrestigeDustItem.PrestigeDustItemFactory();
        this.f9814a[ItemType.BLUEPRINT.ordinal()] = new BlueprintItem.BlueprintItemFactory();
        this.f9814a[ItemType.ABILITY_TOKEN.ordinal()] = new AbilityTokenItem.AbilityTokenItemFactory();
        this.f9814a[ItemType.CASE_KEY.ordinal()] = new CaseKeyItem.CaseKeyItemFactory();
        this.f9814a[ItemType.RARITY_BOOST.ordinal()] = new RarityBoostItem.RarityBoostItemFactory();
        this.f9814a[ItemType.LOOT_BOOST.ordinal()] = new LootBoostItem.LootBoostItemFactory();
        this.f9814a[ItemType.PRESTIGE_TOKEN.ordinal()] = new PrestigeTokenItem.PrestigeTokenItemFactory();
        this.f9814a[ItemType.RESEARCH_TOKEN.ordinal()] = new ResearchTokenItem.ResearchTokenItemFactory();
        this.f9814a[ItemType.RESEARCH_TOKEN_USED.ordinal()] = new ResearchTokenUsedItem.ResearchTokenUsedItemFactory();
        this.f9814a[ItemType.LUCKY_SHOT_TOKEN.ordinal()] = new LuckyShotTokenItem.LuckyShotTokenItemFactory();
        this.f9814a[ItemType.DOUBLE_GAIN_SHARD.ordinal()] = new DoubleGainShardItem.DoubleGainShardItemFactory();
        this.f9814a[ItemType.DAT_PAPER.ordinal()] = new DatPaperItem.DatPaperItemFactory();
        for (ItemType itemType : ItemType.values) {
            if (this.f9814a[itemType.ordinal()] == null) {
                throw new RuntimeException("Not all item factories were created");
            }
        }
    }
}
