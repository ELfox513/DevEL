package com.badlogic.gdx.backends.android;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.files.FileHandle;
/* loaded from: classes.dex */
public class AsynchronousAndroidAudio extends DefaultAndroidAudio {

    /* renamed from: k */
    public final HandlerThread f3752k;

    /* renamed from: p */
    public final Handler f3753p;

    public AsynchronousAndroidAudio(Context context, AndroidApplicationConfiguration androidApplicationConfiguration) {
        super(context, androidApplicationConfiguration);
        if (!androidApplicationConfiguration.disableAudio) {
            HandlerThread handlerThread = new HandlerThread("libGDX Sound Management");
            this.f3752k = handlerThread;
            handlerThread.start();
            this.f3753p = new Handler(handlerThread.getLooper());
            return;
        }
        this.f3753p = null;
        this.f3752k = null;
    }

    @Override // com.badlogic.gdx.backends.android.DefaultAndroidAudio, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        super.dispose();
        HandlerThread handlerThread = this.f3752k;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }

    @Override // com.badlogic.gdx.backends.android.DefaultAndroidAudio, com.badlogic.gdx.Audio
    public Sound newSound(FileHandle fileHandle) {
        return new AsynchronousSound(super.newSound(fileHandle), this.f3753p);
    }
}
