package p203v3;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.AbstractC1411a;
import p194u3.C6883a;
import p194u3.InterfaceC6909l;
import p220x3.C7297q;
/* renamed from: v3.y0 */
/* loaded from: classes.dex */
public final class C7059y0<A extends AbstractC1411a<? extends InterfaceC6909l, C6883a.InterfaceC6885b>> extends AbstractC6997b1 {

    /* renamed from: b */
    public final A f36054b;

    @Override // p203v3.AbstractC6997b1
    /* renamed from: c */
    public final void mo2582c(C7046s c7046s, boolean z) {
        c7046s.m2616a(this.f36054b, z);
    }

    @Override // p203v3.AbstractC6997b1
    /* renamed from: a */
    public final void mo2584a(Status status) {
        try {
            this.f36054b.mo2721a(status);
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // p203v3.AbstractC6997b1
    /* renamed from: b */
    public final void mo2583b(Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(simpleName.length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        try {
            this.f36054b.mo2721a(new Status(10, sb.toString()));
        } catch (IllegalStateException e) {
            Log.w("ApiCallRunner", "Exception reporting failure", e);
        }
    }

    @Override // p203v3.AbstractC6997b1
    /* renamed from: d */
    public final void mo2581d(C7000c0<?> c7000c0) {
        try {
            this.f36054b.m23016p(c7000c0.m2731s());
        } catch (RuntimeException e) {
            mo2583b(e);
        }
    }

    public C7059y0(int i, A a) {
        super(i);
        this.f36054b = (A) C7297q.m1882k(a, "Null methods are not runnable.");
    }
}
