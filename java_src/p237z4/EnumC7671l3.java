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
/* renamed from: z4.l3 */
/* loaded from: classes2.dex */
public class EnumC7671l3 {

    /* renamed from: A */
    public static final EnumC7671l3 f37787A;

    /* renamed from: B */
    public static final EnumC7671l3 f37788B;

    /* renamed from: C */
    public static final EnumC7671l3 f37789C;

    /* renamed from: D */
    public static final EnumC7671l3 f37790D;

    /* renamed from: E */
    public static final EnumC7671l3 f37791E;

    /* renamed from: F */
    public static final /* synthetic */ EnumC7671l3[] f37792F;

    /* renamed from: d */
    public static final EnumC7671l3 f37793d;

    /* renamed from: k */
    public static final EnumC7671l3 f37794k;

    /* renamed from: p */
    public static final EnumC7671l3 f37795p;

    /* renamed from: q */
    public static final EnumC7671l3 f37796q;

    /* renamed from: r */
    public static final EnumC7671l3 f37797r;

    /* renamed from: s */
    public static final EnumC7671l3 f37798s;

    /* renamed from: t */
    public static final EnumC7671l3 f37799t;

    /* renamed from: u */
    public static final EnumC7671l3 f37800u;

    /* renamed from: v */
    public static final EnumC7671l3 f37801v;

    /* renamed from: w */
    public static final EnumC7671l3 f37802w;

    /* renamed from: x */
    public static final EnumC7671l3 f37803x;

    /* renamed from: y */
    public static final EnumC7671l3 f37804y;

    /* renamed from: z */
    public static final EnumC7671l3 f37805z;

    /* renamed from: a */
    public final EnumC7700q3 f37806a;

    /* renamed from: b */
    public final int f37807b;

    public EnumC7671l3(String str, int i, EnumC7700q3 enumC7700q3, int i2) {
        this.f37806a = enumC7700q3;
        this.f37807b = i2;
    }

    public static EnumC7671l3[] values() {
        return (EnumC7671l3[]) f37792F.clone();
    }

    /* renamed from: c */
    public final EnumC7700q3 m665c() {
        return this.f37806a;
    }

    static {
        EnumC7671l3 enumC7671l3 = new EnumC7671l3("DOUBLE", 0, EnumC7700q3.DOUBLE, 1);
        f37793d = enumC7671l3;
        EnumC7671l3 enumC7671l32 = new EnumC7671l3("FLOAT", 1, EnumC7700q3.FLOAT, 5);
        f37794k = enumC7671l32;
        EnumC7700q3 enumC7700q3 = EnumC7700q3.LONG;
        EnumC7671l3 enumC7671l33 = new EnumC7671l3("INT64", 2, enumC7700q3, 0);
        f37795p = enumC7671l33;
        EnumC7671l3 enumC7671l34 = new EnumC7671l3("UINT64", 3, enumC7700q3, 0);
        f37796q = enumC7671l34;
        EnumC7700q3 enumC7700q32 = EnumC7700q3.INT;
        EnumC7671l3 enumC7671l35 = new EnumC7671l3("INT32", 4, enumC7700q32, 0);
        f37797r = enumC7671l35;
        EnumC7671l3 enumC7671l36 = new EnumC7671l3("FIXED64", 5, enumC7700q3, 1);
        f37798s = enumC7671l36;
        EnumC7671l3 enumC7671l37 = new EnumC7671l3("FIXED32", 6, enumC7700q32, 5);
        f37799t = enumC7671l37;
        EnumC7671l3 enumC7671l38 = new EnumC7671l3("BOOL", 7, EnumC7700q3.BOOLEAN, 0);
        f37800u = enumC7671l38;
        final EnumC7700q3 enumC7700q33 = EnumC7700q3.STRING;
        EnumC7671l3 enumC7671l39 = new EnumC7671l3("STRING", 8, enumC7700q33, 2) { // from class: z4.m3
        };
        f37801v = enumC7671l39;
        final EnumC7700q3 enumC7700q34 = EnumC7700q3.MESSAGE;
        EnumC7671l3 enumC7671l310 = new EnumC7671l3("GROUP", 9, enumC7700q34, 3) { // from class: z4.n3
        };
        f37802w = enumC7671l310;
        EnumC7671l3 enumC7671l311 = new EnumC7671l3("MESSAGE", 10, enumC7700q34, 2) { // from class: z4.o3
        };
        f37803x = enumC7671l311;
        final EnumC7700q3 enumC7700q35 = EnumC7700q3.BYTE_STRING;
        EnumC7671l3 enumC7671l312 = new EnumC7671l3("BYTES", 11, enumC7700q35, 2) { // from class: z4.p3
        };
        f37804y = enumC7671l312;
        EnumC7671l3 enumC7671l313 = new EnumC7671l3("UINT32", 12, enumC7700q32, 0);
        f37805z = enumC7671l313;
        EnumC7671l3 enumC7671l314 = new EnumC7671l3("ENUM", 13, EnumC7700q3.ENUM, 0);
        f37787A = enumC7671l314;
        EnumC7671l3 enumC7671l315 = new EnumC7671l3("SFIXED32", 14, enumC7700q32, 5);
        f37788B = enumC7671l315;
        EnumC7671l3 enumC7671l316 = new EnumC7671l3("SFIXED64", 15, enumC7700q3, 1);
        f37789C = enumC7671l316;
        EnumC7671l3 enumC7671l317 = new EnumC7671l3("SINT32", 16, enumC7700q32, 0);
        f37790D = enumC7671l317;
        EnumC7671l3 enumC7671l318 = new EnumC7671l3("SINT64", 17, enumC7700q3, 0);
        f37791E = enumC7671l318;
        f37792F = new EnumC7671l3[]{enumC7671l3, enumC7671l32, enumC7671l33, enumC7671l34, enumC7671l35, enumC7671l36, enumC7671l37, enumC7671l38, enumC7671l39, enumC7671l310, enumC7671l311, enumC7671l312, enumC7671l313, enumC7671l314, enumC7671l315, enumC7671l316, enumC7671l317, enumC7671l318};
    }
}
