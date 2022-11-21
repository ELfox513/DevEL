package p156q1;

import p015b2.C0437f;
/* renamed from: q1.k */
/* loaded from: classes.dex */
public final class C5401k extends C0437f implements InterfaceC5392b {
    public C5401k(int i) {
        super(i);
    }

    /* renamed from: x */
    public InterfaceC5391a m13338x(int i) {
        return (InterfaceC5391a) get0(i);
    }

    /* renamed from: z */
    public void m13337z(int i, InterfaceC5391a interfaceC5391a) {
        set0(i, interfaceC5391a);
    }

    @Override // p156q1.InterfaceC5392b
    /* renamed from: c */
    public int mo13341c() {
        int size = size();
        int i = 2;
        for (int i2 = 0; i2 < size; i2++) {
            i += m13338x(i2).mo13348c();
        }
        return i;
    }

    @Override // p156q1.InterfaceC5392b
    /* renamed from: j */
    public InterfaceC5391a mo13340j(String str) {
        int size = size();
        for (int i = 0; i < size; i++) {
            InterfaceC5391a m13338x = m13338x(i);
            if (m13338x.getName().equals(str)) {
                return m13338x;
            }
        }
        return null;
    }

    @Override // p156q1.InterfaceC5392b
    /* renamed from: n */
    public InterfaceC5391a mo13339n(InterfaceC5391a interfaceC5391a) {
        InterfaceC5391a m13338x;
        int size = size();
        int i = 0;
        while (i < size) {
            if (m13338x(i) == interfaceC5391a) {
                String name = interfaceC5391a.getName();
                do {
                    i++;
                    if (i >= size) {
                        return null;
                    }
                    m13338x = m13338x(i);
                } while (!m13338x.getName().equals(name));
                return m13338x;
            }
            i++;
        }
        return null;
    }
}
