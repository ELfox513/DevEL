package p099j7;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: j7.g */
/* loaded from: classes2.dex */
public abstract class EnumC4375g {

    /* renamed from: b */
    public static final EnumC4375g f18286b;

    /* renamed from: d */
    public static final EnumC4375g f18287d;

    /* renamed from: k */
    public static final EnumC4375g f18288k;

    /* renamed from: p */
    public static final EnumC4375g f18289p;

    /* renamed from: q */
    public static final EnumC4375g f18290q;

    /* renamed from: r */
    public static final /* synthetic */ EnumC4375g[] f18291r;

    /* renamed from: a */
    public long f18292a;

    /* renamed from: j7.g$a */
    /* loaded from: classes2.dex */
    public enum C4376a extends EnumC4375g {
        public C4376a(String str, int i, long j) {
            super(str, i, j, null);
        }
    }

    public /* synthetic */ EnumC4375g(String str, int i, long j, C4376a c4376a) {
        this(str, i, j);
    }

    public static EnumC4375g valueOf(String str) {
        return (EnumC4375g) Enum.valueOf(EnumC4375g.class, str);
    }

    public static EnumC4375g[] values() {
        return (EnumC4375g[]) f18291r.clone();
    }

    /* renamed from: c */
    public long m16734c(long j) {
        return (j * this.f18292a) / f18289p.f18292a;
    }

    static {
        C4376a c4376a = new C4376a("TERABYTES", 0, 1099511627776L);
        f18286b = c4376a;
        EnumC4375g enumC4375g = new EnumC4375g("GIGABYTES", 1, 1073741824L) { // from class: j7.g.b
        };
        f18287d = enumC4375g;
        EnumC4375g enumC4375g2 = new EnumC4375g("MEGABYTES", 2, 1048576L) { // from class: j7.g.c
        };
        f18288k = enumC4375g2;
        EnumC4375g enumC4375g3 = new EnumC4375g("KILOBYTES", 3, 1024L) { // from class: j7.g.d
        };
        f18289p = enumC4375g3;
        EnumC4375g enumC4375g4 = new EnumC4375g("BYTES", 4, 1L) { // from class: j7.g.e
        };
        f18290q = enumC4375g4;
        f18291r = new EnumC4375g[]{c4376a, enumC4375g, enumC4375g2, enumC4375g3, enumC4375g4};
    }

    public EnumC4375g(String str, int i, long j) {
        this.f18292a = j;
    }
}
