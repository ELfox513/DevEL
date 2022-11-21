package p168r4;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum p uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: r4.dn3 */
/* loaded from: classes2.dex */
public final class dn3 {

    /* renamed from: k */
    public static final dn3 f22345k;

    /* renamed from: p */
    public static final dn3 f22346p;

    /* renamed from: q */
    public static final dn3 f22347q;

    /* renamed from: r */
    public static final dn3 f22348r;

    /* renamed from: s */
    public static final dn3 f22349s;

    /* renamed from: t */
    public static final dn3 f22350t;

    /* renamed from: u */
    public static final dn3 f22351u;

    /* renamed from: v */
    public static final dn3 f22352v;

    /* renamed from: w */
    public static final dn3 f22353w;

    /* renamed from: x */
    public static final dn3 f22354x;

    /* renamed from: y */
    public static final /* synthetic */ dn3[] f22355y;

    /* renamed from: a */
    public final Class<?> f22356a;

    /* renamed from: b */
    public final Class<?> f22357b;

    /* renamed from: d */
    public final Object f22358d;

    public dn3(String str, int i, Class cls, Class cls2, Object obj) {
        this.f22356a = cls;
        this.f22357b = cls2;
        this.f22358d = obj;
    }

    public static dn3[] values() {
        return (dn3[]) f22355y.clone();
    }

    /* renamed from: c */
    public final Class<?> m12081c() {
        return this.f22357b;
    }

    static {
        dn3 dn3Var = new dn3("VOID", 0, Void.class, Void.class, null);
        f22345k = dn3Var;
        Class cls = Integer.TYPE;
        dn3 dn3Var2 = new dn3("INT", 1, cls, Integer.class, 0);
        f22346p = dn3Var2;
        dn3 dn3Var3 = new dn3("LONG", 2, Long.TYPE, Long.class, 0L);
        f22347q = dn3Var3;
        dn3 dn3Var4 = new dn3("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        f22348r = dn3Var4;
        dn3 dn3Var5 = new dn3("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        f22349s = dn3Var5;
        dn3 dn3Var6 = new dn3("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        f22350t = dn3Var6;
        dn3 dn3Var7 = new dn3("STRING", 6, String.class, String.class, "");
        f22351u = dn3Var7;
        dn3 dn3Var8 = new dn3("BYTE_STRING", 7, ll3.class, ll3.class, ll3.f27255b);
        f22352v = dn3Var8;
        dn3 dn3Var9 = new dn3("ENUM", 8, cls, Integer.class, null);
        f22353w = dn3Var9;
        dn3 dn3Var10 = new dn3("MESSAGE", 9, Object.class, Object.class, null);
        f22354x = dn3Var10;
        f22355y = new dn3[]{dn3Var, dn3Var2, dn3Var3, dn3Var4, dn3Var5, dn3Var6, dn3Var7, dn3Var8, dn3Var9, dn3Var10};
    }
}
