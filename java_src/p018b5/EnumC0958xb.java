package p018b5;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum k uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: b5.xb */
/* loaded from: classes2.dex */
public final class EnumC0958xb {

    /* renamed from: A */
    public static final EnumC0958xb f2398A;

    /* renamed from: B */
    public static final EnumC0958xb f2399B;

    /* renamed from: C */
    public static final EnumC0958xb f2400C;

    /* renamed from: D */
    public static final EnumC0958xb f2401D;

    /* renamed from: E */
    public static final /* synthetic */ EnumC0958xb[] f2402E;

    /* renamed from: b */
    public static final EnumC0958xb f2403b;

    /* renamed from: d */
    public static final EnumC0958xb f2404d;

    /* renamed from: k */
    public static final EnumC0958xb f2405k;

    /* renamed from: p */
    public static final EnumC0958xb f2406p;

    /* renamed from: q */
    public static final EnumC0958xb f2407q;

    /* renamed from: r */
    public static final EnumC0958xb f2408r;

    /* renamed from: s */
    public static final EnumC0958xb f2409s;

    /* renamed from: t */
    public static final EnumC0958xb f2410t;

    /* renamed from: u */
    public static final EnumC0958xb f2411u;

    /* renamed from: v */
    public static final EnumC0958xb f2412v;

    /* renamed from: w */
    public static final EnumC0958xb f2413w;

    /* renamed from: x */
    public static final EnumC0958xb f2414x;

    /* renamed from: y */
    public static final EnumC0958xb f2415y;

    /* renamed from: z */
    public static final EnumC0958xb f2416z;

    /* renamed from: a */
    public final EnumC0975yb f2417a;

    public EnumC0958xb(String str, int i, EnumC0975yb enumC0975yb, int i2) {
        this.f2417a = enumC0975yb;
    }

    public static EnumC0958xb[] values() {
        return (EnumC0958xb[]) f2402E.clone();
    }

    /* renamed from: c */
    public final EnumC0975yb m24968c() {
        return this.f2417a;
    }

    static {
        EnumC0958xb enumC0958xb = new EnumC0958xb("DOUBLE", 0, EnumC0975yb.DOUBLE, 1);
        f2403b = enumC0958xb;
        EnumC0958xb enumC0958xb2 = new EnumC0958xb("FLOAT", 1, EnumC0975yb.FLOAT, 5);
        f2404d = enumC0958xb2;
        EnumC0975yb enumC0975yb = EnumC0975yb.LONG;
        EnumC0958xb enumC0958xb3 = new EnumC0958xb("INT64", 2, enumC0975yb, 0);
        f2405k = enumC0958xb3;
        EnumC0958xb enumC0958xb4 = new EnumC0958xb("UINT64", 3, enumC0975yb, 0);
        f2406p = enumC0958xb4;
        EnumC0975yb enumC0975yb2 = EnumC0975yb.INT;
        EnumC0958xb enumC0958xb5 = new EnumC0958xb("INT32", 4, enumC0975yb2, 0);
        f2407q = enumC0958xb5;
        EnumC0958xb enumC0958xb6 = new EnumC0958xb("FIXED64", 5, enumC0975yb, 1);
        f2408r = enumC0958xb6;
        EnumC0958xb enumC0958xb7 = new EnumC0958xb("FIXED32", 6, enumC0975yb2, 5);
        f2409s = enumC0958xb7;
        EnumC0958xb enumC0958xb8 = new EnumC0958xb("BOOL", 7, EnumC0975yb.BOOLEAN, 0);
        f2410t = enumC0958xb8;
        EnumC0958xb enumC0958xb9 = new EnumC0958xb("STRING", 8, EnumC0975yb.STRING, 2);
        f2411u = enumC0958xb9;
        EnumC0975yb enumC0975yb3 = EnumC0975yb.MESSAGE;
        EnumC0958xb enumC0958xb10 = new EnumC0958xb("GROUP", 9, enumC0975yb3, 3);
        f2412v = enumC0958xb10;
        EnumC0958xb enumC0958xb11 = new EnumC0958xb("MESSAGE", 10, enumC0975yb3, 2);
        f2413w = enumC0958xb11;
        EnumC0958xb enumC0958xb12 = new EnumC0958xb("BYTES", 11, EnumC0975yb.BYTE_STRING, 2);
        f2414x = enumC0958xb12;
        EnumC0958xb enumC0958xb13 = new EnumC0958xb("UINT32", 12, enumC0975yb2, 0);
        f2415y = enumC0958xb13;
        EnumC0958xb enumC0958xb14 = new EnumC0958xb("ENUM", 13, EnumC0975yb.ENUM, 0);
        f2416z = enumC0958xb14;
        EnumC0958xb enumC0958xb15 = new EnumC0958xb("SFIXED32", 14, enumC0975yb2, 5);
        f2398A = enumC0958xb15;
        EnumC0958xb enumC0958xb16 = new EnumC0958xb("SFIXED64", 15, enumC0975yb, 1);
        f2399B = enumC0958xb16;
        EnumC0958xb enumC0958xb17 = new EnumC0958xb("SINT32", 16, enumC0975yb2, 0);
        f2400C = enumC0958xb17;
        EnumC0958xb enumC0958xb18 = new EnumC0958xb("SINT64", 17, enumC0975yb, 0);
        f2401D = enumC0958xb18;
        f2402E = new EnumC0958xb[]{enumC0958xb, enumC0958xb2, enumC0958xb3, enumC0958xb4, enumC0958xb5, enumC0958xb6, enumC0958xb7, enumC0958xb8, enumC0958xb9, enumC0958xb10, enumC0958xb11, enumC0958xb12, enumC0958xb13, enumC0958xb14, enumC0958xb15, enumC0958xb16, enumC0958xb17, enumC0958xb18};
    }
}
