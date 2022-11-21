package com.badlogic.gdx.backends.android;

import android.opengl.GLSurfaceView;
import android.util.Log;
import android.view.SurfaceHolder;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.backends.android.surfaceview.GLSurfaceView20;
import com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy;
import com.badlogic.gdx.utils.GdxRuntimeException;
import javax.microedition.khronos.opengles.GL10;
/* loaded from: classes.dex */
public final class AndroidGraphicsLiveWallpaper extends AndroidGraphics {
    public AndroidGraphicsLiveWallpaper(AndroidLiveWallpaper androidLiveWallpaper, AndroidApplicationConfiguration androidApplicationConfiguration, ResolutionStrategy resolutionStrategy) {
        super(androidLiveWallpaper, androidApplicationConfiguration, resolutionStrategy, false);
    }

    @Override // com.badlogic.gdx.backends.android.AndroidGraphics
    /* renamed from: g */
    public void mo24316g() {
        if (AndroidLiveWallpaperService.f3697w) {
            super.mo24316g();
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidGraphics
    /* renamed from: j */
    public void mo24315j() {
        synchronized (this.f3646H) {
            this.f3667u = true;
            this.f3669w = true;
            while (this.f3669w) {
                try {
                    requestRendering();
                    this.f3646H.wait();
                } catch (InterruptedException unused) {
                    Gdx.app.log("AndroidGraphics", "waiting for resume synchronization failed!");
                }
            }
        }
    }

    /* renamed from: n */
    public SurfaceHolder m24314n() {
        SurfaceHolder surfaceHolder;
        synchronized (((AndroidLiveWallpaper) this.f3654h).f3682a.f3708v) {
            surfaceHolder = ((AndroidLiveWallpaper) this.f3654h).f3682a.getSurfaceHolder();
        }
        return surfaceHolder;
    }

    public void onDestroyGLSurfaceView() {
        GLSurfaceView20 gLSurfaceView20 = this.f3647a;
        if (gLSurfaceView20 != null) {
            try {
                gLSurfaceView20.onDetachedFromWindow();
                if (AndroidLiveWallpaperService.f3697w) {
                    Log.d("WallpaperService", " > AndroidLiveWallpaper - onDestroy() stopped GLThread managed by GLSurfaceView");
                }
            } catch (Throwable th) {
                Log.e("WallpaperService", "failed to destroy GLSurfaceView's thread! GLSurfaceView.onDetachedFromWindow impl changed since API lvl 16!");
                th.printStackTrace();
            }
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidGraphics
    /* renamed from: b */
    public GLSurfaceView20 mo24317b(AndroidApplicationBase androidApplicationBase, ResolutionStrategy resolutionStrategy) {
        if (m24327a()) {
            GLSurfaceView.EGLConfigChooser m24324e = m24324e();
            GLSurfaceView20 gLSurfaceView20 = new GLSurfaceView20(androidApplicationBase.getContext(), resolutionStrategy) { // from class: com.badlogic.gdx.backends.android.AndroidGraphicsLiveWallpaper.1
                @Override // android.view.SurfaceView
                public SurfaceHolder getHolder() {
                    return AndroidGraphicsLiveWallpaper.this.m24314n();
                }
            };
            if (m24324e != null) {
                gLSurfaceView20.setEGLConfigChooser(m24324e);
            } else {
                AndroidApplicationConfiguration androidApplicationConfiguration = this.f3642D;
                gLSurfaceView20.setEGLConfigChooser(androidApplicationConfiguration.f3592r, androidApplicationConfiguration.f3591g, androidApplicationConfiguration.f3590b, androidApplicationConfiguration.f3589a, androidApplicationConfiguration.depth, androidApplicationConfiguration.stencil);
            }
            gLSurfaceView20.setRenderer(this);
            return gLSurfaceView20;
        }
        throw new GdxRuntimeException("libGDX requires OpenGL ES 2.0");
    }

    @Override // com.badlogic.gdx.backends.android.AndroidGraphics, android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        long nanoTime = System.nanoTime();
        if (!this.f3669w) {
            this.f3661o = ((float) (nanoTime - this.f3660n)) / 1.0E9f;
        } else {
            this.f3661o = 0.0f;
        }
        this.f3660n = nanoTime;
        synchronized (this.f3646H) {
            z = this.f3667u;
            z2 = this.f3668v;
            z3 = this.f3670x;
            z4 = this.f3669w;
            if (this.f3669w) {
                this.f3669w = false;
                this.f3646H.notifyAll();
            }
            if (this.f3668v) {
                this.f3668v = false;
                this.f3646H.notifyAll();
            }
            if (this.f3670x) {
                this.f3670x = false;
                this.f3646H.notifyAll();
            }
        }
        if (z4) {
            this.f3654h.getApplicationListener().resume();
            Gdx.app.log("AndroidGraphics", "resumed");
        }
        if (z) {
            synchronized (this.f3654h.getRunnables()) {
                this.f3654h.getExecutedRunnables().clear();
                this.f3654h.getExecutedRunnables().addAll(this.f3654h.getRunnables());
                this.f3654h.getRunnables().clear();
                for (int i = 0; i < this.f3654h.getExecutedRunnables().size; i++) {
                    this.f3654h.getExecutedRunnables().get(i).run();
                }
            }
            this.f3654h.getInput().processEvents();
            this.f3663q++;
            this.f3654h.getApplicationListener().render();
        }
        if (z2) {
            this.f3654h.getApplicationListener().pause();
            Gdx.app.log("AndroidGraphics", "paused");
        }
        if (z3) {
            this.f3654h.getApplicationListener().dispose();
            Gdx.app.log("AndroidGraphics", "destroyed");
        }
        if (nanoTime - this.f3662p > 1000000000) {
            this.f3665s = this.f3664r;
            this.f3664r = 0;
            this.f3662p = nanoTime;
        }
        this.f3664r++;
    }
}
