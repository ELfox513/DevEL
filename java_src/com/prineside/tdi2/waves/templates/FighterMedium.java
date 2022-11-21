package com.prineside.tdi2.waves.templates;

import com.badlogic.gdx.math.MathUtils;
import com.prineside.tdi2.WaveTemplates;
import com.prineside.tdi2.enums.EnemyType;
/* loaded from: classes2.dex */
public class FighterMedium extends WaveTemplates.WaveTemplate {

    /* renamed from: a */
    public final WaveTemplates.EnemyGroupConfig[] f15246a = {new WaveTemplates.EnemyGroupConfig() { // from class: com.prineside.tdi2.waves.templates.FighterMedium.1
        /* renamed from: a */
        public final float m19754a(int i) {
            return MathUtils.clamp(((i / 20.0f) * 0.6f) + 0.4f, 0.0f, 1.0f);
        }

        /* renamed from: b */
        public final float m19753b(int i) {
            return 1.0f / m19754a(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getBounty(int i, float f, float f2) {
            return ((i * 0.07f) + 3.5f) * m19753b(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getCount(int i, float f, float f2) {
            double d;
            Double.isNaN(i);
            double pow = (((int) StrictMath.pow(d * 1.3d, 0.59d)) + 6) * m19754a(i);
            Double.isNaN(pow);
            return (int) (pow * 1.1d);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getDelay(int i, float f, float f2) {
            return 0.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public EnemyType getEnemyType() {
            return EnemyType.FIGHTER;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getHealth(int i, float f, float f2) {
            double d = f2;
            Double.isNaN(d);
            return (((float) StrictMath.pow(d * 6.0d, 1.26d)) * 0.07f) + 12.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getInterval(int i, float f, float f2) {
            return m19753b(i) * 1.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getKillExp(int i, float f, float f2) {
            return ((i * 0.012f) + 1.2f) * m19753b(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getKillScore(int i, float f, float f2) {
            return (int) (m19753b(i) * 15.0f);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getSpeed(int i, float f, float f2) {
            return 1.0f;
        }
    }};

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public WaveTemplates.EnemyGroupConfig[] getEnemyGroupConfigs() {
        return this.f15246a;
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public int getProbability(int i, float f, float f2) {
        return WaveTemplates.calculateProbability(i, f2, 3, 0.07f, 0.4f, 0.37f, -14.0f, 20.0f, 0.11f, 4);
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public String getWaveMessage() {
        return null;
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public String getWaveName() {
        return "FighterMedium";
    }
}
