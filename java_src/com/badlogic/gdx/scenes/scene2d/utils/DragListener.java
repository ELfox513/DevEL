package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
/* loaded from: classes.dex */
public class DragListener extends InputListener {

    /* renamed from: g */
    public float f6345g;

    /* renamed from: h */
    public float f6346h;

    /* renamed from: i */
    public float f6347i;

    /* renamed from: j */
    public float f6348j;

    /* renamed from: k */
    public float f6349k;

    /* renamed from: l */
    public float f6350l;

    /* renamed from: n */
    public int f6352n;

    /* renamed from: o */
    public boolean f6353o;

    /* renamed from: b */
    public float f6340b = 14.0f;

    /* renamed from: c */
    public float f6341c = -1.0f;

    /* renamed from: d */
    public float f6342d = -1.0f;

    /* renamed from: e */
    public float f6343e = -1.0f;

    /* renamed from: f */
    public float f6344f = -1.0f;

    /* renamed from: m */
    public int f6351m = -1;

    public void cancel() {
        this.f6353o = false;
        this.f6351m = -1;
    }

    public void drag(InputEvent inputEvent, float f, float f2, int i) {
    }

    public void dragStart(InputEvent inputEvent, float f, float f2, int i) {
    }

    public void dragStop(InputEvent inputEvent, float f, float f2, int i) {
    }

    public int getButton() {
        return this.f6352n;
    }

    public float getDeltaX() {
        return this.f6349k - this.f6347i;
    }

    public float getDeltaY() {
        return this.f6350l - this.f6348j;
    }

    public float getDragDistance() {
        return Vector2.len(this.f6349k - this.f6345g, this.f6350l - this.f6346h);
    }

    public float getDragStartX() {
        return this.f6345g;
    }

    public float getDragStartY() {
        return this.f6346h;
    }

    public float getDragX() {
        return this.f6349k;
    }

    public float getDragY() {
        return this.f6350l;
    }

    public float getStageTouchDownX() {
        return this.f6343e;
    }

    public float getStageTouchDownY() {
        return this.f6344f;
    }

    public float getTapSquareSize() {
        return this.f6340b;
    }

    public float getTouchDownX() {
        return this.f6341c;
    }

    public float getTouchDownY() {
        return this.f6342d;
    }

    public boolean isDragging() {
        return this.f6353o;
    }

    public void setButton(int i) {
        this.f6352n = i;
    }

    public void setDragStartX(float f) {
        this.f6345g = f;
    }

    public void setDragStartY(float f) {
        this.f6346h = f;
    }

    public void setTapSquareSize(float f) {
        this.f6340b = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
    public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
        int i3;
        if (this.f6351m != -1) {
            return false;
        }
        if (i == 0 && (i3 = this.f6352n) != -1 && i2 != i3) {
            return false;
        }
        this.f6351m = i;
        this.f6341c = f;
        this.f6342d = f2;
        this.f6343e = inputEvent.getStageX();
        this.f6344f = inputEvent.getStageY();
        return true;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
    public void touchDragged(InputEvent inputEvent, float f, float f2, int i) {
        if (i != this.f6351m) {
            return;
        }
        if (!this.f6353o && (Math.abs(this.f6341c - f) > this.f6340b || Math.abs(this.f6342d - f2) > this.f6340b)) {
            this.f6353o = true;
            this.f6345g = f;
            this.f6346h = f2;
            dragStart(inputEvent, f, f2, i);
            this.f6349k = f;
            this.f6350l = f2;
        }
        if (this.f6353o) {
            this.f6347i = this.f6349k;
            this.f6348j = this.f6350l;
            this.f6349k = f;
            this.f6350l = f2;
            drag(inputEvent, f, f2, i);
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
    public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
        if (i == this.f6351m) {
            if (this.f6353o) {
                dragStop(inputEvent, f, f2, i);
            }
            cancel();
        }
    }
}
