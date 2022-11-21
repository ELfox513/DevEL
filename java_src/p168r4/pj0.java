package p168r4;

import android.content.Context;
import android.text.TextUtils;
import p235z2.C7601t;
/* renamed from: r4.pj0 */
/* loaded from: classes2.dex */
public final class pj0 implements InterfaceC6064nm {

    /* renamed from: a */
    public final Context f29473a;

    /* renamed from: b */
    public final Object f29474b;

    /* renamed from: d */
    public final String f29475d;

    /* renamed from: k */
    public boolean f29476k;

    public pj0(Context context, String str) {
        this.f29473a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f29475d = str;
        this.f29476k = false;
        this.f29474b = new Object();
    }

    @Override // p168r4.InterfaceC6064nm
    /* renamed from: Y */
    public final void mo4017Y(C6026mm c6026mm) {
        m8311a(c6026mm.f27782j);
    }

    /* renamed from: b */
    public final String m8310b() {
        return this.f29475d;
    }

    /* renamed from: a */
    public final void m8311a(boolean z) {
        if (!C7601t.m942a().m10622g(this.f29473a)) {
            return;
        }
        synchronized (this.f29474b) {
            if (this.f29476k == z) {
                return;
            }
            this.f29476k = z;
            if (TextUtils.isEmpty(this.f29475d)) {
                return;
            }
            if (this.f29476k) {
                C7601t.m942a().m10618k(this.f29473a, this.f29475d);
            } else {
                C7601t.m942a().m10617l(this.f29473a, this.f29475d);
            }
        }
    }
}
