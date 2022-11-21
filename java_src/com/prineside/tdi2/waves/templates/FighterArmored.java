package com.prineside.tdi2.waves.templates;

import com.badlogic.gdx.math.MathUtils;
import com.prineside.tdi2.WaveTemplates;
import com.prineside.tdi2.enums.EnemyType;
/* loaded from: classes2.dex */
public class FighterArmored extends WaveTemplates.WaveTemplate {

    /* renamed from: a */
    public final WaveTemplates.EnemyGroupConfig[] f15241a = {new WaveTemplates.EnemyGroupConfig() { // from class: com.prineside.tdi2.waves.templates.FighterArmored.1
        /* renamed from: a */
        public final float m19760a(int i) {
            return MathUtils.clamp(((i / 20.0f) * 0.6f) + 0.4f, 0.0f, 1.0f);
        }

        /* renamed from: b */
        public final float m19759b(int i) {
            return 1.0f / m19760a(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getBounty(int i, float f, float f2) {
            return ((i * 0.09f) + 3.5f) * m19759b(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getCount(int i, float f, float f2) {
            double pow = ((int) StrictMath.pow(i * 0.9f, 0.52d)) + 3;
            Double.isNaN(pow);
            double m19760a = m19760a(i);
            Double.isNaN(m19760a);
            return (int) (pow * 0.75d * m19760a);
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
            return m19759b(i) * 1.5f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getKillExp(int i, float f, float f2) {
            return ((i * 0.017f) + 1.7f) * m19759b(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getKillScore(int i, float f, float f2) {
            return (int) (m19759b(i) * 20.0f);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getSpeed(int i, float f, float f2) {
            return 0.9f;
        }
    }, new WaveTemplates.EnemyGroupConfig() { // from class: com.prineside.tdi2.waves.templates.FighterArmored.2
        /* renamed from: a */
        public final float m19758a(int i) {
            return MathUtils.clamp(((i / 25.0f) * 0.4f) + 0.6f, 0.0f, 1.0f);
        }

        /* renamed from: b */
        public final float m19757b(int i) {
            return 1.0f / m19758a(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getBounty(int i, float f, float f2) {
            return ((i * 0.091f) + 3.6f) * m19757b(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getCount(int i, float f, float f2) {
            double pow = ((int) StrictMath.pow(i * 0.9f, 0.52d)) + 3;
            Double.isNaN(pow);
            double m19758a = m19758a(i);
            Double.isNaN(m19758a);
            return (int) (pow * 0.75d * m19758a);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getDelay(int i, float f, float f2) {
            return 0.75f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public EnemyType getEnemyType() {
            return EnemyType.FIGHTER;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getHealth(int i, float f, float f2) {
            double d = f2;
            Double.isNaN(d);
            return (((float) StrictMath.pow(d * 10.0d, 1.23d)) * 0.05f) + 10.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getInterval(int i, float f, float f2) {
            return m19757b(i) * 1.5f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getKillExp(int i, float f, float f2) {
            return ((i * 0.018f) + 1.75f) * m19757b(i);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getKillScore(int i, float f, float f2) {
            return (int) (m19757b(i) * 20.0f);
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getSpeed(int i, float f, float f2) {
            return 0.9f;
        }
    }};

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public WaveTemplates.EnemyGroupConfig[] getEnemyGroupConfigs() {
        return this.f15241a;
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public int getProbability(int i, float f, float f2) {
        return WaveTemplates.calculateProbability(i, f2, 3, 0.04f, 0.6f, 0.28f, -50.0f, 17.0f, 0.1f, 4);
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public String getWaveMessage() {
        return null;
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public String getWaveName() {
        return "FighterArmored";
    }
}
