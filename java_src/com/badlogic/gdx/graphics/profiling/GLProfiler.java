package com.badlogic.gdx.graphics.profiling;

import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.GL30;
import com.badlogic.gdx.math.FloatCounter;
/* loaded from: classes.dex */
public class GLProfiler {

    /* renamed from: a */
    public Graphics f5167a;

    /* renamed from: b */
    public GLInterceptor f5168b;

    /* renamed from: c */
    public GLErrorListener f5169c;

    /* renamed from: d */
    public boolean f5170d = false;

    public int getCalls() {
        return this.f5168b.getCalls();
    }

    public int getDrawCalls() {
        return this.f5168b.getDrawCalls();
    }

    public GLErrorListener getListener() {
        return this.f5169c;
    }

    public int getShaderSwitches() {
        return this.f5168b.getShaderSwitches();
    }

    public int getTextureBindings() {
        return this.f5168b.getTextureBindings();
    }

    public FloatCounter getVertexCount() {
        return this.f5168b.getVertexCount();
    }

    public boolean isEnabled() {
        return this.f5170d;
    }

    public void reset() {
        this.f5168b.reset();
    }

    public void setListener(GLErrorListener gLErrorListener) {
        this.f5169c = gLErrorListener;
    }

    public void disable() {
        if (!this.f5170d) {
            return;
        }
        if (this.f5167a.getGL30() != null) {
            Graphics graphics = this.f5167a;
            graphics.setGL30(((GL30Interceptor) graphics.getGL30()).f5160g);
        } else {
            Graphics graphics2 = this.f5167a;
            graphics2.setGL20(((GL20Interceptor) graphics2.getGL20()).f5159g);
        }
        this.f5170d = false;
    }

    public void enable() {
        if (this.f5170d) {
            return;
        }
        if (this.f5167a.getGL30() != null) {
            this.f5167a.setGL30((GL30) this.f5168b);
        } else {
            this.f5167a.setGL20(this.f5168b);
        }
        this.f5170d = true;
    }

    public GLProfiler(Graphics graphics) {
        this.f5167a = graphics;
        if (graphics.getGL30() != null) {
            this.f5168b = new GL30Interceptor(this, graphics.getGL30());
        } else {
            this.f5168b = new GL20Interceptor(this, graphics.getGL20());
        }
        this.f5169c = GLErrorListener.LOGGING_LISTENER;
    }
}
