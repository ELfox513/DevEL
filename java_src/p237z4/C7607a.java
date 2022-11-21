package p237z4;

import p237z4.AbstractC7673m0;
/* renamed from: z4.a */
/* loaded from: classes2.dex */
public final class C7607a extends AbstractC7673m0<C7607a, C7608a> implements InterfaceC7712t1 {
    private static volatile InterfaceC7616b2<C7607a> zzhk;
    private static final C7607a zzhp;
    private int zzhd;
    private byte zzhi = 2;
    private int zzhe = 1;
    private String zzhm = "";
    private long zzhn = -1;
    private long zzhg = -1;
    private int zzho = -1;

    /* renamed from: z4.a$a */
    /* loaded from: classes2.dex */
    public static final class C7608a extends AbstractC7673m0.AbstractC7674a<C7607a, C7608a> implements InterfaceC7712t1 {
        public C7608a() {
            super(C7607a.zzhp);
        }

        public /* synthetic */ C7608a(C7613b c7613b) {
            this();
        }

        /* renamed from: A */
        public final C7608a m894A(int i) {
            m651o();
            ((C7607a) this.f37809b).m901F(i);
            return this;
        }

        /* renamed from: u */
        public final C7608a m893u(String str) {
            m651o();
            ((C7607a) this.f37809b).m904C(str);
            return this;
        }

        /* renamed from: v */
        public final C7608a m892v(long j) {
            m651o();
            ((C7607a) this.f37809b).m903D(j);
            return this;
        }

        /* renamed from: x */
        public final C7608a m891x(long j) {
            m651o();
            ((C7607a) this.f37809b).m900t(j);
            return this;
        }

        /* renamed from: z */
        public final C7608a m890z(int i) {
            m651o();
            ((C7607a) this.f37809b).m902E(1);
            return this;
        }
    }

    /* renamed from: y */
    public static C7608a m896y() {
        return zzhp.m656r();
    }

    static {
        C7607a c7607a = new C7607a();
        zzhp = c7607a;
        AbstractC7673m0.m659o(C7607a.class, c7607a);
    }

    /* renamed from: D */
    public final void m903D(long j) {
        this.zzhd |= 4;
        this.zzhn = j;
    }

    /* renamed from: E */
    public final void m902E(int i) {
        this.zzhd |= 1;
        this.zzhe = i;
    }

    /* renamed from: F */
    public final void m901F(int i) {
        this.zzhd |= 16;
        this.zzho = i;
    }

    /* JADX WARN: Type inference failed for: r3v14, types: [z4.b2<z4.a>, z4.m0$b] */
    @Override // p237z4.AbstractC7673m0
    /* renamed from: l */
    public final Object mo662l(int i, Object obj, Object obj2) {
        InterfaceC7616b2<C7607a> interfaceC7616b2;
        int i2 = 1;
        switch (C7613b.f37632a[i - 1]) {
            case 1:
                return new C7607a();
            case 2:
                return new C7608a(null);
            case 3:
                return AbstractC7673m0.m660n(zzhp, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0004\u0001Ԅ\u0000\u0002Ԉ\u0001\u0003Ԑ\u0002\u0004Ԑ\u0003\u0005\u0004\u0004", new Object[]{"zzhd", "zzhe", "zzhm", "zzhn", "zzhg", "zzho"});
            case 4:
                return zzhp;
            case 5:
                InterfaceC7616b2<C7607a> interfaceC7616b22 = zzhk;
                InterfaceC7616b2<C7607a> interfaceC7616b23 = interfaceC7616b22;
                if (interfaceC7616b22 == null) {
                    synchronized (C7607a.class) {
                        InterfaceC7616b2<C7607a> interfaceC7616b24 = zzhk;
                        interfaceC7616b2 = interfaceC7616b24;
                        if (interfaceC7616b24 == null) {
                            ?? c7675b = new AbstractC7673m0.C7675b(zzhp);
                            zzhk = c7675b;
                            interfaceC7616b2 = c7675b;
                        }
                    }
                    interfaceC7616b23 = interfaceC7616b2;
                }
                return interfaceC7616b23;
            case 6:
                return Byte.valueOf(this.zzhi);
            case 7:
                if (obj == null) {
                    i2 = 0;
                }
                this.zzhi = (byte) i2;
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: t */
    public final void m900t(long j) {
        this.zzhd |= 8;
        this.zzhg = j;
    }

    /* renamed from: C */
    public final void m904C(String str) {
        str.getClass();
        this.zzhd |= 2;
        this.zzhm = str;
    }
}
