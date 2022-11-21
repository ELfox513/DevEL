package p117l7;

import java.util.Iterator;
import java.util.Set;
import p178s5.C6592d;
import p178s5.C6618q;
import p178s5.InterfaceC6596e;
import p178s5.InterfaceC6604h;
/* renamed from: l7.c */
/* loaded from: classes2.dex */
public class C4577c implements InterfaceC4584i {

    /* renamed from: a */
    public final String f18616a;

    /* renamed from: b */
    public final C4578d f18617b;

    /* renamed from: c */
    public static C6592d<InterfaceC4584i> m15986c() {
        return C6592d.m3861c(InterfaceC4584i.class).m3846b(C6618q.m3780k(AbstractC4580f.class)).m3843e(new InterfaceC6604h() { // from class: l7.b
            @Override // p178s5.InterfaceC6604h
            /* renamed from: a */
            public final Object mo1588a(InterfaceC6596e interfaceC6596e) {
                InterfaceC4584i m15985d;
                m15985d = C4577c.m15985d(interfaceC6596e);
                return m15985d;
            }
        }).m3845c();
    }

    /* renamed from: d */
    public static /* synthetic */ InterfaceC4584i m15985d(InterfaceC6596e interfaceC6596e) {
        return new C4577c(interfaceC6596e.mo3824d(AbstractC4580f.class), C4578d.m15983a());
    }

    /* renamed from: e */
    public static String m15984e(Set<AbstractC4580f> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<AbstractC4580f> it = set.iterator();
        while (it.hasNext()) {
            AbstractC4580f next = it.next();
            sb.append(next.mo15979b());
            sb.append('/');
            sb.append(next.mo15978c());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    @Override // p117l7.InterfaceC4584i
    /* renamed from: a */
    public String mo15973a() {
        if (this.f18617b.m15982b().isEmpty()) {
            return this.f18616a;
        }
        return this.f18616a + ' ' + m15984e(this.f18617b.m15982b());
    }

    public C4577c(Set<AbstractC4580f> set, C4578d c4578d) {
        this.f18616a = m15984e(set);
        this.f18617b = c4578d;
    }
}
