package p203v3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* renamed from: v3.i0 */
/* loaded from: classes.dex */
public final class C7018i0 extends BroadcastReceiver {

    /* renamed from: a */
    public Context f35975a;

    /* renamed from: b */
    public final AbstractC7015h0 f35976b;

    public C7018i0(AbstractC7015h0 abstractC7015h0) {
        this.f35976b = abstractC7015h0;
    }

    /* renamed from: a */
    public final void m2658a(Context context) {
        this.f35975a = context;
    }

    /* renamed from: b */
    public final synchronized void m2657b() {
        Context context = this.f35975a;
        if (context != null) {
            context.unregisterReceiver(this);
        }
        this.f35975a = null;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String str;
        Uri data = intent.getData();
        if (data != null) {
            str = data.getSchemeSpecificPart();
        } else {
            str = null;
        }
        if ("com.google.android.gms".equals(str)) {
            this.f35976b.mo2668a();
            m2657b();
        }
    }
}
