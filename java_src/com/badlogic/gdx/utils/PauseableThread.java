package com.badlogic.gdx.utils;
/* loaded from: classes.dex */
public class PauseableThread extends Thread {

    /* renamed from: a */
    public final Runnable f6691a;

    /* renamed from: b */
    public boolean f6692b = false;

    /* renamed from: d */
    public boolean f6693d = false;

    public boolean isPaused() {
        return this.f6692b;
    }

    public void onPause() {
        this.f6692b = true;
    }

    public void onResume() {
        synchronized (this) {
            this.f6692b = false;
            notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (true) {
            synchronized (this) {
                while (this.f6692b) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
            if (this.f6693d) {
                return;
            }
            this.f6691a.run();
        }
    }

    public void stopThread() {
        this.f6693d = true;
        if (this.f6692b) {
            onResume();
        }
    }

    public PauseableThread(Runnable runnable) {
        this.f6691a = runnable;
    }
}
