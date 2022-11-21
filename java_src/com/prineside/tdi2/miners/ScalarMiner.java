package com.prineside.tdi2.miners;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.net.HttpStatus;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.MinerType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class ScalarMiner extends Miner {

    /* renamed from: u */
    public static final float[] f10339u;

    /* renamed from: v */
    public static final int[] f10340v;
    @NAGS

    /* renamed from: t */
    public float f10341t;

    /* loaded from: classes2.dex */
    public static class ScalarMinerFactory extends Miner.Factory<ScalarMiner> {

        /* renamed from: d */
        public TextureRegion f10342d;

        /* renamed from: k */
        public TextureRegion f10343k;

        public ScalarMinerFactory() {
            super(MinerType.SCALAR, "miner-scalar");
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public boolean canMineResource(ResourceType resourceType) {
            return ScalarMiner.f10339u[resourceType.ordinal()] > 0.0f;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public int getBaseBuildPrice(GameValueProvider gameValueProvider) {
            return 120;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public float getBaseMiningSpeed(ResourceType resourceType, GameValueProvider gameValueProvider) {
            double d = ScalarMiner.f10339u[resourceType.ordinal()];
            double percentValueAsMultiplier = gameValueProvider.getPercentValueAsMultiplier(GameValueType.MINERS_SPEED, GameValueType.MINER_SCALAR_SPEED);
            Double.isNaN(d);
            return (float) (d * percentValueAsMultiplier);
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public TextureRegion getTexture() {
            return this.f10343k;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public ScalarMiner create() {
            return new ScalarMiner();
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public void setupAssets() {
            this.f10342d = Game.f8589i.assetManager.getTextureRegion("miner-scalar-blade");
            this.f10343k = Game.f8589i.assetManager.getTextureRegion("miner-scalar-base");
        }
    }

    @Override // com.prineside.tdi2.Miner
    public int getBaseUpgradePrice(int i) {
        return f10340v[i - 1];
    }

    static {
        float[] fArr = new float[ResourceType.values.length];
        f10339u = fArr;
        fArr[ResourceType.SCALAR.ordinal()] = 10.0f;
        f10340v = new int[]{150, HttpStatus.SC_BAD_REQUEST, CoreTile.FIXED_LEVEL_XP_REQUIREMENT, 1500, 2100, 2800, 3700, 4800, 6000, 8000};
    }

    public ScalarMiner() {
        super(MinerType.SCALAR);
        this.f10341t = 0.0f;
    }

    @Override // com.prineside.tdi2.Miner
    public void drawBatch(SpriteBatch spriteBatch, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        float f5 = f3 / 128.0f;
        if (isPrepared() && this.nextMinedResourceType != null) {
            float currentMiningSpeedFromSystem = getCurrentMiningSpeedFromSystem() * 120.0f;
            if (this.doubleSpeedTimeLeft > 0.0f) {
                currentMiningSpeedFromSystem *= 2.0f;
            }
            this.f10341t = (this.f10341t + (currentMiningSpeedFromSystem * f4)) % 360.0f;
        } else {
            this.f10341t = 0.0f;
        }
        float f6 = 15.0f * f5;
        float f7 = f + f6;
        float f8 = f2 + f6;
        float f9 = 29.0f * f5;
        float f10 = f5 * 58.0f;
        spriteBatch.draw(Game.f8589i.minerManager.f9892F.SCALAR.f10342d, f7, f8, f9, f9, f10, f10, 1.0f, 1.0f, this.f10341t);
        float f11 = 55.0f * f5;
        spriteBatch.draw(Game.f8589i.minerManager.f9892F.SCALAR.f10342d, f + f11, f2 + f11, f9, f9, f10, f10, 1.0f, 1.0f, this.f10341t);
        float f12 = 0.5f * f3;
        m21930b(spriteBatch, f + f12, f2 + f12, f5, drawMode);
        m21931a(spriteBatch, f, f2, f3, drawMode);
    }
}
