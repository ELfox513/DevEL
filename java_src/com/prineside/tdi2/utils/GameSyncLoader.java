package com.prineside.tdi2.utils;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
/* loaded from: classes2.dex */
public class GameSyncLoader {

    /* renamed from: a */
    public final Array<Task> f15084a = new Array<>();

    /* renamed from: b */
    public final DelayedRemovalArray<SyncExecutionListener> f15085b = new DelayedRemovalArray<>(false, 1);

    /* renamed from: c */
    public int f15086c = 0;

    /* renamed from: d */
    public boolean f15087d = false;

    /* renamed from: e */
    public boolean f15088e;

    /* loaded from: classes2.dex */
    public interface SyncExecutionListener {
        void done();

        void startedTask(Task task, Task task2);
    }

    public void enableExtraFrameBeforeTaskStart() {
        this.f15087d = true;
    }

    public float getProgress() {
        return this.f15086c / this.f15084a.size;
    }

    public boolean isDone() {
        return this.f15086c == this.f15084a.size;
    }

    /* loaded from: classes2.dex */
    public static class Task {

        /* renamed from: a */
        public final Runnable f15089a;
        public final String title;

        public Task(String str, Runnable runnable) {
            if (runnable != null) {
                this.f15089a = runnable;
                this.title = str;
                return;
            }
            throw new IllegalArgumentException("runnable is null for task " + str);
        }
    }

    public void addListener(SyncExecutionListener syncExecutionListener) {
        if (syncExecutionListener != null) {
            if (!this.f15085b.contains(syncExecutionListener, true)) {
                this.f15085b.add(syncExecutionListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void addTask(Task task) {
        if (this.f15086c == 0) {
            this.f15084a.add(task);
            return;
        }
        throw new IllegalStateException("Can't registerDelta new tasks, already executing");
    }

    public boolean iterate() {
        Task task;
        int i = this.f15086c;
        Array<Task> array = this.f15084a;
        int i2 = array.size;
        if (i == i2) {
            return false;
        }
        if (i < i2) {
            Task task2 = array.get(i);
            boolean z = !this.f15088e;
            if (!this.f15087d || z) {
                this.f15085b.begin();
                int i3 = this.f15085b.size;
                for (int i4 = 0; i4 < i3; i4++) {
                    SyncExecutionListener syncExecutionListener = this.f15085b.get(i4);
                    int i5 = this.f15086c;
                    if (i5 == 0) {
                        task = null;
                    } else {
                        task = this.f15084a.get(i5 - 1);
                    }
                    syncExecutionListener.startedTask(task2, task);
                }
                this.f15085b.end();
                this.f15088e = true;
            }
            if (!this.f15087d || !z) {
                long realTickCount = Game.getRealTickCount();
                Logger.log("GameSyncLoader", "starting \"" + task2.title + "\"");
                task2.f15089a.run();
                Logger.log("GameSyncLoader", "done \"" + task2.title + "\" in " + (((float) (Game.getRealTickCount() - realTickCount)) * 0.001f) + "ms");
                int i6 = this.f15086c + 1;
                this.f15086c = i6;
                this.f15088e = false;
                if (i6 == this.f15084a.size) {
                    this.f15085b.begin();
                    int i7 = this.f15085b.size;
                    for (int i8 = 0; i8 < i7; i8++) {
                        this.f15085b.get(i8).done();
                    }
                    this.f15085b.end();
                }
            }
        }
        return true;
    }
}
