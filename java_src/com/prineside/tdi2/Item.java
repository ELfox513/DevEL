package com.prineside.tdi2;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.enums.BlueprintType;
import com.prineside.tdi2.enums.CaseType;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemDataType;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.ResourceType;
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
import com.prineside.tdi2.managers.ItemManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.p036ui.shared.ItemCreationOverlay;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
/* loaded from: classes2.dex */
public abstract class Item implements KryoSerializable {

    /* renamed from: b */
    public static final Array<ItemStack> f8713b = new Array<>(ItemStack.class);
    @NAGS

    /* renamed from: a */
    public IntArray f8714a = new IntArray();

    /* renamed from: com.prineside.tdi2.Item$D */
    /* loaded from: classes2.dex */
    public static class C1543D {
        public static AbilityTokenItem ABILITY_TOKEN;
        public static AcceleratorItem ACCELERATOR;
        public static BitDustItem BIT_DUST;
        public static BlueprintItem BLUEPRINT_AGILITY;
        public static BlueprintItem BLUEPRINT_EXPERIENCE;
        public static BlueprintItem BLUEPRINT_POWER;
        public static BlueprintItem BLUEPRINT_SPECIAL_I;
        public static BlueprintItem BLUEPRINT_SPECIAL_II;
        public static BlueprintItem BLUEPRINT_SPECIAL_III;
        public static BlueprintItem BLUEPRINT_SPECIAL_IV;
        public static CaseKeyItem CASE_KEY_BLUE;
        public static CaseKeyItem CASE_KEY_CYAN;
        public static CaseKeyItem CASE_KEY_ORANGE;
        public static CaseKeyItem CASE_KEY_PURPLE;
        public static DatPaperItem DAT_PAPER;
        public static AbilityItem.AbilityItemFactory F_ABILITY;
        public static AbilityTokenItem.AbilityTokenItemFactory F_ABILITY_TOKEN;
        public static AcceleratorItem.AcceleratorItemFactory F_ACCELERATOR;
        public static BlueprintItem.BlueprintItemFactory F_BLUEPRINT;
        public static CaseItem.CaseItemFactory F_CASE;
        public static CaseKeyItem.CaseKeyItemFactory F_CASE_KEY;
        public static DoubleGainShardItem.DoubleGainShardItemFactory F_DOUBLE_GAIN_SHARD;
        public static GameValueGlobalItem.GameValueGlobalItemFactory F_GAME_VALUE_GLOBAL;
        public static GameValueLevelItem.GameValueLevelItemFactory F_GAME_VALUE_LEVEL;
        public static GateItem.GateItemFactory F_GATE;
        public static LuckyShotTokenItem.LuckyShotTokenItemFactory F_LUCKY_SHOT_TOKEN;
        public static OpenedResearchItem.OpenedResearchItemFactory F_OPENED_RESEARCH;
        public static PrestigeTokenItem.PrestigeTokenItemFactory F_PRESTIGE_TOKEN;
        public static RandomBarrierItem.RandomBarrierItemFactory F_RANDOM_BARRIER;
        public static RandomTileItem.RandomTileItemFactory F_RANDOM_TILE;
        public static ResearchTokenItem.ResearchTokenItemFactory F_RESEARCH_TOKEN;
        public static ResearchTokenUsedItem.ResearchTokenUsedItemFactory F_RESEARCH_TOKEN_USED;
        public static ResourceItem.ResourceItemFactory F_RESOURCE;
        public static TileItem.TileItemFactory F_TILE;
        public static TrophyItem.TrophyItemFactory F_TROPHY;
        public static GreenPaperItem GREEN_PAPER;
        public static LootBoostItem LOOT_BOOST;
        public static LuckyShotTokenItem LUCKY_SHOT_TOKEN;
        public static PrestigeDustItem PRESTIGE_DUST;
        public static PrestigeTokenItem PRESTIGE_TOKEN;
        public static RandomTeleportItem RANDOM_TELEPORT;
        public static RarityBoostItem RARITY_BOOST;
        public static ResearchTokenItem RESEARCH_TOKEN;
        public static ResearchTokenUsedItem RESEARCH_TOKEN_USED;
        public static ResourceItem RESOURCE_INFIAR;
        public static ResourceItem RESOURCE_MATRIX;
        public static ResourceItem RESOURCE_SCALAR;
        public static ResourceItem RESOURCE_TENSOR;
        public static ResourceItem RESOURCE_VECTOR;
        public static SkillPointItem SKILL_POINT;
        public static StarItem STAR;

        public static void setup() {
            ItemManager itemManager = Game.f8589i.itemManager;
            ItemType itemType = ItemType.ABILITY_TOKEN;
            F_ABILITY_TOKEN = (AbilityTokenItem.AbilityTokenItemFactory) itemManager.getFactory(itemType);
            ItemType itemType2 = ItemType.ACCELERATOR;
            F_ACCELERATOR = (AcceleratorItem.AcceleratorItemFactory) itemManager.getFactory(itemType2);
            F_BLUEPRINT = (BlueprintItem.BlueprintItemFactory) itemManager.getFactory(ItemType.BLUEPRINT);
            F_CASE = (CaseItem.CaseItemFactory) itemManager.getFactory(ItemType.CASE);
            F_GATE = (GateItem.GateItemFactory) itemManager.getFactory(ItemType.GATE);
            F_TILE = (TileItem.TileItemFactory) itemManager.getFactory(ItemType.TILE);
            F_RESOURCE = (ResourceItem.ResourceItemFactory) itemManager.getFactory(ItemType.RESOURCE);
            F_RANDOM_TILE = (RandomTileItem.RandomTileItemFactory) itemManager.getFactory(ItemType.RANDOM_TILE);
            F_CASE_KEY = (CaseKeyItem.CaseKeyItemFactory) itemManager.getFactory(ItemType.CASE_KEY);
            F_ABILITY = (AbilityItem.AbilityItemFactory) itemManager.getFactory(ItemType.ABILITY);
            F_TROPHY = (TrophyItem.TrophyItemFactory) itemManager.getFactory(ItemType.TROPHY);
            F_RANDOM_BARRIER = (RandomBarrierItem.RandomBarrierItemFactory) itemManager.getFactory(ItemType.RANDOM_BARRIER);
            F_DOUBLE_GAIN_SHARD = (DoubleGainShardItem.DoubleGainShardItemFactory) itemManager.getFactory(ItemType.DOUBLE_GAIN_SHARD);
            F_GAME_VALUE_GLOBAL = (GameValueGlobalItem.GameValueGlobalItemFactory) itemManager.getFactory(ItemType.GAME_VALUE_GLOBAL);
            F_GAME_VALUE_LEVEL = (GameValueLevelItem.GameValueLevelItemFactory) itemManager.getFactory(ItemType.GAME_VALUE_LEVEL);
            ItemType itemType3 = ItemType.PRESTIGE_TOKEN;
            F_PRESTIGE_TOKEN = (PrestigeTokenItem.PrestigeTokenItemFactory) itemManager.getFactory(itemType3);
            ItemType itemType4 = ItemType.RESEARCH_TOKEN;
            F_RESEARCH_TOKEN = (ResearchTokenItem.ResearchTokenItemFactory) itemManager.getFactory(itemType4);
            ItemType itemType5 = ItemType.RESEARCH_TOKEN_USED;
            F_RESEARCH_TOKEN_USED = (ResearchTokenUsedItem.ResearchTokenUsedItemFactory) itemManager.getFactory(itemType5);
            ItemType itemType6 = ItemType.LUCKY_SHOT_TOKEN;
            F_LUCKY_SHOT_TOKEN = (LuckyShotTokenItem.LuckyShotTokenItemFactory) itemManager.getFactory(itemType6);
            F_OPENED_RESEARCH = (OpenedResearchItem.OpenedResearchItemFactory) itemManager.getFactory(ItemType.OPENED_RESEARCH);
            GREEN_PAPER = (GreenPaperItem) itemManager.getFactory(ItemType.GREEN_PAPER).createDefault();
            RESOURCE_SCALAR = F_RESOURCE.create(ResourceType.SCALAR);
            RESOURCE_VECTOR = F_RESOURCE.create(ResourceType.VECTOR);
            RESOURCE_MATRIX = F_RESOURCE.create(ResourceType.MATRIX);
            RESOURCE_TENSOR = F_RESOURCE.create(ResourceType.TENSOR);
            RESOURCE_INFIAR = F_RESOURCE.create(ResourceType.INFIAR);
            BIT_DUST = (BitDustItem) itemManager.getFactory(ItemType.BIT_DUST).createDefault();
            PRESTIGE_DUST = (PrestigeDustItem) itemManager.getFactory(ItemType.PRESTIGE_DUST).createDefault();
            DAT_PAPER = (DatPaperItem) itemManager.getFactory(ItemType.DAT_PAPER).createDefault();
            BLUEPRINT_AGILITY = F_BLUEPRINT.create(BlueprintType.AGILITY);
            BLUEPRINT_EXPERIENCE = F_BLUEPRINT.create(BlueprintType.EXPERIENCE);
            BLUEPRINT_POWER = F_BLUEPRINT.create(BlueprintType.POWER);
            BLUEPRINT_SPECIAL_I = F_BLUEPRINT.create(BlueprintType.SPECIAL_I);
            BLUEPRINT_SPECIAL_II = F_BLUEPRINT.create(BlueprintType.SPECIAL_II);
            BLUEPRINT_SPECIAL_III = F_BLUEPRINT.create(BlueprintType.SPECIAL_III);
            BLUEPRINT_SPECIAL_IV = F_BLUEPRINT.create(BlueprintType.SPECIAL_IV);
            CASE_KEY_BLUE = F_CASE_KEY.create(CaseType.BLUE);
            CASE_KEY_PURPLE = F_CASE_KEY.create(CaseType.PURPLE);
            CASE_KEY_ORANGE = F_CASE_KEY.create(CaseType.ORANGE);
            CASE_KEY_CYAN = F_CASE_KEY.create(CaseType.CYAN);
            RARITY_BOOST = (RarityBoostItem) itemManager.getFactory(ItemType.RARITY_BOOST).createDefault();
            ABILITY_TOKEN = (AbilityTokenItem) itemManager.getFactory(itemType).createDefault();
            ACCELERATOR = (AcceleratorItem) itemManager.getFactory(itemType2).createDefault();
            LOOT_BOOST = (LootBoostItem) itemManager.getFactory(ItemType.LOOT_BOOST).createDefault();
            PRESTIGE_TOKEN = (PrestigeTokenItem) itemManager.getFactory(itemType3).createDefault();
            RESEARCH_TOKEN = (ResearchTokenItem) itemManager.getFactory(itemType4).createDefault();
            RESEARCH_TOKEN_USED = (ResearchTokenUsedItem) itemManager.getFactory(itemType5).createDefault();
            LUCKY_SHOT_TOKEN = (LuckyShotTokenItem) itemManager.getFactory(itemType6).createDefault();
            SKILL_POINT = (SkillPointItem) itemManager.getFactory(ItemType.SKILL_POINT).createDefault();
            RANDOM_TELEPORT = (RandomTeleportItem) itemManager.getFactory(ItemType.RANDOM_TELEPORT).createDefault();
            STAR = (StarItem) itemManager.getFactory(ItemType.STAR).createDefault();
        }
    }

    /* loaded from: classes2.dex */
    public interface Factory<T extends Item> {

        /* loaded from: classes2.dex */
        public static abstract class AbstractFactory<T extends Item> implements Factory<T> {
            @Override // com.prineside.tdi2.Item.Factory
            public void setup() {
            }
        }

        T createDefault();

        T fromJson(JsonValue jsonValue);

        void setup();
    }

    /* loaded from: classes2.dex */
    public interface UsableItem {
        boolean autoUseWhenAdded();

        boolean useItem();

        boolean useItemNeedsConfirmation();
    }

    /* renamed from: a */
    public static float m21960a(float f) {
        float f2 = f * 0.05f;
        if (f2 < 2.0f) {
            return 2.0f;
        }
        return f2;
    }

    public void addSellItems(Array<ItemStack> array) {
    }

    public boolean affectedByLuckyWheelMultiplier() {
        return true;
    }

    public boolean canBeSold() {
        return false;
    }

    public boolean canBeUnpacked() {
        return false;
    }

    public Item cpy() {
        return this;
    }

    public void fillItemCreationForm(ItemCreationOverlay itemCreationOverlay) {
    }

    public void fillWithInfo(Table table, float f) {
    }

    public Item from(Item item) {
        return this;
    }

    public abstract Actor generateIcon(float f, boolean z);

    public abstract ItemCategoryType getCategory();

    public IntArray getData() {
        this.f8714a.clear();
        return this.f8714a;
    }

    public abstract CharSequence getDescription();

    public double getPriceInAcceleratorsForResearchReset(int i) {
        return 0.0d;
    }

    public abstract RarityType getRarity();

    public abstract ItemSubcategoryType getSubcategory();

    public abstract CharSequence getTitle();

    public abstract ItemType getType();

    public boolean isAffectedByDoubleGain() {
        return false;
    }

    public abstract boolean isCountable();

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
    }

    public boolean sameAs(Item item) {
        return this == item || getType() == item.getType();
    }

    public void toJson(Json json) {
        json.writeValue("type", getType().name());
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
    }

    public static Item fromJson(JsonValue jsonValue) {
        return Game.f8589i.itemManager.getFactory(ItemType.valueOf(jsonValue.getString("type"))).fromJson(jsonValue);
    }

    public void addSellItems(Array<ItemStack> array, int i) {
        Array<ItemStack> array2 = f8713b;
        array2.clear();
        addSellItems(array2);
        int i2 = 0;
        while (true) {
            Array<ItemStack> array3 = f8713b;
            if (i2 < array3.size) {
                ItemStack[] itemStackArr = array3.items;
                itemStackArr[i2].setCount(PMath.multiplyWithoutOverflow(itemStackArr[i2].getCount(), i));
                i2++;
            } else {
                array.addAll(array3);
                array3.clear();
                return;
            }
        }
    }

    public final int getData(ItemDataType itemDataType) {
        int ordinal = itemDataType.ordinal();
        IntArray data = getData();
        for (int i = 0; i < data.size; i += 2) {
            int[] iArr = data.items;
            if (iArr[i] == ordinal) {
                return iArr[i + 1];
            }
        }
        return Integer.MIN_VALUE;
    }

    public int getSortingScore(ItemSortingType itemSortingType) {
        int ordinal;
        if (itemSortingType == ItemSortingType.RARITY) {
            ordinal = getRarity().ordinal();
        } else {
            ordinal = getType().ordinal();
        }
        return ordinal * CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    }

    public Array<ItemStack> openPack(ProgressManager.InventoryStatistics inventoryStatistics) {
        if (!canBeUnpacked()) {
            throw new RuntimeException("Is not pack");
        }
        throw new RuntimeException("Not implemented");
    }
}
