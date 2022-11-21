package p117l7;

import android.content.Context;
import p178s5.C6592d;
import p178s5.C6618q;
import p178s5.InterfaceC6596e;
import p178s5.InterfaceC6604h;
/* renamed from: l7.h */
/* loaded from: classes2.dex */
public class C4582h {

    /* renamed from: l7.h$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC4583a<T> {
        /* renamed from: a */
        String mo15879a(T t);
    }

    /* renamed from: b */
    public static C6592d<?> m15976b(String str, String str2) {
        return C6592d.m3855i(AbstractC4580f.m15980a(str, str2), AbstractC4580f.class);
    }

    /* renamed from: d */
    public static /* synthetic */ AbstractC4580f m15974d(String str, InterfaceC4583a interfaceC4583a, InterfaceC6596e interfaceC6596e) {
        return AbstractC4580f.m15980a(str, interfaceC4583a.mo15879a((Context) interfaceC6596e.mo3827a(Context.class)));
    }

    /* renamed from: c */
    public static C6592d<?> m15975c(final String str, final InterfaceC4583a<Context> interfaceC4583a) {
        return C6592d.m3854j(AbstractC4580f.class).m3846b(C6618q.m3782i(Context.class)).m3843e(new InterfaceC6604h() { // from class: l7.g
            @Override // p178s5.InterfaceC6604h
            /* renamed from: a */
            public final Object mo1588a(InterfaceC6596e interfaceC6596e) {
                AbstractC4580f m15974d;
                m15974d = C4582h.m15974d(str, interfaceC4583a, interfaceC6596e);
                return m15974d;
            }
        }).m3845c();
    }
}
