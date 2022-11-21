package com.badlogic.gdx.utils.viewport;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Scaling;
/* loaded from: classes.dex */
public class ExtendViewport extends Viewport {

    /* renamed from: i */
    public float f6959i;

    /* renamed from: j */
    public float f6960j;

    /* renamed from: k */
    public float f6961k;

    /* renamed from: l */
    public float f6962l;

    /* renamed from: m */
    public Scaling f6963m;

    public ExtendViewport(float f, float f2) {
        this(f, f2, 0.0f, 0.0f, new OrthographicCamera());
    }

    public float getMaxWorldHeight() {
        return this.f6962l;
    }

    public float getMaxWorldWidth() {
        return this.f6961k;
    }

    public float getMinWorldHeight() {
        return this.f6960j;
    }

    public float getMinWorldWidth() {
        return this.f6959i;
    }

    public void setMaxWorldHeight(float f) {
        this.f6962l = f;
    }

    public void setMaxWorldWidth(float f) {
        this.f6961k = f;
    }

    public void setMinWorldHeight(float f) {
        this.f6960j = f;
    }

    public void setMinWorldWidth(float f) {
        this.f6959i = f;
    }

    public void setScaling(Scaling scaling) {
        this.f6963m = scaling;
    }

    public ExtendViewport(float f, float f2, Camera camera) {
        this(f, f2, 0.0f, 0.0f, camera);
    }

    @Override // com.badlogic.gdx.utils.viewport.Viewport
    public void update(int i, int i2, boolean z) {
        float f = this.f6959i;
        float f2 = this.f6960j;
        Vector2 apply = this.f6963m.apply(f, f2, i, i2);
        int round = Math.round(apply.f5527x);
        int round2 = Math.round(apply.f5528y);
        if (round < i) {
            float f3 = round2;
            float f4 = f3 / f2;
            float f5 = (i - round) * (f2 / f3);
            float f6 = this.f6961k;
            if (f6 > 0.0f) {
                f5 = Math.min(f5, f6 - this.f6959i);
            }
            f += f5;
            round += Math.round(f5 * f4);
        }
        if (round2 < i2) {
            float f7 = round;
            float f8 = f7 / f;
            float f9 = (i2 - round2) * (f / f7);
            float f10 = this.f6962l;
            if (f10 > 0.0f) {
                f9 = Math.min(f9, f10 - this.f6960j);
            }
            f2 += f9;
            round2 += Math.round(f9 * f8);
        }
        setWorldSize(f, f2);
        setScreenBounds((i - round) / 2, (i2 - round2) / 2, round, round2);
        apply(z);
    }

    public ExtendViewport(float f, float f2, float f3, float f4) {
        this(f, f2, f3, f4, new OrthographicCamera());
    }

    public ExtendViewport(float f, float f2, float f3, float f4, Camera camera) {
        this.f6963m = Scaling.fit;
        this.f6959i = f;
        this.f6960j = f2;
        this.f6961k = f3;
        this.f6962l = f4;
        setCamera(camera);
    }
}
