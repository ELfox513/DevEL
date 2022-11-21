package com.badlogic.gdx.utils.viewport;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Scaling;
/* loaded from: classes.dex */
public class ScalingViewport extends Viewport {

    /* renamed from: i */
    public Scaling f6964i;

    public ScalingViewport(Scaling scaling, float f, float f2) {
        this(scaling, f, f2, new OrthographicCamera());
    }

    public Scaling getScaling() {
        return this.f6964i;
    }

    public void setScaling(Scaling scaling) {
        this.f6964i = scaling;
    }

    public ScalingViewport(Scaling scaling, float f, float f2, Camera camera) {
        this.f6964i = scaling;
        setWorldSize(f, f2);
        setCamera(camera);
    }

    @Override // com.badlogic.gdx.utils.viewport.Viewport
    public void update(int i, int i2, boolean z) {
        Vector2 apply = this.f6964i.apply(getWorldWidth(), getWorldHeight(), i, i2);
        int round = Math.round(apply.f5527x);
        int round2 = Math.round(apply.f5528y);
        setScreenBounds((i - round) / 2, (i2 - round2) / 2, round, round2);
        apply(z);
    }
}
