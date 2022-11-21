package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
/* renamed from: androidx.fragment.app.e */
/* loaded from: classes.dex */
public abstract class AbstractC0258e {
    @Deprecated
    /* renamed from: a */
    public Fragment m27078a(Context context, String str, Bundle bundle) {
        return Fragment.instantiate(context, str, bundle);
    }

    /* renamed from: c */
    public abstract View mo27049c(int i);

    /* renamed from: d */
    public abstract boolean mo27048d();
}
