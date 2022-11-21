package androidx.multidex;

import android.app.Application;
import android.content.Context;
import p119m0.C4586a;
/* loaded from: classes.dex */
public class MultiDexApplication extends Application {
    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        C4586a.m15962k(this);
    }
}
