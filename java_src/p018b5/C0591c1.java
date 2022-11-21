package p018b5;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: b5.c1 */
/* loaded from: classes2.dex */
public final class C0591c1 {

    /* renamed from: a */
    public final C0899u3 f1757a;

    /* renamed from: b */
    public C0917v4 f1758b;

    /* renamed from: c */
    public final C0589c f1759c;

    /* renamed from: d */
    public final C0571ag f1760d;

    /* renamed from: a */
    public final C0589c m26121a() {
        return this.f1759c;
    }

    /* renamed from: b */
    public final /* synthetic */ AbstractC0708j m26120b() {
        return new C0945wf(this.f1760d);
    }

    /* renamed from: d */
    public final void m26118d(String str, Callable<? extends AbstractC0708j> callable) {
        this.f1757a.f2333d.m24913a(str, callable);
    }

    /* renamed from: f */
    public final boolean m26116f() {
        return !this.f1759c.m26125c().isEmpty();
    }

    /* renamed from: g */
    public final boolean m26115g() {
        return !this.f1759c.m26126b().equals(this.f1759c.m26127a());
    }

    public C0591c1() {
        C0899u3 c0899u3 = new C0899u3();
        this.f1757a = c0899u3;
        this.f1758b = c0899u3.f2331b.m25073a();
        this.f1759c = new C0589c();
        this.f1760d = new C0571ag();
        c0899u3.f2333d.m24913a("internal.registerCallback", new Callable() { // from class: b5.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return C0591c1.this.m26120b();
            }
        });
        c0899u3.f2333d.m24913a("internal.eventLogger", new Callable() { // from class: b5.b0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new C0972y8(C0591c1.this.f1759c);
            }
        });
    }

    /* renamed from: c */
    public final void m26119c(C0731k5 c0731k5) {
        String str;
        AbstractC0708j abstractC0708j;
        String str2;
        try {
            this.f1758b = this.f1757a.f2331b.m25073a();
            if (!(this.f1757a.m25107a(this.f1758b, (C0816p5[]) c0731k5.m25705u().toArray(new C0816p5[0])) instanceof C0674h)) {
                for (C0697i5 c0697i5 : c0731k5.m25707s().m25931v()) {
                    List<C0816p5> m25797u = c0697i5.m25797u();
                    String m25798t = c0697i5.m25798t();
                    Iterator<C0816p5> it = m25797u.iterator();
                    while (it.hasNext()) {
                        InterfaceC0827q m25107a = this.f1757a.m25107a(this.f1758b, it.next());
                        if (m25107a instanceof C0776n) {
                            C0917v4 c0917v4 = this.f1758b;
                            if (!c0917v4.m25066h(m25798t)) {
                                abstractC0708j = null;
                            } else {
                                InterfaceC0827q m25070d = c0917v4.m25070d(m25798t);
                                if (!(m25070d instanceof AbstractC0708j)) {
                                    String valueOf = String.valueOf(m25798t);
                                    if (valueOf.length() != 0) {
                                        str = "Invalid function name: ".concat(valueOf);
                                    } else {
                                        str = new String("Invalid function name: ");
                                    }
                                    throw new IllegalStateException(str);
                                }
                                abstractC0708j = (AbstractC0708j) m25070d;
                            }
                            if (abstractC0708j == null) {
                                String valueOf2 = String.valueOf(m25798t);
                                if (valueOf2.length() != 0) {
                                    str2 = "Rule function is undefined: ".concat(valueOf2);
                                } else {
                                    str2 = new String("Rule function is undefined: ");
                                }
                                throw new IllegalStateException(str2);
                            }
                            abstractC0708j.mo24853a(this.f1758b, Collections.singletonList(m25107a));
                        } else {
                            throw new IllegalArgumentException("Invalid rule definition");
                        }
                    }
                }
                return;
            }
            throw new IllegalStateException("Program loading failed");
        } catch (Throwable th) {
            throw new C0965y1(th);
        }
    }

    /* renamed from: e */
    public final boolean m26117e(C0572b c0572b) {
        try {
            this.f1759c.m26124d(c0572b);
            this.f1757a.f2332c.m25067g("runtime.counter", new C0691i(Double.valueOf(0.0d)));
            this.f1760d.m26162b(this.f1758b.m25073a(), this.f1759c);
            if (!m26115g()) {
                if (!m26116f()) {
                    return false;
                }
                return true;
            }
            return true;
        } catch (Throwable th) {
            throw new C0965y1(th);
        }
    }
}
