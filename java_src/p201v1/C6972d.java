package p201v1;

import p015b2.C0437f;
/* renamed from: v1.d */
/* loaded from: classes.dex */
public final class C6972d extends C0437f {

    /* renamed from: a */
    public static final C6972d f35874a = new C6972d(0);

    public C6972d(int i) {
        super(i);
    }

    /* renamed from: z */
    public C6971c m2821z(int i) {
        return (C6971c) get0(i);
    }

    /* renamed from: x */
    public static C6972d m2822x(C6972d c6972d, C6972d c6972d2) {
        int size = c6972d.size();
        if (size == c6972d2.size()) {
            C6972d c6972d3 = new C6972d(size);
            for (int i = 0; i < size; i++) {
                c6972d3.m2823A(i, C6971c.m2828B(c6972d.m2821z(i), c6972d2.m2821z(i)));
            }
            c6972d3.setImmutable();
            return c6972d3;
        }
        throw new IllegalArgumentException("list1.size() != list2.size()");
    }

    /* renamed from: A */
    public void m2823A(int i, C6971c c6971c) {
        c6971c.throwIfMutable();
        set0(i, c6971c);
    }
}
