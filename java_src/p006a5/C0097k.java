package p006a5;

import android.os.RemoteException;
import p097j5.C4348j;
import p105k4.C4454l;
import p203v3.AbstractC7041q;
import p203v3.InterfaceC7029m;
/* renamed from: a5.k */
/* loaded from: classes2.dex */
public final class C0097k {
    /* renamed from: a */
    public static <ResultT> AbstractC7041q<C4454l, ResultT> m27677a(final InterfaceC7029m<C4454l, C4348j<ResultT>> interfaceC7029m) {
        return AbstractC7041q.m2627a().m2622b(new InterfaceC7029m(interfaceC7029m) { // from class: a5.j

            /* renamed from: a */
            public final InterfaceC7029m f161a;

            {
                this.f161a = interfaceC7029m;
            }

            @Override // p203v3.InterfaceC7029m
            public final void accept(Object obj, Object obj2) {
                C4348j c4348j = (C4348j) obj2;
                try {
                    this.f161a.accept((C4454l) obj, c4348j);
                } catch (RemoteException | SecurityException e) {
                    c4348j.m16772d(e);
                }
            }
        }).m2623a();
    }
}
