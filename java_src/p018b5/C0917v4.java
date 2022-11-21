package p018b5;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* renamed from: b5.v4 */
/* loaded from: classes2.dex */
public final class C0917v4 {

    /* renamed from: a */
    public final C0917v4 f2355a;

    /* renamed from: b */
    public final C0963y f2356b;

    /* renamed from: c */
    public final Map<String, InterfaceC0827q> f2357c = new HashMap();

    /* renamed from: d */
    public final Map<String, Boolean> f2358d = new HashMap();

    /* renamed from: a */
    public final C0917v4 m25073a() {
        return new C0917v4(this, this.f2356b);
    }

    /* renamed from: b */
    public final InterfaceC0827q m25072b(InterfaceC0827q interfaceC0827q) {
        return this.f2356b.m24964a(this, interfaceC0827q);
    }

    /* renamed from: c */
    public final InterfaceC0827q m25071c(C0640f c0640f) {
        InterfaceC0827q interfaceC0827q = InterfaceC0827q.f2154c;
        Iterator<Integer> m26015q = c0640f.m26015q();
        while (m26015q.hasNext()) {
            interfaceC0827q = this.f2356b.m24964a(this, c0640f.m26017m(m26015q.next().intValue()));
            if (interfaceC0827q instanceof C0674h) {
                break;
            }
        }
        return interfaceC0827q;
    }

    /* renamed from: d */
    public final InterfaceC0827q m25070d(String str) {
        if (this.f2357c.containsKey(str)) {
            return this.f2357c.get(str);
        }
        C0917v4 c0917v4 = this.f2355a;
        if (c0917v4 != null) {
            return c0917v4.m25070d(str);
        }
        throw new IllegalArgumentException(String.format("%s is not defined", str));
    }

    /* renamed from: e */
    public final void m25069e(String str, InterfaceC0827q interfaceC0827q) {
        if (this.f2358d.containsKey(str)) {
            return;
        }
        if (interfaceC0827q == null) {
            this.f2357c.remove(str);
        } else {
            this.f2357c.put(str, interfaceC0827q);
        }
    }

    /* renamed from: g */
    public final void m25067g(String str, InterfaceC0827q interfaceC0827q) {
        C0917v4 c0917v4;
        if (!this.f2357c.containsKey(str) && (c0917v4 = this.f2355a) != null && c0917v4.m25066h(str)) {
            this.f2355a.m25067g(str, interfaceC0827q);
        } else if (this.f2358d.containsKey(str)) {
        } else {
            if (interfaceC0827q == null) {
                this.f2357c.remove(str);
            } else {
                this.f2357c.put(str, interfaceC0827q);
            }
        }
    }

    /* renamed from: h */
    public final boolean m25066h(String str) {
        if (this.f2357c.containsKey(str)) {
            return true;
        }
        C0917v4 c0917v4 = this.f2355a;
        if (c0917v4 != null) {
            return c0917v4.m25066h(str);
        }
        return false;
    }

    public C0917v4(C0917v4 c0917v4, C0963y c0963y) {
        this.f2355a = c0917v4;
        this.f2356b = c0963y;
    }

    /* renamed from: f */
    public final void m25068f(String str, InterfaceC0827q interfaceC0827q) {
        m25069e(str, interfaceC0827q);
        this.f2358d.put(str, Boolean.TRUE);
    }
}
