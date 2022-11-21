package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.utils.SnapshotArray;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Stack */
/* loaded from: classes.dex */
public class Stack extends WidgetGroup {

    /* renamed from: P */
    public float f6071P;

    /* renamed from: Q */
    public float f6072Q;

    /* renamed from: R */
    public float f6073R;

    /* renamed from: S */
    public float f6074S;

    /* renamed from: T */
    public float f6075T;

    /* renamed from: U */
    public float f6076U;

    /* renamed from: V */
    public boolean f6077V;

    public Stack() {
        this.f6077V = true;
        setTransform(false);
        setWidth(150.0f);
        setHeight(150.0f);
        setTouchable(Touchable.childrenOnly);
    }

    public void add(Actor actor) {
        addActor(actor);
    }

    /* renamed from: q */
    public final void m23782q() {
        float f;
        float f2;
        this.f6077V = false;
        this.f6071P = 0.0f;
        this.f6072Q = 0.0f;
        this.f6073R = 0.0f;
        this.f6074S = 0.0f;
        this.f6075T = 0.0f;
        this.f6076U = 0.0f;
        SnapshotArray<Actor> children = getChildren();
        int i = children.size;
        for (int i2 = 0; i2 < i; i2++) {
            Actor actor = children.get(i2);
            if (actor instanceof Layout) {
                Layout layout = (Layout) actor;
                this.f6071P = Math.max(this.f6071P, layout.getPrefWidth());
                this.f6072Q = Math.max(this.f6072Q, layout.getPrefHeight());
                this.f6073R = Math.max(this.f6073R, layout.getMinWidth());
                this.f6074S = Math.max(this.f6074S, layout.getMinHeight());
                f2 = layout.getMaxWidth();
                f = layout.getMaxHeight();
            } else {
                this.f6071P = Math.max(this.f6071P, actor.getWidth());
                this.f6072Q = Math.max(this.f6072Q, actor.getHeight());
                this.f6073R = Math.max(this.f6073R, actor.getWidth());
                this.f6074S = Math.max(this.f6074S, actor.getHeight());
                f = 0.0f;
                f2 = 0.0f;
            }
            if (f2 > 0.0f) {
                float f3 = this.f6075T;
                if (f3 != 0.0f) {
                    f2 = Math.min(f3, f2);
                }
                this.f6075T = f2;
            }
            if (f > 0.0f) {
                float f4 = this.f6076U;
                if (f4 != 0.0f) {
                    f = Math.min(f4, f);
                }
                this.f6076U = f;
            }
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMaxHeight() {
        if (this.f6077V) {
            m23782q();
        }
        return this.f6076U;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMaxWidth() {
        if (this.f6077V) {
            m23782q();
        }
        return this.f6075T;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMinHeight() {
        if (this.f6077V) {
            m23782q();
        }
        return this.f6074S;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMinWidth() {
        if (this.f6077V) {
            m23782q();
        }
        return this.f6073R;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        if (this.f6077V) {
            m23782q();
        }
        return this.f6072Q;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        if (this.f6077V) {
            m23782q();
        }
        return this.f6071P;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void layout() {
        if (this.f6077V) {
            m23782q();
        }
        float width = getWidth();
        float height = getHeight();
        SnapshotArray<Actor> children = getChildren();
        int i = children.size;
        for (int i2 = 0; i2 < i; i2++) {
            Actor actor = children.get(i2);
            actor.setBounds(0.0f, 0.0f, width, height);
            if (actor instanceof Layout) {
                ((Layout) actor).validate();
            }
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void invalidate() {
        super.invalidate();
        this.f6077V = true;
    }

    public Stack(Actor... actorArr) {
        this();
        for (Actor actor : actorArr) {
            addActor(actor);
        }
    }
}
