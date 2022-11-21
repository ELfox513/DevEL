package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
/* loaded from: classes.dex */
public class RenderContext {

    /* renamed from: a */
    public boolean f4895a;

    /* renamed from: b */
    public int f4896b;

    /* renamed from: c */
    public int f4897c;

    /* renamed from: d */
    public int f4898d;

    /* renamed from: e */
    public float f4899e;

    /* renamed from: f */
    public float f4900f;

    /* renamed from: g */
    public boolean f4901g;

    /* renamed from: h */
    public int f4902h;
    public final TextureBinder textureBinder;

    public void setDepthMask(boolean z) {
        if (this.f4901g != z) {
            GL20 gl20 = Gdx.f3119gl;
            this.f4901g = z;
            gl20.glDepthMask(z);
        }
    }

    public void setDepthTest(int i) {
        setDepthTest(i, 0.0f, 1.0f);
    }

    public void begin() {
        Gdx.f3119gl.glDisable(GL20.GL_DEPTH_TEST);
        this.f4898d = 0;
        Gdx.f3119gl.glDepthMask(true);
        this.f4901g = true;
        Gdx.f3119gl.glDisable(GL20.GL_BLEND);
        this.f4895a = false;
        Gdx.f3119gl.glDisable(GL20.GL_CULL_FACE);
        this.f4897c = 0;
        this.f4896b = 0;
        this.f4902h = 0;
        this.textureBinder.begin();
    }

    public void end() {
        if (this.f4898d != 0) {
            Gdx.f3119gl.glDisable(GL20.GL_DEPTH_TEST);
        }
        if (!this.f4901g) {
            Gdx.f3119gl.glDepthMask(true);
        }
        if (this.f4895a) {
            Gdx.f3119gl.glDisable(GL20.GL_BLEND);
        }
        if (this.f4902h > 0) {
            Gdx.f3119gl.glDisable(GL20.GL_CULL_FACE);
        }
        this.textureBinder.end();
    }

    public void setBlending(boolean z, int i, int i2) {
        if (z != this.f4895a) {
            this.f4895a = z;
            if (z) {
                Gdx.f3119gl.glEnable(GL20.GL_BLEND);
            } else {
                Gdx.f3119gl.glDisable(GL20.GL_BLEND);
            }
        }
        if (z) {
            if (this.f4896b != i || this.f4897c != i2) {
                Gdx.f3119gl.glBlendFunc(i, i2);
                this.f4896b = i;
                this.f4897c = i2;
            }
        }
    }

    public void setCullFace(int i) {
        if (i != this.f4902h) {
            this.f4902h = i;
            if (i != 1028 && i != 1029 && i != 1032) {
                Gdx.f3119gl.glDisable(GL20.GL_CULL_FACE);
                return;
            }
            Gdx.f3119gl.glEnable(GL20.GL_CULL_FACE);
            Gdx.f3119gl.glCullFace(i);
        }
    }

    public void setDepthTest(int i, float f, float f2) {
        int i2 = this.f4898d;
        boolean z = i2 != 0;
        boolean z2 = i != 0;
        if (i2 != i) {
            this.f4898d = i;
            if (z2) {
                Gdx.f3119gl.glEnable(GL20.GL_DEPTH_TEST);
                Gdx.f3119gl.glDepthFunc(i);
            } else {
                Gdx.f3119gl.glDisable(GL20.GL_DEPTH_TEST);
            }
        }
        if (z2) {
            if (!z || this.f4898d != i) {
                GL20 gl20 = Gdx.f3119gl;
                this.f4898d = i;
                gl20.glDepthFunc(i);
            }
            if (z && this.f4899e == f && this.f4900f == f2) {
                return;
            }
            GL20 gl202 = Gdx.f3119gl;
            this.f4899e = f;
            this.f4900f = f2;
            gl202.glDepthRangef(f, f2);
        }
    }

    public RenderContext(TextureBinder textureBinder) {
        this.textureBinder = textureBinder;
    }
}
