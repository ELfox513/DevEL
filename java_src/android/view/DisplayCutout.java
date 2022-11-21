package android.view;

import android.annotation.NonNull;
import android.graphics.Rect;
import java.util.List;
/* loaded from: classes.dex */
public final /* synthetic */ class DisplayCutout {
    static {
        throw new NoClassDefFoundError();
    }

    @NonNull
    public native /* synthetic */ List<Rect> getBoundingRects();

    public native /* synthetic */ int getSafeInsetBottom();

    public native /* synthetic */ int getSafeInsetLeft();

    public native /* synthetic */ int getSafeInsetRight();

    public native /* synthetic */ int getSafeInsetTop();
}
