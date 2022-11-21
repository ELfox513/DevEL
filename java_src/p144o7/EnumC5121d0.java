package p144o7;
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
/* renamed from: o7.d0 */
/* loaded from: classes2.dex */
public final class EnumC5121d0 {

    /* renamed from: k */
    public static final EnumC5121d0 f19376k;

    /* renamed from: p */
    public static final EnumC5121d0 f19377p;

    /* renamed from: q */
    public static final EnumC5121d0 f19378q;

    /* renamed from: r */
    public static final EnumC5121d0 f19379r;

    /* renamed from: s */
    public static final EnumC5121d0 f19380s;

    /* renamed from: t */
    public static final EnumC5121d0 f19381t;

    /* renamed from: u */
    public static final EnumC5121d0 f19382u;

    /* renamed from: v */
    public static final EnumC5121d0 f19383v;

    /* renamed from: w */
    public static final EnumC5121d0 f19384w;

    /* renamed from: x */
    public static final EnumC5121d0 f19385x;

    /* renamed from: y */
    public static final /* synthetic */ EnumC5121d0[] f19386y;

    /* renamed from: a */
    public final Class<?> f19387a;

    /* renamed from: b */
    public final Class<?> f19388b;

    /* renamed from: d */
    public final Object f19389d;

    public static EnumC5121d0 valueOf(String str) {
        return (EnumC5121d0) Enum.valueOf(EnumC5121d0.class, str);
    }

    public static EnumC5121d0[] values() {
        return (EnumC5121d0[]) f19386y.clone();
    }

    /* renamed from: c */
    public Class<?> m14625c() {
        return this.f19388b;
    }

    static {
        EnumC5121d0 enumC5121d0 = new EnumC5121d0("VOID", 0, Void.class, Void.class, null);
        f19376k = enumC5121d0;
        Class cls = Integer.TYPE;
        EnumC5121d0 enumC5121d02 = new EnumC5121d0("INT", 1, cls, Integer.class, 0);
        f19377p = enumC5121d02;
        EnumC5121d0 enumC5121d03 = new EnumC5121d0("LONG", 2, Long.TYPE, Long.class, 0L);
        f19378q = enumC5121d03;
        EnumC5121d0 enumC5121d04 = new EnumC5121d0("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        f19379r = enumC5121d04;
        EnumC5121d0 enumC5121d05 = new EnumC5121d0("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        f19380s = enumC5121d05;
        EnumC5121d0 enumC5121d06 = new EnumC5121d0("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        f19381t = enumC5121d06;
        EnumC5121d0 enumC5121d07 = new EnumC5121d0("STRING", 6, String.class, String.class, "");
        f19382u = enumC5121d07;
        EnumC5121d0 enumC5121d08 = new EnumC5121d0("BYTE_STRING", 7, AbstractC5137h.class, AbstractC5137h.class, AbstractC5137h.f19422b);
        f19383v = enumC5121d08;
        EnumC5121d0 enumC5121d09 = new EnumC5121d0("ENUM", 8, cls, Integer.class, null);
        f19384w = enumC5121d09;
        EnumC5121d0 enumC5121d010 = new EnumC5121d0("MESSAGE", 9, Object.class, Object.class, null);
        f19385x = enumC5121d010;
        f19386y = new EnumC5121d0[]{enumC5121d0, enumC5121d02, enumC5121d03, enumC5121d04, enumC5121d05, enumC5121d06, enumC5121d07, enumC5121d08, enumC5121d09, enumC5121d010};
    }

    public EnumC5121d0(String str, int i, Class cls, Class cls2, Object obj) {
        this.f19387a = cls;
        this.f19388b = cls2;
        this.f19389d = obj;
    }
}
