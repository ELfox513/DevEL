package p129n1;

import p015b2.C0437f;
/* renamed from: n1.m */
/* loaded from: classes.dex */
public final class C4709m extends C0437f {

    /* renamed from: a */
    public static final C4709m f18881a = new C4709m(0);

    public C4709m(int i) {
        super(i);
    }

    /* renamed from: B */
    public void m15667B(int i, int i2, int i3) {
        set0(i, new C4710a(i2, i3));
    }

    /* renamed from: z */
    public C4710a m15664z(int i) {
        return (C4710a) get0(i);
    }

    /* renamed from: n1.m$a */
    /* loaded from: classes.dex */
    public static class C4710a {

        /* renamed from: a */
        public final int f18882a;

        /* renamed from: b */
        public final int f18883b;

        /* renamed from: a */
        public int m15663a() {
            return this.f18883b;
        }

        /* renamed from: b */
        public int m15662b() {
            return this.f18882a;
        }

        public C4710a(int i, int i2) {
            if (i >= 0) {
                if (i2 >= 0) {
                    this.f18882a = i;
                    this.f18883b = i2;
                    return;
                }
                throw new IllegalArgumentException("lineNumber < 0");
            }
            throw new IllegalArgumentException("startPc < 0");
        }
    }

    /* renamed from: x */
    public static C4709m m15665x(C4709m c4709m, C4709m c4709m2) {
        if (c4709m == f18881a) {
            return c4709m2;
        }
        int size = c4709m.size();
        int size2 = c4709m2.size();
        C4709m c4709m3 = new C4709m(size + size2);
        for (int i = 0; i < size; i++) {
            c4709m3.m15666C(i, c4709m.m15664z(i));
        }
        for (int i2 = 0; i2 < size2; i2++) {
            c4709m3.m15666C(size + i2, c4709m2.m15664z(i2));
        }
        return c4709m3;
    }

    /* renamed from: C */
    public void m15666C(int i, C4710a c4710a) {
        if (c4710a != null) {
            set0(i, c4710a);
            return;
        }
        throw new NullPointerException("item == null");
    }

    /* renamed from: A */
    public int m15668A(int i) {
        int size = size();
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            C4710a m15664z = m15664z(i4);
            int m15662b = m15664z.m15662b();
            if (m15662b <= i && m15662b > i2) {
                i3 = m15664z.m15663a();
                if (m15662b == i) {
                    break;
                }
                i2 = m15662b;
            }
        }
        return i3;
    }
}
