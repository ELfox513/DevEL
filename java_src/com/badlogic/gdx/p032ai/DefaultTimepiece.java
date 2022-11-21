package com.badlogic.gdx.p032ai;
/* renamed from: com.badlogic.gdx.ai.DefaultTimepiece */
/* loaded from: classes.dex */
public class DefaultTimepiece implements Timepiece {

    /* renamed from: a */
    public float f3181a;

    /* renamed from: b */
    public float f3182b;

    /* renamed from: c */
    public float f3183c;

    public DefaultTimepiece() {
        this(Float.POSITIVE_INFINITY);
    }

    @Override // com.badlogic.gdx.p032ai.Timepiece
    public float getDeltaTime() {
        return this.f3182b;
    }

    @Override // com.badlogic.gdx.p032ai.Timepiece
    public float getTime() {
        return this.f3181a;
    }

    public DefaultTimepiece(float f) {
        this.f3181a = 0.0f;
        this.f3182b = 0.0f;
        this.f3183c = f;
    }

    @Override // com.badlogic.gdx.p032ai.Timepiece
    public void update(float f) {
        float f2 = this.f3183c;
        if (f > f2) {
            f = f2;
        }
        this.f3182b = f;
        this.f3181a += f;
    }
}
