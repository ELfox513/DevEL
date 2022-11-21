package com.prineside.tdi2.waves.templates;

import com.badlogic.gdx.math.MathUtils;
import com.prineside.tdi2.WaveTemplates;
import com.prineside.tdi2.enums.EnemyType;
/* loaded from: classes2.dex */
public class HealerSlow extends WaveTemplates.WaveTemplate {

    /* renamed from: a */
    public final WaveTemplates.EnemyGroupConfig[] f15260a = {new WaveTemplates.EnemyGroupConfig() { // from class: com.prineside.tdi2.waves.templates.HealerSlow.1
        /* renamed from: a */
        public final float m19736a(int i) {
            return MathUtils.clamp(((i / 10.0f) * 0.5f) + 0.5f, 0.0f, 1.0f);
        }

        /* renamed from: b */
        public final float m19735b(int i) {
            return 1.0f / m19736a(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getBounty(int i, float f, float f2) {
            return ((i * 0.13f) + 4.5f) * m19735b(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getCount(int i, float f, float f2) {
            return (int) ((((int) StrictMath.pow(i * 0.9f, 0.52d)) + 5) * 1 * m19736a(i));
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getDelay(int i, float f, float f2) {
            return 0.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public EnemyType getEnemyType() {
            return EnemyType.HEALER;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getHealth(int i, float f, float f2) {
            double d = f2;
            Double.isNaN(d);
            return (((float) StrictMath.pow(d * 10.0d, 1.23d)) * 0.17f) + 35.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getInterval(int i, float f, float f2) {
            return m19735b(i) * 1.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getKillExp(int i, float f, float f2) {
            return ((i * 0.022f) + 2.2f) * m19735b(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getKillScore(int i, float f, float f2) {
            return (int) (m19735b(i) * 25.0f);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getSpeed(int i, float f, float f2) {
            return 0.6f;
        }
    }};

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public WaveTemplates.EnemyGroupConfig[] getEnemyGroupConfigs() {
        return this.f15260a;
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public int getProbability(int i, float f, float f2) {
        return WaveTemplates.calculateProbability(i, f2, 3, 0.04f, 0.6f, 0.78f, 60.0f, 25.0f, 0.1f, 4);
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public String getWaveMessage() {
        return null;
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public String getWaveName() {
        return "HealerSlow";
    }
}
