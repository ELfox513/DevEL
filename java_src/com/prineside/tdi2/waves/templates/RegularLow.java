package com.prineside.tdi2.waves.templates;

import com.prineside.tdi2.WaveTemplates;
import com.prineside.tdi2.enums.EnemyType;
/* loaded from: classes2.dex */
public class RegularLow extends WaveTemplates.WaveTemplate {

    /* renamed from: a */
    public final WaveTemplates.EnemyGroupConfig[] f15283a = {new WaveTemplates.EnemyGroupConfig() { // from class: com.prineside.tdi2.waves.templates.RegularLow.1
        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getBounty(int i, float f, float f2) {
            return (i * 0.07f) + 2.9f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getCount(int i, float f, float f2) {
            return ((int) StrictMath.pow(i, 0.6d)) + 8;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getDelay(int i, float f, float f2) {
            return 0.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public EnemyType getEnemyType() {
            return EnemyType.REGULAR;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getHealth(int i, float f, float f2) {
            double d = f2;
            Double.isNaN(d);
            return (((float) StrictMath.pow(d * 10.0d, 1.27d)) * 0.1f) + 26.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getInterval(int i, float f, float f2) {
            return 1.0f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getKillExp(int i, float f, float f2) {
            return (i * 0.014f) + 1.4f;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public int getKillScore(int i, float f, float f2) {
            return 15;
        }

        @Override // com.prineside.tdi2.WaveTemplates.EnemyGroupConfig
        public float getSpeed(int i, float f, float f2) {
            return 1.0f;
        }
    }};

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public WaveTemplates.EnemyGroupConfig[] getEnemyGroupConfigs() {
        return this.f15283a;
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public int getProbability(int i, float f, float f2) {
        return WaveTemplates.calculateProbability(i, f2, 0, 1.0f, 0.5f, 0.25f, 90.0f, 40.0f, 0.16f, 3);
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public String getWaveMessage() {
        return null;
    }

    @Override // com.prineside.tdi2.WaveTemplates.WaveTemplate
    public String getWaveName() {
        return "RegularLow";
    }
}
