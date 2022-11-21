package com.prineside.tdi2.utils;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonWriter;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.EnemyGroup;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Wave;
import com.prineside.tdi2.WaveProcessor;
import com.prineside.tdi2.WaveTemplates;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.managers.WaveManager;
import com.prineside.tdi2.systems.WaveSystem;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.StringWriter;
/* loaded from: classes2.dex */
public class WaveTemplatesReportGenerator {

    /* renamed from: a */
    public static final int[] f15162a = {10, 20, 30, 47};

    public static void generateReport() {
        String str;
        StringWriter stringWriter;
        String str2;
        BossType bossType;
        String str3 = "WaveTemplatesReportGenerator";
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter2 = new StringWriter();
        json.setWriter(stringWriter2);
        json.writeObjectStart();
        json.writeArrayStart("milestones");
        for (int i : f15162a) {
            json.writeValue(Integer.valueOf(i));
        }
        json.writeArrayEnd();
        json.writeArrayStart("difficulties");
        int[] iArr = new int[75];
        for (int i2 = 1; i2 <= 75; i2++) {
            int round = MathUtils.round(WaveSystem.getDifficultWavesMultiplier(i2, f15162a) * 100.0f);
            iArr[i2 - 1] = round;
            json.writeValue(Integer.valueOf(round));
        }
        json.writeArrayEnd();
        json.writeObjectStart("templates");
        WaveTemplates.WaveTemplate[] waveTemplateArr = WaveTemplates.WAVE_TEMPLATES;
        int length = waveTemplateArr.length;
        int i3 = 0;
        while (true) {
            String str4 = "exp";
            String str5 = "coins";
            String str6 = "pwr";
            str = str3;
            String str7 = "hp";
            stringWriter = stringWriter2;
            String str8 = "prob";
            String str9 = "groups";
            if (i3 >= length) {
                break;
            }
            int i4 = length;
            WaveTemplates.WaveTemplate waveTemplate = waveTemplateArr[i3];
            WaveTemplates.WaveTemplate[] waveTemplateArr2 = waveTemplateArr;
            json.writeArrayStart(waveTemplate.getWaveName());
            int i5 = i3;
            int i6 = 1;
            int i7 = 75;
            while (i6 <= i7) {
                json.writeObjectStart();
                int i8 = iArr[i6 - 1];
                int[] iArr2 = iArr;
                float waveValue = WaveManager.getWaveValue(i6, i8);
                String str10 = str4;
                Wave generateWave = Game.f8589i.waveManager.generateWave(waveTemplate, i6, i8);
                json.writeArrayStart(str9);
                String str11 = str6;
                String str12 = str5;
                String str13 = str9;
                float f = 0.0f;
                int i9 = 0;
                float f2 = 0.0f;
                float f3 = 0.0f;
                float f4 = 0.0f;
                int i10 = 0;
                while (true) {
                    DelayedRemovalArray<EnemyGroup> delayedRemovalArray = generateWave.enemyGroups;
                    Wave wave = generateWave;
                    if (i9 < delayedRemovalArray.size) {
                        EnemyGroup enemyGroup = delayedRemovalArray.get(i9);
                        String str14 = str7;
                        float f5 = enemyGroup.health * enemyGroup.count;
                        f2 += f5;
                        double d = f;
                        WaveTemplates.WaveTemplate waveTemplate2 = waveTemplate;
                        double pow = StrictMath.pow(enemyGroup.speed, 2.0d);
                        double d2 = f5;
                        Double.isNaN(d2);
                        Double.isNaN(d);
                        f = (float) (d + (pow * d2));
                        int i11 = enemyGroup.count;
                        f3 += i11 * enemyGroup.bounty;
                        f4 += i11 * enemyGroup.killExp;
                        i10 += i11 * enemyGroup.killScore;
                        json.writeObjectStart();
                        json.writeValue("type", enemyGroup.type.name());
                        json.writeValue("delay", Float.valueOf(enemyGroup.delay));
                        json.writeValue("count", Integer.valueOf(enemyGroup.count));
                        json.writeValue("interval", Float.valueOf(enemyGroup.interval));
                        json.writeValue("speed", Float.valueOf(enemyGroup.speed));
                        json.writeObjectEnd();
                        i9++;
                        generateWave = wave;
                        str7 = str14;
                        str8 = str8;
                        i6 = i6;
                        waveTemplate = waveTemplate2;
                        i8 = i8;
                    }
                }
                String str15 = str7;
                String str16 = str8;
                int i12 = i6;
                WaveTemplates.WaveTemplate waveTemplate3 = waveTemplate;
                json.writeArrayEnd();
                json.writeValue(str16, Integer.valueOf(waveTemplate3.getProbability(i12, i8, waveValue)));
                json.writeValue(str15, Integer.valueOf(MathUtils.round(f2)));
                json.writeValue(str11, Integer.valueOf(MathUtils.round(f)));
                json.writeValue(str12, Integer.valueOf(MathUtils.round(f3)));
                json.writeValue(str10, Integer.valueOf(MathUtils.round(f4)));
                json.writeValue("score", Integer.valueOf(i10));
                json.writeObjectEnd();
                str6 = str11;
                str5 = str12;
                str9 = str13;
                i7 = 75;
                i6 = i12 + 1;
                str7 = str15;
                str4 = str10;
                waveTemplate = waveTemplate3;
                str8 = str16;
                iArr = iArr2;
            }
            json.writeArrayEnd();
            i3 = i5 + 1;
            str3 = str;
            stringWriter2 = stringWriter;
            length = i4;
            waveTemplateArr = waveTemplateArr2;
        }
        int[] iArr3 = iArr;
        String str17 = "exp";
        String str18 = "coins";
        String str19 = "score";
        String str20 = "prob";
        String str21 = "pwr";
        BossType[] bossTypeArr = BossType.values;
        int length2 = bossTypeArr.length;
        int i13 = 0;
        while (i13 < length2) {
            BossType[] bossTypeArr2 = bossTypeArr;
            WaveProcessor create = Game.f8589i.waveManager.getWaveProcessorFactory(bossTypeArr[i13]).create();
            int i14 = length2;
            json.writeArrayStart(bossType.name() + " Boss");
            int i15 = 1;
            int i16 = 75;
            while (i15 <= i16) {
                json.writeObjectStart();
                Array<EnemyGroup> generateEnemyGroups = create.generateEnemyGroups(i15, iArr3[i15 - 1]);
                WaveProcessor waveProcessor = create;
                json.writeArrayStart("groups");
                int i17 = i15;
                int i18 = i13;
                int i19 = 0;
                float f6 = 0.0f;
                float f7 = 0.0f;
                float f8 = 0.0f;
                float f9 = 0.0f;
                int i20 = 0;
                while (i19 < generateEnemyGroups.size) {
                    EnemyGroup enemyGroup2 = generateEnemyGroups.get(i19);
                    Array<EnemyGroup> array = generateEnemyGroups;
                    float f10 = enemyGroup2.health * enemyGroup2.count;
                    f7 += f10;
                    String str22 = str17;
                    double d3 = f6;
                    String str23 = str21;
                    String str24 = str20;
                    double pow2 = StrictMath.pow(enemyGroup2.speed, 2.0d);
                    double d4 = f10;
                    Double.isNaN(d4);
                    Double.isNaN(d3);
                    f6 = (float) (d3 + (pow2 * d4));
                    int i21 = enemyGroup2.count;
                    f8 += i21 * enemyGroup2.bounty;
                    f9 += i21 * enemyGroup2.killExp;
                    i20 += i21 * enemyGroup2.killScore;
                    json.writeObjectStart();
                    json.writeValue("type", enemyGroup2.type.name());
                    json.writeValue("delay", Float.valueOf(enemyGroup2.delay));
                    json.writeValue("count", Integer.valueOf(enemyGroup2.count));
                    json.writeValue("interval", Float.valueOf(enemyGroup2.interval));
                    json.writeValue("speed", Float.valueOf(enemyGroup2.speed));
                    json.writeObjectEnd();
                    i19++;
                    generateEnemyGroups = array;
                    str19 = str19;
                    str17 = str22;
                    str21 = str23;
                    str18 = str18;
                    str20 = str24;
                }
                String str25 = str20;
                String str26 = str21;
                String str27 = str18;
                String str28 = str17;
                String str29 = str19;
                json.writeArrayEnd();
                json.writeValue(str25, Config.SITE_API_VERSION);
                json.writeValue("hp", Integer.valueOf(MathUtils.round(f7)));
                json.writeValue(str26, Integer.valueOf(MathUtils.round(f6)));
                json.writeValue(str27, Integer.valueOf(MathUtils.round(f8)));
                json.writeValue(str28, Integer.valueOf(MathUtils.round(f9)));
                json.writeValue(str29, Integer.valueOf(i20));
                json.writeObjectEnd();
                str17 = str28;
                str19 = str29;
                i16 = 75;
                str21 = str26;
                str18 = str27;
                i13 = i18;
                str20 = str25;
                i15 = i17 + 1;
                create = waveProcessor;
            }
            json.writeArrayEnd();
            str21 = str21;
            str18 = str18;
            i13++;
            str20 = str20;
            bossTypeArr = bossTypeArr2;
            length2 = i14;
        }
        json.writeObjectEnd();
        json.writeObjectEnd();
        String stringWriter3 = stringWriter.toString();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter("../../asset sources/waves-report/report.json"));
            bufferedWriter.write(stringWriter3);
            bufferedWriter.close();
            BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter("../../asset sources/waves-report/report.js"));
            bufferedWriter2.write("Report = " + stringWriter3 + ";");
            bufferedWriter2.close();
            str2 = str;
        } catch (Exception e) {
            str2 = str;
            Logger.error(str2, "failed to write resources file", e);
        }
        Logger.log(str2, "Done");
    }
}
