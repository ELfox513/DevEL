package com.prineside.tdi2;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemDataType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.RarityType;
/* loaded from: classes2.dex */
public class CraftRecipe {

    /* renamed from: a */
    public float f8545a;

    /* renamed from: b */
    public int f8546b = 1;
    public Array<Ingredient> ingredients = new Array<>(Ingredient.class);
    public ItemStack result;

    /* loaded from: classes2.dex */
    public static class Ingredient {

        /* renamed from: a */
        public static final Array<ItemStack> f8547a = new Array<>(ItemStack.class);
        public int count;
        public Item[] exampleItems;
        public boolean ignoresDiscounts;
        public int[] itemParams;
        public RarityType itemRarity;
        public ItemType itemType;
        public int minCount;

        public Ingredient(ItemType itemType, int i, RarityType rarityType) {
            this.itemParams = null;
            this.minCount = 1;
            this.itemType = itemType;
            this.count = i;
            this.itemRarity = rarityType;
        }

        public int getCountWithGVs() {
            if (this.ignoresDiscounts) {
                return this.count;
            }
            double percentValueAsMultiplier = Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.CRAFTING_PRICE);
            double d = this.count;
            Double.isNaN(d);
            int round = MathUtils.round((float) (d * percentValueAsMultiplier));
            int i = this.minCount;
            if (round < i) {
                return i;
            }
            return round;
        }

        public Item[] getExampleItems() {
            if (this.exampleItems == null) {
                this.exampleItems = r0;
                Item[] itemArr = {Game.f8589i.itemManager.getFactory(this.itemType).createDefault()};
            }
            return this.exampleItems;
        }

        public Array<ItemStack> getSuitableItemsFromInventory() {
            f8547a.clear();
            DelayedRemovalArray<ItemStack> itemsByType = Game.f8589i.progressManager.getItemsByType(this.itemType);
            for (int i = 0; i < itemsByType.size; i++) {
                if (fits(itemsByType.items[i].getItem())) {
                    f8547a.add(itemsByType.items[i]);
                }
            }
            return f8547a;
        }

        public boolean fits(Item item) {
            if (item.getType() != this.itemType) {
                return false;
            }
            if (this.itemRarity != null && item.getRarity() != this.itemRarity) {
                return false;
            }
            if (this.itemParams != null) {
                int i = 0;
                while (true) {
                    int[] iArr = this.itemParams;
                    if (i < iArr.length) {
                        int i2 = iArr[i + 1];
                        if (i2 != Integer.MIN_VALUE && item.getData(ItemDataType.values[iArr[i]]) != i2) {
                            return false;
                        }
                        i += 2;
                    } else {
                        return true;
                    }
                }
            } else {
                return true;
            }
        }

        public Ingredient(ItemType itemType, int i, RarityType rarityType, int[] iArr) {
            this.minCount = 1;
            this.itemType = itemType;
            this.count = i;
            this.itemRarity = rarityType;
            this.itemParams = iArr;
        }

        public Ingredient(ItemType itemType, int i, int[] iArr) {
            this.itemRarity = null;
            this.minCount = 1;
            this.itemType = itemType;
            this.count = i;
            this.itemParams = iArr;
        }

        public Ingredient(ItemType itemType, int i) {
            this.itemRarity = null;
            this.itemParams = null;
            this.minCount = 1;
            this.itemType = itemType;
            this.count = i;
        }
    }

    public float getTimeWithGVs() {
        return Math.max(this.f8545a * ((float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.CRAFTING_TIME)), 0.1f);
    }

    public boolean hasEnoughItemsToRun() {
        int i = 0;
        while (true) {
            Array<Ingredient> array = this.ingredients;
            boolean z = true;
            if (i >= array.size) {
                return true;
            }
            Ingredient ingredient = array.items[i];
            Array<ItemStack> suitableItemsFromInventory = ingredient.getSuitableItemsFromInventory();
            int i2 = 0;
            while (true) {
                if (i2 < suitableItemsFromInventory.size) {
                    if (suitableItemsFromInventory.items[i2].getCount() >= ingredient.getCountWithGVs()) {
                        break;
                    }
                    i2++;
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                return false;
            }
            i++;
        }
    }

    public boolean isAvailable() {
        return true;
    }

    public void setStockMaxQueueStack(int i) {
        this.f8546b = i;
    }

    public void setStockTime(float f) {
        this.f8545a = f;
    }

    public int getMaxQueueStackWithGVs() {
        int max = Math.max(MathUtils.round(this.f8546b * ((float) Game.f8589i.gameValueManager.getSnapshot().getPercentValueAsMultiplier(GameValueType.CRAFTING_MAX_STACK))), 1);
        if (Game.f8589i.progressManager.areF2pTimersDisabled()) {
            int i = max * 250;
            if (i > 1000000) {
                return 1000000;
            }
            return i;
        }
        return max;
    }
}
