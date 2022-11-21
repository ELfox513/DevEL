package com.prineside.tdi2;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.utils.REGS;
@REGS(classOnly = true)
/* loaded from: classes2.dex */
public abstract class WaveProcessor {

    /* loaded from: classes2.dex */
    public static abstract class WaveProcessorFactory<T extends WaveProcessor> {

        /* renamed from: a */
        public TextureRegion f8951a;
        public final BossType bossType;

        public abstract T create();

        public TextureRegion getIconTexture() {
            return this.f8951a;
        }

        public void setup() {
            AssetManager assetManager = Game.f8589i.assetManager;
            if (assetManager != null) {
                this.f8951a = assetManager.getTextureRegion("boss-wave-icon-" + this.bossType.name());
            }
        }

        public WaveProcessorFactory(BossType bossType) {
            this.bossType = bossType;
        }
    }

    public static float calculateDefaultBossWaveCoinsSum(int i) {
        double d = (i * 0.05f) + 2.0f;
        Double.isNaN(d);
        return ((float) ((StrictMath.pow(i, 0.65d) + 12.0d) * d)) * 3.0f;
    }

    public static float calculateDefaultBossWaveExpSum(int i) {
        double d = (i * 0.01f) + 1.0f;
        Double.isNaN(d);
        return ((float) ((StrictMath.pow(i, 0.65d) + 12.0d) * d)) * 3.0f;
    }

    public static float calculateDefaultBossWaveScoreSum(int i) {
        return ((float) ((StrictMath.pow(i, 0.65d) + 12.0d) * 10.0d)) * 3.0f;
    }

    public abstract Array<EnemyGroup> generateEnemyGroups(int i, int i2);

    public float getNextWaveDelayMultiplier() {
        return 2.0f;
    }

    public abstract boolean isDone();

    public abstract Wave setup(GameSystemProvider gameSystemProvider, int i, int i2);

    public void update(float f) {
    }
}
