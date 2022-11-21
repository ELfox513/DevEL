package com.badlogic.gdx.backends.android;

import android.view.View;
/* loaded from: classes.dex */
public class AndroidVisibilityListener {
    public void createListener(final AndroidApplicationBase androidApplicationBase) {
        try {
            androidApplicationBase.getApplicationWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.badlogic.gdx.backends.android.AndroidVisibilityListener.1
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public void onSystemUiVisibilityChange(int i) {
                    androidApplicationBase.getHandler().post(new Runnable() { // from class: com.badlogic.gdx.backends.android.AndroidVisibilityListener.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            androidApplicationBase.useImmersiveMode(true);
                        }
                    });
                }
            });
        } catch (Throwable th) {
            androidApplicationBase.log("AndroidApplication", "Can't create OnSystemUiVisibilityChangeListener, unable to use immersive mode.", th);
        }
    }
}
