package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.TimeUtils;
/* loaded from: classes.dex */
public class ClickListener extends InputListener {
    public static float visualPressedDuration = 0.1f;

    /* renamed from: g */
    public int f6304g;

    /* renamed from: h */
    public boolean f6305h;

    /* renamed from: i */
    public boolean f6306i;

    /* renamed from: j */
    public boolean f6307j;

    /* renamed from: k */
    public long f6308k;

    /* renamed from: m */
    public int f6310m;

    /* renamed from: n */
    public long f6311n;

    /* renamed from: b */
    public float f6299b = 14.0f;

    /* renamed from: c */
    public float f6300c = -1.0f;

    /* renamed from: d */
    public float f6301d = -1.0f;

    /* renamed from: e */
    public int f6302e = -1;

    /* renamed from: f */
    public int f6303f = -1;

    /* renamed from: l */
    public long f6309l = 400000000;

    public ClickListener() {
    }

    public void clicked(InputEvent inputEvent, float f, float f2) {
    }

    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
    public void enter(InputEvent inputEvent, float f, float f2, int i, @Null Actor actor) {
        if (i != -1 || this.f6307j) {
            return;
        }
        this.f6306i = true;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
    public void exit(InputEvent inputEvent, float f, float f2, int i, @Null Actor actor) {
        if (i != -1 || this.f6307j) {
            return;
        }
        this.f6306i = false;
    }

    public int getButton() {
        return this.f6304g;
    }

    public int getPressedButton() {
        return this.f6303f;
    }

    public int getPressedPointer() {
        return this.f6302e;
    }

    public int getTapCount() {
        return this.f6310m;
    }

    public float getTapSquareSize() {
        return this.f6299b;
    }

    public float getTouchDownX() {
        return this.f6300c;
    }

    public float getTouchDownY() {
        return this.f6301d;
    }

    public boolean inTapSquare(float f, float f2) {
        float f3 = this.f6300c;
        return !(f3 == -1.0f && this.f6301d == -1.0f) && Math.abs(f - f3) < this.f6299b && Math.abs(f2 - this.f6301d) < this.f6299b;
    }

    public boolean isOver(Actor actor, float f, float f2) {
        Actor hit = actor.hit(f, f2, true);
        if (hit == null || !hit.isDescendantOf(actor)) {
            return inTapSquare(f, f2);
        }
        return true;
    }

    public boolean isPressed() {
        return this.f6305h;
    }

    public void setButton(int i) {
        this.f6304g = i;
    }

    public void setTapCount(int i) {
        this.f6310m = i;
    }

    public void setTapCountInterval(float f) {
        this.f6309l = f * 1.0E9f;
    }

    public void setTapSquareSize(float f) {
        this.f6299b = f;
    }

    public void cancel() {
        if (this.f6302e == -1) {
            return;
        }
        this.f6307j = true;
        this.f6305h = false;
    }

    public void invalidateTapSquare() {
        this.f6300c = -1.0f;
        this.f6301d = -1.0f;
    }

    public boolean isVisualPressed() {
        if (this.f6305h) {
            return true;
        }
        long j = this.f6308k;
        if (j <= 0) {
            return false;
        }
        if (j > TimeUtils.millis()) {
            return true;
        }
        this.f6308k = 0L;
        return false;
    }

    public void setVisualPressed(boolean z) {
        if (z) {
            this.f6308k = TimeUtils.millis() + (visualPressedDuration * 1000.0f);
        } else {
            this.f6308k = 0L;
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
    public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
        int i3;
        if (this.f6305h) {
            return false;
        }
        if (i == 0 && (i3 = this.f6304g) != -1 && i2 != i3) {
            return false;
        }
        this.f6305h = true;
        this.f6302e = i;
        this.f6303f = i2;
        this.f6300c = f;
        this.f6301d = f2;
        setVisualPressed(true);
        return true;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
    public void touchDragged(InputEvent inputEvent, float f, float f2, int i) {
        if (i == this.f6302e && !this.f6307j) {
            boolean isOver = isOver(inputEvent.getListenerActor(), f, f2);
            this.f6305h = isOver;
            if (!isOver) {
                invalidateTapSquare();
            }
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
    public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
        int i3;
        if (i == this.f6302e) {
            if (!this.f6307j) {
                boolean isOver = isOver(inputEvent.getListenerActor(), f, f2);
                if (isOver && i == 0 && (i3 = this.f6304g) != -1 && i2 != i3) {
                    isOver = false;
                }
                if (isOver) {
                    long nanoTime = TimeUtils.nanoTime();
                    if (nanoTime - this.f6311n > this.f6309l) {
                        this.f6310m = 0;
                    }
                    this.f6310m++;
                    this.f6311n = nanoTime;
                    clicked(inputEvent, f, f2);
                }
            }
            this.f6305h = false;
            this.f6302e = -1;
            this.f6303f = -1;
            this.f6307j = false;
        }
    }

    public boolean inTapSquare() {
        return this.f6300c != -1.0f;
    }

    public boolean isOver() {
        return this.f6306i || this.f6305h;
    }

    public ClickListener(int i) {
        this.f6304g = i;
    }
}
