package p210w1;

import p015b2.C0437f;
import p210w1.AbstractC7146h;
/* renamed from: w1.i */
/* loaded from: classes.dex */
public final class C7149i extends C0437f {
    public C7149i(int i) {
        super(i);
    }

    /* renamed from: A */
    public AbstractC7146h m2411A(int i) {
        return (AbstractC7146h) get0(i);
    }

    /* renamed from: B */
    public AbstractC7146h m2410B() {
        return m2411A(size() - 1);
    }

    /* renamed from: C */
    public void m2409C(int i, AbstractC7146h abstractC7146h) {
        set0(i, abstractC7146h);
    }

    /* renamed from: x */
    public boolean m2408x(C7149i c7149i) {
        int size;
        if (c7149i != null && (size = size()) == c7149i.size()) {
            for (int i = 0; i < size; i++) {
                if (!m2411A(i).mo2252c(c7149i.m2411A(i))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: z */
    public void m2407z(AbstractC7146h.InterfaceC7148b interfaceC7148b) {
        int size = size();
        for (int i = 0; i < size; i++) {
            m2411A(i).mo2250a(interfaceC7148b);
        }
    }
}
