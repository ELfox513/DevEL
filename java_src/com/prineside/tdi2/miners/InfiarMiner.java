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
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class InfiarMiner extends Miner {

    /* renamed from: u */
    public static final float[] f10329u;

    /* renamed from: v */
    public static final int[] f10330v;
    @NAGS

    /* renamed from: t */
    public float f10331t;

    /* loaded from: classes2.dex */
    public static class InfiarMinerFactory extends Miner.Factory<InfiarMiner> {

        /* renamed from: d */
        public TextureRegion f10332d;

        /* renamed from: k */
        public TextureRegion f10333k;

        public InfiarMinerFactory() {
            super(MinerType.INFIAR, "miner-infiar");
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public boolean canMineResource(ResourceType resourceType) {
            return InfiarMiner.f10329u[resourceType.ordinal()] > 0.0f;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public int getBaseBuildPrice(GameValueProvider gameValueProvider) {
            return HttpStatus.SC_OK;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public float getBaseMiningSpeed(ResourceType resourceType, GameValueProvider gameValueProvider) {
            double d = InfiarMiner.f10329u[resourceType.ordinal()];
            double percentValueAsMultiplier = gameValueProvider.getPercentValueAsMultiplier(GameValueType.MINERS_SPEED, GameValueType.MINER_INFIAR_SPEED);
            Double.isNaN(d);
            return (float) (d * percentValueAsMultiplier);
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public TextureRegion getTexture() {
            return this.f10333k;
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public InfiarMiner create() {
            return new InfiarMiner();
        }

        @Override // com.prineside.tdi2.Miner.Factory
        public void setupAssets() {
            this.f10332d = Game.f8589i.assetManager.getTextureRegion("miner-infiar-blade");
            this.f10333k = Game.f8589i.assetManager.getTextureRegion("miner-infiar-base");
        }
    }

    @Override // com.prineside.tdi2.Miner
    public int getBaseUpgradePrice(int i) {
        return f10330v[i - 1];
    }

    static {
        float[] fArr = new float[ResourceType.values.length];
        f10329u = fArr;
        fArr[ResourceType.SCALAR.ordinal()] = 3.3f;
        fArr[ResourceType.VECTOR.ordinal()] = 3.6f;
        fArr[ResourceType.MATRIX.ordinal()] = 3.9f;
        fArr[ResourceType.TENSOR.ordinal()] = 4.2f;
        fArr[ResourceType.INFIAR.ordinal()] = 4.5f;
        f10330v = new int[]{250, 875, 1900, 2600, 3500, 5100, 6600, 8800, 11000, 14000};
    }

    public InfiarMiner() {
        super(MinerType.INFIAR);
        this.f10331t = 0.0f;
    }

    @Override // com.prineside.tdi2.Miner
    public void drawBatch(SpriteBatch spriteBatch, float f, float f2, float f3, float f4, MapRenderingSystem.DrawMode drawMode) {
        float f5 = f3 / 128.0f;
        if (isPrepared() && this.nextMinedResourceType != null) {
            float currentMiningSpeedFromSystem = getCurrentMiningSpeedFromSystem() * 120.0f;
            if (this.doubleSpeedTimeLeft > 0.0f) {
                currentMiningSpeedFromSystem *= 2.0f;
            }
            this.f10331t = (this.f10331t + (currentMiningSpeedFromSystem * f4)) % 360.0f;
        } else {
            this.f10331t = 0.0f;
        }
        float f6 = 6.0f * f5;
        float f7 = f5 * 58.0f;
        float f8 = f5 * 116.0f;
        spriteBatch.draw(Game.f8589i.minerManager.f9892F.INFIAR.f10332d, f + f6, f2 + f6, f7, f7, f8, f8, 1.0f, 1.0f, this.f10331t);
        float f9 = 0.5f * f3;
        m21930b(spriteBatch, f + f9, f2 + f9, f5, drawMode);
        m21931a(spriteBatch, f, f2, f3, drawMode);
    }
}
