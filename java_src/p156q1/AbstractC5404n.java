package p156q1;

import p218x1.C7205a0;
import p218x1.C7212d0;
import p218x1.C7214e0;
/* renamed from: q1.n */
/* loaded from: classes.dex */
public abstract class AbstractC5404n implements InterfaceC5396f {

    /* renamed from: a */
    public final C7214e0 f20084a;

    /* renamed from: b */
    public final int f20085b;

    /* renamed from: c */
    public final C7205a0 f20086c;

    /* renamed from: d */
    public final InterfaceC5392b f20087d;

    @Override // p156q1.InterfaceC5396f
    /* renamed from: a */
    public final int mo13334a() {
        return this.f20085b;
    }

    @Override // p156q1.InterfaceC5396f
    /* renamed from: c */
    public final C7214e0 mo13333c() {
        return this.f20084a;
    }

    @Override // p156q1.InterfaceC5396f
    /* renamed from: d */
    public final C7205a0 mo13332d() {
        return this.f20086c;
    }

    @Override // p156q1.InterfaceC5396f
    public final InterfaceC5392b getAttributes() {
        return this.f20087d;
    }

    @Override // p156q1.InterfaceC5396f
    public final C7212d0 getDescriptor() {
        return this.f20086c.m2130n();
    }

    @Override // p156q1.InterfaceC5396f
    public final C7212d0 getName() {
        return this.f20086c.m2128x();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(getClass().getName());
        sb.append('{');
        sb.append(this.f20086c.toHuman());
        sb.append('}');
        return sb.toString();
    }

    public AbstractC5404n(C7214e0 c7214e0, int i, C7205a0 c7205a0, InterfaceC5392b interfaceC5392b) {
        if (c7214e0 != null) {
            if (c7205a0 != null) {
                if (interfaceC5392b != null) {
                    this.f20084a = c7214e0;
                    this.f20085b = i;
                    this.f20086c = c7205a0;
                    this.f20087d = interfaceC5392b;
                    return;
                }
                throw new NullPointerException("attributes == null");
            }
            throw new NullPointerException("nat == null");
        }
        throw new NullPointerException("definingClass == null");
    }
}
