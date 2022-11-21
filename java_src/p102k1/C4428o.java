package p102k1;

import p102k1.C4409f;
import p111l1.C4559f;
/* renamed from: k1.o */
/* loaded from: classes.dex */
public class C4428o implements Comparable<C4428o> {

    /* renamed from: a */
    public final C4409f f18394a;

    /* renamed from: b */
    public final EnumC4430b f18395b;

    /* renamed from: d */
    public final int f18396d;

    /* renamed from: k */
    public final int f18397k;

    /* renamed from: p */
    public final int f18398p;

    /* renamed from: k1.o$a */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C4429a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18399a;

        static {
            int[] iArr = new int[EnumC4430b.values().length];
            f18399a = iArr;
            try {
                iArr[EnumC4430b.METHOD_HANDLE_TYPE_STATIC_PUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18399a[EnumC4430b.METHOD_HANDLE_TYPE_STATIC_GET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18399a[EnumC4430b.METHOD_HANDLE_TYPE_INSTANCE_PUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18399a[EnumC4430b.METHOD_HANDLE_TYPE_INSTANCE_GET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: d */
    public int m16518d() {
        return this.f18397k;
    }

    /* renamed from: f */
    public EnumC4430b m16517f() {
        return this.f18395b;
    }

    /* renamed from: h */
    public int m16516h() {
        return this.f18396d;
    }

    /* renamed from: j */
    public int m16515j() {
        return this.f18398p;
    }

    /* renamed from: k1.o$b */
    /* loaded from: classes.dex */
    public enum EnumC4430b {
        METHOD_HANDLE_TYPE_STATIC_PUT(0),
        METHOD_HANDLE_TYPE_STATIC_GET(1),
        METHOD_HANDLE_TYPE_INSTANCE_PUT(2),
        METHOD_HANDLE_TYPE_INSTANCE_GET(3),
        METHOD_HANDLE_TYPE_INVOKE_STATIC(4),
        METHOD_HANDLE_TYPE_INVOKE_INSTANCE(5),
        METHOD_HANDLE_TYPE_INVOKE_DIRECT(6),
        METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR(7),
        METHOD_HANDLE_TYPE_INVOKE_INTERFACE(8);
        

        /* renamed from: a */
        public final int f18410a;

        /* renamed from: f */
        public boolean m16511f() {
            int i = C4429a.f18399a[ordinal()];
            return i == 1 || i == 2 || i == 3 || i == 4;
        }

        EnumC4430b(int i) {
            this.f18410a = i;
        }

        /* renamed from: d */
        public static EnumC4430b m16512d(int i) {
            EnumC4430b[] values;
            for (EnumC4430b enumC4430b : values()) {
                if (enumC4430b.f18410a == i) {
                    return enumC4430b;
                }
            }
            throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: c */
    public int compareTo(C4428o c4428o) {
        EnumC4430b enumC4430b = this.f18395b;
        EnumC4430b enumC4430b2 = c4428o.f18395b;
        if (enumC4430b != enumC4430b2) {
            return enumC4430b.compareTo(enumC4430b2);
        }
        return C4559f.m16007a(this.f18397k, c4428o.f18397k);
    }

    /* renamed from: l */
    public void m16514l(C4409f.C4416g c4416g) {
        c4416g.m16583c0(this.f18395b.f18410a);
        c4416g.m16583c0(this.f18396d);
        c4416g.m16583c0(this.f18397k);
        c4416g.m16583c0(this.f18398p);
    }

    public String toString() {
        C4431p c4431p;
        if (this.f18394a == null) {
            return this.f18395b + " " + this.f18397k;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f18395b);
        sb.append(" ");
        if (this.f18395b.m16511f()) {
            c4431p = this.f18394a.m16631j().get(this.f18397k);
        } else {
            c4431p = this.f18394a.m16625p().get(this.f18397k);
        }
        sb.append(c4431p);
        return sb.toString();
    }

    public C4428o(C4409f c4409f, EnumC4430b enumC4430b, int i, int i2, int i3) {
        this.f18394a = c4409f;
        this.f18395b = enumC4430b;
        this.f18396d = i;
        this.f18397k = i2;
        this.f18398p = i3;
    }
}
