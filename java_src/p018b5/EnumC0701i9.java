package p018b5;
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
/* renamed from: b5.i9 */
/* loaded from: classes2.dex */
public final class EnumC0701i9 {

    /* renamed from: k */
    public static final EnumC0701i9 f1883k;

    /* renamed from: p */
    public static final EnumC0701i9 f1884p;

    /* renamed from: q */
    public static final EnumC0701i9 f1885q;

    /* renamed from: r */
    public static final EnumC0701i9 f1886r;

    /* renamed from: s */
    public static final EnumC0701i9 f1887s;

    /* renamed from: t */
    public static final EnumC0701i9 f1888t;

    /* renamed from: u */
    public static final EnumC0701i9 f1889u;

    /* renamed from: v */
    public static final EnumC0701i9 f1890v;

    /* renamed from: w */
    public static final EnumC0701i9 f1891w;

    /* renamed from: x */
    public static final EnumC0701i9 f1892x;

    /* renamed from: y */
    public static final /* synthetic */ EnumC0701i9[] f1893y;

    /* renamed from: a */
    public final Class<?> f1894a;

    /* renamed from: b */
    public final Class<?> f1895b;

    /* renamed from: d */
    public final Object f1896d;

    public EnumC0701i9(String str, int i, Class cls, Class cls2, Object obj) {
        this.f1894a = cls;
        this.f1895b = cls2;
        this.f1896d = obj;
    }

    public static EnumC0701i9[] values() {
        return (EnumC0701i9[]) f1893y.clone();
    }

    /* renamed from: c */
    public final Class<?> m25796c() {
        return this.f1895b;
    }

    static {
        EnumC0701i9 enumC0701i9 = new EnumC0701i9("VOID", 0, Void.class, Void.class, null);
        f1883k = enumC0701i9;
        Class cls = Integer.TYPE;
        EnumC0701i9 enumC0701i92 = new EnumC0701i9("INT", 1, cls, Integer.class, 0);
        f1884p = enumC0701i92;
        EnumC0701i9 enumC0701i93 = new EnumC0701i9("LONG", 2, Long.TYPE, Long.class, 0L);
        f1885q = enumC0701i93;
        EnumC0701i9 enumC0701i94 = new EnumC0701i9("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        f1886r = enumC0701i94;
        EnumC0701i9 enumC0701i95 = new EnumC0701i9("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        f1887s = enumC0701i95;
        EnumC0701i9 enumC0701i96 = new EnumC0701i9("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        f1888t = enumC0701i96;
        EnumC0701i9 enumC0701i97 = new EnumC0701i9("STRING", 6, String.class, String.class, "");
        f1889u = enumC0701i97;
        EnumC0701i9 enumC0701i98 = new EnumC0701i9("BYTE_STRING", 7, AbstractC0937w7.class, AbstractC0937w7.class, AbstractC0937w7.f2373b);
        f1890v = enumC0701i98;
        EnumC0701i9 enumC0701i99 = new EnumC0701i9("ENUM", 8, cls, Integer.class, null);
        f1891w = enumC0701i99;
        EnumC0701i9 enumC0701i910 = new EnumC0701i9("MESSAGE", 9, Object.class, Object.class, null);
        f1892x = enumC0701i910;
        f1893y = new EnumC0701i9[]{enumC0701i9, enumC0701i92, enumC0701i93, enumC0701i94, enumC0701i95, enumC0701i96, enumC0701i97, enumC0701i98, enumC0701i99, enumC0701i910};
    }
}
