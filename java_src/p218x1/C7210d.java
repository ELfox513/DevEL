package p218x1;

import p015b2.C0437f;
/* renamed from: x1.d */
/* loaded from: classes.dex */
public class C7210d extends AbstractC7204a {

    /* renamed from: a */
    public final C7211a f36556a;

    @Override // p218x1.AbstractC7204a
    /* renamed from: d */
    public int mo2048d(AbstractC7204a abstractC7204a) {
        return this.f36556a.compareTo(((C7210d) abstractC7204a).f36556a);
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: h */
    public boolean mo2047h() {
        return false;
    }

    public int hashCode() {
        return this.f36556a.hashCode();
    }

    @Override // p218x1.AbstractC7204a
    /* renamed from: j */
    public String mo2042j() {
        return "array";
    }

    /* renamed from: n */
    public C7211a m2121n() {
        return this.f36556a;
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return this.f36556a.toHuman("{", ", ", "}");
    }

    public String toString() {
        return this.f36556a.toString("array{", ", ", "}");
    }

    /* renamed from: x1.d$a */
    /* loaded from: classes.dex */
    public static final class C7211a extends C0437f implements Comparable<C7211a> {
        public C7211a(int i) {
            super(i);
        }

        public AbstractC7204a get(int i) {
            return (AbstractC7204a) get0(i);
        }

        /* renamed from: z */
        public void m2119z(int i, AbstractC7204a abstractC7204a) {
            set0(i, abstractC7204a);
        }

        @Override // java.lang.Comparable
        /* renamed from: x */
        public int compareTo(C7211a c7211a) {
            int i;
            int size = size();
            int size2 = c7211a.size();
            if (size < size2) {
                i = size;
            } else {
                i = size2;
            }
            for (int i2 = 0; i2 < i; i2++) {
                int compareTo = ((AbstractC7204a) get0(i2)).compareTo((AbstractC7204a) c7211a.get0(i2));
                if (compareTo != 0) {
                    return compareTo;
                }
            }
            if (size < size2) {
                return -1;
            }
            if (size <= size2) {
                return 0;
            }
            return 1;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C7210d)) {
            return false;
        }
        return this.f36556a.equals(((C7210d) obj).f36556a);
    }

    public C7210d(C7211a c7211a) {
        if (c7211a != null) {
            c7211a.throwIfMutable();
            this.f36556a = c7211a;
            return;
        }
        throw new NullPointerException("list == null");
    }
}
