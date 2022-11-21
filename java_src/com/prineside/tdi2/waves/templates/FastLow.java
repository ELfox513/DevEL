package com.prineside.tdi2.waves.templates;

import com.badlogic.gdx.math.MathUtils;
import com.prineside.tdi2.WaveTemplates;
import com.prineside.tdi2.enums.EnemyType;
/* loaded from: classes2.dex */
public class FastLow extends WaveTemplates.WaveTemplate {

    /* renamed from: a */
    public final WaveTemplates.EnemyGroupConfig[] f15237a = {new WaveTemplates.EnemyGroupConfig() { // from class: com.prineside.tdi2.waves.templates.FastLow.1
        /* renamed from: a */
        public final float m19764a(int i) {
            return MathUtils.clamp(((i / 15.0f) * 0.6f) + 0.4f, 0.0f, 1.0f);
        }

        /* renamed from: b */
        public final float m19763b(int i) {
            return 1.0f / m19764a(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getBounty(int i, float f, float f2) {
            return ((i * 0.07f) + 2.5f) * m19763b(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getCount(int i, float f, float f2) {
            return (int) ((((int) StrictMath.pow(i, 0.6d)) + 8) * m19764a(i));
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getDelay(int i, float f, float f2) {
            return 0.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public EnemyType getEnemyType() {
            return EnemyType.FAST;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getHealth(int i, float f, float f2) {
            double d = f2;
            Double.isNaN(d);
            return (((float) StrictMath.pow(d * 10.0d, 1.29d)) * 0.065f) + 15.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getInterval(int i, float f, float f2) {
            return m19763b(i) * 1.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getKillExp(int i, float f, float f2) {
            return ((i * 0.013f) + 1.3f) * m19763b(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getKillScore(int i, float f, float f2) {
            return (int) (m19763b(i) * 13.0f);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getSpeed(int i, float f, float f2) {
            return 1.25f;
        }
    }};

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public WaveTemplates.EnemyGroupConfig[] getEnemyGroupConfigs() {
        return this.f15237a;
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public int getProbability(int i, float f, float f2) {
        return WaveTemplates.calculateProbability(i, f2, 3, 0.06f, 0.5f, 0.22f, -65.0f, 40.0f, 0.1f, 7);
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public String getWaveMessage() {
        return null;
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public String getWaveName() {
        return "FastLow";
    }
}
