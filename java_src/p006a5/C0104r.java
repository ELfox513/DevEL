package p006a5;

import android.app.Activity;
import p078h4.C4025d;
import p078h4.InterfaceC4022a;
import p097j5.C4348j;
import p105k4.C4454l;
import p203v3.InterfaceC7029m;
/* renamed from: a5.r */
/* loaded from: classes2.dex */
public final class C0104r extends C0088b implements InterfaceC4022a {
    public C0104r(Activity activity, C4025d.C4026a c4026a) {
        super(activity, c4026a);
    }

    @Override // p078h4.InterfaceC4022a
    /* renamed from: d */
    public final void mo17549d(final String str) {
        m3055l(C0097k.m27677a(new InterfaceC7029m(str) { // from class: a5.x

            /* renamed from: a */
            public final String f175a;

            {
                this.f175a = str;
            }

            @Override // p203v3.InterfaceC7029m
            public final void accept(Object obj, Object obj2) {
                C4348j c4348j = (C4348j) obj2;
                ((C4454l) obj).m16455q0(null, this.f175a);
            }
        }));
    }
}
