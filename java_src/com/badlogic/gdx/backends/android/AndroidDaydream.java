package com.badlogic.gdx.backends.android;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.service.dreams.DreamService;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.ApplicationListener;
import com.badlogic.gdx.ApplicationLogger;
import com.badlogic.gdx.Audio;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.Preferences;
import com.badlogic.gdx.backends.android.surfaceview.FillResolutionStrategy;
import com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Clipboard;
import com.badlogic.gdx.utils.GdxNativesLoader;
import com.badlogic.gdx.utils.SnapshotArray;
@TargetApi(17)
/* loaded from: classes.dex */
public class AndroidDaydream extends DreamService implements AndroidApplicationBase {

    /* renamed from: a */
    public AndroidGraphics f3600a;

    /* renamed from: b */
    public AndroidInput f3601b;

    /* renamed from: d */
    public AndroidAudio f3602d;

    /* renamed from: k */
    public AndroidFiles f3603k;

    /* renamed from: p */
    public AndroidNet f3604p;

    /* renamed from: q */
    public AndroidClipboard f3605q;

    /* renamed from: r */
    public ApplicationListener f3606r;

    /* renamed from: s */
    public Handler f3607s;

    /* renamed from: t */
    public boolean f3608t = true;

    /* renamed from: u */
    public final Array<Runnable> f3609u = new Array<>();

    /* renamed from: v */
    public final Array<Runnable> f3610v = new Array<>();

    /* renamed from: w */
    public final SnapshotArray<LifecycleListener> f3611w = new SnapshotArray<>(LifecycleListener.class);

    /* renamed from: x */
    public int f3612x = 2;

    /* renamed from: y */
    public ApplicationLogger f3613y;

    /* renamed from: c */
    public void m24332c(boolean z) {
        if (z) {
            getWindow().addFlags(128);
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public AndroidAudio createAudio(Context context, AndroidApplicationConfiguration androidApplicationConfiguration) {
        return new DefaultAndroidAudio(context, androidApplicationConfiguration);
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public AndroidInput createInput(Application application, Context context, Object obj, AndroidApplicationConfiguration androidApplicationConfiguration) {
        return new DefaultAndroidInput(this, this, this.f3600a.f3647a, androidApplicationConfiguration);
    }

    @Override // com.badlogic.gdx.Application
    public void debug(String str, String str2) {
        if (this.f3612x >= 3) {
            getApplicationLogger().debug(str, str2);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void error(String str, String str2) {
        if (this.f3612x >= 1) {
            getApplicationLogger().error(str, str2);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void exit() {
        this.f3607s.post(new Runnable() { // from class: com.badlogic.gdx.backends.android.AndroidDaydream.2
            @Override // java.lang.Runnable
            public void run() {
                AndroidDaydream.this.finish();
            }
        });
    }

    @Override // com.badlogic.gdx.Application
    public ApplicationListener getApplicationListener() {
        return this.f3606r;
    }

    @Override // com.badlogic.gdx.Application
    public ApplicationLogger getApplicationLogger() {
        return this.f3613y;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Window getApplicationWindow() {
        return getWindow();
    }

    @Override // com.badlogic.gdx.Application
    public Audio getAudio() {
        return this.f3602d;
    }

    @Override // com.badlogic.gdx.Application
    public Clipboard getClipboard() {
        return this.f3605q;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Context getContext() {
        return this;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Array<Runnable> getExecutedRunnables() {
        return this.f3610v;
    }

    @Override // com.badlogic.gdx.Application
    public Files getFiles() {
        return this.f3603k;
    }

    @Override // com.badlogic.gdx.Application
    public Graphics getGraphics() {
        return this.f3600a;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Handler getHandler() {
        return this.f3607s;
    }

    @Override // com.badlogic.gdx.Application
    public long getJavaHeap() {
        return Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public SnapshotArray<LifecycleListener> getLifecycleListeners() {
        return this.f3611w;
    }

    @Override // com.badlogic.gdx.Application
    public int getLogLevel() {
        return this.f3612x;
    }

    @Override // com.badlogic.gdx.Application
    public long getNativeHeap() {
        return Debug.getNativeHeapAllocatedSize();
    }

    @Override // com.badlogic.gdx.Application
    public Net getNet() {
        return this.f3604p;
    }

    @Override // com.badlogic.gdx.Application
    public Preferences getPreferences(String str) {
        return new AndroidPreferences(getSharedPreferences(str, 0));
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Array<Runnable> getRunnables() {
        return this.f3609u;
    }

    @Override // com.badlogic.gdx.Application
    public Application.ApplicationType getType() {
        return Application.ApplicationType.Android;
    }

    @Override // com.badlogic.gdx.Application
    public int getVersion() {
        return Build.VERSION.SDK_INT;
    }

    public void initialize(ApplicationListener applicationListener) {
        initialize(applicationListener, new AndroidApplicationConfiguration());
    }

    public View initializeForView(ApplicationListener applicationListener) {
        return initializeForView(applicationListener, new AndroidApplicationConfiguration());
    }

    @Override // com.badlogic.gdx.Application
    public void log(String str, String str2) {
        if (this.f3612x >= 2) {
            getApplicationLogger().log(str, str2);
        }
    }

    @Override // android.service.dreams.DreamService, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.badlogic.gdx.Application
    public void setApplicationLogger(ApplicationLogger applicationLogger) {
        this.f3613y = applicationLogger;
    }

    @Override // com.badlogic.gdx.Application
    public void setLogLevel(int i) {
        this.f3612x = i;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public void useImmersiveMode(boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.badlogic.gdx.Application
    public void addLifecycleListener(LifecycleListener lifecycleListener) {
        synchronized (this.f3611w) {
            this.f3611w.add(lifecycleListener);
        }
    }

    /* renamed from: b */
    public FrameLayout.LayoutParams m24333b() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        return layoutParams;
    }

    @Override // com.badlogic.gdx.Application
    public void debug(String str, String str2, Throwable th) {
        if (this.f3612x >= 3) {
            getApplicationLogger().debug(str, str2, th);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void error(String str, String str2, Throwable th) {
        if (this.f3612x >= 1) {
            getApplicationLogger().error(str, str2, th);
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase, com.badlogic.gdx.Application
    public AndroidInput getInput() {
        return this.f3601b;
    }

    @Override // com.badlogic.gdx.Application
    public void log(String str, String str2, Throwable th) {
        if (this.f3612x >= 2) {
            getApplicationLogger().log(str, str2, th);
        }
    }

    @Override // android.service.dreams.DreamService
    public void onDreamingStarted() {
        Gdx.app = this;
        Gdx.input = getInput();
        Gdx.audio = getAudio();
        Gdx.files = getFiles();
        Gdx.graphics = getGraphics();
        Gdx.f38302net = getNet();
        this.f3601b.onDreamingStarted();
        AndroidGraphics androidGraphics = this.f3600a;
        if (androidGraphics != null) {
            androidGraphics.onResumeGLSurfaceView();
        }
        if (!this.f3608t) {
            this.f3600a.mo24315j();
        } else {
            this.f3608t = false;
        }
        super.onDreamingStarted();
    }

    @Override // android.service.dreams.DreamService
    public void onDreamingStopped() {
        boolean isContinuousRendering = this.f3600a.isContinuousRendering();
        this.f3600a.setContinuousRendering(true);
        this.f3600a.m24322h();
        this.f3601b.onDreamingStopped();
        this.f3600a.clearManagedCaches();
        this.f3600a.m24326c();
        this.f3600a.setContinuousRendering(isContinuousRendering);
        this.f3600a.onPauseGLSurfaceView();
        super.onDreamingStopped();
    }

    @Override // com.badlogic.gdx.Application
    public void postRunnable(Runnable runnable) {
        synchronized (this.f3609u) {
            this.f3609u.add(runnable);
            Gdx.graphics.requestRendering();
        }
    }

    @Override // com.badlogic.gdx.Application
    public void removeLifecycleListener(LifecycleListener lifecycleListener) {
        synchronized (this.f3611w) {
            this.f3611w.removeValue(lifecycleListener, true);
        }
    }

    /* renamed from: a */
    public AndroidFiles m24334a() {
        getFilesDir();
        return new DefaultAndroidFiles(getAssets(), this, true);
    }

    /* renamed from: d */
    public final void m24331d(ApplicationListener applicationListener, AndroidApplicationConfiguration androidApplicationConfiguration, boolean z) {
        GdxNativesLoader.load();
        setApplicationLogger(new AndroidApplicationLogger());
        ResolutionStrategy resolutionStrategy = androidApplicationConfiguration.resolutionStrategy;
        if (resolutionStrategy == null) {
            resolutionStrategy = new FillResolutionStrategy();
        }
        AndroidGraphics androidGraphics = new AndroidGraphics(this, androidApplicationConfiguration, resolutionStrategy);
        this.f3600a = androidGraphics;
        this.f3601b = createInput(this, this, androidGraphics.f3647a, androidApplicationConfiguration);
        this.f3602d = createAudio(this, androidApplicationConfiguration);
        this.f3603k = m24334a();
        this.f3604p = new AndroidNet(this, androidApplicationConfiguration);
        this.f3606r = applicationListener;
        this.f3607s = new Handler();
        this.f3605q = new AndroidClipboard(this);
        addLifecycleListener(new LifecycleListener() { // from class: com.badlogic.gdx.backends.android.AndroidDaydream.1
            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                AndroidDaydream.this.f3602d.pause();
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
                AndroidDaydream.this.f3602d.resume();
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
                AndroidDaydream.this.f3602d.dispose();
                AndroidDaydream.this.f3602d = null;
            }
        });
        Gdx.app = this;
        Gdx.input = getInput();
        Gdx.audio = getAudio();
        Gdx.files = getFiles();
        Gdx.graphics = getGraphics();
        Gdx.f38302net = getNet();
        if (!z) {
            setFullscreen(true);
            setContentView(this.f3600a.getView(), m24333b());
        }
        m24332c(androidApplicationConfiguration.useWakelock);
        if (getResources().getConfiguration().keyboard != 1) {
            this.f3601b.setKeyboardAvailable(true);
        }
    }

    public void initialize(ApplicationListener applicationListener, AndroidApplicationConfiguration androidApplicationConfiguration) {
        m24331d(applicationListener, androidApplicationConfiguration, false);
    }

    public View initializeForView(ApplicationListener applicationListener, AndroidApplicationConfiguration androidApplicationConfiguration) {
        m24331d(applicationListener, androidApplicationConfiguration, true);
        return this.f3600a.getView();
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        boolean z = true;
        if (configuration.hardKeyboardHidden != 1) {
            z = false;
        }
        this.f3601b.setKeyboardAvailable(z);
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public void runOnUiThread(Runnable runnable) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            new Handler(Looper.getMainLooper()).post(runnable);
        } else {
            runnable.run();
        }
    }
}
