package android.service.dreams;

import android.app.Service;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
/* loaded from: classes.dex */
public /* synthetic */ class DreamService extends Service implements Window.Callback {
    static {
        throw new NoClassDefFoundError();
    }

    public final native /* synthetic */ void finish();

    public native /* synthetic */ Window getWindow();

    @Override // android.view.Window.Callback
    public native /* synthetic */ void onDetachedFromWindow();

    public native /* synthetic */ void onDreamingStarted();

    public native /* synthetic */ void onDreamingStopped();

    public native /* synthetic */ void setContentView(View view, ViewGroup.LayoutParams layoutParams);

    public native /* synthetic */ void setFullscreen(boolean z);
}
