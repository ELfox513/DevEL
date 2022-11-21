package p168r4;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
/* renamed from: r4.ch0 */
/* loaded from: classes2.dex */
public final class ch0 extends ContextWrapper {
    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        throw null;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized ApplicationInfo getApplicationInfo() {
        throw null;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized String getPackageName() {
        throw null;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized String getPackageResourcePath() {
        throw null;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final synchronized void startActivity(Intent intent) {
        throw null;
    }

    /* renamed from: a */
    public static Context m12467a(Context context) {
        if (!(context instanceof ch0)) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                return context;
            }
            return applicationContext;
        }
        return ((ch0) context).getBaseContext();
    }
}
