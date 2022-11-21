package p077h3;

import android.net.Uri;
import android.os.RemoteException;
import com.prineside.tdi2.Config;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicInteger;
import p168r4.cm0;
import p168r4.nf0;
import p168r4.pu2;
import p168r4.t73;
/* renamed from: h3.e0 */
/* loaded from: classes.dex */
public final class C3994e0 implements t73<Uri> {

    /* renamed from: a */
    public final /* synthetic */ nf0 f17430a;

    /* renamed from: b */
    public final /* synthetic */ BinderC3998g0 f17431b;

    public C3994e0(BinderC3998g0 binderC3998g0, nf0 nf0Var) {
        this.f17431b = binderC3998g0;
        this.f17430a = nf0Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        String str;
        try {
            nf0 nf0Var = this.f17430a;
            String valueOf = String.valueOf(th.getMessage());
            if (valueOf.length() != 0) {
                str = "Internal error: ".concat(valueOf);
            } else {
                str = new String("Internal error: ");
            }
            nf0Var.mo9109s(str);
        } catch (RemoteException e) {
            cm0.m12439d("", e);
        }
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(Uri uri) {
        AtomicInteger atomicInteger;
        boolean z;
        String str;
        Uri m17578r7;
        pu2 pu2Var;
        Uri uri2 = uri;
        try {
            atomicInteger = this.f17431b.f17446F;
            atomicInteger.getAndIncrement();
            this.f17430a.mo9110c6(Collections.singletonList(uri2));
            z = this.f17431b.f17441A;
            if (z) {
                str = this.f17431b.f17449I;
                m17578r7 = BinderC3998g0.m17578r7(uri2, str, Config.SITE_API_VERSION);
                pu2Var = this.f17431b.f17463y;
                pu2Var.m8184b(m17578r7.toString());
            }
        } catch (RemoteException e) {
            cm0.m12439d("", e);
        }
    }
}
