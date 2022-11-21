package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.utils.Timer;
/* loaded from: classes.dex */
public class DragScrollListener extends DragListener {

    /* renamed from: A */
    public static final Vector2 f6354A = new Vector2();

    /* renamed from: p */
    public ScrollPane f6355p;

    /* renamed from: q */
    public Timer.Task f6356q;

    /* renamed from: r */
    public Timer.Task f6357r;

    /* renamed from: w */
    public long f6362w;

    /* renamed from: y */
    public float f6364y;

    /* renamed from: z */
    public float f6365z;

    /* renamed from: s */
    public Interpolation f6358s = Interpolation.exp5In;

    /* renamed from: t */
    public float f6359t = 15.0f;

    /* renamed from: u */
    public float f6360u = 75.0f;

    /* renamed from: v */
    public float f6361v = 0.05f;

    /* renamed from: x */
    public long f6363x = 1750;

    /* renamed from: a */
    public float m23702a() {
        return this.f6358s.apply(this.f6359t, this.f6360u, Math.min(1.0f, ((float) (System.currentTimeMillis() - this.f6362w)) / ((float) this.f6363x)));
    }

    /* renamed from: b */
    public boolean m23701b(float f) {
        return f >= this.f6355p.getHeight() - this.f6364y;
    }

    /* renamed from: c */
    public boolean m23700c(float f) {
        return f < this.f6365z;
    }

    /* renamed from: d */
    public void m23699d(float f) {
        this.f6355p.setScrollY(f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.DragListener
    public void dragStop(InputEvent inputEvent, float f, float f2, int i) {
        this.f6356q.cancel();
        this.f6357r.cancel();
    }

    public void setPadding(float f, float f2) {
        this.f6364y = f;
        this.f6365z = f2;
    }

    public void setup(float f, float f2, float f3, float f4) {
        this.f6359t = f;
        this.f6360u = f2;
        this.f6361v = f3;
        this.f6363x = f4 * 1000.0f;
    }

    public DragScrollListener(final ScrollPane scrollPane) {
        this.f6355p = scrollPane;
        this.f6356q = new Timer.Task() { // from class: com.badlogic.gdx.scenes.scene2d.utils.DragScrollListener.1
            @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
            public void run() {
                DragScrollListener.this.m23699d(scrollPane.getScrollY() - DragScrollListener.this.m23702a());
            }
        };
        this.f6357r = new Timer.Task() { // from class: com.badlogic.gdx.scenes.scene2d.utils.DragScrollListener.2
            @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
            public void run() {
                DragScrollListener.this.m23699d(scrollPane.getScrollY() + DragScrollListener.this.m23702a());
            }
        };
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.DragListener
    public void drag(InputEvent inputEvent, float f, float f2, int i) {
        Actor listenerActor = inputEvent.getListenerActor();
        ScrollPane scrollPane = this.f6355p;
        Vector2 vector2 = f6354A;
        listenerActor.localToActorCoordinates(scrollPane, vector2.set(f, f2));
        if (m23701b(vector2.f5528y)) {
            this.f6357r.cancel();
            if (!this.f6356q.isScheduled()) {
                this.f6362w = System.currentTimeMillis();
                Timer.Task task = this.f6356q;
                float f3 = this.f6361v;
                Timer.schedule(task, f3, f3);
            }
        } else if (m23700c(vector2.f5528y)) {
            this.f6356q.cancel();
            if (!this.f6357r.isScheduled()) {
                this.f6362w = System.currentTimeMillis();
                Timer.Task task2 = this.f6357r;
                float f4 = this.f6361v;
                Timer.schedule(task2, f4, f4);
            }
        } else {
            this.f6356q.cancel();
            this.f6357r.cancel();
        }
    }
}
