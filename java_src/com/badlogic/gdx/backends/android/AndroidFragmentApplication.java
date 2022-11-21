package com.badlogic.gdx.backends.android;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Debug;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.fragment.app.Fragment;
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
public class AndroidFragmentApplication extends Fragment implements AndroidApplicationBase {
    public Handler handler;

    /* renamed from: j0 */
    public AndroidGraphics f3617j0;

    /* renamed from: k0 */
    public AndroidInput f3618k0;

    /* renamed from: l0 */
    public AndroidAudio f3619l0;

    /* renamed from: m0 */
    public AndroidFiles f3620m0;

    /* renamed from: n0 */
    public AndroidNet f3621n0;

    /* renamed from: o0 */
    public AndroidClipboard f3622o0;

    /* renamed from: p0 */
    public ApplicationListener f3623p0;

    /* renamed from: q0 */
    public boolean f3624q0 = true;

    /* renamed from: r0 */
    public final Array<Runnable> f3625r0 = new Array<>();

    /* renamed from: s0 */
    public final Array<Runnable> f3626s0 = new Array<>();

    /* renamed from: t0 */
    public final SnapshotArray<LifecycleListener> f3627t0 = new SnapshotArray<>(LifecycleListener.class);

    /* renamed from: u0 */
    public final Array<AndroidEventListener> f3628u0 = new Array<>();

    /* renamed from: v0 */
    public int f3629v0 = 2;

    /* renamed from: w0 */
    public ApplicationLogger f3630w0;

    /* renamed from: x0 */
    public Callbacks f3631x0;

    /* loaded from: classes.dex */
    public interface Callbacks {
        void exit();
    }

    /* renamed from: b0 */
    public AndroidFiles m24330b0() {
        return new DefaultAndroidFiles(getResources().getAssets(), getActivity(), true);
    }

    /* renamed from: c0 */
    public void m24329c0(boolean z) {
        if (z) {
            getActivity().getWindow().addFlags(128);
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public AndroidAudio createAudio(Context context, AndroidApplicationConfiguration androidApplicationConfiguration) {
        return new DefaultAndroidAudio(context, androidApplicationConfiguration);
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public AndroidInput createInput(Application application, Context context, Object obj, AndroidApplicationConfiguration androidApplicationConfiguration) {
        return new DefaultAndroidInput(this, getActivity(), this.f3617j0.f3647a, androidApplicationConfiguration);
    }

    @Override // com.badlogic.gdx.Application
    public void debug(String str, String str2) {
        if (this.f3629v0 >= 3) {
            Log.d(str, str2);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void error(String str, String str2) {
        if (this.f3629v0 >= 1) {
            Log.e(str, str2);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void exit() {
        this.handler.post(new Runnable() { // from class: com.badlogic.gdx.backends.android.AndroidFragmentApplication.2
            @Override // java.lang.Runnable
            public void run() {
                AndroidFragmentApplication.this.f3631x0.exit();
            }
        });
    }

    @Override // com.badlogic.gdx.Application
    public ApplicationListener getApplicationListener() {
        return this.f3623p0;
    }

    @Override // com.badlogic.gdx.Application
    public ApplicationLogger getApplicationLogger() {
        return this.f3630w0;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Window getApplicationWindow() {
        return getActivity().getWindow();
    }

    @Override // com.badlogic.gdx.Application
    public Audio getAudio() {
        return this.f3619l0;
    }

    @Override // com.badlogic.gdx.Application
    public Clipboard getClipboard() {
        return this.f3622o0;
    }

    @Override // androidx.fragment.app.Fragment, com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Context getContext() {
        return getActivity();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Array<Runnable> getExecutedRunnables() {
        return this.f3626s0;
    }

    @Override // com.badlogic.gdx.Application
    public Files getFiles() {
        return this.f3620m0;
    }

    @Override // com.badlogic.gdx.Application
    public Graphics getGraphics() {
        return this.f3617j0;
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
        return this.f3627t0;
    }

    @Override // com.badlogic.gdx.Application
    public int getLogLevel() {
        return this.f3629v0;
    }

    @Override // com.badlogic.gdx.Application
    public long getNativeHeap() {
        return Debug.getNativeHeapAllocatedSize();
    }

    @Override // com.badlogic.gdx.Application
    public Net getNet() {
        return this.f3621n0;
    }

    @Override // com.badlogic.gdx.Application
    public Preferences getPreferences(String str) {
        return new AndroidPreferences(getActivity().getSharedPreferences(str, 0));
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public Array<Runnable> getRunnables() {
        return this.f3625r0;
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
        return (WindowManager) getContext().getSystemService("window");
    }

    public View initializeForView(ApplicationListener applicationListener) {
        return initializeForView(applicationListener, new AndroidApplicationConfiguration());
    }

    @Override // com.badlogic.gdx.Application
    public void log(String str, String str2) {
        if (this.f3629v0 >= 2) {
            Log.i(str, str2);
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    public void runOnUiThread(Runnable runnable) {
        getActivity().runOnUiThread(runnable);
    }

    @Override // com.badlogic.gdx.Application
    public void setApplicationLogger(ApplicationLogger applicationLogger) {
        this.f3630w0 = applicationLogger;
    }

    @Override // com.badlogic.gdx.Application
    public void setLogLevel(int i) {
        this.f3629v0 = i;
    }

    public void addAndroidEventListener(AndroidEventListener androidEventListener) {
        synchronized (this.f3628u0) {
            this.f3628u0.add(androidEventListener);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void addLifecycleListener(LifecycleListener lifecycleListener) {
        synchronized (this.f3627t0) {
            this.f3627t0.add(lifecycleListener);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void error(String str, String str2, Throwable th) {
        if (this.f3629v0 >= 1) {
            Log.e(str, str2, th);
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase, com.badlogic.gdx.Application
    public AndroidInput getInput() {
        return this.f3618k0;
    }

    @Override // com.badlogic.gdx.Application
    public void log(String str, String str2, Throwable th) {
        if (this.f3629v0 >= 2) {
            Log.i(str, str2, th);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        if (activity instanceof Callbacks) {
            this.f3631x0 = (Callbacks) activity;
        } else if (getParentFragment() instanceof Callbacks) {
            this.f3631x0 = (Callbacks) getParentFragment();
        } else if (getTargetFragment() instanceof Callbacks) {
            this.f3631x0 = (Callbacks) getTargetFragment();
        } else {
            throw new RuntimeException("Missing AndroidFragmentApplication.Callbacks. Please implement AndroidFragmentApplication.Callbacks on the parent activity, fragment or target fragment.");
        }
        super.onAttach(activity);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        boolean isContinuousRendering = this.f3617j0.isContinuousRendering();
        boolean z = AndroidGraphics.f3638I;
        AndroidGraphics.f3638I = true;
        this.f3617j0.setContinuousRendering(true);
        this.f3617j0.m24322h();
        this.f3618k0.onPause();
        if (isRemoving() || m24328d0() || getActivity().isFinishing()) {
            this.f3617j0.clearManagedCaches();
            this.f3617j0.m24326c();
        }
        AndroidGraphics.f3638I = z;
        this.f3617j0.setContinuousRendering(isContinuousRendering);
        this.f3617j0.onPauseGLSurfaceView();
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        Gdx.app = this;
        Gdx.input = getInput();
        Gdx.audio = getAudio();
        Gdx.files = getFiles();
        Gdx.graphics = getGraphics();
        Gdx.f38302net = getNet();
        this.f3618k0.onResume();
        AndroidGraphics androidGraphics = this.f3617j0;
        if (androidGraphics != null) {
            androidGraphics.onResumeGLSurfaceView();
        }
        if (!this.f3624q0) {
            this.f3617j0.mo24315j();
        } else {
            this.f3624q0 = false;
        }
        super.onResume();
    }

    @Override // com.badlogic.gdx.Application
    public void postRunnable(Runnable runnable) {
        synchronized (this.f3625r0) {
            this.f3625r0.add(runnable);
            Gdx.graphics.requestRendering();
        }
    }

    public void removeAndroidEventListener(AndroidEventListener androidEventListener) {
        synchronized (this.f3628u0) {
            this.f3628u0.removeValue(androidEventListener, true);
        }
    }

    @Override // com.badlogic.gdx.Application
    public void removeLifecycleListener(LifecycleListener lifecycleListener) {
        synchronized (this.f3627t0) {
            this.f3627t0.removeValue(lifecycleListener, true);
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidApplicationBase
    @TargetApi(19)
    public void useImmersiveMode(boolean z) {
        if (z && getVersion() >= 19) {
            this.f3617j0.getView().setSystemUiVisibility(5894);
        }
    }

    /* renamed from: d0 */
    public final boolean m24328d0() {
        for (Fragment parentFragment = getParentFragment(); parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
            if (parentFragment.isRemoving()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.badlogic.gdx.Application
    public void debug(String str, String str2, Throwable th) {
        if (this.f3629v0 >= 3) {
            Log.d(str, str2, th);
        }
    }

    public View initializeForView(ApplicationListener applicationListener, AndroidApplicationConfiguration androidApplicationConfiguration) {
        if (getVersion() >= 14) {
            GdxNativesLoader.load();
            setApplicationLogger(new AndroidApplicationLogger());
            ResolutionStrategy resolutionStrategy = androidApplicationConfiguration.resolutionStrategy;
            if (resolutionStrategy == null) {
                resolutionStrategy = new FillResolutionStrategy();
            }
            this.f3617j0 = new AndroidGraphics(this, androidApplicationConfiguration, resolutionStrategy);
            this.f3618k0 = createInput(this, getActivity(), this.f3617j0.f3647a, androidApplicationConfiguration);
            this.f3619l0 = createAudio(getActivity(), androidApplicationConfiguration);
            this.f3620m0 = m24330b0();
            this.f3621n0 = new AndroidNet(this, androidApplicationConfiguration);
            this.f3623p0 = applicationListener;
            this.handler = new Handler();
            this.f3622o0 = new AndroidClipboard(getActivity());
            addLifecycleListener(new LifecycleListener() { // from class: com.badlogic.gdx.backends.android.AndroidFragmentApplication.1
                @Override // com.badlogic.gdx.LifecycleListener
                public void dispose() {
                    AndroidFragmentApplication.this.f3619l0.dispose();
                }

                @Override // com.badlogic.gdx.LifecycleListener
                public void pause() {
                    AndroidFragmentApplication.this.f3619l0.pause();
                }

                @Override // com.badlogic.gdx.LifecycleListener
                public void resume() {
                    AndroidFragmentApplication.this.f3619l0.resume();
                }
            });
            Gdx.app = this;
            Gdx.input = getInput();
            Gdx.audio = getAudio();
            Gdx.files = getFiles();
            Gdx.graphics = getGraphics();
            Gdx.f38302net = getNet();
            m24329c0(androidApplicationConfiguration.useWakelock);
            useImmersiveMode(androidApplicationConfiguration.useImmersiveMode);
            if (androidApplicationConfiguration.useImmersiveMode && getVersion() >= 19) {
                new AndroidVisibilityListener().createListener(this);
            }
            if (getResources().getConfiguration().keyboard != 1) {
                this.f3618k0.setKeyboardAvailable(true);
            }
            return this.f3617j0.getView();
        }
        throw new GdxRuntimeException("libGDX requires Android API Level 14 or later.");
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        synchronized (this.f3628u0) {
            int i3 = 0;
            while (true) {
                Array<AndroidEventListener> array = this.f3628u0;
                if (i3 < array.size) {
                    array.get(i3).onActivityResult(i, i2, intent);
                    i3++;
                }
            }
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        boolean z = true;
        if (configuration.hardKeyboardHidden != 1) {
            z = false;
        }
        this.f3618k0.setKeyboardAvailable(z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f3631x0 = null;
    }
}
