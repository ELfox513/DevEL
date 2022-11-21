package com.prineside.tdi2.waves.templates;

import com.badlogic.gdx.math.MathUtils;
import com.prineside.tdi2.WaveTemplates;
import com.prineside.tdi2.enums.EnemyType;
/* loaded from: classes2.dex */
public class HealerArmored extends WaveTemplates.WaveTemplate {

    /* renamed from: a */
    public final WaveTemplates.EnemyGroupConfig[] f15248a = {new WaveTemplates.EnemyGroupConfig() { // from class: com.prineside.tdi2.waves.templates.HealerArmored.1
        /* renamed from: a */
        public final float m19752a(int i) {
            return MathUtils.clamp(((i / 20.0f) * 0.6f) + 0.4f, 0.0f, 1.0f);
        }

        /* renamed from: b */
        public final float m19751b(int i) {
            return 1.0f / m19752a(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getBounty(int i, float f, float f2) {
            return ((i * 0.09f) + 3.5f) * m19751b(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getCount(int i, float f, float f2) {
            double pow = ((int) StrictMath.pow(i * 0.9f, 0.52d)) + 3;
            Double.isNaN(pow);
            double m19752a = m19752a(i);
            Double.isNaN(m19752a);
            return (int) (pow * 0.75d * m19752a);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getDelay(int i, float f, float f2) {
            return 0.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public EnemyType getEnemyType() {
            return EnemyType.ARMORED;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getHealth(int i, float f, float f2) {
            double d = f2;
            Double.isNaN(d);
            return (((float) StrictMath.pow(d * 10.0d, 1.23d)) * 0.08f) + 14.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getInterval(int i, float f, float f2) {
            return m19751b(i) * 1.5f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getKillExp(int i, float f, float f2) {
            return ((i * 0.017f) + 1.7f) * m19751b(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getKillScore(int i, float f, float f2) {
            return (int) (m19751b(i) * 20.0f);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getSpeed(int i, float f, float f2) {
            return 0.9f;
        }
    }, new WaveTemplates.EnemyGroupConfig() { // from class: com.prineside.tdi2.waves.templates.HealerArmored.2
        /* renamed from: a */
        public final float m19750a(int i) {
            return MathUtils.clamp(((i / 25.0f) * 0.4f) + 0.6f, 0.0f, 1.0f);
        }

        /* renamed from: b */
        public final float m19749b(int i) {
            return 1.0f / m19750a(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getBounty(int i, float f, float f2) {
            return ((i * 0.091f) + 3.6f) * m19749b(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getCount(int i, float f, float f2) {
            double pow = ((int) StrictMath.pow(i * 0.9f, 0.52d)) + 3;
            Double.isNaN(pow);
            double m19750a = m19750a(i);
            Double.isNaN(m19750a);
            return (int) (pow * 0.75d * m19750a);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getDelay(int i, float f, float f2) {
            return 0.75f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public EnemyType getEnemyType() {
            return EnemyType.HEALER;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getHealth(int i, float f, float f2) {
            double d = f2;
            Double.isNaN(d);
            return (((float) StrictMath.pow(d * 10.0d, 1.23d)) * 0.062f) + 12.5f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getInterval(int i, float f, float f2) {
            return m19749b(i) * 1.5f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getKillExp(int i, float f, float f2) {
            return ((i * 0.018f) + 1.75f) * m19749b(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getKillScore(int i, float f, float f2) {
            return (int) (m19749b(i) * 20.0f);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getSpeed(int i, float f, float f2) {
            return 0.9f;
        }
    }};

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public WaveTemplates.EnemyGroupConfig[] getEnemyGroupConfigs() {
        return this.f15248a;
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public int getProbability(int i, float f, float f2) {
        return WaveTemplates.calculateProbability(i, f2, 3, 0.04f, 0.6f, 0.78f, -30.0f, 25.0f, 0.1f, 4);
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public String getWaveMessage() {
        return null;
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public String getWaveName() {
        return "HealerArmored";
    }
}
