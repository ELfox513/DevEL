package p077h3;

import android.net.Uri;
import android.os.RemoteException;
import com.prineside.tdi2.Config;
import java.util.ArrayList;
import java.util.Iterator;
import p168r4.cm0;
import p168r4.nf0;
import p168r4.pu2;
import p168r4.t73;
/* renamed from: h3.d0 */
/* loaded from: classes.dex */
public final class C3992d0 implements t73<ArrayList<Uri>> {

    /* renamed from: a */
    public final /* synthetic */ nf0 f17427a;

    /* renamed from: b */
    public final /* synthetic */ BinderC3998g0 f17428b;

    public C3992d0(BinderC3998g0 binderC3998g0, nf0 nf0Var) {
        this.f17428b = binderC3998g0;
        this.f17427a = nf0Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        String str;
        try {
            nf0 nf0Var = this.f17427a;
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
    public final /* bridge */ /* synthetic */ void mo4626b(ArrayList<Uri> arrayList) {
        boolean z;
        String str;
        Uri m17578r7;
        pu2 pu2Var;
        ArrayList<Uri> arrayList2 = arrayList;
        try {
            this.f17427a.mo9110c6(arrayList2);
            z = this.f17428b.f17464z;
            if (z) {
                Iterator<Uri> it = arrayList2.iterator();
                while (it.hasNext()) {
                    Uri next = it.next();
                    if (BinderC3998g0.m17593G7(next)) {
                        str = this.f17428b.f17449I;
                        m17578r7 = BinderC3998g0.m17578r7(next, str, Config.SITE_API_VERSION);
                        pu2Var = this.f17428b.f17463y;
                        pu2Var.m8184b(m17578r7.toString());
                    }
                }
            }
        } catch (RemoteException e) {
            cm0.m12439d("", e);
        }
    }
}
