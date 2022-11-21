package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public abstract class TemporalAction extends Action {

    /* renamed from: k */
    public float f5765k;

    /* renamed from: p */
    public float f5766p;
    @Null

    /* renamed from: q */
    public Interpolation f5767q;

    /* renamed from: r */
    public boolean f5768r;

    /* renamed from: s */
    public boolean f5769s;

    /* renamed from: t */
    public boolean f5770t;

    public TemporalAction() {
    }

    /* renamed from: a */
    public void mo23850a() {
    }

    /* renamed from: b */
    public void m23849b() {
    }

    /* renamed from: c */
    public abstract void mo23848c(float f);

    public void finish() {
        this.f5766p = this.f5765k;
    }

    public float getDuration() {
        return this.f5765k;
    }

    @Null
    public Interpolation getInterpolation() {
        return this.f5767q;
    }

    public float getTime() {
        return this.f5766p;
    }

    public boolean isComplete() {
        return this.f5770t;
    }

    public boolean isReverse() {
        return this.f5768r;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public void restart() {
        this.f5766p = 0.0f;
        this.f5769s = false;
        this.f5770t = false;
    }

    public void setDuration(float f) {
        this.f5765k = f;
    }

    public void setInterpolation(@Null Interpolation interpolation) {
        this.f5767q = interpolation;
    }

    public void setReverse(boolean z) {
        this.f5768r = z;
    }

    public void setTime(float f) {
        this.f5766p = f;
    }

    public TemporalAction(float f) {
        this.f5765k = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public boolean act(float f) {
        float f2;
        boolean z = true;
        if (this.f5770t) {
            return true;
        }
        Pool pool = getPool();
        setPool(null);
        try {
            if (!this.f5769s) {
                mo23850a();
                this.f5769s = true;
            }
            float f3 = this.f5766p + f;
            this.f5766p = f3;
            float f4 = this.f5765k;
            if (f3 < f4) {
                z = false;
            }
            this.f5770t = z;
            if (z) {
                f2 = 1.0f;
            } else {
                f2 = f3 / f4;
            }
            Interpolation interpolation = this.f5767q;
            if (interpolation != null) {
                f2 = interpolation.apply(f2);
            }
            if (this.f5768r) {
                f2 = 1.0f - f2;
            }
            mo23848c(f2);
            if (this.f5770t) {
                m23849b();
            }
            return this.f5770t;
        } finally {
            setPool(pool);
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f5768r = false;
        this.f5767q = null;
    }

    public TemporalAction(float f, @Null Interpolation interpolation) {
        this.f5765k = f;
        this.f5767q = interpolation;
    }
}
