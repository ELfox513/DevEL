package p203v3;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import p097j5.C4348j;
import p194u3.C6894b;
import p194u3.InterfaceC6909l;
/* renamed from: v3.s */
/* loaded from: classes.dex */
public final class C7046s {

    /* renamed from: a */
    public final Map<BasePendingResult<?>, Boolean> f36034a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b */
    public final Map<C4348j<?>, Boolean> f36035b = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: c */
    public final boolean m2614c() {
        return (this.f36034a.isEmpty() && this.f36035b.isEmpty()) ? false : true;
    }

    /* renamed from: d */
    public final void m2613d() {
        m2609h(false, C7008f.f35938C);
    }

    /* renamed from: a */
    public final void m2616a(BasePendingResult<? extends InterfaceC6909l> basePendingResult, boolean z) {
        this.f36034a.put(basePendingResult, Boolean.valueOf(z));
        basePendingResult.mo2641c(new C7025k1(this, basePendingResult));
    }

    /* renamed from: b */
    public final <TResult> void m2615b(C4348j<TResult> c4348j, boolean z) {
        this.f36035b.put(c4348j, Boolean.valueOf(z));
        c4348j.m16775a().mo16799c(new C7028l1(this, c4348j));
    }

    /* renamed from: e */
    public final void m2612e(int i, String str) {
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i == 1) {
            sb.append(" due to service disconnection.");
        } else if (i == 3) {
            sb.append(" due to dead object exception.");
        }
        if (str != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(str);
        }
        m2609h(true, new Status(20, sb.toString()));
    }

    /* renamed from: h */
    public final void m2609h(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f36034a) {
            hashMap = new HashMap(this.f36034a);
        }
        synchronized (this.f36035b) {
            hashMap2 = new HashMap(this.f36035b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).m23031f(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((C4348j) entry2.getKey()).m16772d(new C6894b(status));
            }
        }
    }
}
