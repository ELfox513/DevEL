package com.prineside.tdi2.managers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.managers.PreferencesManager;
/* loaded from: classes2.dex */
public class TimeManager extends Manager.ManagerAdapter {

    /* renamed from: b */
    public boolean f10165b;

    /* renamed from: d */
    public float f10166d;

    /* renamed from: a */
    public long f10164a = -1;

    /* renamed from: k */
    public final DelayedRemovalArray<TimeManagerListener> f10167k = new DelayedRemovalArray<>(true, 1, TimeManagerListener.class);

    /* loaded from: classes2.dex */
    public interface TimeManagerListener {
        void progressTimePassed(float f);
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        save();
    }

    public void addListener(TimeManagerListener timeManagerListener) {
        if (timeManagerListener != null) {
            if (!this.f10165b) {
                if (!this.f10167k.contains(timeManagerListener, true)) {
                    Logger.log("TimeManager", "added listener");
                    this.f10167k.add(timeManagerListener);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Manager is already set up, listeners may loose time - add listeners only in setup()");
        }
        throw new IllegalArgumentException("listener is null");
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void postRender(float f) {
        DelayedRemovalArray<TimeManagerListener> delayedRemovalArray;
        if (!this.f10165b || Config.isHeadless()) {
            return;
        }
        long timestampMillis = Game.getTimestampMillis();
        long j = this.f10164a;
        long j2 = timestampMillis - j;
        if (j != -1 && j2 >= 0) {
            if (j2 > 259200000) {
                j2 = 259200000;
            }
            if (j2 > 1000) {
                this.f10164a = timestampMillis;
                float f2 = ((float) j2) * 0.001f;
                if (f2 < 0.0f) {
                    f2 = 0.0f;
                }
                if (f2 > 259200.0f) {
                    f2 = 259200.0f;
                }
                this.f10167k.begin();
                int i = 0;
                while (true) {
                    delayedRemovalArray = this.f10167k;
                    if (i >= delayedRemovalArray.size) {
                        break;
                    }
                    delayedRemovalArray.items[i].progressTimePassed(f2);
                    i++;
                }
                delayedRemovalArray.end();
            }
        } else {
            this.f10164a = timestampMillis;
        }
        float f3 = this.f10166d + f;
        this.f10166d = f3;
        if (f3 > 120.0f) {
            this.f10166d = 0.0f;
            save();
        }
    }

    public void removeListener(TimeManagerListener timeManagerListener) {
        if (timeManagerListener != null) {
            this.f10167k.removeValue(timeManagerListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public final void save() {
        if (!this.f10165b) {
            Logger.error("TimeManager", "save failed - manager is not set up yet");
            return;
        }
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS);
        preferencesManager.set("timeManagerLastTimestamp", this.f10164a + "");
        preferencesManager.flush();
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        this.f10165b = true;
        Gdx.app.addLifecycleListener(new LifecycleListener() { // from class: com.prineside.tdi2.managers.TimeManager.1
            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                TimeManager.this.save();
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
            }
        });
        String str = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS).get("timeManagerLastTimestamp", null);
        if (str != null) {
            try {
                this.f10164a = Long.parseLong(str);
                Logger.log("TimeManager", "loaded time preferences");
            } catch (Exception e) {
                Logger.error("TimeManager", "failed to load time preferences", e);
            }
        }
    }
}
