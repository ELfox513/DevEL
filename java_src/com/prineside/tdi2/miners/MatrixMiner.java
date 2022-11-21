package com.prineside.tdi2.miners;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.MinerType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class MatrixMiner extends Miner {

    /* renamed from: u */
    public static final float[] f10334u;

    /* renamed from: v */
    public static final int[] f10335v;
    @NAGS

    /* renamed from: t */
    public float f10336t;

    /* loaded from: classes2.dex */
    public static class MatrixMinerFactory extends Miner.Factory<MatrixMiner> {

        /* renamed from: d */
        public TextureRegion f10337d;

        /* renamed from: k */
        public TextureRegion f10338k;

        public MatrixMinerFactory() {
            super(MinerType.MATRIX, "miner-matrix");
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public boolean canMineResource(ResourceType resourceType) {
            return MatrixMiner.f10334u[resourceType.ordinal()] > 0.0f;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public int getBaseBuildPrice(GameValueProvider gameValueProvider) {
            return 170;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public float getBaseMiningSpeed(ResourceType resourceType, GameValueProvider gameValueProvider) {
            double d = MatrixMiner.f10334u[resourceType.ordinal()];
            double percentValueAsMultiplier = gameValueProvider.getPercentValueAsMultiplier(GameValueType.MINERS_SPEED, GameValueType.MINER_MATRIX_SPEED);
            Double.isNaN(d);
            return (float) (d * percentValueAsMultiplier);
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public TextureRegion getTexture() {
            return this.f10338k;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public MatrixMiner create() {
            return new MatrixMiner();
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public void setupAssets() {
            this.f10337d = Game.f8589i.assetManager.getTextureRegion("miner-matrix-blade");
            this.f10338k = Game.f8589i.assetManager.getTextureRegion("miner-matrix-base");
        }
    }

    @Override // com.prineside.tdi2.Miner
    public int getBaseUpgradePrice(int i) {
        return f10335v[i - 1];
    }

    static {
        float[] fArr = new float[ResourceType.values.length];
        f10334u = fArr;
        fArr[ResourceType.SCALAR.ordinal()] = 6.4f;
        fArr[ResourceType.VECTOR.ordinal()] = 6.9f;
        fArr[ResourceType.MATRIX.ordinal()] = 7.4f;
        f10335v = new int[]{185, 600, 1400, 2000, 2500, 3400, 5000, 6600, 8400, 11000};
    }

    public MatrixMiner() {
        super(MinerType.MATRIX);
        this.f10336t = 0.0f;
    }

    @Override // com.prineside.tdi2.Miner
    public void drawBatch(SpriteBatch spriteBatch, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        float f5 = f3 / 128.0f;
        if (isPrepared() && this.nextMinedResourceType != null) {
            float currentMiningSpeedFromSystem = getCurrentMiningSpeedFromSystem() * 120.0f;
            if (this.doubleSpeedTimeLeft > 0.0f) {
                currentMiningSpeedFromSystem *= 2.0f;
            }
            this.f10336t = (this.f10336t + (currentMiningSpeedFromSystem * f4)) % 360.0f;
        } else {
            this.f10336t = 0.0f;
        }
        float f6 = f2 + (34.0f * f5);
        float f7 = 30.0f * f5;
        float f8 = 60.0f * f5;
        spriteBatch.draw(Game.f8589i.minerManager.f9892F.MATRIX.f10337d, f, f6, f7, f7, f8, f8, 1.0f, 1.0f, this.f10336t);
        spriteBatch.draw(Game.f8589i.minerManager.f9892F.MATRIX.f10337d, f + (68.0f * f5), f6, f7, f7, f8, f8, 1.0f, 1.0f, this.f10336t);
        float f9 = 0.5f * f3;
        m21930b(spriteBatch, f + f9, f2 + f9, f5, drawMode);
        m21931a(spriteBatch, f, f2, f3, drawMode);
    }
}
