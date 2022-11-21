package com.prineside.tdi2.modifiers;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.tiles.SourceTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MiningSpeedModifier extends Modifier {

    /* loaded from: classes2.dex */
    public static class MiningSpeedModifierFactory extends Modifier.Factory<MiningSpeedModifier> {

        /* renamed from: c */
        public TextureRegion f10376c;

        public MiningSpeedModifierFactory() {
            super(ModifierType.MINING_SPEED, MaterialColor.TEAL.P500, "icon-pickaxe");
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public TextureRegion getBaseTexture() {
            return this.f10376c;
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public int getBuildPrice(GameSystemProvider gameSystemProvider, int i) {
            double d = i;
            Double.isNaN(d);
            return m21923a((int) (((float) StrictMath.pow(1.600000023841858d, d * 1.05d)) * 120.0f));
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public void setupAssets() {
            this.f10376c = Game.f8589i.assetManager.getTextureRegion("modifier-base-mining-speed");
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public MiningSpeedModifier create() {
            return new MiningSpeedModifier();
        }

        @Override // com.prineside.tdi2.Modifier.Factory
        public CharSequence getDescription(GameValueProvider gameValueProvider) {
            return Game.f8589i.localeManager.i18n.format("modifier_description_MINING_SPEED", Float.valueOf(MathUtils.round((float) (gameValueProvider.getPercentValueAsMultiplier(GameValueType.MODIFIER_MINING_SPEED_VALUE) * 1000.0d)) * 0.1f));
        }
    }

    public MiningSpeedModifier() {
        super(ModifierType.MINING_SPEED);
    }

    @Override // com.prineside.tdi2.Modifier
    public void nearbyBuildingsChanged() {
        Miner miner;
        super.nearbyBuildingsChanged();
        Array<Tile> neighbourTiles = getTile().getNeighbourTiles();
        for (int i = 0; i < neighbourTiles.size; i++) {
            Tile tile = neighbourTiles.items[i];
            if (tile.type == TileType.SOURCE && (miner = ((SourceTile) tile).miner) != null) {
                m21929a(miner);
            }
        }
    }
}
