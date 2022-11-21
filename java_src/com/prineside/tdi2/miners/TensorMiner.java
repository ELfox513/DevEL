package com.prineside.tdi2.miners;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Miner;
import com.prineside.tdi2.configs.HeadlessConfig;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.MinerType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.systems.MapRenderingSystem;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class TensorMiner extends Miner {

    /* renamed from: u */
    public static final float[] f10344u;

    /* renamed from: v */
    public static final int[] f10345v;
    @NAGS

    /* renamed from: t */
    public float f10346t;

    /* loaded from: classes2.dex */
    public static class TensorMinerFactory extends Miner.Factory<TensorMiner> {

        /* renamed from: d */
        public TextureRegion f10347d;

        /* renamed from: k */
        public TextureRegion f10348k;

        public TensorMinerFactory() {
            super(MinerType.TENSOR, "miner-tensor");
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public boolean canMineResource(ResourceType resourceType) {
            return TensorMiner.f10344u[resourceType.ordinal()] > 0.0f;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public int getBaseBuildPrice(GameValueProvider gameValueProvider) {
            return 185;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public float getBaseMiningSpeed(ResourceType resourceType, GameValueProvider gameValueProvider) {
            double d = TensorMiner.f10344u[resourceType.ordinal()];
            double percentValueAsMultiplier = gameValueProvider.getPercentValueAsMultiplier(GameValueType.MINERS_SPEED, GameValueType.MINER_TENSOR_SPEED);
            Double.isNaN(d);
            return (float) (d * percentValueAsMultiplier);
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public TextureRegion getTexture() {
            return this.f10348k;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public TensorMiner create() {
            return new TensorMiner();
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public void setupAssets() {
            this.f10347d = Game.f8589i.assetManager.getTextureRegion("miner-tensor-blade");
            this.f10348k = Game.f8589i.assetManager.getTextureRegion("miner-tensor-base");
        }
    }

    @Override // com.prineside.tdi2.Miner
    public int getBaseUpgradePrice(int i) {
        return f10345v[i - 1];
    }

    static {
        float[] fArr = new float[ResourceType.values.length];
        f10344u = fArr;
        fArr[ResourceType.SCALAR.ordinal()] = 4.8f;
        fArr[ResourceType.VECTOR.ordinal()] = 5.2f;
        fArr[ResourceType.MATRIX.ordinal()] = 5.6f;
        fArr[ResourceType.TENSOR.ordinal()] = 6.0f;
        f10345v = new int[]{240, 750, HeadlessConfig.REPORT_INTERVAL, 2400, 2900, 4000, 5800, 7400, 9500, 12500};
    }

    public TensorMiner() {
        super(MinerType.TENSOR);
        this.f10346t = 0.0f;
    }

    @Override // com.prineside.tdi2.Miner
    public void drawBatch(SpriteBatch spriteBatch, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        float f5 = f3 / 128.0f;
        if (isPrepared() && this.nextMinedResourceType != null) {
            float currentMiningSpeedFromSystem = getCurrentMiningSpeedFromSystem() * 120.0f;
            if (this.doubleSpeedTimeLeft > 0.0f) {
                currentMiningSpeedFromSystem *= 2.0f;
            }
            this.f10346t = (this.f10346t + (currentMiningSpeedFromSystem * f4)) % 360.0f;
        } else {
            this.f10346t = 0.0f;
        }
        float f6 = 34.0f * f5;
        float f7 = f2 + f6;
        float f8 = 30.0f * f5;
        float f9 = 60.0f * f5;
        spriteBatch.draw(Game.f8589i.minerManager.f9892F.TENSOR.f10347d, f, f7, f8, f8, f9, f9, 1.0f, 1.0f, this.f10346t);
        float f10 = 68.0f * f5;
        spriteBatch.draw(Game.f8589i.minerManager.f9892F.TENSOR.f10347d, f + f10, f7, f8, f8, f9, f9, 1.0f, 1.0f, this.f10346t);
        float f11 = f + f6;
        spriteBatch.draw(Game.f8589i.minerManager.f9892F.TENSOR.f10347d, f11, f2, f8, f8, f9, f9, 1.0f, 1.0f, this.f10346t + 90.0f);
        spriteBatch.draw(Game.f8589i.minerManager.f9892F.TENSOR.f10347d, f11, f2 + f10, f8, f8, f9, f9, 1.0f, 1.0f, this.f10346t + 90.0f);
        float f12 = 0.5f * f3;
        m21930b(spriteBatch, f + f12, f2 + f12, f5, drawMode);
        m21931a(spriteBatch, f, f2, f3, drawMode);
    }
}
