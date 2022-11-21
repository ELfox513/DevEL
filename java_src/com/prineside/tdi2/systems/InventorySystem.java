package com.prineside.tdi2.systems;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.GameListener;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.Gate;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.ListenerGroup;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.items.TileItem;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.tiles.PlatformTile;
/* loaded from: classes2.dex */
public class InventorySystem extends GameSystem {
    public final DelayedRemovalArray<ItemStack> items = new DelayedRemovalArray<>();
    public final ListenerGroup<InventorySystemListener> listeners = new ListenerGroup<>(InventorySystemListener.class);

    /* loaded from: classes2.dex */
    public interface InventorySystemListener extends GameListener {

        /* loaded from: classes2.dex */
        public static class InventorySystemListenerAdapter implements InventorySystemListener {
            @Override // com.prineside.tdi2.systems.InventorySystem.InventorySystemListener
            public void added(ItemStack itemStack) {
            }

            @Override // com.prineside.tdi2.GameListener
            public boolean affectsGameState() {
                return false;
            }

            @Override // com.prineside.tdi2.GameListener
            public int getConstantId() {
                return 0;
            }

            @Override // com.prineside.tdi2.systems.InventorySystem.InventorySystemListener
            public void removed(ItemStack itemStack) {
            }
        }

        void added(ItemStack itemStack);

        void removed(ItemStack itemStack);
    }

    public ItemStack addGate(Gate gate, int i) {
        return add(Item.C1543D.F_GATE.create(gate), i);
    }

    public ItemStack addTile(Tile tile, int i) {
        return add(Item.C1543D.F_TILE.create(tile), i);
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return false;
    }

    public void getItemsByCategory(ItemSubcategoryType itemSubcategoryType, Array<ItemStack> array) {
        int i = 0;
        while (true) {
            DelayedRemovalArray<ItemStack> delayedRemovalArray = this.items;
            if (i < delayedRemovalArray.size) {
                if (delayedRemovalArray.get(i).getItem().getSubcategory() == itemSubcategoryType) {
                    array.add(this.items.get(i));
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Inventory";
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean profileUpdate() {
        return false;
    }

    public boolean remove(Item item, int i) {
        this.items.begin();
        int i2 = 0;
        while (true) {
            DelayedRemovalArray<ItemStack> delayedRemovalArray = this.items;
            if (i2 < delayedRemovalArray.size) {
                ItemStack itemStack = delayedRemovalArray.get(i2);
                if (itemStack.getItem().sameAs(item) && itemStack.getCount() >= i) {
                    itemStack.setCount(itemStack.getCount() - i);
                    if (itemStack.getCount() == 0) {
                        this.items.removeIndex(i2);
                    }
                    this.items.end();
                    this.listeners.begin();
                    int size = this.listeners.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        this.listeners.get(i3).removed(itemStack);
                    }
                    this.listeners.end();
                    return true;
                }
                i2++;
            } else {
                delayedRemovalArray.end();
                return false;
            }
        }
    }

    public ItemStack add(Item item, int i) {
        if (i > 0) {
            if (item instanceof TileItem) {
                Tile tile = ((TileItem) item).tile;
                if (tile instanceof PlatformTile) {
                    ((PlatformTile) tile).building = null;
                }
            }
            ItemStack addItemToStacksArray = ProgressManager.addItemToStacksArray(this.items, item, i);
            this.listeners.begin();
            int size = this.listeners.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.listeners.get(i2).added(addItemToStacksArray);
            }
            this.listeners.end();
            return addItemToStacksArray;
        }
        throw new IllegalArgumentException("Count is " + i);
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.listeners.clear();
        this.items.clear();
        super.dispose();
    }

    public String listDebug() {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (true) {
            DelayedRemovalArray<ItemStack> delayedRemovalArray = this.items;
            if (i < delayedRemovalArray.size) {
                stringBuilder.append(delayedRemovalArray.get(i).toString()).append("\n");
                i++;
            } else {
                return stringBuilder.toString();
            }
        }
    }

    public void setItems(Array<ItemStack> array) {
        this.items.clear();
        for (int i = 0; i < array.size; i++) {
            this.items.add(new ItemStack(array.get(i)));
        }
    }

    public boolean remove(Item item) {
        return remove(item, 1);
    }
}
