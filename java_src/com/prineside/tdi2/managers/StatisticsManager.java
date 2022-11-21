package com.prineside.tdi2.managers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.I18NBundle;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.StringFormatter;
import java.io.StringWriter;
import java.util.Iterator;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class StatisticsManager extends Manager.ManagerAdapter {

    /* renamed from: a */
    public final double[] f10155a;

    /* renamed from: b */
    public final double[] f10156b;

    /* renamed from: d */
    public boolean f10157d;

    /* renamed from: k */
    public LifecycleListener f10158k;

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<StatisticsManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public StatisticsManager read() {
            return Game.f8589i.statisticsManager;
        }
    }

    public double getAllTime(StatisticsType statisticsType) {
        return this.f10155a[statisticsType.ordinal()];
    }

    public double getMaxOneGame(StatisticsType statisticsType) {
        return this.f10156b[statisticsType.ordinal()];
    }

    public void registerDelta(StatisticsType statisticsType, double d) {
        this.f10157d = true;
        double[] dArr = this.f10155a;
        int ordinal = statisticsType.ordinal();
        dArr[ordinal] = dArr[ordinal] + d;
        if (statisticsType == StatisticsType.PT) {
            ProgressManager progressManager = Game.f8589i.progressManager;
            float f = progressManager.lootBoostTimeLeft;
            if (f > 0.0f) {
                double d2 = f;
                Double.isNaN(d2);
                float f2 = (float) (d2 - d);
                progressManager.lootBoostTimeLeft = f2;
                if (f2 < 0.0f) {
                    progressManager.lootBoostTimeLeft = 0.0f;
                }
                progressManager.requireDelayedSave();
            }
        }
    }

    public void registerValue(StatisticsType statisticsType, double d) {
        this.f10157d = true;
        this.f10155a[statisticsType.ordinal()] = d;
    }

    public CharSequence formatStatisticsValue(StatisticsType statisticsType, double d) {
        if (statisticsType != StatisticsType.PT && statisticsType != StatisticsType.PRT && statisticsType != StatisticsType.PTEMWD && statisticsType != StatisticsType.WCST) {
            return StringFormatter.compactNumber(d, false);
        }
        return StringFormatter.digestTime((int) d);
    }

    public void registerMaxOneGame(StatisticsType statisticsType, double d) {
        if (this.f10156b[statisticsType.ordinal()] < d) {
            this.f10157d = true;
            this.f10156b[statisticsType.ordinal()] = d;
        }
    }

    public final void reload() {
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_STATISTICS);
        for (int i = 0; i < StatisticsType.values.length; i++) {
            this.f10155a[i] = 0.0d;
            this.f10156b[i] = 0.0d;
        }
        String str = preferencesManager.get("allTime", null);
        double d = 3.1536E7d;
        if (str != null) {
            try {
                Iterator<JsonValue> iterator2 = new JsonReader().parse(str).iterator2();
                while (iterator2.hasNext()) {
                    JsonValue next = iterator2.next();
                    try {
                        StatisticsType valueOf = StatisticsType.valueOf(next.name);
                        this.f10155a[valueOf.ordinal()] = next.asDouble();
                        if (valueOf == StatisticsType.PRT && (this.f10155a[valueOf.ordinal()] < 0.0d || this.f10155a[valueOf.ordinal()] > d)) {
                            Logger.log("StatisticsManager", "reset PRT statistics - invalid value " + this.f10155a[valueOf.ordinal()]);
                            this.f10155a[valueOf.ordinal()] = 0.0d;
                        }
                    } catch (Exception e) {
                        Logger.error("StatisticsManager", "skipping all time stat '" + next.name + "'", e);
                    }
                    d = 3.1536E7d;
                }
            } catch (Exception e2) {
                Logger.error("StatisticsManager", "failed to parse json: " + str, e2);
            }
        }
        String str2 = preferencesManager.get("maxOneGame", null);
        if (str2 != null) {
            try {
                Iterator<JsonValue> iterator22 = new JsonReader().parse(str2).iterator2();
                while (iterator22.hasNext()) {
                    JsonValue next2 = iterator22.next();
                    try {
                        StatisticsType valueOf2 = StatisticsType.valueOf(next2.name);
                        this.f10156b[valueOf2.ordinal()] = next2.asDouble();
                        if (valueOf2 == StatisticsType.PRT) {
                            if (this.f10156b[valueOf2.ordinal()] >= 0.0d && this.f10155a[valueOf2.ordinal()] <= 3.1536E7d) {
                            }
                            try {
                                Logger.log("StatisticsManager", "reset PRT mpg statistics - invalid value " + this.f10155a[valueOf2.ordinal()]);
                                this.f10156b[valueOf2.ordinal()] = 0.0d;
                            } catch (Exception e3) {
                                e = e3;
                                Logger.error("StatisticsManager", "skipping max one game stat '" + next2.name + "'", e);
                            }
                        }
                    } catch (Exception e4) {
                        e = e4;
                    }
                }
            } catch (Exception e5) {
                Logger.error("StatisticsManager", "failed to parse json: " + str, e5);
            }
        }
    }

    public void save() {
        StatisticsType[] statisticsTypeArr;
        StatisticsType[] statisticsTypeArr2;
        if (!this.f10157d || Config.isHeadless()) {
            return;
        }
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_STATISTICS);
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeObjectStart();
        for (StatisticsType statisticsType : StatisticsType.values) {
            if (this.f10155a[statisticsType.ordinal()] != 0.0d) {
                json.writeValue(statisticsType.name(), Double.valueOf(this.f10155a[statisticsType.ordinal()]));
            }
        }
        json.writeObjectEnd();
        preferencesManager.set("allTime", stringWriter.toString());
        Json json2 = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter2 = new StringWriter();
        json2.setWriter(stringWriter2);
        json2.writeObjectStart();
        for (StatisticsType statisticsType2 : StatisticsType.values) {
            if (this.f10156b[statisticsType2.ordinal()] != 0.0d) {
                json2.writeValue(statisticsType2.name(), Double.valueOf(this.f10156b[statisticsType2.ordinal()]));
            }
        }
        json2.writeObjectEnd();
        preferencesManager.set("maxOneGame", stringWriter2.toString());
        preferencesManager.flush();
        this.f10157d = false;
        Logger.log("StatisticsManager", "Saved");
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.StatisticsManager.1
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                StatisticsManager.this.reload();
            }
        });
        LifecycleListener lifecycleListener = new LifecycleListener() { // from class: com.prineside.tdi2.managers.StatisticsManager.2
            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                StatisticsManager.this.save();
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
            }
        };
        this.f10158k = lifecycleListener;
        Gdx.app.addLifecycleListener(lifecycleListener);
        reload();
    }

    public StatisticsManager() {
        StatisticsType[] statisticsTypeArr = StatisticsType.values;
        this.f10155a = new double[statisticsTypeArr.length];
        this.f10156b = new double[statisticsTypeArr.length];
        this.f10157d = false;
        reload();
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        save();
        Gdx.app.removeLifecycleListener(this.f10158k);
    }

    public CharSequence getStatisticsTitle(StatisticsType statisticsType) {
        String name = statisticsType.name();
        I18NBundle i18NBundle = Game.f8589i.localeManager.i18n;
        return i18NBundle.get("statistics_" + name);
    }
}
