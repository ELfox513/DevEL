package com.badlogic.gdx.backends.android;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.Window;
import android.view.WindowManager;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.SnapshotArray;
/* loaded from: classes.dex */
public interface AndroidApplicationBase extends Application {
    public static final int MINIMUM_SDK = 14;

    AndroidAudio createAudio(Context context, AndroidApplicationConfiguration androidApplicationConfiguration);

    AndroidInput createInput(Application application, Context context, Object obj, AndroidApplicationConfiguration androidApplicationConfiguration);

    Window getApplicationWindow();

    Context getContext();

    Array<Runnable> getExecutedRunnables();

    Handler getHandler();

    @Override // com.badlogic.gdx.Application
    AndroidInput getInput();

    SnapshotArray<LifecycleListener> getLifecycleListeners();

    Array<Runnable> getRunnables();

    WindowManager getWindowManager();

    void runOnUiThread(Runnable runnable);

    void startActivity(Intent intent);

    void useImmersiveMode(boolean z);
}
