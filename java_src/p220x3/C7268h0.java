package p220x3;

import android.content.Context;
import android.util.SparseIntArray;
import p185t3.C6746h;
import p194u3.C6883a;
/* renamed from: x3.h0 */
/* loaded from: classes.dex */
public final class C7268h0 {

    /* renamed from: a */
    public final SparseIntArray f36731a = new SparseIntArray();

    /* renamed from: b */
    public C6746h f36732b;

    /* renamed from: b */
    public final int m1935b(Context context, int i) {
        return this.f36731a.get(i, -1);
    }

    /* renamed from: c */
    public final void m1934c() {
        this.f36731a.clear();
    }

    public C7268h0(C6746h c6746h) {
        C7297q.m1883j(c6746h);
        this.f36732b = c6746h;
    }

    /* renamed from: a */
    public final int m1936a(Context context, C6883a.InterfaceC6892f interfaceC6892f) {
        C7297q.m1883j(context);
        C7297q.m1883j(interfaceC6892f);
        int i = 0;
        if (!interfaceC6892f.mo2653i()) {
            return 0;
        }
        int mo2651k = interfaceC6892f.mo2651k();
        int m1935b = m1935b(context, mo2651k);
        if (m1935b == -1) {
            int i2 = 0;
            while (true) {
                if (i2 < this.f36731a.size()) {
                    int keyAt = this.f36731a.keyAt(i2);
                    if (keyAt > mo2651k && this.f36731a.get(keyAt) == 0) {
                        break;
                    }
                    i2++;
                } else {
                    i = -1;
                    break;
                }
            }
            if (i == -1) {
                m1935b = this.f36732b.mo3488h(context, mo2651k);
            } else {
                m1935b = i;
            }
            this.f36731a.put(mo2651k, m1935b);
        }
        return m1935b;
    }
}
