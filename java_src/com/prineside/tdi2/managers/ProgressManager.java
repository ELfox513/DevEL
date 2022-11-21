package com.prineside.tdi2.managers;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.RandomXS128;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.Timer;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.ActionResolver;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.BasicLevelStage;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.CraftRecipe;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Research;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.BlueprintType;
import com.prineside.tdi2.enums.BossTileType;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.CaseType;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemCategoryType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.ResearchType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.enums.TrophyType;
import com.prineside.tdi2.items.BlueprintItem;
import com.prineside.tdi2.items.CaseItem;
import com.prineside.tdi2.items.CaseKeyItem;
import com.prineside.tdi2.items.RandomBarrierItem;
import com.prineside.tdi2.items.RandomTileItem;
import com.prineside.tdi2.items.ResourceItem;
import com.prineside.tdi2.items.TileItem;
import com.prineside.tdi2.items.TrophyItem;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.p036ui.shared.LuckyWheelOverlay;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.tiles.BossTile;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.FastRandom;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import p218x1.C7221i;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class ProgressManager extends Manager.ManagerAdapter {
    public static final int DIFFICULTY_MULTIPLIER_EASY = 92;
    public static final int DIFFICULTY_MULTIPLIER_NORMAL = 100;
    public static final int VIDEO_AD_BONUSES_CYCLE_LENGTH = 300;
    public static final int VIDEO_WATCHES_FOR_DOUBLE_GAIN = 500;
    public static final int VIDEO_WATCHES_FOR_LUCKY_SHOT = 20;

    /* renamed from: D */
    public float f9957D;

    /* renamed from: E */
    public boolean f9958E;

    /* renamed from: G */
    public Array<LuckyWheelOverlay.WheelOption> f9959G;

    /* renamed from: J */
    public ItemStack[] f9962J;
    public CaseItem decryptingCase;
    public float decryptingCaseTimeLeft;
    public float lootBoostTimeLeft;
    public float luckyWheelLastRotation;
    public float luckyWheelLastWeaponAngle;
    public boolean luckyWheelSpinAvailable;
    public boolean luckyWheelSpinInProgress;

    /* renamed from: t */
    public boolean f9971t;

    /* renamed from: u */
    public int f9972u;

    /* renamed from: v */
    public int f9973v;
    public VideoAdViewBonus[] videoAdViewBonuses;
    public int videosWatchedForDoubleGain;
    public int videosWatchedForLuckyShot;

    /* renamed from: z */
    public Array<ShopOffer> f9977z;

    /* renamed from: K */
    public static final ConditionalCompensation[] f9950K = {new ConditionalCompensation(10177) { // from class: com.prineside.tdi2.managers.ProgressManager.1
        @Override // com.prineside.tdi2.managers.ProgressManager.ConditionalCompensation
        public boolean handle() {
            if (Game.f8589i.statisticsManager.getAllTime(StatisticsType.PQR) >= 3.0d) {
                IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.FAILURE_COMPENSATION, Game.getTimestampSeconds());
                issuedItems.failureCompensationDescription = "For 3+ Prestige quest resets before update 1.8.5";
                issuedItems.items.add(new ItemStack(Item.C1543D.PRESTIGE_TOKEN, 2450));
                issuedItems.items.add(new ItemStack(Item.C1543D.BIT_DUST, 500));
                issuedItems.items.add(new ItemStack(Item.C1543D.RESEARCH_TOKEN, 3));
                Game.f8589i.progressManager.addItems(issuedItems.items);
                Game.f8589i.progressManager.addIssuedPrizes(issuedItems, true);
                Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
                return true;
            }
            return false;
        }
    }};
    public static final Comparator<ItemStack> ITEM_RARITY_COMPARATOR = new Comparator<ItemStack>() { // from class: com.prineside.tdi2.managers.ProgressManager.2
        @Override // java.util.Comparator
        public int compare(ItemStack itemStack, ItemStack itemStack2) {
            return C7221i.m2085a(itemStack2.getItem().getRarity().ordinal(), itemStack.getItem().getRarity().ordinal());
        }
    };
    public static final Color[] RARITY_COLORS = {new Color(1013530111), new Color(1247523071), new Color(-1874878721), new Color(-814213633), new Color(413710591)};
    public static final Color[] RARITY_BRIGHT_COLORS = {MaterialColor.GREEN.P400, MaterialColor.INDIGO.P300, MaterialColor.PURPLE.P300, MaterialColor.ORANGE.P500, MaterialColor.CYAN.P500};

    /* renamed from: L */
    public static final String[] f9951L = {"rarity_COMMON", "rarity_RARE", "rarity_VERY_RARE", "rarity_EPIC", "rarity_LEGENDARY"};

    /* renamed from: M */
    public static final String[] f9952M = {"icon-star", "icon-two-stars", "icon-three-stars", "icon-four-stars", "icon-five-stars"};

    /* renamed from: N */
    public static final Array<ItemStack> f9953N = new Array<>(ItemStack.class);

    /* renamed from: a */
    public final Array<IssuedItems> f9963a = new Array<>();

    /* renamed from: b */
    public final DelayedRemovalArray<ItemStack> f9964b = new DelayedRemovalArray<>(false, 1, ItemStack.class);

    /* renamed from: d */
    public final ObjectMap<ItemType, DelayedRemovalArray<ItemStack>> f9965d = new ObjectMap<>();

    /* renamed from: k */
    public final ObjectMap<ItemCategoryType, DelayedRemovalArray<ItemStack>> f9966k = new ObjectMap<>();

    /* renamed from: p */
    public final ObjectMap<ItemSubcategoryType, DelayedRemovalArray<ItemStack>> f9967p = new ObjectMap<>();

    /* renamed from: q */
    public boolean f9968q = false;

    /* renamed from: r */
    public boolean f9969r = false;

    /* renamed from: s */
    public DifficultyMode f9970s = DifficultyMode.NORMAL;

    /* renamed from: w */
    public IntArray f9974w = new IntArray();
    public RandomXS128[] caseRandoms = new RandomXS128[CaseType.values.length];
    public RandomXS128 otherItemsRandom = new RandomXS128();
    public Array<CaseItem> decryptingCaseQueue = new Array<>(CaseItem.class);

    /* renamed from: x */
    public final InventoryStatistics f9975x = new InventoryStatistics();

    /* renamed from: y */
    public boolean f9976y = true;
    public Array<CraftingQueueItem> craftingQueue = new Array<>(CraftingQueueItem.class);

    /* renamed from: A */
    public boolean f9954A = false;

    /* renamed from: B */
    public boolean f9955B = false;

    /* renamed from: C */
    public boolean f9956C = false;
    public RandomXS128 luckyWheelWheelRandom = new RandomXS128();
    public RandomXS128 luckyWheelSpinRandom = new RandomXS128();

    /* renamed from: H */
    public final DelayedRemovalArray<ProgressManagerListener> f9960H = new DelayedRemovalArray<>(false, 1);

    /* renamed from: I */
    public final _GameValueManagerListener f9961I = new _GameValueManagerListener();

    /* loaded from: classes2.dex */
    public static class CraftingQueueItem {
        public int count;
        public float duration;
        public Array<ItemStack> ingredients = new Array<>(ItemStack.class);
        public ItemStack result;
        public float timePassed;

        public float getTimePassed() {
            return this.timePassed;
        }

        public float getTotalTime() {
            return this.duration * this.count;
        }

        public static CraftingQueueItem fromJson(JsonValue jsonValue) {
            CraftingQueueItem craftingQueueItem = new CraftingQueueItem();
            craftingQueueItem.result = ItemStack.fromJson(jsonValue.get("result"));
            Iterator<JsonValue> iterator2 = jsonValue.get("ingredients").iterator2();
            while (iterator2.hasNext()) {
                craftingQueueItem.ingredients.add(ItemStack.fromJson(iterator2.next()));
            }
            craftingQueueItem.count = jsonValue.getInt("count");
            craftingQueueItem.duration = jsonValue.getInt("duration");
            craftingQueueItem.timePassed = jsonValue.getInt("timePassed");
            return craftingQueueItem;
        }

        public void toJson(Json json) {
            json.writeObjectStart("result");
            this.result.toJson(json);
            json.writeObjectEnd();
            json.writeArrayStart("ingredients");
            for (int i = 0; i < this.ingredients.size; i++) {
                json.writeObjectStart();
                this.ingredients.items[i].toJson(json);
                json.writeObjectEnd();
            }
            json.writeArrayEnd();
            json.writeValue("count", Integer.valueOf(this.count));
            json.writeValue("duration", Float.valueOf(this.duration));
            json.writeValue("timePassed", Float.valueOf(this.timePassed));
        }

        public int getCraftedCount() {
            if (getTimeLeft() == 0.0f) {
                return this.count;
            }
            return (int) (this.timePassed / this.duration);
        }

        public float getTimeLeft() {
            float totalTime = getTotalTime();
            float f = this.timePassed;
            if (f >= totalTime) {
                return 0.0f;
            }
            return totalTime - f;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class InventoryStatistics implements KryoSerializable {
        public int[] byTileType = new int[TileType.values.length];

        /* renamed from: b */
        public final void m21539b(TileItem tileItem) {
            int[] iArr = this.byTileType;
            int ordinal = tileItem.tile.type.ordinal();
            iArr[ordinal] = iArr[ordinal] + 1;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.byTileType = (int[]) kryo.readObject(input, int[].class);
        }

        public void reset() {
            Arrays.fill(this.byTileType, 0);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.byTileType);
        }

        public InventoryStatistics cpy() {
            InventoryStatistics inventoryStatistics = new InventoryStatistics();
            int[] iArr = this.byTileType;
            System.arraycopy(iArr, 0, inventoryStatistics.byTileType, 0, iArr.length);
            return inventoryStatistics;
        }

        public void countItem(Item item) {
            if (item.getType() == ItemType.TILE) {
                m21539b((TileItem) item);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface ProgressManagerListener {

        /* loaded from: classes2.dex */
        public static abstract class ProgressManagerListenerAdapter implements ProgressManagerListener {
            @Override // com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener
            public void developerConsoleEnabled() {
            }

            @Override // com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener
            public void doubleGainEnabled() {
            }

            @Override // com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener
            public void itemsChanged(Item item, int i, int i2) {
            }

            @Override // com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener
            public void saved() {
            }
        }

        void developerConsoleEnabled();

        void doubleGainEnabled();

        void itemsChanged(Item item, int i, int i2);

        void saved();
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<ProgressManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public ProgressManager read() {
            return Game.f8589i.progressManager;
        }
    }

    /* loaded from: classes2.dex */
    public class _GameValueManagerListener implements GameValueManager.GameValueManagerListener {

        /* renamed from: a */
        public boolean f9988a;

        public _GameValueManagerListener() {
            this.f9988a = false;
        }

        @Override // com.prineside.tdi2.managers.GameValueManager.GameValueManagerListener
        public void gameValuesRecalculated() {
            if (Game.f8589i.gameValueManager.getSnapshot().getBooleanValue(GameValueType.DEVELOPER_MODE)) {
                if (!this.f9988a) {
                    this.f9988a = true;
                    ProgressManager.this.f9960H.begin();
                    int i = ProgressManager.this.f9960H.size;
                    for (int i2 = 0; i2 < i; i2++) {
                        ((ProgressManagerListener) ProgressManager.this.f9960H.get(i2)).developerConsoleEnabled();
                    }
                    ProgressManager.this.f9960H.end();
                    ProgressManager.this.checkSpecialTrophiesGiven();
                }
            } else if (this.f9988a) {
                this.f9988a = false;
            }
        }
    }

    public static ItemStack addItemToStacksArray(Array<ItemStack> array, Item item, int i) {
        for (int i2 = 0; i2 < array.size; i2++) {
            ItemStack itemStack = array.get(i2);
            if (itemStack.getItem().sameAs(item)) {
                itemStack.setCount(PMath.addWithoutOverflow(itemStack.getCount(), i));
                return itemStack;
            }
        }
        ItemStack itemStack2 = new ItemStack(item, i);
        array.add(itemStack2);
        return itemStack2;
    }

    public static float getMaxQuality(RarityType rarityType) {
        return (rarityType.ordinal() * 0.2f) + 0.2f;
    }

    public static float getMinQuality(RarityType rarityType) {
        return rarityType.ordinal() * 0.2f;
    }

    public static float globalQualityToRarityQualuty(float f) {
        return MathUtils.clamp((f % 0.2f) * 5.0f, 0.0f, 1.0f);
    }

    /* renamed from: h */
    public static /* synthetic */ int m21542h(LuckyWheelOverlay.WheelOption wheelOption, LuckyWheelOverlay.WheelOption wheelOption2) {
        return Float.compare(wheelOption.chance, wheelOption2.chance);
    }

    public void addAbilities(AbilityType abilityType, int i) {
        addItems(Item.C1543D.F_ABILITY.create(abilityType), i);
    }

    public void addAccelerators(int i) {
        addItems(Item.C1543D.ACCELERATOR, i);
    }

    public void addGates(Gate gate, int i) {
        addItems(Item.C1543D.F_GATE.create(gate), i);
    }

    public void addGreenPapers(int i) {
        addItems(Item.C1543D.GREEN_PAPER, i);
    }

    public void addItems(Item item, int i) {
        DelayedRemovalArray<ProgressManagerListener> delayedRemovalArray;
        m21545e();
        if (i >= 1) {
            int itemsCount = getItemsCount(item);
            ItemStack addItemToStacksArray = addItemToStacksArray(this.f9964b, item, i);
            DelayedRemovalArray<ItemStack> itemsByType = getItemsByType(item.getType());
            if (!itemsByType.contains(addItemToStacksArray, true)) {
                itemsByType.add(addItemToStacksArray);
            }
            DelayedRemovalArray<ItemStack> itemsByCategory = getItemsByCategory(item.getCategory());
            if (!itemsByCategory.contains(addItemToStacksArray, true)) {
                itemsByCategory.add(addItemToStacksArray);
            }
            DelayedRemovalArray<ItemStack> itemsBySubcategory = getItemsBySubcategory(item.getSubcategory());
            if (!itemsBySubcategory.contains(addItemToStacksArray, true)) {
                itemsBySubcategory.add(addItemToStacksArray);
            }
            this.f9960H.begin();
            int i2 = 0;
            while (true) {
                delayedRemovalArray = this.f9960H;
                if (i2 >= delayedRemovalArray.size) {
                    break;
                }
                delayedRemovalArray.get(i2).itemsChanged(item, itemsCount, i);
                i2++;
            }
            delayedRemovalArray.end();
            this.f9956C = true;
            this.f9976y = true;
            if (item instanceof Item.UsableItem) {
                Item.UsableItem usableItem = (Item.UsableItem) item;
                if (usableItem.autoUseWhenAdded()) {
                    for (int i3 = 0; i3 < i; i3++) {
                        usableItem.useItem();
                        Game.f8589i.uiManager.notifications.add(Game.f8589i.localeManager.i18n.get("item_used_notification") + " " + ((Object) item.getTitle()), null, null, null);
                    }
                }
            }
            if (!this.f9971t) {
                Game.f8589i.authManager.notifyNeedCloudSave(true);
            }
            switch (C18406.f9985d[item.getType().ordinal()]) {
                case 1:
                    Game.f8589i.actionResolver.logCurrencyReceived(((ResourceItem) item).resourceType.name().toLowerCase(Locale.ENGLISH), i);
                    return;
                case 2:
                    ActionResolver actionResolver = Game.f8589i.actionResolver;
                    actionResolver.logCurrencyReceived("blueprint_" + ((BlueprintItem) item).getBlueprintType().name().toLowerCase(Locale.ENGLISH), i);
                    return;
                case 3:
                    Game.f8589i.actionResolver.logCurrencyReceived("accelerator", i);
                    return;
                case 4:
                    Game.f8589i.actionResolver.logCurrencyReceived("green_paper", i);
                    return;
                case 5:
                    Game.f8589i.actionResolver.logCurrencyReceived("rarity_boost", i);
                    return;
                case 6:
                    Game.f8589i.actionResolver.logCurrencyReceived("bit_dust", i);
                    return;
                case 7:
                    ActionResolver actionResolver2 = Game.f8589i.actionResolver;
                    actionResolver2.logCurrencyReceived("case_key_" + ((CaseKeyItem) item).caseType.name().toLowerCase(Locale.ENGLISH), i);
                    return;
                case 8:
                    Game.f8589i.actionResolver.logCurrencyReceived("ability_token", i);
                    return;
                default:
                    return;
            }
        }
        throw new IllegalArgumentException("Count is " + i);
    }

    public void addTiles(Tile tile, int i) {
        addItems(Item.C1543D.F_TILE.create(tile), i);
    }

    public boolean areF2pTimersDisabled() {
        return true;
    }

    public int countAcceleratorsNeeded(int i) {
        return (int) StrictMath.ceil(StrictMath.pow((i / 60.0f) / 5.0f, 0.75d));
    }

    public boolean difficultyModeAvailable(DifficultyMode difficultyMode) {
        return !DifficultyMode.isEndless(difficultyMode) || Game.f8589i.gameValueManager.getSnapshot().getBooleanValue(GameValueType.ENDLESS_MODE);
    }

    public void disableDoubleGainTemp() {
        this.f9968q = false;
    }

    /* renamed from: e */
    public final void m21545e() {
        if (!this.f9954A) {
            throw new IllegalStateException("Manager is not set up yet");
        }
    }

    public int getAbilities(AbilityType abilityType) {
        return getItemsCount(Item.C1543D.F_ABILITY.create(abilityType));
    }

    public int getAccelerators() {
        return getItemsCount(Item.C1543D.ACCELERATOR);
    }

    public int getAcceleratorsRequiredToShortenTime(float f) {
        return MathUtils.ceil(f / 600.0f);
    }

    public CraftingQueueItem getCraftingQueueItem(int i) {
        if (this.craftingQueue.size <= i || i < 0) {
            return null;
        }
        return Game.f8589i.progressManager.craftingQueue.items[i];
    }

    public DifficultyMode getDifficultyMode() {
        return this.f9970s;
    }

    public float getDifficultyModePrizeMultiplier(DifficultyMode difficultyMode) {
        int i = C18406.f9983b[difficultyMode.ordinal()];
        if (i != 1) {
            return i != 3 ? 1.0f : 1.5f;
        }
        return 0.75f;
    }

    public int getExtraDecryptingSlotsCount() {
        int intValue = Game.f8589i.gameValueManager.getSnapshot().getIntValue(GameValueType.DECRYPTING_QUEUE_MAX_SIZE);
        if (intValue < 0) {
            return 0;
        }
        if (intValue > 2) {
            return 2;
        }
        return intValue;
    }

    public int getGreenPapers() {
        return getItemsCount(Item.C1543D.GREEN_PAPER);
    }

    public float getLootBoostTimeLeft() {
        return this.lootBoostTimeLeft;
    }

    public int getMaxCraftQueueSize() {
        return StrictMath.min(Game.f8589i.gameValueManager.getSnapshot().getIntValue(GameValueType.CRAFTING_QUEUE_MAX_SIZE), 6);
    }

    public int getMaxEncryptedCasesInInventory() {
        return 5;
    }

    public Color getRarityBrightColor(RarityType rarityType) {
        return RARITY_BRIGHT_COLORS[rarityType.ordinal()];
    }

    public Color getRarityColor(RarityType rarityType) {
        return RARITY_COLORS[rarityType.ordinal()];
    }

    public String getRarityIcon(RarityType rarityType) {
        return f9952M[rarityType.ordinal()];
    }

    public int getResources(ResourceType resourceType) {
        return getItemsCount(Item.C1543D.F_RESOURCE.create(resourceType));
    }

    public int getTempDoubleGainDurationLeft() {
        int timestampSeconds = this.f9973v - Game.getTimestampSeconds();
        if (timestampSeconds < 0) {
            return 0;
        }
        return timestampSeconds;
    }

    public float getTotalCraftingTimeLeft() {
        float f = 0.0f;
        int i = 0;
        while (true) {
            Array<CraftingQueueItem> array = this.craftingQueue;
            if (i < array.size) {
                CraftingQueueItem craftingQueueItem = array.items[i];
                if (craftingQueueItem != null) {
                    f += craftingQueueItem.getTimeLeft();
                }
                i++;
            } else {
                return f;
            }
        }
    }

    public boolean grabCrafted(int i) {
        CraftingQueueItem craftingQueueItem = getCraftingQueueItem(i);
        if (craftingQueueItem != null) {
            int craftedCount = craftingQueueItem.getCraftedCount();
            if (craftedCount != 0) {
                addItems(craftingQueueItem.result.getItem(), craftingQueueItem.result.getCount() * craftedCount);
                int i2 = craftingQueueItem.count;
                if (i2 == craftedCount) {
                    this.craftingQueue.removeIndex(i);
                    return true;
                }
                craftingQueueItem.timePassed -= craftedCount * craftingQueueItem.duration;
                craftingQueueItem.count = i2 - craftedCount;
            }
            return false;
        }
        Logger.error("ProgressManager", "grabCrafted " + i + " - nothing was crafting");
        return false;
    }

    public boolean isDoubleGainPermanent() {
        return this.f9968q;
    }

    public boolean isLuckyWheelSpinAvailable() {
        return this.luckyWheelSpinAvailable;
    }

    public boolean isPermanentDoubleGainEnabled() {
        return isDoubleGainEnabled() && isDoubleGainPermanent();
    }

    public boolean openPack(Item item, int i, boolean z, boolean z2) {
        IssuedItems issuedItems;
        if (i >= 1) {
            if (item.canBeUnpacked()) {
                if (removeItems(item, i)) {
                    if (item.getType() == ItemType.RANDOM_TILE) {
                        issuedItems = new IssuedItems(IssuedItems.IssueReason.RANDOM_TILE_PACK, Game.getTimestampSeconds());
                        issuedItems.randomTilePackQuality = ((RandomTileItem) item).quality;
                    } else if (item.getType() == ItemType.CASE) {
                        issuedItems = new IssuedItems(IssuedItems.IssueReason.CASE, Game.getTimestampSeconds());
                        issuedItems.caseType = ((CaseItem) item).caseType;
                    } else if (item.getType() == ItemType.RANDOM_TELEPORT) {
                        issuedItems = new IssuedItems(IssuedItems.IssueReason.RANDOM_TELEPORT_PACK, Game.getTimestampSeconds());
                    } else if (item.getType() == ItemType.RANDOM_BARRIER) {
                        issuedItems = new IssuedItems(IssuedItems.IssueReason.RANDOM_BARRIER_PACK, Game.getTimestampSeconds());
                        issuedItems.randomBarrierPackQuality = ((RandomBarrierItem) item).quality;
                    } else {
                        throw new IllegalStateException("Not implemented for unpacking: " + item.getType().name());
                    }
                    issuedItems.massUnpackCount = i;
                    InventoryStatistics cpy = Game.f8589i.progressManager.getInventoryStatistics().cpy();
                    for (int i2 = 0; i2 < i; i2++) {
                        Array<ItemStack> openPack = item.openPack(cpy);
                        issuedItems.items.addAll(openPack);
                        for (int i3 = 0; i3 < openPack.size; i3++) {
                            cpy.countItem(openPack.items[i3].getItem());
                        }
                    }
                    Array<ItemStack> array = issuedItems.items;
                    boolean z3 = array.size > 50;
                    if (z3) {
                        compressStacksArray(array);
                    }
                    issuedItems.items.sort(ItemStack.SORT_COMPARATOR_RARITY_ASC);
                    Game.f8589i.progressManager.addItems(issuedItems.items);
                    Game.f8589i.progressManager.addIssuedPrizes(issuedItems, z2);
                    if (z) {
                        Game.f8589i.uiManager.openedPackOverlay.show(issuedItems.items, z3);
                    }
                    return z3;
                }
                Game game = Game.f8589i;
                game.uiManager.notifications.add(game.localeManager.i18n.get("not_enough_items"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.ORANGE.P800, StaticSoundType.FAIL);
                return false;
            }
            throw new IllegalArgumentException("Item can't be unpacked: " + item.getType());
        }
        throw new IllegalArgumentException("incorrect count " + i);
    }

    public boolean removeAbilities(AbilityType abilityType, int i) {
        if (i == 0) {
            return true;
        }
        return removeItems(Item.C1543D.F_ABILITY.create(abilityType), i);
    }

    public boolean removeAccelerators(int i) {
        if (i == 0) {
            return true;
        }
        return removeItems(Item.C1543D.ACCELERATOR, i);
    }

    public void requireDelayedSave() {
        this.f9956C = true;
    }

    public void showNewlyIssuedPrizesPopup() {
        boolean z;
        int i = 0;
        int i2 = 0;
        while (true) {
            Array<IssuedItems> array = this.f9963a;
            if (i2 < array.size) {
                if (!array.get(i2).shown) {
                    z = true;
                    break;
                }
                i2++;
            } else {
                z = false;
                break;
            }
        }
        if (z) {
            Logger.log("ProgressManager", "need to show");
            Array<IssuedItems> array2 = new Array<>();
            while (true) {
                Array<IssuedItems> array3 = this.f9963a;
                if (i < array3.size) {
                    if (!array3.get(i).shown) {
                        this.f9963a.get(i).shown = true;
                        array2.add(this.f9963a.get(i));
                    }
                    i++;
                } else {
                    Game.f8589i.uiManager.issuedPrizesOverlay.show(array2);
                    this.f9956C = true;
                    return;
                }
            }
        }
    }

    /* renamed from: com.prineside.tdi2.managers.ProgressManager$6 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C18406 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9982a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f9983b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f9984c;

        /* renamed from: d */
        public static final /* synthetic */ int[] f9985d;

        /* renamed from: e */
        public static final /* synthetic */ int[] f9986e;

        static {
            int[] iArr = new int[StatisticsType.values().length];
            f9986e = iArr;
            try {
                iArr[StatisticsType.RG_S.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9986e[StatisticsType.RG_V.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9986e[StatisticsType.RG_M.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9986e[StatisticsType.RG_T.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9986e[StatisticsType.RG_I.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[ItemType.values().length];
            f9985d = iArr2;
            try {
                iArr2[ItemType.RESOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f9985d[ItemType.BLUEPRINT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f9985d[ItemType.ACCELERATOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f9985d[ItemType.GREEN_PAPER.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f9985d[ItemType.RARITY_BOOST.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f9985d[ItemType.BIT_DUST.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f9985d[ItemType.CASE_KEY.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f9985d[ItemType.ABILITY_TOKEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused13) {
            }
            int[] iArr3 = new int[ResourceType.values().length];
            f9984c = iArr3;
            try {
                iArr3[ResourceType.SCALAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f9984c[ResourceType.VECTOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f9984c[ResourceType.MATRIX.ordinal()] = 3;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f9984c[ResourceType.TENSOR.ordinal()] = 4;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f9984c[ResourceType.INFIAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr4 = new int[DifficultyMode.values().length];
            f9983b = iArr4;
            try {
                iArr4[DifficultyMode.EASY.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f9983b[DifficultyMode.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f9983b[DifficultyMode.ENDLESS_I.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            int[] iArr5 = new int[BossType.values().length];
            f9982a = iArr5;
            try {
                iArr5[BossType.BROOT.ordinal()] = 1;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f9982a[BossType.SNAKE.ordinal()] = 2;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f9982a[BossType.METAPHOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f9982a[BossType.MOBCHAIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f9982a[BossType.CONSTRUCTOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused26) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class ConditionalCompensation {

        /* renamed from: id */
        public int f9987id;

        public abstract boolean handle();

        public ConditionalCompensation(int i) {
            this.f9987id = i;
        }
    }

    /* loaded from: classes2.dex */
    public static class ShopOffer {
        public ItemStack item;
        public ItemStack price;

        public ShopOffer() {
        }

        public ShopOffer(ItemStack itemStack, ItemStack itemStack2) {
            this.price = itemStack;
            this.item = itemStack2;
        }
    }

    public static int clampModeDifficulty(DifficultyMode difficultyMode, int i, GameValueProvider gameValueProvider) {
        int i2 = C18406.f9983b[difficultyMode.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                return MathUtils.clamp(i, 150, MathUtils.round(((float) gameValueProvider.getPercentValueAsMultiplier(GameValueType.ENDLESS_MODE_DIFFICULTY)) * 100.0f));
            }
            return 100;
        }
        return 92;
    }

    public static void compressStacksArray(Array<ItemStack> array) {
        for (int i = array.size - 1; i >= 0; i--) {
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    break;
                }
                ItemStack itemStack = array.get(i);
                ItemStack itemStack2 = array.get(i2);
                if (itemStack.getItem().sameAs(itemStack2.getItem())) {
                    itemStack2.setCount(PMath.addWithoutOverflow(itemStack.getCount(), itemStack2.getCount()));
                    z = true;
                    break;
                }
                i2++;
            }
            if (z) {
                array.removeIndex(i);
            }
        }
    }

    public static RarityType getRarityFromQuality(float f) {
        if (f >= 1.0f) {
            return RarityType.LEGENDARY;
        }
        if (f < 0.0f) {
            return RarityType.COMMON;
        }
        RarityType[] rarityTypeArr = RarityType.values;
        return rarityTypeArr[MathUtils.floor(f * rarityTypeArr.length)];
    }

    /* renamed from: i */
    public static int m21541i(int i) {
        int i2;
        if (i < 100) {
            i2 = i % 10;
        } else if (i < 500) {
            i2 = i % 50;
        } else if (i < 1000) {
            i2 = i % 100;
        } else if (i < 5000) {
            i2 = i % 500;
        } else {
            i2 = i % CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
        }
        return i - i2;
    }

    public void addListener(ProgressManagerListener progressManagerListener) {
        if (progressManagerListener != null) {
            if (!this.f9960H.contains(progressManagerListener, true)) {
                this.f9960H.add(progressManagerListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public boolean areModifiersOpened() {
        for (ModifierType modifierType : ModifierType.values) {
            if (Game.f8589i.gameValueManager.getSnapshot().getIntValue(Game.f8589i.modifierManager.getCountGameValue(modifierType)) > 0) {
                return true;
            }
        }
        return false;
    }

    public void clearDecryptingQueue(int i) {
        Array<CaseItem> array = this.decryptingCaseQueue;
        if (i < array.size) {
            addItems(array.removeIndex(i), 1);
        } else {
            Logger.error("ProgressManager", "no queue item " + i);
        }
        updateNativeNotifications();
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        if (!this.f9954A) {
            return;
        }
        save();
    }

    /* renamed from: g */
    public final void m21543g() {
        ConditionalCompensation[] conditionalCompensationArr;
        String str;
        for (ConditionalCompensation conditionalCompensation : f9950K) {
            if (!this.f9974w.contains(conditionalCompensation.f9987id)) {
                Logger.log("ProgressManager", "handling conditional compensation #" + conditionalCompensation.f9987id);
                boolean handle = conditionalCompensation.handle();
                StringBuilder sb = new StringBuilder();
                sb.append("  #");
                sb.append(conditionalCompensation.f9987id);
                sb.append(" - ");
                if (handle) {
                    str = "compensation given";
                } else {
                    str = "conditions not met";
                }
                sb.append(str);
                Logger.log("ProgressManager", sb.toString());
                this.f9974w.add(conditionalCompensation.f9987id);
                this.f9955B = true;
            }
        }
    }

    public void generateNewLuckyWheel() {
        int i;
        int i2;
        float f;
        float f2;
        ProgressManager progressManager;
        RandomXS128 randomXS128;
        int i3;
        float f3;
        BossType[] bossTypeArr;
        int i4;
        boolean z;
        EnemyType enemyType;
        BossTileType[] bossTileTypeArr;
        TileType tileType;
        int i5;
        if (this.luckyWheelSpinAvailable) {
            Logger.error("ProgressManager", "Spin available, can't rebuild");
            return;
        }
        InventoryStatistics inventoryStatistics = getInventoryStatistics();
        RandomXS128 randomXS1282 = this.luckyWheelWheelRandom;
        Array array = new Array(LuckyWheelOverlay.WheelOption.class);
        float allTime = (float) Game.f8589i.statisticsManager.getAllTime(StatisticsType.PT);
        if (allTime > 0.0f) {
            float f4 = 1.0f / ((allTime * 60.0f) * 30.0f);
            float allTime2 = ((float) Game.f8589i.statisticsManager.getAllTime(StatisticsType.GPG)) * f4;
            if (allTime2 < 1000.0f) {
                allTime2 = 1000.0f;
            }
            array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.GREEN_PAPER, m21541i((int) allTime2)), 7.0f));
            array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.GREEN_PAPER, m21541i((int) (allTime2 * 0.5f))), 10.0f));
            float allTime3 = ((float) Game.f8589i.statisticsManager.getAllTime(StatisticsType.RG_S)) * f4;
            if (allTime3 < 500.0f) {
                allTime3 = 500.0f;
            }
            if (isResourceOpened(ResourceType.SCALAR)) {
                array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.RESOURCE_SCALAR, m21541i(StrictMath.round(allTime3))), 10.0f));
            }
            float allTime4 = ((float) Game.f8589i.statisticsManager.getAllTime(StatisticsType.RG_V)) * f4;
            if (allTime4 < 400.0f) {
                allTime4 = 400.0f;
            }
            if (isResourceOpened(ResourceType.VECTOR)) {
                array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.RESOURCE_VECTOR, m21541i(StrictMath.round(allTime4))), 9.0f));
            }
            float allTime5 = ((float) Game.f8589i.statisticsManager.getAllTime(StatisticsType.RG_M)) * f4;
            if (allTime5 < 350.0f) {
                allTime5 = 350.0f;
            }
            if (isResourceOpened(ResourceType.MATRIX)) {
                array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.RESOURCE_MATRIX, m21541i(StrictMath.round(allTime5))), 8.0f));
            }
            float allTime6 = ((float) Game.f8589i.statisticsManager.getAllTime(StatisticsType.RG_T)) * f4;
            if (allTime6 < 300.0f) {
                allTime6 = 300.0f;
            }
            if (isResourceOpened(ResourceType.TENSOR)) {
                array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.RESOURCE_TENSOR, m21541i(StrictMath.round(allTime6))), 7.0f));
            }
            float allTime7 = ((float) Game.f8589i.statisticsManager.getAllTime(StatisticsType.RG_I)) * f4;
            if (allTime7 < 250.0f) {
                allTime7 = 250.0f;
            }
            if (isResourceOpened(ResourceType.INFIAR)) {
                array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.RESOURCE_INFIAR, m21541i(StrictMath.round(allTime7))), 6.0f));
            }
        }
        array.add(new LuckyWheelOverlay.WheelOption(null, 7.0f, 2));
        array.add(new LuckyWheelOverlay.WheelOption(null, 3.0f, 3));
        BlueprintType[] blueprintTypeArr = {BlueprintType.EXPERIENCE, BlueprintType.AGILITY, BlueprintType.POWER};
        for (int i6 = 0; i6 < 3; i6++) {
            array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.F_BLUEPRINT.create(blueprintTypeArr[i6]), 10), 10.0f));
        }
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.BLUEPRINT_SPECIAL_I, 3), 7.0f));
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.BLUEPRINT_SPECIAL_II, 2), 6.0f));
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.BLUEPRINT_SPECIAL_III, 1), 5.0f));
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.ABILITY_TOKEN, 1), 6.0f));
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.ABILITY_TOKEN, 2), 3.0f));
        if (Game.f8589i.statisticsManager.getAllTime(StatisticsType.BDFTPG) > 0.0d) {
            array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.BIT_DUST, 3), 10.0f));
            array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.BIT_DUST, 5), 5.0f));
            array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.BIT_DUST, 7), 3.0f));
        }
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.CASE_KEY_BLUE, 5), 10.0f));
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.CASE_KEY_PURPLE, 5), 8.0f));
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.CASE_KEY_ORANGE, 5), 6.0f));
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.CASE_KEY_CYAN, 5), 4.0f));
        FastRandom.random.setSeed(randomXS1282.nextInt(500000));
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.F_RANDOM_TILE.create(0.3f), 6), 10.0f));
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.F_RANDOM_TILE.create(0.5f), 5), 9.0f));
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.F_RANDOM_TILE.create(0.7f), 4), 8.0f));
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.F_RANDOM_TILE.create(0.9f), 3), 7.0f));
        int i7 = 0;
        while (i7 < 10) {
            i7++;
            float f5 = (i7 / 10.0f) * 2.0f;
            if (f5 > 1.0f) {
                f5 = 1.0f;
            }
            if (f5 < 0.2f) {
                i5 = 3;
            } else if (f5 < 0.4f) {
                i5 = 2;
            } else {
                i5 = 1;
            }
            array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.F_TILE.create(Game.f8589i.tileManager.createRandomTile(f5, FastRandom.random, inventoryStatistics)), i5), 10.0f - (f5 * 5.0f)));
        }
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.F_CASE.create(CaseType.GREEN, false, false), 1), 8.0f));
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.F_CASE.create(CaseType.BLUE, false, false), 1), 6.0f));
        array.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.F_CASE.create(CaseType.PURPLE, false, false), 1), 4.0f));
        ItemManager itemManager = Game.f8589i.itemManager;
        RandomXS128 randomXS1283 = FastRandom.random;
        array.add(new LuckyWheelOverlay.WheelOption(itemManager.generateItemByRarity(randomXS1283, RarityType.COMMON, 1.0f, 16.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, false, inventoryStatistics), 10.0f));
        ItemType type = ((LuckyWheelOverlay.WheelOption[]) array.items)[array.size - 1].item.getItem().getType();
        ItemType itemType = ItemType.TILE;
        if (type == itemType && ((tileType = ((TileItem) ((LuckyWheelOverlay.WheelOption[]) array.items)[array.size - 1].item.getItem()).tile.type) == TileType.PLATFORM || tileType == TileType.ROAD)) {
            ((LuckyWheelOverlay.WheelOption[]) array.items)[array.size - 1].item.setCount(5);
        }
        array.add(new LuckyWheelOverlay.WheelOption(Game.f8589i.itemManager.generateItemByRarity(randomXS1283, RarityType.RARE, 1.0f, 8.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, false, inventoryStatistics), 8.0f));
        if (((LuckyWheelOverlay.WheelOption[]) array.items)[array.size - 1].item.getItem().getType() == itemType && ((TileItem) ((LuckyWheelOverlay.WheelOption[]) array.items)[array.size - 1].item.getItem()).tile.type == TileType.PLATFORM) {
            ((LuckyWheelOverlay.WheelOption[]) array.items)[array.size - 1].item.setCount(4);
        }
        array.add(new LuckyWheelOverlay.WheelOption(Game.f8589i.itemManager.generateItemByRarity(randomXS1283, RarityType.VERY_RARE, 1.0f, 4.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, false, inventoryStatistics), 6.0f));
        if (((LuckyWheelOverlay.WheelOption[]) array.items)[array.size - 1].item.getItem().getType() == itemType && ((TileItem) ((LuckyWheelOverlay.WheelOption[]) array.items)[array.size - 1].item.getItem()).tile.type == TileType.PLATFORM) {
            ((LuckyWheelOverlay.WheelOption[]) array.items)[array.size - 1].item.setCount(3);
        }
        array.add(new LuckyWheelOverlay.WheelOption(Game.f8589i.itemManager.generateItemByRarity(randomXS1283, RarityType.EPIC, 1.0f, 2.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, false, inventoryStatistics), 4.0f));
        if (((LuckyWheelOverlay.WheelOption[]) array.items)[array.size - 1].item.getItem().getType() == itemType && ((TileItem) ((LuckyWheelOverlay.WheelOption[]) array.items)[array.size - 1].item.getItem()).tile.type == TileType.PLATFORM) {
            i = 3;
            ((LuckyWheelOverlay.WheelOption[]) array.items)[array.size - 1].item.setCount(3);
        } else {
            i = 3;
        }
        Array array2 = new Array(LuckyWheelOverlay.WheelOption.class);
        Array<Research> instances = Game.f8589i.researchManager.getInstances();
        Array array3 = new Array(Research.ResearchLevel.class);
        for (int i8 = 0; i8 < instances.size; i8++) {
            Research research = instances.items[i8];
            if (!research.isMaxNormalLevel() && Game.f8589i.researchManager.canStartResearching(research, true)) {
                if (!Game.f8589i.researchManager.canStartResearching(research, false)) {
                    array3.add(research.levels[research.installedLevel]);
                }
            }
        }
        if (array3.size > 0) {
            for (int i9 = i2 - 1; i9 >= 0; i9--) {
                array3.swap(i9, randomXS1282.nextInt(i9 + 1));
            }
            randomXS128 = randomXS1282;
            for (int i10 = 0; i10 < StrictMath.min(array3.size, 5); i10++) {
                int i11 = 0;
                while (true) {
                    T[] tArr = array3.items;
                    if (i11 < ((Research.ResearchLevel[]) tArr)[i10].price.size) {
                        ItemStack itemStack = ((Research.ResearchLevel[]) tArr)[i10].price.items[i11];
                        if (getItemsCount(itemStack.getItem()) < itemStack.getCount() && (itemStack.getItem().getType() == ItemType.GREEN_PAPER || itemStack.getItem().getType() == ItemType.RESOURCE || itemStack.getItem().getType() == ItemType.BLUEPRINT)) {
                            array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(itemStack), 6.0f - (itemStack.getItem().getRarity().ordinal() * 1.0f)));
                        }
                        i11++;
                    }
                }
            }
            f = 6.0f;
            f2 = 1.0f;
            progressManager = this;
        } else {
            f = 6.0f;
            f2 = 1.0f;
            progressManager = this;
            randomXS128 = randomXS1282;
        }
        StatisticsManager statisticsManager = Game.f8589i.statisticsManager;
        StatisticsType statisticsType = StatisticsType.BDFTPG;
        if (statisticsManager.getAllTime(statisticsType) > 0.0d) {
            i3 = 10;
            array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.BIT_DUST, 10), 4.0f));
            array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.BIT_DUST, 15), 2.5f));
        } else {
            i3 = 10;
        }
        if (Game.f8589i.statisticsManager.getAllTime(statisticsType) > 0.0d && progressManager.getResources(ResourceType.INFIAR) < 5000) {
            array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.RESOURCE_INFIAR, CoreTile.FIXED_LEVEL_XP_REQUIREMENT), f));
            f3 = 2.0f;
            array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.RESOURCE_INFIAR, 2000), 2.0f));
        } else {
            f3 = 2.0f;
        }
        array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.F_CASE.create(CaseType.ORANGE, false, false), 2), 3.0f));
        array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.F_CASE.create(CaseType.CYAN, false, false), 1), f3));
        array2.add(new LuckyWheelOverlay.WheelOption(null, 7.0f, 2));
        array2.add(new LuckyWheelOverlay.WheelOption(null, 3.0f, i));
        array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.LOOT_BOOST, 1), 5.0f));
        array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.RESEARCH_TOKEN, 2), f2));
        array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.RESEARCH_TOKEN, 1), 3.0f));
        TileManager tileManager = Game.f8589i.tileManager;
        TileType tileType2 = TileType.CORE;
        RandomXS128 randomXS1284 = FastRandom.random;
        array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.F_TILE.create(((CoreTile.CoreTileFactory) tileManager.getFactory(tileType2)).createRandom(0.5f, randomXS1284)), 1), f3));
        if (randomXS1284.nextFloat() < 0.15f) {
            array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(Item.C1543D.F_TILE.create(((CoreTile.CoreTileFactory) Game.f8589i.tileManager.getFactory(tileType2)).createRandom(0.7f, randomXS1284)), 1), f2));
        }
        TileItem create = Item.C1543D.F_TILE.create(Game.f8589i.tileManager.getFactory(TileType.ROAD).create());
        if (progressManager.getItemsCount(create) < 50) {
            array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(create, i3), f3));
        }
        if (!Game.f8589i.enemyManager.isEnemyTypeNewForPlayer(EnemyType.BROOT_BOSS) && !Game.f8589i.enemyManager.isEnemyTypeNewForPlayer(EnemyType.SNAKE_BOSS_HEAD) && !Game.f8589i.enemyManager.isEnemyTypeNewForPlayer(EnemyType.METAPHOR_BOSS) && !Game.f8589i.enemyManager.isEnemyTypeNewForPlayer(EnemyType.MOBCHAIN_BOSS_HEAD) && !Game.f8589i.enemyManager.isEnemyTypeNewForPlayer(EnemyType.CONSTRUCTOR_BOSS)) {
            for (BossTileType bossTileType : BossTileType.values) {
                if (bossTileType != BossTileType.CUSTOM && bossTileType != BossTileType.ONE) {
                    TileItem create2 = Item.C1543D.F_TILE.create(((BossTile.BossTileFactory) Game.f8589i.tileManager.getFactory(TileType.BOSS)).create(bossTileType));
                    if (progressManager.getItemsCount(create2) == 0) {
                        array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(create2, 1), 1.5f));
                    }
                }
            }
        }
        for (BossType bossType : BossType.values) {
            int i12 = C18406.f9982a[bossType.ordinal()];
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != i) {
                        if (i12 != 4) {
                            if (i12 != 5) {
                                enemyType = null;
                            } else {
                                enemyType = EnemyType.CONSTRUCTOR_BOSS;
                            }
                        } else {
                            enemyType = EnemyType.MOBCHAIN_BOSS_HEAD;
                        }
                    } else {
                        enemyType = EnemyType.METAPHOR_BOSS;
                    }
                } else {
                    enemyType = EnemyType.SNAKE_BOSS_HEAD;
                }
            } else {
                enemyType = EnemyType.BROOT_BOSS;
            }
            if (enemyType != null && !Game.f8589i.enemyManager.isEnemyTypeNewForPlayer(enemyType)) {
                BossTile create3 = ((BossTile.BossTileFactory) Game.f8589i.tileManager.getFactory(TileType.BOSS)).create(BossTileType.ONE);
                create3.oneBossType = bossType;
                TileItem create4 = Item.C1543D.F_TILE.create(create3);
                if (progressManager.getItemsCount(create4) == 0) {
                    array2.add(new LuckyWheelOverlay.WheelOption(new ItemStack(create4, 1), 1.5f));
                }
            }
        }
        Array<LuckyWheelOverlay.WheelOption> array4 = new Array<>(LuckyWheelOverlay.WheelOption.class);
        if (randomXS128.nextFloat() < 0.33f) {
            i4 = 3;
        } else {
            i4 = 2;
        }
        for (int i13 = array2.size - 1; i13 >= 0; i13--) {
            array2.swap(i13, randomXS128.nextInt(i13 + 1));
        }
        int i14 = 0;
        while (array4.size < i4 && array2.size != 0) {
            LuckyWheelOverlay.WheelOption wheelOption = (LuckyWheelOverlay.WheelOption) array2.removeIndex(0);
            ItemStack itemStack2 = wheelOption.item;
            if (itemStack2 != null && itemStack2.getItem().getRarity() == RarityType.LEGENDARY) {
                if (i14 < 2) {
                    i14++;
                }
            } else if (array4.size == i4 - 1 && i14 == 0) {
                int i15 = 0;
                while (true) {
                    if (i15 >= array2.size) {
                        break;
                    }
                    T[] tArr2 = array2.items;
                    if (((LuckyWheelOverlay.WheelOption[]) tArr2)[i15].item != null && ((LuckyWheelOverlay.WheelOption[]) tArr2)[i15].item.getItem().getRarity() == RarityType.LEGENDARY) {
                        wheelOption = (LuckyWheelOverlay.WheelOption) array2.removeIndex(i15);
                        break;
                    }
                    i15++;
                }
            }
            array4.add(wheelOption);
        }
        for (int i16 = array.size - 1; i16 >= 0; i16--) {
            array.swap(i16, randomXS128.nextInt(i16 + 1));
        }
        while (array4.size < 8) {
            LuckyWheelOverlay.WheelOption wheelOption2 = (LuckyWheelOverlay.WheelOption) array.removeIndex(0);
            ItemStack itemStack3 = wheelOption2.item;
            if (itemStack3 != null && itemStack3.getItem().getRarity() == RarityType.LEGENDARY) {
                if (i14 < i) {
                    i14++;
                }
            }
            array4.add(wheelOption2);
            if (array4.size == 7 && randomXS128.nextFloat() < 0.5f) {
                int i17 = 0;
                while (true) {
                    if (i17 < array4.size) {
                        if (array4.items[i17].wheelMultiplier != 0) {
                            z = true;
                            break;
                        }
                        i17++;
                    } else {
                        z = false;
                        break;
                    }
                }
                if (!z) {
                    array4.add(new LuckyWheelOverlay.WheelOption(null, 5.0f, 2));
                }
            }
        }
        for (int i18 = 0; i18 < array4.size; i18++) {
            LuckyWheelOverlay.WheelOption wheelOption3 = array4.items[i18];
            ItemStack itemStack4 = wheelOption3.item;
            if (itemStack4 != null) {
                if (itemStack4.getItem().getType() == ItemType.GREEN_PAPER && wheelOption3.item.getCount() > 50000) {
                    wheelOption3.item.setCount(50000);
                } else if (wheelOption3.item.getItem().getType() == ItemType.RESOURCE && wheelOption3.item.getCount() > 10000) {
                    wheelOption3.item.setCount(10000);
                } else if (wheelOption3.item.getItem().getType() == ItemType.BLUEPRINT && wheelOption3.item.getCount() > 1000) {
                    wheelOption3.item.setCount(CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
                }
            }
        }
        array4.sort(new Comparator() { // from class: com.prineside.tdi2.managers.x
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m21542h;
                m21542h = ProgressManager.m21542h((LuckyWheelOverlay.WheelOption) obj, (LuckyWheelOverlay.WheelOption) obj2);
                return m21542h;
            }
        });
        int i19 = 0;
        while (true) {
            int i20 = array4.size;
            if (i19 < i20 / 2) {
                array4.swap(i19, (i20 - 1) - i19);
                i19 += 2;
            } else {
                progressManager.f9959G = array4;
                progressManager.luckyWheelLastRotation = 0.0f;
                progressManager.luckyWheelLastWeaponAngle = 0.0f;
                return;
            }
        }
    }

    public void generateNewShopOffers() {
        this.f9977z = new Array<>(ShopOffer.class);
        Array array = new Array(ShopOffer.class);
        array.add(new ShopOffer(new ItemStack(Item.C1543D.ACCELERATOR, 150), new ItemStack(Item.C1543D.RESEARCH_TOKEN, 1)));
        array.add(new ShopOffer(new ItemStack(Item.C1543D.ACCELERATOR, 150), new ItemStack(Item.C1543D.RESEARCH_TOKEN, 1)));
        int i = 0;
        while (true) {
            ResourceType[] resourceTypeArr = ResourceType.values;
            if (i >= resourceTypeArr.length) {
                break;
            }
            getResources(resourceTypeArr[i]);
            i++;
        }
        array.shuffle();
        for (int i2 = 0; i2 < 6; i2++) {
            this.f9977z.add(((ShopOffer[]) array.items)[i2]);
        }
    }

    public Color getDifficultyModeColor(DifficultyMode difficultyMode) {
        int i = C18406.f9983b[difficultyMode.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return Color.WHITE;
                }
                return MaterialColor.AMBER.P500;
            }
            return MaterialColor.LIGHT_BLUE.P500;
        }
        return MaterialColor.LIGHT_GREEN.P500;
    }

    public int getDifficultyModeDiffMultiplier(DifficultyMode difficultyMode) {
        int i;
        int i2 = C18406.f9983b[difficultyMode.ordinal()];
        if (i2 != 1) {
            if (i2 != 3) {
                i = 100;
            } else {
                i = MathUtils.round(((float) Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.ENDLESS_MODE_DIFFICULTY)) * 100.0f);
            }
        } else {
            i = 92;
        }
        return clampModeDifficulty(difficultyMode, i, Game.f8589i.gameValueManager.getSnapshot());
    }

    public String getDifficultyName(DifficultyMode difficultyMode) {
        return Game.f8589i.localeManager.i18n.get("difficulty_mode_" + difficultyMode);
    }

    public int getEncryptedCasesCount() {
        DelayedRemovalArray<ItemStack> itemsByType = getItemsByType(ItemType.CASE);
        int i = 0;
        for (int i2 = 0; i2 < itemsByType.size; i2++) {
            if (((CaseItem) itemsByType.items[i2].getItem()).encrypted) {
                i += itemsByType.items[i2].getCount();
            }
        }
        return i;
    }

    public InventoryStatistics getInventoryStatistics() {
        if (this.f9976y) {
            this.f9975x.reset();
            DelayedRemovalArray<ItemStack> itemsByType = getItemsByType(ItemType.TILE);
            for (int i = 0; i < itemsByType.size; i++) {
                this.f9975x.m21539b((TileItem) itemsByType.items[i].getItem());
            }
            this.f9976y = false;
        }
        return this.f9975x;
    }

    public Array<LuckyWheelOverlay.WheelOption> getLuckyWheelOptions() {
        Array<LuckyWheelOverlay.WheelOption> array = this.f9959G;
        if (array == null || array.size < 2) {
            generateNewLuckyWheel();
        }
        return this.f9959G;
    }

    public int getLuckyWheelRespinPriceAccelerators() {
        if (this.luckyWheelSpinAvailable) {
            return 0;
        }
        int i = getLuckyWheelOptions().size;
        if (i == 7) {
            return 10;
        }
        if (i == 6) {
            return 20;
        }
        if (i == 5) {
            return 30;
        }
        if (i == 4) {
            return 40;
        }
        if (i != 3) {
            return 0;
        }
        return 50;
    }

    public int getLuckyWheelRespinPriceTokens() {
        if (this.luckyWheelSpinAvailable) {
            return 0;
        }
        int i = getLuckyWheelOptions().size;
        if (i != 7 && i != 6) {
            return 0;
        }
        return 2;
    }

    public String getRarityName(RarityType rarityType) {
        return Game.f8589i.localeManager.i18n.get(f9951L[rarityType.ordinal()]);
    }

    public IssuedItems getRegularRewardingAdItems(int i) {
        float allTime = (float) Game.f8589i.statisticsManager.getAllTime(StatisticsType.PT);
        double allTime2 = (Game.f8589i.statisticsManager.getAllTime(StatisticsType.RVW) / 1000.0d) + 1.0d;
        if (allTime2 > 2.0d) {
            allTime2 = 2.0d;
        }
        double d = allTime;
        Double.isNaN(d);
        double d2 = (allTime2 / d) * 720.0d;
        IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.REWARD_VIDEO, Game.getTimestampSeconds());
        double allTime3 = (float) Game.f8589i.statisticsManager.getAllTime(StatisticsType.GPG);
        Double.isNaN(allTime3);
        int i2 = (int) (allTime3 * d2);
        if (i2 < 300) {
            i2 = 300;
        }
        issuedItems.items.add(new ItemStack(Item.C1543D.GREEN_PAPER, i2));
        if (this.f9962J == null) {
            this.f9962J = new ItemStack[]{new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.BLUEPRINT_AGILITY, 2), new ItemStack(Item.C1543D.BLUEPRINT_SPECIAL_I, 1), new ItemStack(Item.C1543D.BLUEPRINT_POWER, 2), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.BLUEPRINT_EXPERIENCE, 2), new ItemStack(Item.C1543D.ACCELERATOR, 1), new ItemStack(Item.C1543D.CASE_KEY_PURPLE, 1), new ItemStack(Item.C1543D.LUCKY_SHOT_TOKEN, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.BLUEPRINT_EXPERIENCE, 2), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.F_RANDOM_TILE.create(1.0f), 1), new ItemStack(Item.C1543D.ABILITY_TOKEN, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.RANDOM_TELEPORT, 1), new ItemStack(Item.C1543D.BLUEPRINT_AGILITY, 2), new ItemStack(Item.C1543D.ACCELERATOR, 1), new ItemStack(Item.C1543D.CASE_KEY_ORANGE, 1), new ItemStack(Item.C1543D.BLUEPRINT_AGILITY, 2), new ItemStack(Item.C1543D.F_RANDOM_TILE.create(1.0f), 1), new ItemStack(Item.C1543D.BLUEPRINT_POWER, 2), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.BLUEPRINT_EXPERIENCE, 2), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.BIT_DUST, 3), new ItemStack(Item.C1543D.CASE_KEY_PURPLE, 1), new ItemStack(Item.C1543D.BIT_DUST, 3), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.BLUEPRINT_POWER, 2), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.ACCELERATOR, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.CASE_KEY_CYAN, 1), new ItemStack(Item.C1543D.RANDOM_TELEPORT, 1), new ItemStack(Item.C1543D.F_RANDOM_TILE.create(1.0f), 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.LUCKY_SHOT_TOKEN, 1), new ItemStack(Item.C1543D.BLUEPRINT_EXPERIENCE, 2), new ItemStack(Item.C1543D.BLUEPRINT_POWER, 2), new ItemStack(Item.C1543D.CASE_KEY_PURPLE, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.BLUEPRINT_AGILITY, 2), new ItemStack(Item.C1543D.BLUEPRINT_EXPERIENCE, 2), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.ACCELERATOR, 1), new ItemStack(Item.C1543D.ABILITY_TOKEN, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.CASE_KEY_ORANGE, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.F_RANDOM_TILE.create(1.0f), 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.BLUEPRINT_AGILITY, 2), new ItemStack(Item.C1543D.BLUEPRINT_SPECIAL_I, 1), new ItemStack(Item.C1543D.BLUEPRINT_POWER, 2), new ItemStack(Item.C1543D.CASE_KEY_PURPLE, 1), new ItemStack(Item.C1543D.ACCELERATOR, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.RANDOM_TELEPORT, 1), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.BLUEPRINT_SPECIAL_II, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.BLUEPRINT_EXPERIENCE, 2), new ItemStack(Item.C1543D.CASE_KEY_ORANGE, 1), new ItemStack(Item.C1543D.LUCKY_SHOT_TOKEN, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.BLUEPRINT_AGILITY, 2), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.BIT_DUST, 3), new ItemStack(Item.C1543D.ACCELERATOR, 1), new ItemStack(Item.C1543D.CASE_KEY_PURPLE, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.F_RANDOM_TILE.create(1.0f), 1), new ItemStack(Item.C1543D.BIT_DUST, 3), new ItemStack(Item.C1543D.CASE_KEY_CYAN, 1), new ItemStack(Item.C1543D.ACCELERATOR, 1), new ItemStack(Item.C1543D.BLUEPRINT_EXPERIENCE, 2), new ItemStack(Item.C1543D.BLUEPRINT_POWER, 2), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.F_RANDOM_TILE.create(1.0f), 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.CASE_KEY_PURPLE, 1), new ItemStack(Item.C1543D.BLUEPRINT_AGILITY, 2), new ItemStack(Item.C1543D.BLUEPRINT_AGILITY, 2), new ItemStack(Item.C1543D.BIT_DUST, 3), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.ABILITY_TOKEN, 1), new ItemStack(Item.C1543D.ACCELERATOR, 1), new ItemStack(Item.C1543D.BLUEPRINT_EXPERIENCE, 2), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.LUCKY_SHOT_TOKEN, 1), new ItemStack(Item.C1543D.RANDOM_TELEPORT, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.CASE_KEY_ORANGE, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.BLUEPRINT_SPECIAL_I, 1), new ItemStack(Item.C1543D.F_RANDOM_TILE.create(1.0f), 1), new ItemStack(Item.C1543D.CASE_KEY_PURPLE, 1), new ItemStack(Item.C1543D.BIT_DUST, 3), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.ACCELERATOR, 1), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.BLUEPRINT_EXPERIENCE, 2), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.BLUEPRINT_EXPERIENCE, 2), new ItemStack(Item.C1543D.CASE_KEY_PURPLE, 1), new ItemStack(Item.C1543D.BLUEPRINT_AGILITY, 2), new ItemStack(Item.C1543D.BLUEPRINT_SPECIAL_II, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.CASE_KEY_BLUE, 1), new ItemStack(Item.C1543D.F_RANDOM_TILE.create(1.0f), 1), new ItemStack(Item.C1543D.BLUEPRINT_POWER, 2), new ItemStack(Item.C1543D.ACCELERATOR, 1), new ItemStack(Item.C1543D.CASE_KEY_CYAN, 1), new ItemStack(Item.C1543D.BIT_DUST, 5), new ItemStack(Item.C1543D.BLUEPRINT_AGILITY, 2), new ItemStack(Item.C1543D.RESEARCH_TOKEN, 1)};
        }
        ItemStack[] itemStackArr = this.f9962J;
        ItemStack itemStack = itemStackArr[i % itemStackArr.length];
        if (itemStack != null) {
            if (itemStack.getItem().getType() == ItemType.BIT_DUST) {
                if (Game.f8589i.progressManager.difficultyModeAvailable(DifficultyMode.ENDLESS_I)) {
                    issuedItems.items.add(new ItemStack(Item.C1543D.F_RANDOM_TILE.create(1.0f), 1));
                } else {
                    itemStack.setCount(MathUtils.round(itemStack.getCount() * ((float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.BIT_DUST_DROP_RATE))));
                    issuedItems.items.add(itemStack);
                }
            } else {
                issuedItems.items.add(itemStack);
            }
        }
        StatisticsType[] statisticsTypeArr = {StatisticsType.RG_I, StatisticsType.RG_T, StatisticsType.RG_M, StatisticsType.RG_V, StatisticsType.RG_S};
        for (int i3 = 0; i3 < 5; i3++) {
            StatisticsType statisticsType = statisticsTypeArr[i3];
            double allTime4 = (float) Game.f8589i.statisticsManager.getAllTime(statisticsType);
            Double.isNaN(allTime4);
            int i4 = (int) (allTime4 * d2 * 1.5d);
            if (i4 > 5) {
                ResourceItem resourceItem = Item.C1543D.RESOURCE_SCALAR;
                int i5 = C18406.f9986e[statisticsType.ordinal()];
                if (i5 != 1) {
                    if (i5 != 2) {
                        if (i5 != 3) {
                            if (i5 != 4) {
                                if (i5 == 5) {
                                    resourceItem = Item.C1543D.RESOURCE_INFIAR;
                                }
                            } else {
                                resourceItem = Item.C1543D.RESOURCE_TENSOR;
                            }
                        } else {
                            resourceItem = Item.C1543D.RESOURCE_MATRIX;
                        }
                    } else {
                        resourceItem = Item.C1543D.RESOURCE_VECTOR;
                    }
                } else {
                    resourceItem = Item.C1543D.RESOURCE_SCALAR;
                }
                issuedItems.items.add(new ItemStack(resourceItem, i4));
            }
        }
        return issuedItems;
    }

    public Array<ShopOffer> getShopOffers() {
        if (this.f9977z == null) {
            generateNewShopOffers();
        }
        return this.f9977z;
    }

    public VideoAdViewBonus[] getVideoAdViewBonuses() {
        if (this.videoAdViewBonuses == null) {
            CaseItem.CaseItemFactory caseItemFactory = Item.C1543D.F_CASE;
            CaseType caseType = CaseType.CYAN;
            this.videoAdViewBonuses = new VideoAdViewBonus[]{new VideoAdViewBonus(30, new ItemStack(Item.C1543D.LOOT_BOOST, 1)), new VideoAdViewBonus(70, new ItemStack(caseItemFactory.create(caseType, false, false), 1)), new VideoAdViewBonus(110, new ItemStack(Item.C1543D.ACCELERATOR, 30)), new VideoAdViewBonus(150, new ItemStack(Item.C1543D.RESEARCH_TOKEN, 1)), new VideoAdViewBonus(HttpStatus.SC_OK, new ItemStack(Item.C1543D.ACCELERATOR, 50)), new VideoAdViewBonus(250, new ItemStack(Item.C1543D.F_CASE.create(caseType, false, false), 2)), new VideoAdViewBonus(300, new ItemStack(Item.C1543D.ACCELERATOR, 300), true)};
        }
        return this.videoAdViewBonuses;
    }

    public void giveDoubleGainIfNecessary() {
        if (Gdx.app.getType() == Application.ApplicationType.Desktop && Game.f8589i.actionResolver.eligibleForFreeDoubleGain() && !this.f9969r) {
            Logger.log("ProgressManager", "eligible for free DG, reward not received");
            if (isDoubleGainEnabled() && isDoubleGainPermanent()) {
                IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.PURCHASE, Game.getTimestampSeconds());
                issuedItems.items.add(new ItemStack(Item.C1543D.GREEN_PAPER, 30000));
                issuedItems.items.add(new ItemStack(Item.C1543D.ACCELERATOR, 300));
                issuedItems.items.add(new ItemStack(Item.C1543D.RARITY_BOOST, 10));
                issuedItems.items.add(new ItemStack(Item.C1543D.LUCKY_SHOT_TOKEN, 10));
                addIssuedPrizes(issuedItems, true);
                addItems(issuedItems.items);
                showNewlyIssuedPrizesPopup();
                Game game = Game.f8589i;
                game.uiManager.notifications.add("Double Gain was already enabled, please take these items instead. Thank you for playing Infinitode 2 on Steam!", game.assetManager.getDrawable("icon-check"), MaterialColor.LIGHT_GREEN.P800, StaticSoundType.SUCCESS);
            } else {
                requireDelayedSave();
                enableDoubleGainPermanently();
                Game game2 = Game.f8589i;
                game2.uiManager.notifications.add("Double Gain enabled, thank you for playing Infinitode 2 on Steam!", game2.assetManager.getDrawable("icon-check"), MaterialColor.LIGHT_GREEN.P800, StaticSoundType.SUCCESS);
            }
            this.f9969r = true;
        }
    }

    public void givePendingBonuses() {
        if (this.f9954A && !this.f9958E && Game.f8589i.authManager.getInvitedById() != null) {
            BasicLevelManager basicLevelManager = Game.f8589i.basicLevelManager;
            if (basicLevelManager.isOpened(basicLevelManager.getLevel("2.1"))) {
                CaseItem.CaseItemFactory caseItemFactory = Item.C1543D.F_CASE;
                CaseType caseType = CaseType.PURPLE;
                addItems(caseItemFactory.create(caseType, false, true), 1);
                IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.SIGNED_UP_BY_INVITE, Game.getTimestampSeconds());
                issuedItems.items.add(new ItemStack(Item.C1543D.F_CASE.create(caseType, false, true), 1));
                addIssuedPrizes(issuedItems, true);
                this.f9958E = true;
                save();
            }
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void postRender(float f) {
        if (!this.f9954A) {
            return;
        }
        if (this.f9955B) {
            save();
        }
        float f2 = this.f9957D + f;
        this.f9957D = f2;
        if (f2 > 30.0f && this.f9956C) {
            this.f9957D = 0.0f;
            save();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(33:184|185|73|(0)|75|(0)|77|(0)|89|90|91|92|93|(2:94|95)|96|(0)|140|100|101|102|104|105|106|(0)|135|110|111|(0)|113|114|115|116|117) */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0430, code lost:
        r8 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0431, code lost:
        com.prineside.tdi2.Logger.error("ProgressManager", "failed to load lucky spin handle seeds");
        r10 = -1;
     */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0383 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0320 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x034f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0465 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void reload() {
        /*
            Method dump skipped, instructions count: 1239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.managers.ProgressManager.reload():void");
    }

    public void removeAllItems() {
        this.f9964b.clear();
        this.f9966k.clear();
        this.f9967p.clear();
        this.f9965d.clear();
    }

    public boolean removeGreenPapers(int i) {
        if (i == 0) {
            return true;
        }
        boolean removeItems = removeItems(Item.C1543D.GREEN_PAPER, i);
        if (removeItems) {
            Game.f8589i.statisticsManager.registerDelta(StatisticsType.GPS, i);
        }
        return removeItems;
    }

    public void removeListener(ProgressManagerListener progressManagerListener) {
        if (progressManagerListener != null) {
            this.f9960H.removeValue(progressManagerListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void save() {
        String str;
        String str2;
        String str3;
        CaseType[] caseTypeArr;
        String str4;
        if (Config.isHeadless()) {
            return;
        }
        m21545e();
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        PreferencesManager.SafePreferences preferencesManager2 = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_STATISTICS);
        preferencesManager.set("difficultyMode", this.f9970s.name());
        String str5 = "true";
        if (this.f9968q) {
            str = "true";
        } else {
            str = "false";
        }
        preferencesManager.set("doubleGainEnabled", str);
        if (this.f9969r) {
            str2 = "true";
        } else {
            str2 = "false";
        }
        preferencesManager.set("steamRewardReceived", str2);
        if (this.f9958E) {
            str3 = "true";
        } else {
            str3 = "false";
        }
        preferencesManager.set("bonusGivenForRegByInvite", str3);
        preferencesManager.set("lootBoostTimeLeft", String.valueOf(this.lootBoostTimeLeft));
        preferencesManager.set("videosWatchedForDoubleGain", String.valueOf(this.videosWatchedForDoubleGain));
        preferencesManager.set("videosWatchedForLuckyShot", String.valueOf(this.videosWatchedForLuckyShot));
        preferencesManager.set("tempDoubleGainStartDate", String.valueOf(this.f9972u));
        preferencesManager.set("tempDoubleGainEndDate", String.valueOf(this.f9973v));
        Json json = new Json(JsonWriter.OutputType.minimal);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeArrayStart();
        int i = 0;
        for (int i2 = 0; i2 < this.f9963a.size; i2++) {
            json.writeObjectStart();
            this.f9963a.get(i2).toJson(json);
            json.writeObjectEnd();
        }
        json.writeArrayEnd();
        preferencesManager2.set("issuedPrizes", stringWriter.toString());
        Json json2 = new Json(JsonWriter.OutputType.minimal);
        StringWriter stringWriter2 = new StringWriter();
        json2.setWriter(stringWriter2);
        json2.writeArrayStart();
        for (int i3 = 0; i3 < this.f9964b.size; i3++) {
            json2.writeObjectStart();
            this.f9964b.items[i3].toJson(json2);
            json2.writeObjectEnd();
        }
        json2.writeArrayEnd();
        preferencesManager.set("items", stringWriter2.toString());
        JsonWriter.OutputType outputType = JsonWriter.OutputType.minimal;
        Json json3 = new Json(outputType);
        StringWriter stringWriter3 = new StringWriter();
        json3.setWriter(stringWriter3);
        json3.writeObjectStart();
        if (this.decryptingCase != null) {
            json3.writeObjectStart("item");
            this.decryptingCase.toJson(json3);
            json3.writeObjectEnd();
            json3.writeValue("timeLeft", Float.valueOf(this.decryptingCaseTimeLeft));
        }
        json3.writeObjectEnd();
        preferencesManager.set("decryptingCase", stringWriter3.toString());
        Json json4 = new Json(outputType);
        StringWriter stringWriter4 = new StringWriter();
        json4.setWriter(stringWriter4);
        json4.writeArrayStart();
        for (int i4 = 0; i4 < this.decryptingCaseQueue.size; i4++) {
            json4.writeObjectStart();
            this.decryptingCaseQueue.items[i4].toJson(json4);
            json4.writeObjectEnd();
        }
        json4.writeArrayEnd();
        preferencesManager.set("decryptingCaseQueue", stringWriter4.toString());
        Json json5 = new Json(JsonWriter.OutputType.minimal);
        StringWriter stringWriter5 = new StringWriter();
        json5.setWriter(stringWriter5);
        json5.writeArrayStart();
        for (CaseType caseType : CaseType.values) {
            json5.writeObjectStart();
            json5.writeValue("type", caseType.name());
            json5.writeValue("stateA", Long.valueOf(this.caseRandoms[caseType.ordinal()].getState(0)));
            json5.writeValue("stateB", Long.valueOf(this.caseRandoms[caseType.ordinal()].getState(1)));
            json5.writeObjectEnd();
        }
        json5.writeArrayEnd();
        preferencesManager.set("caseRandoms", stringWriter5.toString());
        JsonWriter.OutputType outputType2 = JsonWriter.OutputType.minimal;
        Json json6 = new Json(outputType2);
        StringWriter stringWriter6 = new StringWriter();
        json6.setWriter(stringWriter6);
        json6.writeObjectStart();
        json6.writeValue("stateA", Long.valueOf(this.otherItemsRandom.getState(0)));
        json6.writeValue("stateB", Long.valueOf(this.otherItemsRandom.getState(1)));
        json6.writeObjectEnd();
        preferencesManager.set("otherItemsRandom", stringWriter6.toString());
        Json json7 = new Json(outputType2);
        StringWriter stringWriter7 = new StringWriter();
        json7.setWriter(stringWriter7);
        json7.writeArrayStart();
        Array.ArrayIterator<CraftingQueueItem> it = this.craftingQueue.iterator();
        while (it.hasNext()) {
            json7.writeObjectStart();
            it.next().toJson(json7);
            json7.writeObjectEnd();
        }
        json7.writeArrayEnd();
        preferencesManager.set("craftingQueue", stringWriter7.toString());
        try {
            Json json8 = new Json(JsonWriter.OutputType.minimal);
            StringWriter stringWriter8 = new StringWriter();
            json8.setWriter(stringWriter8);
            json8.writeArrayStart();
            Array<LuckyWheelOverlay.WheelOption> luckyWheelOptions = getLuckyWheelOptions();
            for (int i5 = 0; i5 < luckyWheelOptions.size; i5++) {
                json8.writeObjectStart();
                luckyWheelOptions.items[i5].toJson(json8);
                json8.writeObjectEnd();
            }
            json8.writeArrayEnd();
            preferencesManager.set("luckyWheelOptions", stringWriter8.toString());
        } catch (Exception e) {
            Logger.error("ProgressManager", "failed to save luckyWheelOptions", e);
        }
        if (this.luckyWheelSpinAvailable) {
            str4 = "true";
        } else {
            str4 = "false";
        }
        preferencesManager.set("luckyWheelSpinAvailable", str4);
        if (!this.luckyWheelSpinInProgress) {
            str5 = "false";
        }
        preferencesManager.set("luckyWheelSpinInProgress", str5);
        preferencesManager.set("luckyWheelLastRotation", String.valueOf(this.luckyWheelLastRotation));
        preferencesManager.set("luckyWheelLastWeaponAngle", String.valueOf(this.luckyWheelLastWeaponAngle));
        preferencesManager.set("luckyWheelWR1", String.valueOf(this.luckyWheelWheelRandom.getState(0)));
        preferencesManager.set("luckyWheelWR2", String.valueOf(this.luckyWheelWheelRandom.getState(1)));
        preferencesManager.set("luckyWheelSR1", String.valueOf(this.luckyWheelSpinRandom.getState(0)));
        preferencesManager.set("luckyWheelSR2", String.valueOf(this.luckyWheelSpinRandom.getState(1)));
        Json json9 = new Json(JsonWriter.OutputType.minimal);
        StringWriter stringWriter9 = new StringWriter();
        json9.setWriter(stringWriter9);
        json9.writeArrayStart();
        int i6 = 0;
        while (true) {
            IntArray intArray = this.f9974w;
            if (i6 >= intArray.size) {
                break;
            }
            json9.writeValue(Integer.valueOf(intArray.items[i6]));
            i6++;
        }
        json9.writeArrayEnd();
        preferencesManager.set("handledConditionalCompensations", stringWriter9.toString());
        preferencesManager.flush();
        preferencesManager2.flush();
        this.f9955B = false;
        this.f9956C = false;
        this.f9960H.begin();
        while (true) {
            DelayedRemovalArray<ProgressManagerListener> delayedRemovalArray = this.f9960H;
            if (i < delayedRemovalArray.size) {
                delayedRemovalArray.get(i).saved();
                i++;
            } else {
                delayedRemovalArray.end();
                return;
            }
        }
    }

    public void saveIfRequired() {
        if (this.f9956C || this.f9955B) {
            save();
        }
    }

    public void setDifficultyMode(DifficultyMode difficultyMode) {
        this.f9970s = difficultyMode;
        this.f9956C = true;
        Game.f8589i.gameValueManager.requireRecalculation();
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.ProgressManager.4
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                ProgressManager.this.reload();
            }
        });
        Game.f8589i.gameValueManager.addListener(this.f9961I);
        Gdx.app.addLifecycleListener(new LifecycleListener() { // from class: com.prineside.tdi2.managers.ProgressManager.5
            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                ProgressManager.this.saveIfRequired();
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
            }
        });
        this.f9954A = true;
        reload();
    }

    public void startCrafting(CraftRecipe craftRecipe, Array<Item> array, int i) {
        if (craftRecipe != null) {
            if (craftRecipe.ingredients.size == array.size) {
                if (i >= 0 && i <= craftRecipe.getMaxQueueStackWithGVs()) {
                    boolean areF2pTimersDisabled = areF2pTimersDisabled();
                    if (!areF2pTimersDisabled && this.craftingQueue.size >= getMaxCraftQueueSize()) {
                        Game game = Game.f8589i;
                        game.uiManager.notifications.add(game.localeManager.i18n.get("crafting_queue_is_full"), Game.f8589i.assetManager.getDrawable("icon-exclamation-triangle"), MaterialColor.ORANGE.P800, StaticSoundType.FAIL);
                        return;
                    }
                    int i2 = 0;
                    int i3 = 0;
                    while (true) {
                        Array<CraftRecipe.Ingredient> array2 = craftRecipe.ingredients;
                        if (i3 < array2.size) {
                            CraftRecipe.Ingredient ingredient = array2.items[i3];
                            Item[] itemArr = array.items;
                            if (itemArr[i3] != null) {
                                if (ingredient.fits(itemArr[i3])) {
                                    int countWithGVs = ingredient.getCountWithGVs() * i;
                                    int itemsCount = Game.f8589i.progressManager.getItemsCount(array.items[i3]);
                                    if (itemsCount >= countWithGVs) {
                                        i3++;
                                    } else {
                                        throw new IllegalStateException("not enough of " + String.valueOf(array.items[i3]) + " to craft " + i + " items (" + itemsCount + "/" + countWithGVs + ")");
                                    }
                                } else {
                                    throw new IllegalArgumentException("ingredient " + i3 + " doesn't fit recipe (" + String.valueOf(array.items[i3]) + ")");
                                }
                            } else {
                                throw new IllegalArgumentException("ingredient " + i3 + " is null");
                            }
                        } else {
                            if (areF2pTimersDisabled) {
                                while (true) {
                                    Array<CraftRecipe.Ingredient> array3 = craftRecipe.ingredients;
                                    if (i2 >= array3.size) {
                                        break;
                                    }
                                    removeItems(array.items[i2], array3.items[i2].getCountWithGVs() * i);
                                    i2++;
                                }
                                addItems(craftRecipe.result.getItem(), craftRecipe.result.getCount() * i);
                            } else {
                                CraftingQueueItem craftingQueueItem = new CraftingQueueItem();
                                this.craftingQueue.add(craftingQueueItem);
                                craftingQueueItem.count = i;
                                craftingQueueItem.result = craftRecipe.result;
                                craftingQueueItem.duration = craftRecipe.getTimeWithGVs();
                                while (true) {
                                    Array<CraftRecipe.Ingredient> array4 = craftRecipe.ingredients;
                                    if (i2 >= array4.size) {
                                        break;
                                    }
                                    int countWithGVs2 = array4.items[i2].getCountWithGVs() * i;
                                    craftingQueueItem.ingredients.add(new ItemStack(array.items[i2], countWithGVs2));
                                    removeItems(array.items[i2], countWithGVs2);
                                    i2++;
                                }
                            }
                            updateNativeNotifications();
                            return;
                        }
                    }
                } else {
                    throw new IllegalArgumentException("count must be 1 <=> " + craftRecipe.getMaxQueueStackWithGVs() + ", " + i + " given");
                }
            } else {
                throw new IllegalArgumentException("ingredients.size != recipe.ingredients.size (" + array.size + ", " + craftRecipe.ingredients.size + ")");
            }
        } else {
            throw new IllegalArgumentException("recipe is null");
        }
    }

    public boolean startDecryptingCase(CaseType caseType) {
        if (this.decryptingCase != null) {
            if (this.decryptingCaseQueue.size < getExtraDecryptingSlotsCount()) {
                DelayedRemovalArray<ItemStack> itemsByType = getItemsByType(ItemType.CASE);
                for (int i = 0; i < itemsByType.size; i++) {
                    CaseItem caseItem = (CaseItem) itemsByType.items[i].getItem();
                    if (caseItem.encrypted && caseItem.caseType == caseType) {
                        removeItems(caseItem, 1);
                        this.decryptingCaseQueue.add(caseItem);
                        updateNativeNotifications();
                        return true;
                    }
                }
                Logger.error("ProgressManager", "startDecryptingCase failed - no case found of type " + caseType.name());
                return false;
            }
            Game game = Game.f8589i;
            game.uiManager.notifications.add(game.localeManager.i18n.get("other_case_is_decrypting"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.ORANGE.P800, StaticSoundType.FAIL);
            return false;
        }
        DelayedRemovalArray<ItemStack> itemsByType2 = getItemsByType(ItemType.CASE);
        for (int i2 = 0; i2 < itemsByType2.size; i2++) {
            CaseItem caseItem2 = (CaseItem) itemsByType2.items[i2].getItem();
            if (caseItem2.encrypted && caseItem2.caseType == caseType) {
                removeItems(caseItem2, 1);
                this.decryptingCase = caseItem2;
                this.decryptingCaseTimeLeft = caseItem2.getDecryptionTime();
                updateNativeNotifications();
                return true;
            }
        }
        Logger.error("ProgressManager", "startDecryptingCase failed - no case found of type " + caseType.name());
        return false;
    }

    public void updateNativeNotifications() {
        if (!Game.f8589i.actionResolver.hasNotifications()) {
            return;
        }
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.SEND_NOTIFICATIONS) == 0.0d) {
            Game.f8589i.actionResolver.clearNotification(1);
            Game.f8589i.actionResolver.clearNotification(2);
            return;
        }
        float f = this.decryptingCaseTimeLeft;
        for (int i = 0; i < getExtraDecryptingSlotsCount(); i++) {
            Array<CaseItem> array = this.decryptingCaseQueue;
            if (i >= array.size) {
                break;
            }
            f += array.get(i).getDecryptionTime();
        }
        CaseItem caseItem = this.decryptingCase;
        if (caseItem != null && f > 0.0f) {
            Game.f8589i.actionResolver.addNotification(1, Game.f8589i.localeManager.i18n.format("case_was_decrypted", caseItem.getTitle()), Game.f8589i.localeManager.i18n.get("decrypted_chest_native_notification_body"), Game.getTimestampMillis() + (f * 1000.0f) + 5000);
        } else {
            Game.f8589i.actionResolver.clearNotification(1);
        }
        if (this.craftingQueue.size != 0 && getTotalCraftingTimeLeft() != 0.0f) {
            Game.f8589i.actionResolver.addNotification(2, Game.f8589i.localeManager.i18n.get("all_items_crafted"), Game.f8589i.localeManager.i18n.get("finished_crafting_native_notification_body"), Game.getTimestampMillis() + (getTotalCraftingTimeLeft() * 1000.0f) + 5000);
        } else {
            Game.f8589i.actionResolver.clearNotification(2);
        }
    }

    /* loaded from: classes2.dex */
    public static class VideoAdViewBonus {
        public boolean doubleGain;
        public ItemStack item;
        public int views;

        public VideoAdViewBonus(int i, ItemStack itemStack) {
            this.views = i;
            this.item = itemStack;
        }

        public VideoAdViewBonus(int i, ItemStack itemStack, boolean z) {
            this(i, itemStack);
            this.doubleGain = z;
        }
    }

    public ProgressManager() {
        Game.f8589i.addListener(new Game.GameListener() { // from class: com.prineside.tdi2.managers.ProgressManager.3
            @Override // com.prineside.tdi2.Game.GameListener
            public void gameStartedLoading() {
            }

            @Override // com.prineside.tdi2.Game.GameListener
            public void render() {
            }

            @Override // com.prineside.tdi2.Game.GameListener
            public void gameLoaded() {
                if (!Config.isHeadless()) {
                    ProgressManager.this.updateNativeNotifications();
                    Timer.schedule(new Timer.Task() { // from class: com.prineside.tdi2.managers.ProgressManager.3.1
                        @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
                        public void run() {
                            ProgressManager.this.m21543g();
                        }
                    }, 2.0f);
                }
            }
        });
    }

    public void addIssuedPrizes(IssuedItems issuedItems, boolean z) {
        m21545e();
        this.f9956C = true;
        if (!z) {
            issuedItems.shown = true;
        }
        issuedItems.items.sort(ITEM_RARITY_COMPARATOR);
        this.f9963a.insert(0, issuedItems);
        Array<IssuedItems> array = this.f9963a;
        if (array.size > 100) {
            array.setSize(100);
        }
    }

    public void addResources(ResourceType resourceType, int i) {
        m21545e();
        addItems(Item.C1543D.F_RESOURCE.create(resourceType), i);
    }

    public boolean areAbilitiesOpened() {
        m21545e();
        if (Game.f8589i.gameValueManager.getSnapshot().getIntValue(GameValueType.ABILITY_FIREBALL_MAX_PER_GAME) != 0) {
            return true;
        }
        return false;
    }

    public long calculateProgressHash() {
        long accelerators = ((getAccelerators() + 31) * 31) + getGreenPapers();
        for (ResourceType resourceType : ResourceType.values) {
            accelerators = (accelerators * 31) + getResources(resourceType);
        }
        return accelerators;
    }

    public void cancelCrafting(int i) {
        CraftingQueueItem craftingQueueItem = getCraftingQueueItem(i);
        if (craftingQueueItem != null) {
            if (craftingQueueItem.getTimeLeft() == 0.0f) {
                grabCrafted(i);
            } else {
                grabCrafted(i);
                int i2 = 0;
                while (true) {
                    Array<ItemStack> array = craftingQueueItem.ingredients;
                    if (i2 >= array.size) {
                        break;
                    }
                    ItemStack itemStack = array.items[i2];
                    addItems(itemStack.getItem(), itemStack.getCount());
                    i2++;
                }
                this.craftingQueue.removeIndex(i);
            }
            updateNativeNotifications();
            return;
        }
        Logger.error("ProgressManager", "cancelCrafting " + i + " - nothing was crafting");
    }

    public void checkSpecialTrophiesGiven() {
        boolean z;
        if (Config.isModdingMode()) {
            return;
        }
        IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.REGULAR_REWARD, Game.getTimestampSeconds());
        DelayedRemovalArray<ItemStack> itemsByType = getItemsByType(ItemType.TROPHY);
        Array.ArrayIterator<BasicLevel> it = Game.f8589i.basicLevelManager.levelsOrdered.iterator();
        while (it.hasNext()) {
            Array.ArrayIterator<BasicLevel.WaveQuest> it2 = it.next().waveQuests.iterator();
            while (it2.hasNext()) {
                BasicLevel.WaveQuest next = it2.next();
                if (next.isCompleted()) {
                    Array.ArrayIterator<ItemStack> it3 = next.prizes.iterator();
                    while (it3.hasNext()) {
                        ItemStack next2 = it3.next();
                        if (next2.getItem().getType() == ItemType.TROPHY) {
                            TrophyItem trophyItem = (TrophyItem) next2.getItem();
                            int i = 0;
                            while (true) {
                                if (i < itemsByType.size) {
                                    if (trophyItem.trophyType == ((TrophyItem) itemsByType.items[i].getItem()).trophyType) {
                                        z = true;
                                        break;
                                    }
                                    i++;
                                } else {
                                    z = false;
                                    break;
                                }
                            }
                            if (!z) {
                                Logger.log("ProgressManager", "restoring trophy for completed quest " + next + " " + trophyItem.trophyType);
                                issuedItems.items.add(new ItemStack(Item.C1543D.F_TROPHY.create(trophyItem.trophyType), 1));
                            }
                        }
                    }
                }
            }
        }
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        for (int i2 = 0; i2 < itemsByType.size; i2++) {
            TrophyType trophyType = ((TrophyItem) itemsByType.items[i2].getItem()).trophyType;
            if (trophyType == TrophyType.SPECIAL_DEVELOPER) {
                z2 = true;
            } else if (trophyType == TrophyType.SPECIAL_MASTER) {
                z3 = true;
            } else if (trophyType == TrophyType.SPECIAL_MILLION) {
                z4 = true;
            } else if (trophyType == TrophyType.SPECIAL_STORYLINE) {
                z5 = true;
            }
        }
        if (!z2 && isDeveloperModeEnabled()) {
            issuedItems.items.add(new ItemStack(Item.C1543D.F_TROPHY.create(TrophyType.SPECIAL_DEVELOPER), 1));
        }
        if (!z3) {
            int i3 = 0;
            boolean z6 = true;
            while (true) {
                Array<BasicLevelStage> array = Game.f8589i.basicLevelManager.stagesOrdered;
                if (i3 >= array.size) {
                    break;
                }
                BasicLevelStage basicLevelStage = array.items[i3];
                if (basicLevelStage.name.equals(Config.SITE_API_VERSION) || basicLevelStage.name.equals("2") || basicLevelStage.name.equals("3") || basicLevelStage.name.equals("4") || basicLevelStage.name.equals("5")) {
                    int i4 = 0;
                    while (true) {
                        Array<BasicLevel> array2 = basicLevelStage.levels;
                        if (i4 < array2.size) {
                            BasicLevel basicLevel = array2.items[i4];
                            if (i4 < 8 && !Game.f8589i.basicLevelManager.isMastered(basicLevel)) {
                                z6 = false;
                                break;
                            }
                            i4++;
                        }
                    }
                }
                i3++;
            }
            if (z6) {
                issuedItems.items.add(new ItemStack(Item.C1543D.F_TROPHY.create(TrophyType.SPECIAL_MASTER), 1));
            }
        }
        if (!z4 && Game.f8589i.statisticsManager.getMaxOneGame(StatisticsType.SG) >= 1000000.0d) {
            issuedItems.items.add(new ItemStack(Item.C1543D.F_TROPHY.create(TrophyType.SPECIAL_MILLION), 1));
        }
        if (!z5) {
            BasicLevelManager basicLevelManager = Game.f8589i.basicLevelManager;
            if (basicLevelManager.getGainedStars(basicLevelManager.getLevel("5.8")) >= 3) {
                issuedItems.items.add(new ItemStack(Item.C1543D.F_TROPHY.create(TrophyType.SPECIAL_STORYLINE), 1));
            }
        }
        if (issuedItems.items.size != 0) {
            addIssuedPrizes(issuedItems, true);
            Game.f8589i.progressManager.addItems(issuedItems.items);
        }
    }

    public void enableDeveloperMode() {
        m21545e();
        if (!isDeveloperModeEnabled()) {
            Game.f8589i.researchManager.setInstalledLevel(ResearchType.DEVELOPER_MODE, 1, true);
        }
    }

    public void enableDoubleGainPermanently() {
        m21545e();
        if (!this.f9968q) {
            this.f9968q = true;
            save();
            this.f9960H.begin();
            int i = this.f9960H.size;
            for (int i2 = 0; i2 < i; i2++) {
                this.f9960H.get(i2).doubleGainEnabled();
            }
            this.f9960H.end();
            Game game = Game.f8589i;
            game.uiManager.notifications.add(game.localeManager.i18n.get("double_gain_enabled_permanently"), Game.f8589i.assetManager.getDrawable("money-pack-double-gain"), MaterialColor.GREEN.P800, StaticSoundType.SUCCESS);
        }
    }

    public boolean enableDoubleGainTemporary(int i) {
        m21545e();
        if (!this.f9968q) {
            if (isDoubleGainEnabled()) {
                this.f9973v += i;
            } else {
                int timestampSeconds = Game.getTimestampSeconds();
                this.f9972u = timestampSeconds;
                this.f9973v = timestampSeconds + i;
            }
            save();
            this.f9960H.begin();
            int i2 = this.f9960H.size;
            for (int i3 = 0; i3 < i2; i3++) {
                this.f9960H.get(i3).doubleGainEnabled();
            }
            this.f9960H.end();
            String format = Game.f8589i.localeManager.i18n.format("double_gain_enabled_timed", StringFormatter.timePassed(i, false, true));
            Game game = Game.f8589i;
            game.uiManager.notifications.add(format, game.assetManager.getDrawable("money-pack-double-gain"), MaterialColor.GREEN.P800, StaticSoundType.SUCCESS);
            return true;
        }
        Game game2 = Game.f8589i;
        game2.uiManager.notifications.add(game2.localeManager.i18n.get("double_gain_enabled_permanently"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.ORANGE.P800, StaticSoundType.FAIL);
        return false;
    }

    public boolean existsAnyProgress() {
        m21545e();
        if (getGreenPapers() != 0 || Game.f8589i.statisticsManager.getAllTime(StatisticsType.PT) != 0.0d || Game.f8589i.purchaseManager.transactions.size != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public final ItemStack m21544f(Item item) {
        m21545e();
        DelayedRemovalArray<ItemStack> itemsByType = getItemsByType(item.getType());
        for (int i = 0; i < itemsByType.size; i++) {
            if (itemsByType.get(i).getItem().sameAs(item)) {
                return itemsByType.get(i);
            }
        }
        return null;
    }

    public void finishCraftingNow() {
        float totalCraftingTimeLeft = getTotalCraftingTimeLeft();
        if (totalCraftingTimeLeft > 0.0f) {
            int i = 0;
            if (areF2pTimersDisabled()) {
                while (true) {
                    Array<CraftingQueueItem> array = this.craftingQueue;
                    if (i >= array.size) {
                        break;
                    }
                    CraftingQueueItem[] craftingQueueItemArr = array.items;
                    craftingQueueItemArr[i].timePassed = craftingQueueItemArr[i].duration * craftingQueueItemArr[i].count;
                    i++;
                }
            } else {
                int acceleratorsRequiredToShortenTime = Game.f8589i.progressManager.getAcceleratorsRequiredToShortenTime(totalCraftingTimeLeft);
                if (removeAccelerators(acceleratorsRequiredToShortenTime)) {
                    Game.f8589i.actionResolver.logCurrencySpent("finish_crafting", "accelerator", acceleratorsRequiredToShortenTime);
                    while (true) {
                        Array<CraftingQueueItem> array2 = this.craftingQueue;
                        if (i >= array2.size) {
                            break;
                        }
                        CraftingQueueItem[] craftingQueueItemArr2 = array2.items;
                        craftingQueueItemArr2[i].timePassed = craftingQueueItemArr2[i].duration * craftingQueueItemArr2[i].count;
                        i++;
                    }
                } else {
                    Game game = Game.f8589i;
                    game.uiManager.notifications.add(game.localeManager.i18n.get("not_enough_accelerators"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.ORANGE.P800, StaticSoundType.FAIL);
                }
            }
        }
        updateNativeNotifications();
    }

    public DelayedRemovalArray<ItemStack> getAllItems() {
        m21545e();
        return this.f9964b;
    }

    public Array<IssuedItems> getIssuedPrizes() {
        m21545e();
        return this.f9963a;
    }

    public Item getItem(Item item) {
        DelayedRemovalArray<ItemStack> itemsByType = getItemsByType(item.getType());
        for (int i = 0; i < itemsByType.size; i++) {
            if (itemsByType.items[i].getItem().sameAs(item)) {
                return itemsByType.items[i].getItem();
            }
        }
        return null;
    }

    public DelayedRemovalArray<ItemStack> getItemsByCategory(ItemCategoryType itemCategoryType) {
        m21545e();
        if (this.f9966k.get(itemCategoryType) == null) {
            this.f9966k.put(itemCategoryType, new DelayedRemovalArray<>(false, 1));
        }
        return this.f9966k.get(itemCategoryType);
    }

    public DelayedRemovalArray<ItemStack> getItemsBySubcategory(ItemSubcategoryType itemSubcategoryType) {
        m21545e();
        if (this.f9967p.get(itemSubcategoryType) == null) {
            this.f9967p.put(itemSubcategoryType, new DelayedRemovalArray<>(false, 1));
        }
        return this.f9967p.get(itemSubcategoryType);
    }

    public DelayedRemovalArray<ItemStack> getItemsByType(ItemType itemType) {
        m21545e();
        if (this.f9965d.get(itemType) == null) {
            this.f9965d.put(itemType, new DelayedRemovalArray<>(false, 1, ItemStack.class));
        }
        return this.f9965d.get(itemType);
    }

    public int getItemsCount(Item item) {
        m21545e();
        DelayedRemovalArray<ItemStack> itemsByType = getItemsByType(item.getType());
        for (int i = 0; i < itemsByType.size; i++) {
            if (itemsByType.get(i).getItem().sameAs(item)) {
                return itemsByType.get(i).getCount();
            }
        }
        return 0;
    }

    public boolean isDeveloperModeEnabled() {
        m21545e();
        if (Config.isModdingMode()) {
            return true;
        }
        GameValueManager gameValueManager = Game.f8589i.gameValueManager;
        if (gameValueManager != null && gameValueManager.getSnapshot().getBooleanValue(GameValueType.DEVELOPER_MODE)) {
            return true;
        }
        return false;
    }

    public boolean isDoubleGainEnabled() {
        int timestampSeconds = Game.getTimestampSeconds();
        if (!this.f9968q && (timestampSeconds < this.f9972u || timestampSeconds > this.f9973v)) {
            return false;
        }
        return true;
    }

    public boolean isResourceOpened(ResourceType resourceType) {
        m21545e();
        int i = C18406.f9984c[resourceType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5 || Game.f8589i.researchManager.getResearchInstance(ResearchType.MINER_TYPE_INFIAR).installedLevel <= 0) {
                            return false;
                        }
                        return true;
                    } else if (Game.f8589i.researchManager.getResearchInstance(ResearchType.MINER_TYPE_TENSOR).installedLevel <= 0) {
                        return false;
                    } else {
                        return true;
                    }
                } else if (Game.f8589i.researchManager.getResearchInstance(ResearchType.MINER_TYPE_MATRIX).installedLevel <= 0) {
                    return false;
                } else {
                    return true;
                }
            } else if (Game.f8589i.researchManager.getResearchInstance(ResearchType.MINER_TYPE_VECTOR).installedLevel <= 0) {
                return false;
            } else {
                return true;
            }
        } else if (Game.f8589i.researchManager.getResearchInstance(ResearchType.MINER_TYPE_SCALAR).installedLevel <= 0) {
            return false;
        } else {
            return true;
        }
    }

    public boolean removeItems(Item item, int i) {
        boolean z;
        int i2;
        DelayedRemovalArray<ProgressManagerListener> delayedRemovalArray;
        m21545e();
        DelayedRemovalArray<ItemStack> itemsByType = getItemsByType(item.getType());
        itemsByType.begin();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i4 < itemsByType.size) {
                ItemStack itemStack = itemsByType.get(i4);
                if (itemStack.getItem().sameAs(item)) {
                    i2 = itemStack.getCount();
                    if (i2 == i) {
                        itemsByType.removeIndex(i4);
                        if (!getAllItems().removeValue(itemStack, true)) {
                            Logger.error("ProgressManager", "allItems had no such item");
                        }
                        if (!getItemsByCategory(item.getCategory()).removeValue(itemStack, true)) {
                            Logger.error("ProgressManager", "itemsByCategory had no such item");
                        }
                        if (!getItemsBySubcategory(item.getSubcategory()).removeValue(itemStack, true)) {
                            Logger.error("ProgressManager", "itemsBySubcategory had no such item");
                        }
                    } else if (i2 > i) {
                        itemStack.setCount(i2 - i);
                    } else {
                        z = false;
                    }
                    z = true;
                } else {
                    i4++;
                }
            } else {
                z = false;
                i2 = 0;
                break;
            }
        }
        itemsByType.end();
        if (z) {
            this.f9960H.begin();
            while (true) {
                delayedRemovalArray = this.f9960H;
                if (i3 >= delayedRemovalArray.size) {
                    break;
                }
                delayedRemovalArray.get(i3).itemsChanged(item, i2, -i);
                i3++;
            }
            delayedRemovalArray.end();
            this.f9956C = true;
            this.f9976y = true;
        }
        return z;
    }

    public boolean removeResources(ResourceType resourceType, int i) {
        m21545e();
        if (i == 0) {
            return true;
        }
        if (!removeItems(Item.C1543D.F_RESOURCE.create(resourceType), i)) {
            return false;
        }
        double d = i;
        Game.f8589i.statisticsManager.registerDelta(StatisticsType.RS, d);
        int i2 = C18406.f9984c[resourceType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            Game.f8589i.statisticsManager.registerDelta(StatisticsType.RS_I, d);
                        }
                    } else {
                        Game.f8589i.statisticsManager.registerDelta(StatisticsType.RS_T, d);
                    }
                } else {
                    Game.f8589i.statisticsManager.registerDelta(StatisticsType.RS_M, d);
                }
            } else {
                Game.f8589i.statisticsManager.registerDelta(StatisticsType.RS_V, d);
            }
        } else {
            Game.f8589i.statisticsManager.registerDelta(StatisticsType.RS_S, d);
        }
        return true;
    }

    public boolean sellItems(Item item, int i) {
        m21545e();
        ItemStack m21544f = m21544f(item);
        int i2 = 0;
        if (m21544f == null || m21544f.getCount() < i || !item.canBeSold()) {
            return false;
        }
        Array<ItemStack> array = f9953N;
        array.clear();
        item.addSellItems(array);
        while (true) {
            Array<ItemStack> array2 = f9953N;
            if (i2 < array2.size) {
                ItemStack itemStack = array2.items[i2];
                itemStack.setCount(PMath.multiplyWithoutOverflow(itemStack.getCount(), i));
                i2++;
            } else {
                addItems(array2);
                array2.clear();
                removeItems(item, i);
                return true;
            }
        }
    }

    public void setAbilities(AbilityType abilityType, int i) {
        int abilities = getAbilities(abilityType);
        if (i < abilities) {
            removeAbilities(abilityType, abilities - i);
        } else if (i > abilities) {
            addAbilities(abilityType, i - abilities);
        }
    }

    public void setAccelerators(int i) {
        int greenPapers = getGreenPapers();
        if (i < greenPapers) {
            removeAccelerators(greenPapers - i);
        } else if (i > greenPapers) {
            addAccelerators(i - greenPapers);
        }
    }

    public void setMoney(int i) {
        int greenPapers = getGreenPapers();
        if (i < greenPapers) {
            removeGreenPapers(greenPapers - i);
        } else if (i > greenPapers) {
            addGreenPapers(i - greenPapers);
        }
    }

    public void setResources(ResourceType resourceType, int i) {
        m21545e();
        int resources = getResources(resourceType);
        if (i < resources) {
            removeResources(resourceType, resources - i);
        } else if (i > resources) {
            addResources(resourceType, i - resources);
        }
    }

    public void grabCrafted() {
        for (int i = this.craftingQueue.size - 1; i >= 0; i--) {
            grabCrafted(i);
        }
    }

    public void addItems(ItemStack itemStack) {
        addItems(itemStack.getItem(), itemStack.getCount());
    }

    public void addItems(Array<ItemStack> array) {
        for (int i = 0; i < array.size; i++) {
            addItems(array.get(i));
        }
    }
}
