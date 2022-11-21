package p129n1;

import p015b2.C0437f;
import p218x1.C7214e0;
import p218x1.C7237y;
/* renamed from: n1.d */
/* loaded from: classes.dex */
public class C4695d extends C0437f {

    /* renamed from: a */
    public static final C4695d f18846a = new C4695d(0);

    public C4695d(int i) {
        super(i);
    }

    /* renamed from: A */
    public void m15744A(int i, C7214e0 c7214e0, C7237y c7237y, C4694c c4694c) {
        m15742z(i, new C4696a(c7214e0, c7237y, c4694c));
    }

    /* renamed from: x */
    public C4696a m15743x(int i) {
        return (C4696a) get0(i);
    }

    /* renamed from: n1.d$a */
    /* loaded from: classes.dex */
    public static class C4696a {

        /* renamed from: a */
        public final C4694c f18847a;

        /* renamed from: b */
        public final C7237y f18848b;

        /* renamed from: c */
        public final C7214e0 f18849c;

        /* renamed from: a */
        public C4694c m15741a() {
            return this.f18847a;
        }

        /* renamed from: b */
        public C7237y m15740b() {
            return this.f18848b;
        }

        public C4696a(C7214e0 c7214e0, C7237y c7237y, C4694c c4694c) {
            if (c7214e0 != null) {
                if (c7237y != null) {
                    if (c4694c != null) {
                        this.f18848b = c7237y;
                        this.f18847a = c4694c;
                        this.f18849c = c7214e0;
                        return;
                    }
                    throw new NullPointerException("bootstrapMethodArguments == null");
                }
                throw new NullPointerException("bootstrapMethodHandle == null");
            }
            throw new NullPointerException("declaringClass == null");
        }
    }

    /* renamed from: z */
    public void m15742z(int i, C4696a c4696a) {
        if (c4696a != null) {
            set0(i, c4696a);
            return;
        }
        throw new NullPointerException("item == null");
    }
}
