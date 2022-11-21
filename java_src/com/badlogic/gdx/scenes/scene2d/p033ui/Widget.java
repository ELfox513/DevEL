package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Widget */
/* loaded from: classes.dex */
public class Widget extends Actor implements Layout {

    /* renamed from: G */
    public boolean f6252G;

    /* renamed from: F */
    public boolean f6251F = true;

    /* renamed from: H */
    public boolean f6253H = true;

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        validate();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMaxHeight() {
        return 0.0f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMaxWidth() {
        return 0.0f;
    }

    public float getMinHeight() {
        return getPrefHeight();
    }

    public float getMinWidth() {
        return getPrefWidth();
    }

    public float getPrefHeight() {
        return 0.0f;
    }

    public float getPrefWidth() {
        return 0.0f;
    }

    public void invalidate() {
        this.f6251F = true;
    }

    public void layout() {
    }

    public boolean needsLayout() {
        return this.f6251F;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void setFillParent(boolean z) {
        this.f6252G = z;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void sizeChanged() {
        invalidate();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void invalidateHierarchy() {
        if (!this.f6253H) {
            return;
        }
        invalidate();
        Group parent = getParent();
        if (parent instanceof Layout) {
            ((Layout) parent).invalidateHierarchy();
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void setLayoutEnabled(boolean z) {
        this.f6253H = z;
        if (z) {
            invalidateHierarchy();
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void validate() {
        float height;
        float f;
        if (!this.f6253H) {
            return;
        }
        Group parent = getParent();
        if (this.f6252G && parent != null) {
            Stage stage = getStage();
            if (stage != null && parent == stage.getRoot()) {
                f = stage.getWidth();
                height = stage.getHeight();
            } else {
                float width = parent.getWidth();
                height = parent.getHeight();
                f = width;
            }
            setSize(f, height);
        }
        if (!this.f6251F) {
            return;
        }
        this.f6251F = false;
        layout();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void pack() {
        setSize(getPrefWidth(), getPrefHeight());
        validate();
    }
}
