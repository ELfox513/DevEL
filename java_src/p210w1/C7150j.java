package p210w1;

import net.bytebuddy.implementation.auxiliary.TypeProxy;
import p210w1.AbstractC7146h;
import p218x1.C7205a0;
import p218x1.C7207b0;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7238z;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: w1.j */
/* loaded from: classes.dex */
public class C7150j extends AbstractC7146h {

    /* renamed from: t */
    public static final C7212d0 f36187t = new C7212d0(TypeProxy.SilentConstruction.Appender.NEW_INSTANCE_METHOD_DESCRIPTOR);

    /* renamed from: u */
    public static final C7212d0 f36188u = new C7212d0("([Ljava/lang/Object;)V");

    /* renamed from: v */
    public static final C7212d0 f36189v = new C7212d0("([Ljava/lang/Object;)Z");

    /* renamed from: p */
    public final InterfaceC7404e f36190p;

    /* renamed from: q */
    public final C7238z f36191q;

    /* renamed from: r */
    public final C7238z f36192r;

    /* renamed from: s */
    public final C7207b0 f36193s;

    public C7150j(C7164t c7164t, C7167w c7167w, C7160r c7160r, InterfaceC7404e interfaceC7404e, C7238z c7238z) {
        super(c7164t, c7167w, null, c7160r);
        if (c7164t.m2316b() == 6) {
            if (interfaceC7404e != null) {
                this.f36190p = interfaceC7404e;
                if (c7238z != null) {
                    if (c7238z.m2106D()) {
                        this.f36191q = c7238z;
                        this.f36192r = m2402y(c7238z);
                        this.f36193s = m2403x(c7238z);
                        return;
                    }
                    throw new IllegalArgumentException("callSiteMethod is not signature polymorphic");
                }
                throw new NullPointerException("callSiteMethod == null");
            }
            throw new NullPointerException("catches == null");
        }
        throw new IllegalArgumentException("opcode with invalid branchingness: " + c7164t.m2316b());
    }

    /* renamed from: x */
    public static C7207b0 m2403x(C7238z c7238z) {
        return new C7207b0(c7238z.m2109A(true));
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: a */
    public void mo2250a(AbstractC7146h.InterfaceC7148b interfaceC7148b) {
        interfaceC7148b.visitInvokePolymorphicInsn(this);
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: e */
    public InterfaceC7404e mo2249e() {
        return this.f36190p;
    }

    /* renamed from: t */
    public C7238z m2406t() {
        return this.f36191q;
    }

    /* renamed from: u */
    public C7207b0 m2405u() {
        return this.f36193s;
    }

    /* renamed from: w */
    public C7238z m2404w() {
        return this.f36192r;
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: g */
    public String mo2248g() {
        return m2404w().toString() + " " + m2405u().toString() + " " + C7170z.m2245t(this.f36190p);
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: q */
    public AbstractC7146h mo2247q(C7402c c7402c) {
        return new C7150j(m2417i(), m2416j(), m2414m(), this.f36190p.mo1519d(c7402c), m2406t());
    }

    @Override // p210w1.AbstractC7146h
    /* renamed from: r */
    public AbstractC7146h mo2246r(C7157q c7157q, C7160r c7160r) {
        return new C7150j(m2417i(), m2416j(), c7160r, this.f36190p, m2406t());
    }

    /* renamed from: y */
    public static C7238z m2402y(C7238z c7238z) {
        C7214e0 m2054n = c7238z.m2054n();
        C7212d0 m2128x = c7238z.m2053u().m2128x();
        String m2112u = c7238z.m2053u().m2128x().m2112u();
        if (m2054n.equals(C7214e0.f36568G) && (m2112u.equals("invoke") || m2112u.equals("invokeExact"))) {
            return new C7238z(m2054n, new C7205a0(m2128x, f36187t));
        }
        if (m2054n.equals(C7214e0.f36569H)) {
            m2112u.hashCode();
            char c = 65535;
            switch (m2112u.hashCode()) {
                case -1946504908:
                    if (m2112u.equals("getAndBitwiseOrRelease")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1686727776:
                    if (m2112u.equals("getAndBitwiseAndRelease")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1671098288:
                    if (m2112u.equals("compareAndSet")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1292078254:
                    if (m2112u.equals("compareAndExchangeRelease")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1117944904:
                    if (m2112u.equals("weakCompareAndSet")) {
                        c = 4;
                        break;
                    }
                    break;
                case -1103072857:
                    if (m2112u.equals("getAndAddRelease")) {
                        c = 5;
                        break;
                    }
                    break;
                case -1032914329:
                    if (m2112u.equals("getAndBitwiseAnd")) {
                        c = 6;
                        break;
                    }
                    break;
                case -1032892181:
                    if (m2112u.equals("getAndBitwiseXor")) {
                        c = 7;
                        break;
                    }
                    break;
                case -794517348:
                    if (m2112u.equals("getAndBitwiseXorRelease")) {
                        c = '\b';
                        break;
                    }
                    break;
                case -567150350:
                    if (m2112u.equals("weakCompareAndSetPlain")) {
                        c = '\t';
                        break;
                    }
                    break;
                case -240822786:
                    if (m2112u.equals("weakCompareAndSetAcquire")) {
                        c = '\n';
                        break;
                    }
                    break;
                case -230706875:
                    if (m2112u.equals("setRelease")) {
                        c = 11;
                        break;
                    }
                    break;
                case -127361888:
                    if (m2112u.equals("getAcquire")) {
                        c = '\f';
                        break;
                    }
                    break;
                case -37641530:
                    if (m2112u.equals("getAndSetRelease")) {
                        c = '\r';
                        break;
                    }
                    break;
                case 102230:
                    if (m2112u.equals("get")) {
                        c = 14;
                        break;
                    }
                    break;
                case 113762:
                    if (m2112u.equals("set")) {
                        c = 15;
                        break;
                    }
                    break;
                case 93645315:
                    if (m2112u.equals("getAndBitwiseOrAcquire")) {
                        c = 16;
                        break;
                    }
                    break;
                case 101293086:
                    if (m2112u.equals("setVolatile")) {
                        c = 17;
                        break;
                    }
                    break;
                case 189872914:
                    if (m2112u.equals("getVolatile")) {
                        c = 18;
                        break;
                    }
                    break;
                case 282707520:
                    if (m2112u.equals("getAndAdd")) {
                        c = 19;
                        break;
                    }
                    break;
                case 282724865:
                    if (m2112u.equals("getAndSet")) {
                        c = 20;
                        break;
                    }
                    break;
                case 353422447:
                    if (m2112u.equals("getAndBitwiseAndAcquire")) {
                        c = 21;
                        break;
                    }
                    break;
                case 470702883:
                    if (m2112u.equals("setOpaque")) {
                        c = 22;
                        break;
                    }
                    break;
                case 685319959:
                    if (m2112u.equals("getOpaque")) {
                        c = 23;
                        break;
                    }
                    break;
                case 748071969:
                    if (m2112u.equals("compareAndExchangeAcquire")) {
                        c = 24;
                        break;
                    }
                    break;
                case 937077366:
                    if (m2112u.equals("getAndAddAcquire")) {
                        c = 25;
                        break;
                    }
                    break;
                case 1245632875:
                    if (m2112u.equals("getAndBitwiseXorAcquire")) {
                        c = 26;
                        break;
                    }
                    break;
                case 1352153939:
                    if (m2112u.equals("getAndBitwiseOr")) {
                        c = 27;
                        break;
                    }
                    break;
                case 1483964149:
                    if (m2112u.equals("compareAndExchange")) {
                        c = 28;
                        break;
                    }
                    break;
                case 2002508693:
                    if (m2112u.equals("getAndSetAcquire")) {
                        c = 29;
                        break;
                    }
                    break;
                case 2013994287:
                    if (m2112u.equals("weakCompareAndSetRelease")) {
                        c = 30;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                case 3:
                case 5:
                case 6:
                case 7:
                case '\b':
                case '\f':
                case '\r':
                case 14:
                case 16:
                case 18:
                case 19:
                case 20:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                    return new C7238z(m2054n, new C7205a0(m2128x, f36187t));
                case 2:
                case 4:
                case '\t':
                case '\n':
                case 30:
                    return new C7238z(m2054n, new C7205a0(m2128x, f36189v));
                case 11:
                case 15:
                case 17:
                case 22:
                    return new C7238z(m2054n, new C7205a0(m2128x, f36188u));
            }
        }
        throw new IllegalArgumentException("Unknown signature polymorphic method: " + c7238z.toHuman());
    }
}
