package com.badlogic.gdx.backends.android;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager;
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
import com.badlogic.gdx.backends.android.AndroidLiveWallpaperService;
import com.badlogic.gdx.backends.android.surfaceview.FillResolutionStrategy;
import com.badlogic.gdx.backends.android.surfaceview.ResolutionStrategy;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Clipboard;
import com.badlogic.gdx.utils.GdxNativesLoader;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.SnapshotArray;
/* loaded from: classes.dex */
public class AndroidLiveWallpaper implements AndroidApplicationBase {

    /* renamed from: a */
    public AndroidLiveWallpaperService f3682a;

    /* renamed from: b */
    public AndroidGraphicsLiveWallpaper f3683b;

    /* renamed from: d */
    public AndroidInput f3684d;

    /* renamed from: k */
    public AndroidAudio f3685k;

    /* renamed from: p */
    public AndroidFiles f3686p;

    /* renamed from: q */
    public AndroidNet f3687q;

    /* renamed from: r */
    public AndroidClipboard f3688r;

    /* renamed from: s */
    public ApplicationListener f3689s;

    /* renamed from: y */
    public ApplicationLogger f3695y;

    /* renamed from: t */
    public boolean f3690t = true;

    /* renamed from: u */
    public final Array<Runnable> f3691u = new Array<>();

    /* renamed from: v */
    public final Array<Runnable> f3692v = new Array<>();

    /* renamed from: w */
    public final SnapshotArray<LifecycleListener> f3693w = new SnapshotArray<>(LifecycleListener.class);

    /* renamed from: x */
    public int f3694x = 2;

    /* renamed from: z */
    public volatile Color[] f3696z = null;

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public AndroidAudio createAudio(Context context, AndroidApplicationConfiguration androidApplicationConfiguration) {
        return new DefaultAndroidAudio(context, androidApplicationConfiguration);
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public AndroidInput createInput(Application application, Context context, Object obj, AndroidApplicationConfiguration androidApplicationConfiguration) {
        return new DefaultAndroidInput(this, getService(), this.f3683b.f3647a, androidApplicationConfiguration);
    }

    @Override // com.badlogic.gdx.Application
    public void debug(String str, String str2) {
        if (this.f3694x >= 3) {
            getApplicationLogger().debug(str, str2);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void error(String str, String str2) {
        if (this.f3694x >= 1) {
            getApplicationLogger().error(str, str2);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void exit() {
    }

    @Override // com.badlogic.gdx.Application
    public ApplicationListener getApplicationListener() {
        return this.f3689s;
    }

    @Override // com.badlogic.gdx.Application
    public ApplicationLogger getApplicationLogger() {
        return this.f3695y;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Window getApplicationWindow() {
        throw new UnsupportedOperationException();
    }

    @Override // com.badlogic.gdx.Application
    public Audio getAudio() {
        return this.f3685k;
    }

    @Override // com.badlogic.gdx.Application
    public Clipboard getClipboard() {
        return this.f3688r;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Context getContext() {
        return this.f3682a;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Array<Runnable> getExecutedRunnables() {
        return this.f3692v;
    }

    @Override // com.badlogic.gdx.Application
    public Files getFiles() {
        return this.f3686p;
    }

    @Override // com.badlogic.gdx.Application
    public Graphics getGraphics() {
        return this.f3683b;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Handler getHandler() {
        throw new UnsupportedOperationException();
    }

    @Override // com.badlogic.gdx.Application
    public long getJavaHeap() {
        return Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public SnapshotArray<LifecycleListener> getLifecycleListeners() {
        return this.f3693w;
    }

    @Override // com.badlogic.gdx.Application
    public int getLogLevel() {
        return this.f3694x;
    }

    @Override // com.badlogic.gdx.Application
    public long getNativeHeap() {
        return Debug.getNativeHeapAllocatedSize();
    }

    @Override // com.badlogic.gdx.Application
    public Net getNet() {
        return this.f3687q;
    }

    @Override // com.badlogic.gdx.Application
    public Preferences getPreferences(String str) {
        return new AndroidPreferences(this.f3682a.getSharedPreferences(str, 0));
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Array<Runnable> getRunnables() {
        return this.f3691u;
    }

    public AndroidLiveWallpaperService getService() {
        return this.f3682a;
    }

    @Override // com.badlogic.gdx.Application
    public Application.ApplicationType getType() {
        return Application.ApplicationType.Android;
    }

    @Override // com.badlogic.gdx.Application
    public int getVersion() {
        return Build.VERSION.SDK_INT;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public WindowManager getWindowManager() {
        return this.f3682a.getWindowManager();
    }

    @Override // com.badlogic.gdx.Application
    public void log(String str, String str2) {
        if (this.f3694x >= 2) {
            getApplicationLogger().log(str, str2);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void setApplicationLogger(ApplicationLogger applicationLogger) {
        this.f3695y = applicationLogger;
    }

    @Override // com.badlogic.gdx.Application
    public void setLogLevel(int i) {
        this.f3694x = i;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public void startActivity(Intent intent) {
        this.f3682a.startActivity(intent);
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public void useImmersiveMode(boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.badlogic.gdx.Application
    public void addLifecycleListener(LifecycleListener lifecycleListener) {
        synchronized (this.f3693w) {
            this.f3693w.add(lifecycleListener);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void debug(String str, String str2, Throwable th) {
        if (this.f3694x >= 3) {
            getApplicationLogger().debug(str, str2, th);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void error(String str, String str2, Throwable th) {
        if (this.f3694x >= 1) {
            getApplicationLogger().error(str, str2, th);
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase, com.badlogic.gdx.Application
    public AndroidInput getInput() {
        return this.f3684d;
    }

    @Override // com.badlogic.gdx.Application
    public void log(String str, String str2, Throwable th) {
        if (this.f3694x >= 2) {
            getApplicationLogger().log(str, str2, th);
        }
    }

    public void notifyColorsChanged(Color color, Color color2, Color color3) {
        if (Build.VERSION.SDK_INT < 27) {
            return;
        }
        this.f3696z = new Color[]{new Color(color), new Color(color2), new Color(color3)};
        AndroidLiveWallpaperService.AndroidWallpaperEngine androidWallpaperEngine = this.f3682a.f3705s;
        if (androidWallpaperEngine != null) {
            androidWallpaperEngine.notifyColorsChanged();
        }
    }

    public void onDestroy() {
        AndroidGraphicsLiveWallpaper androidGraphicsLiveWallpaper = this.f3683b;
        if (androidGraphicsLiveWallpaper != null) {
            androidGraphicsLiveWallpaper.onDestroyGLSurfaceView();
        }
        AndroidAudio androidAudio = this.f3685k;
        if (androidAudio != null) {
            androidAudio.dispose();
        }
    }

    public void onPause() {
        if (AndroidLiveWallpaperService.f3697w) {
            Log.d("WallpaperService", " > AndroidLiveWallpaper - onPause()");
        }
        this.f3685k.pause();
        this.f3684d.onPause();
        AndroidGraphicsLiveWallpaper androidGraphicsLiveWallpaper = this.f3683b;
        if (androidGraphicsLiveWallpaper != null) {
            androidGraphicsLiveWallpaper.onPauseGLSurfaceView();
        }
        if (AndroidLiveWallpaperService.f3697w) {
            Log.d("WallpaperService", " > AndroidLiveWallpaper - onPause() done!");
        }
    }

    public void onResume() {
        Gdx.app = this;
        AndroidInput androidInput = this.f3684d;
        Gdx.input = androidInput;
        Gdx.audio = this.f3685k;
        Gdx.files = this.f3686p;
        Gdx.graphics = this.f3683b;
        Gdx.f38302net = this.f3687q;
        androidInput.onResume();
        AndroidGraphicsLiveWallpaper androidGraphicsLiveWallpaper = this.f3683b;
        if (androidGraphicsLiveWallpaper != null) {
            androidGraphicsLiveWallpaper.onResumeGLSurfaceView();
        }
        if (!this.f3690t) {
            this.f3685k.resume();
            this.f3683b.mo24315j();
            return;
        }
        this.f3690t = false;
    }

    @Override // com.badlogic.gdx.Application
    public void postRunnable(Runnable runnable) {
        synchronized (this.f3691u) {
            this.f3691u.add(runnable);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void removeLifecycleListener(LifecycleListener lifecycleListener) {
        synchronized (this.f3693w) {
            this.f3693w.removeValue(lifecycleListener, true);
        }
    }

    public AndroidLiveWallpaper(AndroidLiveWallpaperService androidLiveWallpaperService) {
        this.f3682a = androidLiveWallpaperService;
    }

    /* renamed from: a */
    public AndroidFiles m24313a() {
        getService().getFilesDir();
        return new DefaultAndroidFiles(getService().getAssets(), getService(), true);
    }

    public void initialize(ApplicationListener applicationListener, AndroidApplicationConfiguration androidApplicationConfiguration) {
        if (getVersion() >= 14) {
            GdxNativesLoader.load();
            setApplicationLogger(new AndroidApplicationLogger());
            ResolutionStrategy resolutionStrategy = androidApplicationConfiguration.resolutionStrategy;
            if (resolutionStrategy == null) {
                resolutionStrategy = new FillResolutionStrategy();
            }
            this.f3683b = new AndroidGraphicsLiveWallpaper(this, androidApplicationConfiguration, resolutionStrategy);
            this.f3684d = createInput(this, getService(), this.f3683b.f3647a, androidApplicationConfiguration);
            this.f3685k = createAudio(getService(), androidApplicationConfiguration);
            this.f3686p = m24313a();
            this.f3687q = new AndroidNet(this, androidApplicationConfiguration);
            this.f3689s = applicationListener;
            this.f3688r = new AndroidClipboard(getService());
            Gdx.app = this;
            Gdx.input = this.f3684d;
            Gdx.audio = this.f3685k;
            Gdx.files = this.f3686p;
            Gdx.graphics = this.f3683b;
            Gdx.f38302net = this.f3687q;
            return;
        }
        throw new GdxRuntimeException("libGDX requires Android API Level 14 or later.");
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
