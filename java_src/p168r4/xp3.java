package p168r4;
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
/* renamed from: r4.xp3 */
/* loaded from: classes2.dex */
public final class xp3 {

    /* renamed from: A */
    public static final xp3 f33672A;

    /* renamed from: B */
    public static final xp3 f33673B;

    /* renamed from: C */
    public static final xp3 f33674C;

    /* renamed from: D */
    public static final xp3 f33675D;

    /* renamed from: E */
    public static final /* synthetic */ xp3[] f33676E;

    /* renamed from: b */
    public static final xp3 f33677b;

    /* renamed from: d */
    public static final xp3 f33678d;

    /* renamed from: k */
    public static final xp3 f33679k;

    /* renamed from: p */
    public static final xp3 f33680p;

    /* renamed from: q */
    public static final xp3 f33681q;

    /* renamed from: r */
    public static final xp3 f33682r;

    /* renamed from: s */
    public static final xp3 f33683s;

    /* renamed from: t */
    public static final xp3 f33684t;

    /* renamed from: u */
    public static final xp3 f33685u;

    /* renamed from: v */
    public static final xp3 f33686v;

    /* renamed from: w */
    public static final xp3 f33687w;

    /* renamed from: x */
    public static final xp3 f33688x;

    /* renamed from: y */
    public static final xp3 f33689y;

    /* renamed from: z */
    public static final xp3 f33690z;

    /* renamed from: a */
    public final yp3 f33691a;

    public xp3(String str, int i, yp3 yp3Var, int i2) {
        this.f33691a = yp3Var;
    }

    public static xp3[] values() {
        return (xp3[]) f33676E.clone();
    }

    /* renamed from: c */
    public final yp3 m5181c() {
        return this.f33691a;
    }

    static {
        xp3 xp3Var = new xp3("DOUBLE", 0, yp3.DOUBLE, 1);
        f33677b = xp3Var;
        xp3 xp3Var2 = new xp3("FLOAT", 1, yp3.FLOAT, 5);
        f33678d = xp3Var2;
        yp3 yp3Var = yp3.LONG;
        xp3 xp3Var3 = new xp3("INT64", 2, yp3Var, 0);
        f33679k = xp3Var3;
        xp3 xp3Var4 = new xp3("UINT64", 3, yp3Var, 0);
        f33680p = xp3Var4;
        yp3 yp3Var2 = yp3.INT;
        xp3 xp3Var5 = new xp3("INT32", 4, yp3Var2, 0);
        f33681q = xp3Var5;
        xp3 xp3Var6 = new xp3("FIXED64", 5, yp3Var, 1);
        f33682r = xp3Var6;
        xp3 xp3Var7 = new xp3("FIXED32", 6, yp3Var2, 5);
        f33683s = xp3Var7;
        xp3 xp3Var8 = new xp3("BOOL", 7, yp3.BOOLEAN, 0);
        f33684t = xp3Var8;
        xp3 xp3Var9 = new xp3("STRING", 8, yp3.STRING, 2);
        f33685u = xp3Var9;
        yp3 yp3Var3 = yp3.MESSAGE;
        xp3 xp3Var10 = new xp3("GROUP", 9, yp3Var3, 3);
        f33686v = xp3Var10;
        xp3 xp3Var11 = new xp3("MESSAGE", 10, yp3Var3, 2);
        f33687w = xp3Var11;
        xp3 xp3Var12 = new xp3("BYTES", 11, yp3.BYTE_STRING, 2);
        f33688x = xp3Var12;
        xp3 xp3Var13 = new xp3("UINT32", 12, yp3Var2, 0);
        f33689y = xp3Var13;
        xp3 xp3Var14 = new xp3("ENUM", 13, yp3.ENUM, 0);
        f33690z = xp3Var14;
        xp3 xp3Var15 = new xp3("SFIXED32", 14, yp3Var2, 5);
        f33672A = xp3Var15;
        xp3 xp3Var16 = new xp3("SFIXED64", 15, yp3Var, 1);
        f33673B = xp3Var16;
        xp3 xp3Var17 = new xp3("SINT32", 16, yp3Var2, 0);
        f33674C = xp3Var17;
        xp3 xp3Var18 = new xp3("SINT64", 17, yp3Var, 0);
        f33675D = xp3Var18;
        f33676E = new xp3[]{xp3Var, xp3Var2, xp3Var3, xp3Var4, xp3Var5, xp3Var6, xp3Var7, xp3Var8, xp3Var9, xp3Var10, xp3Var11, xp3Var12, xp3Var13, xp3Var14, xp3Var15, xp3Var16, xp3Var17, xp3Var18};
    }
}
