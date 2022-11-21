package p144o7;
/* renamed from: o7.u1 */
/* loaded from: classes2.dex */
public final class C5230u1 {

    /* renamed from: a */
    public static final int f19571a = m13942c(1, 3);

    /* renamed from: b */
    public static final int f19572b = m13942c(1, 4);

    /* renamed from: c */
    public static final int f19573c = m13942c(2, 0);

    /* renamed from: d */
    public static final int f19574d = m13942c(3, 2);

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
    /* renamed from: o7.u1$b */
    /* loaded from: classes2.dex */
    public static class EnumC5232b {

        /* renamed from: A */
        public static final EnumC5232b f19575A;

        /* renamed from: B */
        public static final EnumC5232b f19576B;

        /* renamed from: C */
        public static final EnumC5232b f19577C;

        /* renamed from: D */
        public static final EnumC5232b f19578D;

        /* renamed from: E */
        public static final EnumC5232b f19579E;

        /* renamed from: F */
        public static final /* synthetic */ EnumC5232b[] f19580F;

        /* renamed from: d */
        public static final EnumC5232b f19581d;

        /* renamed from: k */
        public static final EnumC5232b f19582k;

        /* renamed from: p */
        public static final EnumC5232b f19583p;

        /* renamed from: q */
        public static final EnumC5232b f19584q;

        /* renamed from: r */
        public static final EnumC5232b f19585r;

        /* renamed from: s */
        public static final EnumC5232b f19586s;

        /* renamed from: t */
        public static final EnumC5232b f19587t;

        /* renamed from: u */
        public static final EnumC5232b f19588u;

        /* renamed from: v */
        public static final EnumC5232b f19589v;

        /* renamed from: w */
        public static final EnumC5232b f19590w;

        /* renamed from: x */
        public static final EnumC5232b f19591x;

        /* renamed from: y */
        public static final EnumC5232b f19592y;

        /* renamed from: z */
        public static final EnumC5232b f19593z;

        /* renamed from: a */
        public final EnumC5237c f19594a;

        /* renamed from: b */
        public final int f19595b;

        /* renamed from: o7.u1$b$a */
        /* loaded from: classes2.dex */
        public enum C5233a extends EnumC5232b {
            public C5233a(String str, int i, EnumC5237c enumC5237c, int i2) {
                super(str, i, enumC5237c, i2);
            }
        }

        /* renamed from: o7.u1$b$b */
        /* loaded from: classes2.dex */
        public enum C5234b extends EnumC5232b {
            public C5234b(String str, int i, EnumC5237c enumC5237c, int i2) {
                super(str, i, enumC5237c, i2);
            }
        }

        /* renamed from: o7.u1$b$c */
        /* loaded from: classes2.dex */
        public enum C5235c extends EnumC5232b {
            public C5235c(String str, int i, EnumC5237c enumC5237c, int i2) {
                super(str, i, enumC5237c, i2);
            }
        }

        /* renamed from: o7.u1$b$d */
        /* loaded from: classes2.dex */
        public enum C5236d extends EnumC5232b {
            public C5236d(String str, int i, EnumC5237c enumC5237c, int i2) {
                super(str, i, enumC5237c, i2);
            }
        }

        public static EnumC5232b valueOf(String str) {
            return (EnumC5232b) Enum.valueOf(EnumC5232b.class, str);
        }

        public static EnumC5232b[] values() {
            return (EnumC5232b[]) f19580F.clone();
        }

        /* renamed from: c */
        public EnumC5237c m13941c() {
            return this.f19594a;
        }

        /* renamed from: d */
        public int m13940d() {
            return this.f19595b;
        }

        static {
            EnumC5232b enumC5232b = new EnumC5232b("DOUBLE", 0, EnumC5237c.DOUBLE, 1);
            f19581d = enumC5232b;
            EnumC5232b enumC5232b2 = new EnumC5232b("FLOAT", 1, EnumC5237c.FLOAT, 5);
            f19582k = enumC5232b2;
            EnumC5237c enumC5237c = EnumC5237c.LONG;
            EnumC5232b enumC5232b3 = new EnumC5232b("INT64", 2, enumC5237c, 0);
            f19583p = enumC5232b3;
            EnumC5232b enumC5232b4 = new EnumC5232b("UINT64", 3, enumC5237c, 0);
            f19584q = enumC5232b4;
            EnumC5237c enumC5237c2 = EnumC5237c.INT;
            EnumC5232b enumC5232b5 = new EnumC5232b("INT32", 4, enumC5237c2, 0);
            f19585r = enumC5232b5;
            EnumC5232b enumC5232b6 = new EnumC5232b("FIXED64", 5, enumC5237c, 1);
            f19586s = enumC5232b6;
            EnumC5232b enumC5232b7 = new EnumC5232b("FIXED32", 6, enumC5237c2, 5);
            f19587t = enumC5232b7;
            EnumC5232b enumC5232b8 = new EnumC5232b("BOOL", 7, EnumC5237c.BOOLEAN, 0);
            f19588u = enumC5232b8;
            C5233a c5233a = new C5233a("STRING", 8, EnumC5237c.STRING, 2);
            f19589v = c5233a;
            EnumC5237c enumC5237c3 = EnumC5237c.MESSAGE;
            C5234b c5234b = new C5234b("GROUP", 9, enumC5237c3, 3);
            f19590w = c5234b;
            C5235c c5235c = new C5235c("MESSAGE", 10, enumC5237c3, 2);
            f19591x = c5235c;
            C5236d c5236d = new C5236d("BYTES", 11, EnumC5237c.BYTE_STRING, 2);
            f19592y = c5236d;
            EnumC5232b enumC5232b9 = new EnumC5232b("UINT32", 12, enumC5237c2, 0);
            f19593z = enumC5232b9;
            EnumC5232b enumC5232b10 = new EnumC5232b("ENUM", 13, EnumC5237c.ENUM, 0);
            f19575A = enumC5232b10;
            EnumC5232b enumC5232b11 = new EnumC5232b("SFIXED32", 14, enumC5237c2, 5);
            f19576B = enumC5232b11;
            EnumC5232b enumC5232b12 = new EnumC5232b("SFIXED64", 15, enumC5237c, 1);
            f19577C = enumC5232b12;
            EnumC5232b enumC5232b13 = new EnumC5232b("SINT32", 16, enumC5237c2, 0);
            f19578D = enumC5232b13;
            EnumC5232b enumC5232b14 = new EnumC5232b("SINT64", 17, enumC5237c, 0);
            f19579E = enumC5232b14;
            f19580F = new EnumC5232b[]{enumC5232b, enumC5232b2, enumC5232b3, enumC5232b4, enumC5232b5, enumC5232b6, enumC5232b7, enumC5232b8, c5233a, c5234b, c5235c, c5236d, enumC5232b9, enumC5232b10, enumC5232b11, enumC5232b12, enumC5232b13, enumC5232b14};
        }

        public EnumC5232b(String str, int i, EnumC5237c enumC5237c, int i2) {
            this.f19594a = enumC5237c;
            this.f19595b = i2;
        }
    }

    /* renamed from: a */
    public static int m13944a(int i) {
        return i >>> 3;
    }

    /* renamed from: b */
    public static int m13943b(int i) {
        return i & 7;
    }

    /* renamed from: c */
    public static int m13942c(int i, int i2) {
        return (i << 3) | i2;
    }

    /* renamed from: o7.u1$c */
    /* loaded from: classes2.dex */
    public enum EnumC5237c {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf(0.0f)),
        DOUBLE(Double.valueOf(0.0d)),
        BOOLEAN(Boolean.FALSE),
        STRING(""),
        BYTE_STRING(AbstractC5137h.f19422b),
        ENUM(null),
        MESSAGE(null);
        

        /* renamed from: a */
        public final Object f19606a;

        EnumC5237c(Object obj) {
            this.f19606a = obj;
        }
    }
}
