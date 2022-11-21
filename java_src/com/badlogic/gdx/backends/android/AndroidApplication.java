package com.badlogic.gdx.backends.android;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Debug;
import android.os.Handler;
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
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.SnapshotArray;
/* loaded from: classes.dex */
public class AndroidApplication extends Activity implements AndroidApplicationBase {
    public ApplicationLogger applicationLogger;
    public AndroidAudio audio;
    public AndroidClipboard clipboard;
    public AndroidFiles files;
    public AndroidGraphics graphics;
    public Handler handler;
    public AndroidInput input;
    public ApplicationListener listener;

    /* renamed from: net  reason: collision with root package name */
    public AndroidNet f38303net;
    public boolean firstResume = true;
    public final Array<Runnable> runnables = new Array<>();
    public final Array<Runnable> executedRunnables = new Array<>();
    public final SnapshotArray<LifecycleListener> lifecycleListeners = new SnapshotArray<>(LifecycleListener.class);

    /* renamed from: a */
    public final Array<AndroidEventListener> f3584a = new Array<>();
    public int logLevel = 2;
    public boolean useImmersiveMode = false;

    /* renamed from: b */
    public int f3585b = -1;

    /* renamed from: d */
    public boolean f3586d = false;

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public AndroidAudio createAudio(Context context, AndroidApplicationConfiguration androidApplicationConfiguration) {
        return new DefaultAndroidAudio(context, androidApplicationConfiguration);
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public AndroidInput createInput(Application application, Context context, Object obj, AndroidApplicationConfiguration androidApplicationConfiguration) {
        return new DefaultAndroidInput(this, this, this.graphics.f3647a, androidApplicationConfiguration);
    }

    public void createWakeLock(boolean z) {
        if (z) {
            getWindow().addFlags(128);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void debug(String str, String str2) {
        if (this.logLevel >= 3) {
            getApplicationLogger().debug(str, str2);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void error(String str, String str2) {
        if (this.logLevel >= 1) {
            getApplicationLogger().error(str, str2);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void exit() {
        this.handler.post(new Runnable() { // from class: com.badlogic.gdx.backends.android.AndroidApplication.2
            @Override // java.lang.Runnable
            public void run() {
                AndroidApplication.this.finish();
            }
        });
    }

    @Override // com.badlogic.gdx.Application
    public ApplicationListener getApplicationListener() {
        return this.listener;
    }

    @Override // com.badlogic.gdx.Application
    public ApplicationLogger getApplicationLogger() {
        return this.applicationLogger;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Window getApplicationWindow() {
        return getWindow();
    }

    @Override // com.badlogic.gdx.Application
    public Audio getAudio() {
        return this.audio;
    }

    @Override // com.badlogic.gdx.Application
    public Clipboard getClipboard() {
        return this.clipboard;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Context getContext() {
        return this;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Array<Runnable> getExecutedRunnables() {
        return this.executedRunnables;
    }

    @Override // com.badlogic.gdx.Application
    public Files getFiles() {
        return this.files;
    }

    @Override // com.badlogic.gdx.Application
    public Graphics getGraphics() {
        return this.graphics;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Handler getHandler() {
        return this.handler;
    }

    @Override // com.badlogic.gdx.Application
    public long getJavaHeap() {
        return Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public SnapshotArray<LifecycleListener> getLifecycleListeners() {
        return this.lifecycleListeners;
    }

    @Override // com.badlogic.gdx.Application
    public int getLogLevel() {
        return this.logLevel;
    }

    @Override // com.badlogic.gdx.Application
    public long getNativeHeap() {
        return Debug.getNativeHeapAllocatedSize();
    }

    @Override // com.badlogic.gdx.Application
    public Net getNet() {
        return this.f38303net;
    }

    @Override // com.badlogic.gdx.Application
    public Preferences getPreferences(String str) {
        return new AndroidPreferences(getSharedPreferences(str, 0));
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Array<Runnable> getRunnables() {
        return this.runnables;
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
        if (this.logLevel >= 2) {
            getApplicationLogger().log(str, str2);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.badlogic.gdx.Application
    public void setApplicationLogger(ApplicationLogger applicationLogger) {
        this.applicationLogger = applicationLogger;
    }

    @Override // com.badlogic.gdx.Application
    public void setLogLevel(int i) {
        this.logLevel = i;
    }

    public void addAndroidEventListener(AndroidEventListener androidEventListener) {
        synchronized (this.f3584a) {
            this.f3584a.add(androidEventListener);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void addLifecycleListener(LifecycleListener lifecycleListener) {
        synchronized (this.lifecycleListeners) {
            this.lifecycleListeners.add(lifecycleListener);
        }
    }

    public FrameLayout.LayoutParams createLayoutParams() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        return layoutParams;
    }

    @Override // com.badlogic.gdx.Application
    public void debug(String str, String str2, Throwable th) {
        if (this.logLevel >= 3) {
            getApplicationLogger().debug(str, str2, th);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void error(String str, String str2, Throwable th) {
        if (this.logLevel >= 1) {
            getApplicationLogger().error(str, str2, th);
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase, com.badlogic.gdx.Application
    public AndroidInput getInput() {
        return this.input;
    }

    @Override // com.badlogic.gdx.Application
    public void log(String str, String str2, Throwable th) {
        if (this.logLevel >= 2) {
            getApplicationLogger().log(str, str2, th);
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        boolean isContinuousRendering = this.graphics.isContinuousRendering();
        boolean z = AndroidGraphics.f3638I;
        AndroidGraphics.f3638I = true;
        this.graphics.setContinuousRendering(true);
        this.graphics.m24322h();
        this.input.onPause();
        if (isFinishing()) {
            this.graphics.clearManagedCaches();
            this.graphics.m24326c();
        }
        AndroidGraphics.f3638I = z;
        this.graphics.setContinuousRendering(isContinuousRendering);
        this.graphics.onPauseGLSurfaceView();
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        Gdx.app = this;
        Gdx.input = getInput();
        Gdx.audio = getAudio();
        Gdx.files = getFiles();
        Gdx.graphics = getGraphics();
        Gdx.f38302net = getNet();
        this.input.onResume();
        AndroidGraphics androidGraphics = this.graphics;
        if (androidGraphics != null) {
            androidGraphics.onResumeGLSurfaceView();
        }
        if (!this.firstResume) {
            this.graphics.mo24315j();
        } else {
            this.firstResume = false;
        }
        this.f3586d = true;
        int i = this.f3585b;
        if (i == 1 || i == -1) {
            this.audio.resume();
            this.f3586d = false;
        }
        super.onResume();
    }

    @Override // com.badlogic.gdx.Application
    public void postRunnable(Runnable runnable) {
        synchronized (this.runnables) {
            this.runnables.add(runnable);
            Gdx.graphics.requestRendering();
        }
    }

    public void removeAndroidEventListener(AndroidEventListener androidEventListener) {
        synchronized (this.f3584a) {
            this.f3584a.removeValue(androidEventListener, true);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void removeLifecycleListener(LifecycleListener lifecycleListener) {
        synchronized (this.lifecycleListeners) {
            this.lifecycleListeners.removeValue(lifecycleListener, true);
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    @TargetApi(19)
    public void useImmersiveMode(boolean z) {
        if (z && getVersion() >= 19) {
            getWindow().getDecorView().setSystemUiVisibility(5894);
        }
    }

    /* renamed from: a */
    public final void m24336a(ApplicationListener applicationListener, AndroidApplicationConfiguration androidApplicationConfiguration, boolean z) {
        if (getVersion() >= 14) {
            GdxNativesLoader.load();
            setApplicationLogger(new AndroidApplicationLogger());
            ResolutionStrategy resolutionStrategy = androidApplicationConfiguration.resolutionStrategy;
            if (resolutionStrategy == null) {
                resolutionStrategy = new FillResolutionStrategy();
            }
            AndroidGraphics androidGraphics = new AndroidGraphics(this, androidApplicationConfiguration, resolutionStrategy);
            this.graphics = androidGraphics;
            this.input = createInput(this, this, androidGraphics.f3647a, androidApplicationConfiguration);
            this.audio = createAudio(this, androidApplicationConfiguration);
            this.files = createFiles();
            this.f38303net = new AndroidNet(this, androidApplicationConfiguration);
            this.listener = applicationListener;
            this.handler = new Handler();
            this.useImmersiveMode = androidApplicationConfiguration.useImmersiveMode;
            this.clipboard = new AndroidClipboard(this);
            addLifecycleListener(new LifecycleListener() { // from class: com.badlogic.gdx.backends.android.AndroidApplication.1
                @Override // com.badlogic.gdx.LifecycleListener
                public void dispose() {
                    AndroidApplication.this.audio.dispose();
                }

                @Override // com.badlogic.gdx.LifecycleListener
                public void pause() {
                    AndroidApplication.this.audio.pause();
                }

                @Override // com.badlogic.gdx.LifecycleListener
                public void resume() {
                }
            });
            Gdx.app = this;
            Gdx.input = getInput();
            Gdx.audio = getAudio();
            Gdx.files = getFiles();
            Gdx.graphics = getGraphics();
            Gdx.f38302net = getNet();
            if (!z) {
                try {
                    requestWindowFeature(1);
                } catch (Exception e) {
                    log("AndroidApplication", "Content already displayed, cannot request FEATURE_NO_TITLE", e);
                }
                getWindow().setFlags(1024, 1024);
                getWindow().clearFlags(2048);
                setContentView(this.graphics.getView(), createLayoutParams());
            }
            createWakeLock(androidApplicationConfiguration.useWakelock);
            useImmersiveMode(this.useImmersiveMode);
            if (this.useImmersiveMode && getVersion() >= 19) {
                new AndroidVisibilityListener().createListener(this);
            }
            if (getResources().getConfiguration().keyboard != 1) {
                this.input.setKeyboardAvailable(true);
                return;
            }
            return;
        }
        throw new GdxRuntimeException("libGDX requires Android API Level 14 or later.");
    }

    public AndroidFiles createFiles() {
        getFilesDir();
        return new DefaultAndroidFiles(getAssets(), this, true);
    }

    public void initialize(ApplicationListener applicationListener, AndroidApplicationConfiguration androidApplicationConfiguration) {
        m24336a(applicationListener, androidApplicationConfiguration, false);
    }

    public View initializeForView(ApplicationListener applicationListener, AndroidApplicationConfiguration androidApplicationConfiguration) {
        m24336a(applicationListener, androidApplicationConfiguration, true);
        return this.graphics.getView();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        synchronized (this.f3584a) {
            int i3 = 0;
            while (true) {
                Array<AndroidEventListener> array = this.f3584a;
                if (i3 < array.size) {
                    array.get(i3).onActivityResult(i, i2, intent);
                    i3++;
                }
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        boolean z = true;
        if (configuration.hardKeyboardHidden != 1) {
            z = false;
        }
        this.input.setKeyboardAvailable(z);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        useImmersiveMode(this.useImmersiveMode);
        if (z) {
            this.f3585b = 1;
            if (this.f3586d) {
                this.audio.resume();
                this.f3586d = false;
                return;
            }
            return;
        }
        this.f3585b = 0;
    }
}
