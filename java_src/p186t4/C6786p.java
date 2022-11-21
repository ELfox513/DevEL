package p186t4;

import android.content.Context;
import com.google.android.gms.common.api.Status;
import p097j5.AbstractC4346i;
import p097j5.C4348j;
import p097j5.C4352l;
import p122m3.C4629c;
import p122m3.C4630d;
import p122m3.C4634h;
import p122m3.InterfaceC4628b;
import p185t3.C6746h;
import p194u3.AbstractC6897e;
import p194u3.C6883a;
import p194u3.C6894b;
import p203v3.AbstractC7041q;
import p203v3.InterfaceC7029m;
/* renamed from: t4.p */
/* loaded from: classes2.dex */
public final class C6786p extends AbstractC6897e<C6883a.InterfaceC6887d.C6890c> implements InterfaceC4628b {

    /* renamed from: m */
    public static final C6883a.C6893g<C6774d> f35463m;

    /* renamed from: n */
    public static final C6883a.AbstractC6884a<C6774d, C6883a.InterfaceC6887d.C6890c> f35464n;

    /* renamed from: o */
    public static final C6883a<C6883a.InterfaceC6887d.C6890c> f35465o;

    /* renamed from: k */
    public final Context f35466k;

    /* renamed from: l */
    public final C6746h f35467l;

    public C6786p(Context context, C6746h c6746h) {
        super(context, f35465o, C6883a.InterfaceC6887d.f35750o, AbstractC6897e.C6898a.f35763c);
        this.f35466k = context;
        this.f35467l = c6746h;
    }

    static {
        C6883a.C6893g<C6774d> c6893g = new C6883a.C6893g<>();
        f35463m = c6893g;
        C6784n c6784n = new C6784n();
        f35464n = c6784n;
        f35465o = new C6883a<>("AppSet.API", c6784n, c6893g);
    }

    @Override // p122m3.InterfaceC4628b
    /* renamed from: a */
    public final AbstractC4346i<C4629c> mo3437a() {
        if (this.f35467l.mo3488h(this.f35466k, 212800000) == 0) {
            return m3057j(AbstractC7041q.m2627a().m2620d(C4634h.f18675a).m2622b(new InterfaceC7029m() { // from class: t4.m
                @Override // p203v3.InterfaceC7029m
                public final void accept(Object obj, Object obj2) {
                    ((C6777g) ((C6774d) obj).m2025B()).m3446t0(new C4630d(null, null), new BinderC6785o(C6786p.this, (C4348j) obj2));
                }
            }).m2621c(false).m2619e(27601).m2623a());
        }
        return C4352l.m16768c(new C6894b(new Status(17)));
    }
}
