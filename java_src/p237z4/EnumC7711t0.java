package p237z4;
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
/* renamed from: z4.t0 */
/* loaded from: classes2.dex */
public final class EnumC7711t0 {

    /* renamed from: k */
    public static final EnumC7711t0 f37863k;

    /* renamed from: p */
    public static final EnumC7711t0 f37864p;

    /* renamed from: q */
    public static final EnumC7711t0 f37865q;

    /* renamed from: r */
    public static final EnumC7711t0 f37866r;

    /* renamed from: s */
    public static final EnumC7711t0 f37867s;

    /* renamed from: t */
    public static final EnumC7711t0 f37868t;

    /* renamed from: u */
    public static final EnumC7711t0 f37869u;

    /* renamed from: v */
    public static final EnumC7711t0 f37870v;

    /* renamed from: w */
    public static final EnumC7711t0 f37871w;

    /* renamed from: x */
    public static final EnumC7711t0 f37872x;

    /* renamed from: y */
    public static final /* synthetic */ EnumC7711t0[] f37873y;

    /* renamed from: a */
    public final Class<?> f37874a;

    /* renamed from: b */
    public final Class<?> f37875b;

    /* renamed from: d */
    public final Object f37876d;

    public static EnumC7711t0[] values() {
        return (EnumC7711t0[]) f37873y.clone();
    }

    /* renamed from: c */
    public final Class<?> m592c() {
        return this.f37875b;
    }

    static {
        EnumC7711t0 enumC7711t0 = new EnumC7711t0("VOID", 0, Void.class, Void.class, null);
        f37863k = enumC7711t0;
        Class cls = Integer.TYPE;
        EnumC7711t0 enumC7711t02 = new EnumC7711t0("INT", 1, cls, Integer.class, 0);
        f37864p = enumC7711t02;
        EnumC7711t0 enumC7711t03 = new EnumC7711t0("LONG", 2, Long.TYPE, Long.class, 0L);
        f37865q = enumC7711t03;
        EnumC7711t0 enumC7711t04 = new EnumC7711t0("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        f37866r = enumC7711t04;
        EnumC7711t0 enumC7711t05 = new EnumC7711t0("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        f37867s = enumC7711t05;
        EnumC7711t0 enumC7711t06 = new EnumC7711t0("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        f37868t = enumC7711t06;
        EnumC7711t0 enumC7711t07 = new EnumC7711t0("STRING", 6, String.class, String.class, "");
        f37869u = enumC7711t07;
        EnumC7711t0 enumC7711t08 = new EnumC7711t0("BYTE_STRING", 7, AbstractC7652i.class, AbstractC7652i.class, AbstractC7652i.f37698b);
        f37870v = enumC7711t08;
        EnumC7711t0 enumC7711t09 = new EnumC7711t0("ENUM", 8, cls, Integer.class, null);
        f37871w = enumC7711t09;
        EnumC7711t0 enumC7711t010 = new EnumC7711t0("MESSAGE", 9, Object.class, Object.class, null);
        f37872x = enumC7711t010;
        f37873y = new EnumC7711t0[]{enumC7711t0, enumC7711t02, enumC7711t03, enumC7711t04, enumC7711t05, enumC7711t06, enumC7711t07, enumC7711t08, enumC7711t09, enumC7711t010};
    }

    public EnumC7711t0(String str, int i, Class cls, Class cls2, Object obj) {
        this.f37874a = cls;
        this.f37875b = cls2;
        this.f37876d = obj;
    }
}
