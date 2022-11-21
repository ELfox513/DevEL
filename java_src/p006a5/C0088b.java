package p006a5;

import android.app.Activity;
import android.os.RemoteException;
import p078h4.C4025d;
import p097j5.AbstractC4346i;
import p097j5.C4348j;
import p105k4.C4454l;
import p194u3.AbstractC6897e;
import p203v3.AbstractC7041q;
import p203v3.InterfaceC7029m;
import p220x3.C7254d;
/* renamed from: a5.b */
/* loaded from: classes2.dex */
public class C0088b extends AbstractC6897e<C4025d.C4026a> {
    public C0088b(Activity activity, C4025d.C4026a c4026a) {
        super(activity, C4025d.f17510g, c4026a, AbstractC6897e.C6898a.f35763c);
    }

    /* renamed from: x */
    public final <ResultT> AbstractC4346i<ResultT> m27682x(InterfaceC7029m<C4454l, C4348j<ResultT>> interfaceC7029m) {
        return (AbstractC4346i<ResultT>) m3055l(m27681y(interfaceC7029m));
    }

    /* renamed from: y */
    public static <ResultT> AbstractC7041q<C4454l, ResultT> m27681y(final InterfaceC7029m<C4454l, C4348j<ResultT>> interfaceC7029m) {
        return AbstractC7041q.m2627a().m2622b(new InterfaceC7029m(interfaceC7029m) { // from class: a5.c

            /* renamed from: a */
            public final InterfaceC7029m f156a;

            {
                this.f156a = interfaceC7029m;
            }

            @Override // p203v3.InterfaceC7029m
            public final void accept(Object obj, Object obj2) {
                C4348j c4348j = (C4348j) obj2;
                try {
                    this.f156a.accept((C4454l) obj, c4348j);
                } catch (RemoteException | SecurityException e) {
                    c4348j.m16772d(e);
                }
            }
        }).m2623a();
    }

    @Override // p194u3.AbstractC6897e
    /* renamed from: g */
    public C7254d.C7255a mo3060g() {
        C7254d.C7255a mo3060g = super.mo3060g();
        if (m3053n() != null && m3053n().f17531v != null) {
            return mo3060g.m1962b(m3053n().f17531v);
        }
        return mo3060g;
    }
}
