package android.hardware.display;

import android.os.Handler;
import android.view.Display;
/* loaded from: classes.dex */
public final /* synthetic */ class DisplayManager {

    /* loaded from: classes.dex */
    public /* synthetic */ interface DisplayListener {
        static {
            throw new NoClassDefFoundError();
        }
    }

    static {
        throw new NoClassDefFoundError();
    }

    public native /* synthetic */ Display getDisplay(int i);

    public native /* synthetic */ void registerDisplayListener(DisplayListener displayListener, Handler handler);

    public native /* synthetic */ void unregisterDisplayListener(DisplayListener displayListener);
}
