package p168r4;

import android.content.Context;
/* renamed from: r4.xu2 */
/* loaded from: classes2.dex */
public final class xu2 {

    /* renamed from: a */
    public boolean f33772a;

    /* renamed from: a */
    public final boolean m4971a() {
        return this.f33772a;
    }

    /* renamed from: b */
    public final void m4970b(Context context) {
        iw2.m10484a(context, "Application Context cannot be null");
        if (!this.f33772a) {
            this.f33772a = true;
            uv2.m6337a().m6336b(context);
            pv2.m8123a().m8122b(context);
            gw2.m11046a(context);
            rv2.m7319a().m7317c(context);
        }
    }
}
