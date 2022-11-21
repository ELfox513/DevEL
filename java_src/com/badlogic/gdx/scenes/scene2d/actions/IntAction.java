package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.utils.Null;
/* loaded from: classes.dex */
public class IntAction extends TemporalAction {

    /* renamed from: u */
    public int f5725u;

    /* renamed from: v */
    public int f5726v;

    /* renamed from: w */
    public int f5727w;

    public IntAction() {
        this.f5725u = 0;
        this.f5726v = 1;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: a */
    public void mo23850a() {
        this.f5727w = this.f5725u;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
    /* renamed from: c */
    public void mo23848c(float f) {
        if (f == 0.0f) {
            this.f5727w = this.f5725u;
        } else if (f == 1.0f) {
            this.f5727w = this.f5726v;
        } else {
            int i = this.f5725u;
            this.f5727w = (int) (i + ((this.f5726v - i) * f));
        }
    }

    public int getEnd() {
        return this.f5726v;
    }

    public int getStart() {
        return this.f5725u;
    }

    public int getValue() {
        return this.f5727w;
    }

    public void setEnd(int i) {
        this.f5726v = i;
    }

    public void setStart(int i) {
        this.f5725u = i;
    }

    public void setValue(int i) {
        this.f5727w = i;
    }

    public IntAction(int i, int i2) {
        this.f5725u = i;
        this.f5726v = i2;
    }

    public IntAction(int i, int i2, float f) {
        super(f);
        this.f5725u = i;
        this.f5726v = i2;
    }

    public IntAction(int i, int i2, float f, @Null Interpolation interpolation) {
        super(f, interpolation);
        this.f5725u = i;
        this.f5726v = i2;
    }
}
