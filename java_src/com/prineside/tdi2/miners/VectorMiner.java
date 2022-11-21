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
public class VectorMiner extends Miner {

    /* renamed from: u */
    public static final float[] f10349u;

    /* renamed from: v */
    public static final int[] f10350v;
    @NAGS

    /* renamed from: t */
    public float f10351t;

    /* loaded from: classes2.dex */
    public static class VectorMinerFactory extends Miner.Factory<VectorMiner> {

        /* renamed from: d */
        public TextureRegion f10352d;

        /* renamed from: k */
        public TextureRegion f10353k;

        public VectorMinerFactory() {
            super(MinerType.VECTOR, "miner-vector");
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public boolean canMineResource(ResourceType resourceType) {
            return VectorMiner.f10349u[resourceType.ordinal()] > 0.0f;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public int getBaseBuildPrice(GameValueProvider gameValueProvider) {
            return 140;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public float getBaseMiningSpeed(ResourceType resourceType, GameValueProvider gameValueProvider) {
            double d = VectorMiner.f10349u[resourceType.ordinal()];
            double percentValueAsMultiplier = gameValueProvider.getPercentValueAsMultiplier(GameValueType.MINERS_SPEED, GameValueType.MINER_VECTOR_SPEED);
            Double.isNaN(d);
            return (float) (d * percentValueAsMultiplier);
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public TextureRegion getTexture() {
            return this.f10353k;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public VectorMiner create() {
            return new VectorMiner();
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public void setupAssets() {
            this.f10352d = Game.f8589i.assetManager.getTextureRegion("miner-vector-blade");
            this.f10353k = Game.f8589i.assetManager.getTextureRegion("miner-vector-base");
        }
    }

    @Override // com.prineside.tdi2.Miner
    public int getBaseUpgradePrice(int i) {
        return f10350v[i - 1];
    }

    static {
        float[] fArr = new float[ResourceType.values.length];
        f10349u = fArr;
        fArr[ResourceType.SCALAR.ordinal()] = 8.1f;
        fArr[ResourceType.VECTOR.ordinal()] = 8.7f;
        f10350v = new int[]{170, 500, 1200, 1750, 2300, 3100, 4300, 5700, 7200, 9600};
    }

    public VectorMiner() {
        super(MinerType.VECTOR);
        this.f10351t = 0.0f;
    }

    @Override // com.prineside.tdi2.Miner
    public void drawBatch(SpriteBatch spriteBatch, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        float f5 = f3 / 128.0f;
        if (isPrepared() && this.nextMinedResourceType != null) {
            float currentMiningSpeedFromSystem = getCurrentMiningSpeedFromSystem() * 120.0f;
            if (this.doubleSpeedTimeLeft > 0.0f) {
                currentMiningSpeedFromSystem *= 2.0f;
            }
            this.f10351t = (this.f10351t + (currentMiningSpeedFromSystem * f4)) % 360.0f;
        } else {
            this.f10351t = 0.0f;
        }
        float f6 = 15.0f * f5;
        float f7 = f + f6;
        float f8 = f2 + f6;
        float f9 = 29.0f * f5;
        float f10 = 58.0f * f5;
        spriteBatch.draw(Game.f8589i.minerManager.f9892F.VECTOR.f10352d, f7, f8, f9, f9, f10, f10, 1.0f, 1.0f, this.f10351t);
        float f11 = 55.0f * f5;
        float f12 = f + f11;
        float f13 = f2 + f11;
        spriteBatch.draw(Game.f8589i.minerManager.f9892F.VECTOR.f10352d, f12, f13, f9, f9, f10, f10, 1.0f, 1.0f, this.f10351t);
        spriteBatch.draw(Game.f8589i.minerManager.f9892F.VECTOR.f10352d, f7, f13, f9, f9, f10, f10, 1.0f, 1.0f, this.f10351t + 90.0f);
        spriteBatch.draw(Game.f8589i.minerManager.f9892F.VECTOR.f10352d, f12, f8, f9, f9, f10, f10, 1.0f, 1.0f, this.f10351t + 90.0f);
        float f14 = 0.5f * f3;
        m21930b(spriteBatch, f + f14, f2 + f14, f5, drawMode);
        m21931a(spriteBatch, f, f2, f3, drawMode);
    }
}
