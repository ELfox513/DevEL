package com.badlogic.gdx.scenes.scene2d;

import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public class Event implements Pool.Poolable {

    /* renamed from: a */
    public Stage f5640a;

    /* renamed from: b */
    public Actor f5641b;

    /* renamed from: d */
    public Actor f5642d;

    /* renamed from: k */
    public boolean f5643k;

    /* renamed from: p */
    public boolean f5644p = true;

    /* renamed from: q */
    public boolean f5645q;

    /* renamed from: r */
    public boolean f5646r;

    /* renamed from: s */
    public boolean f5647s;

    public void cancel() {
        this.f5647s = true;
        this.f5646r = true;
        this.f5645q = true;
    }

    public boolean getBubbles() {
        return this.f5644p;
    }

    public Actor getListenerActor() {
        return this.f5642d;
    }

    public Stage getStage() {
        return this.f5640a;
    }

    public Actor getTarget() {
        return this.f5641b;
    }

    public void handle() {
        this.f5645q = true;
    }

    public boolean isCancelled() {
        return this.f5647s;
    }

    public boolean isCapture() {
        return this.f5643k;
    }

    public boolean isHandled() {
        return this.f5645q;
    }

    public boolean isStopped() {
        return this.f5646r;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f5640a = null;
        this.f5641b = null;
        this.f5642d = null;
        this.f5643k = false;
        this.f5644p = true;
        this.f5645q = false;
        this.f5646r = false;
        this.f5647s = false;
    }

    public void setBubbles(boolean z) {
        this.f5644p = z;
    }

    public void setCapture(boolean z) {
        this.f5643k = z;
    }

    public void setListenerActor(Actor actor) {
        this.f5642d = actor;
    }

    public void setStage(Stage stage) {
        this.f5640a = stage;
    }

    public void setTarget(Actor actor) {
        this.f5641b = actor;
    }

    public void stop() {
        this.f5646r = true;
    }
}
