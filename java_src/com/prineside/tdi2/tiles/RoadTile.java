package com.prineside.tdi2.tiles;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.ItemSortingType;
import com.prineside.tdi2.enums.ItemSubcategoryType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class RoadTile extends Tile {

    /* loaded from: classes2.dex */
    public static class RoadTileFactory extends Tile.Factory.AbstractFactory<RoadTile> {
        public RoadTileFactory() {
            super(TileType.ROAD);
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public int getProbabilityForPrize(float f, ProgressManager.InventoryStatistics inventoryStatistics) {
            if (f >= 0.2f) {
                return 0;
            }
            int i = inventoryStatistics.byTileType[TileType.ROAD.ordinal()];
            if (i < 5) {
                return 250;
            }
            if (i < 15) {
                return 150;
            }
            if (i < 50) {
                return 100;
            }
            return i < 150 ? 50 : 10;
        }

        @Override // com.prineside.tdi2.Tile.Factory
        public RoadTile create() {
            return new RoadTile();
        }
    }

    @Override // com.prineside.tdi2.Tile
    public void addSellItems(Array<ItemStack> array) {
        array.add(new ItemStack(Item.C1543D.GREEN_PAPER, 150));
    }

    @Override // com.prineside.tdi2.Tile
    public boolean canBeUpgraded() {
        return false;
    }

    @Override // com.prineside.tdi2.Tile
    public ItemSubcategoryType getInventorySubcategory() {
        return ItemSubcategoryType.ME_ROADS;
    }

    @Override // com.prineside.tdi2.Tile
    public double getPrestigeScore() {
        return 0.05d;
    }

    @Override // com.prineside.tdi2.Tile
    public RarityType getRarity() {
        return RarityType.COMMON;
    }

    @Override // com.prineside.tdi2.Tile
    public float getWalkCost() {
        return 1.0f;
    }

    @Override // com.prineside.tdi2.Tile
    public boolean isRoadType() {
        return true;
    }

    public RoadTile() {
        super(TileType.ROAD);
    }

    @Override // com.prineside.tdi2.Tile
    public Group generateUiIcon(float f) {
        TextureRegion roadTexture = Game.f8589i.tileManager.getRoadTexture(null, null, null, null);
        Group group = new Group();
        group.setTransform(false);
        Image image = new Image(new TextureRegionDrawable(roadTexture));
        image.setSize(f, f);
        group.addActor(image);
        return group;
    }

    @Override // com.prineside.tdi2.Tile
    public int getSortingScore(ItemSortingType itemSortingType) {
        if (itemSortingType == ItemSortingType.RARITY) {
            return getRarity().ordinal() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
        }
        return 10000;
    }
}
