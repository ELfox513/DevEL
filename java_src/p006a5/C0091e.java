package p006a5;

import android.app.Activity;
import android.view.View;
import p078h4.C4025d;
import p078h4.InterfaceC4029e;
import p097j5.AbstractC4346i;
import p097j5.C4348j;
import p105k4.C4454l;
import p203v3.InterfaceC7029m;
/* renamed from: a5.e */
/* loaded from: classes2.dex */
public final class C0091e extends C0088b implements InterfaceC4029e {
    public C0091e(Activity activity, C4025d.C4026a c4026a) {
        super(activity, c4026a);
    }

    @Override // p078h4.InterfaceC4029e
    /* renamed from: c */
    public final AbstractC4346i<Void> mo17520c(final View view) {
        return m27682x(new InterfaceC7029m(view) { // from class: a5.f

            /* renamed from: a */
            public final View f157a;

            {
                this.f157a = view;
            }

            @Override // p203v3.InterfaceC7029m
            public final void accept(Object obj, Object obj2) {
                ((C4454l) obj).m16459m0(this.f157a);
                ((C4348j) obj2).m16773c(null);
            }
        });
    }

    @Override // p078h4.InterfaceC4029e
    /* renamed from: e */
    public final AbstractC4346i<Void> mo17519e(final int i) {
        return m27682x(new InterfaceC7029m(i) { // from class: a5.g

            /* renamed from: a */
            public final int f158a;

            {
                this.f158a = i;
            }

            @Override // p203v3.InterfaceC7029m
            public final void accept(Object obj, Object obj2) {
                ((C4454l) obj).m16451u0(this.f158a);
                ((C4348j) obj2).m16773c(null);
            }
        });
    }
}
