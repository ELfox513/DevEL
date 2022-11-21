package p218x1;

import p226y1.C7400a;
import p226y1.C7402c;
/* renamed from: x1.e */
/* loaded from: classes.dex */
public abstract class AbstractC7213e extends AbstractC7236x {

    /* renamed from: d */
    public final C7400a f36560d;

    /* renamed from: k */
    public C7400a f36561k;

    /* renamed from: B */
    public final boolean m2108B() {
        return m2053u().m2127z();
    }

    /* renamed from: C */
    public final boolean m2107C() {
        return m2053u().m2131A();
    }

    @Override // p226y1.InterfaceC7403d
    public final C7402c getType() {
        return this.f36560d.m1564n();
    }

    /* renamed from: x */
    public final int m2105x(boolean z) {
        return m2109A(z).m1565l().m1557B();
    }

    /* renamed from: z */
    public final C7400a m2104z() {
        return this.f36560d;
    }

    /* renamed from: A */
    public final C7400a m2109A(boolean z) {
        if (z) {
            return this.f36560d;
        }
        if (this.f36561k == null) {
            this.f36561k = this.f36560d.m1571A(m2054n().m2097x());
        }
        return this.f36561k;
    }

    public AbstractC7213e(C7214e0 c7214e0, C7205a0 c7205a0) {
        super(c7214e0, c7205a0);
        String m2112u = m2053u().m2130n().m2112u();
        if (m2106D()) {
            this.f36560d = C7400a.m1568f(m2112u);
        } else {
            this.f36560d = C7400a.m1563p(m2112u);
        }
        this.f36561k = null;
    }

    /* renamed from: D */
    public final boolean m2106D() {
        C7214e0 m2054n = m2054n();
        if (m2054n.equals(C7214e0.f36568G)) {
            String m2112u = m2053u().m2128x().m2112u();
            m2112u.hashCode();
            if (m2112u.equals("invoke") || m2112u.equals("invokeExact")) {
                return true;
            }
        } else if (m2054n.equals(C7214e0.f36569H)) {
            String m2112u2 = m2053u().m2128x().m2112u();
            m2112u2.hashCode();
            char c = 65535;
            switch (m2112u2.hashCode()) {
                case -1946504908:
                    if (m2112u2.equals("getAndBitwiseOrRelease")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1686727776:
                    if (m2112u2.equals("getAndBitwiseAndRelease")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1671098288:
                    if (m2112u2.equals("compareAndSet")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1292078254:
                    if (m2112u2.equals("compareAndExchangeRelease")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1117944904:
                    if (m2112u2.equals("weakCompareAndSet")) {
                        c = 4;
                        break;
                    }
                    break;
                case -1103072857:
                    if (m2112u2.equals("getAndAddRelease")) {
                        c = 5;
                        break;
                    }
                    break;
                case -1032914329:
                    if (m2112u2.equals("getAndBitwiseAnd")) {
                        c = 6;
                        break;
                    }
                    break;
                case -1032892181:
                    if (m2112u2.equals("getAndBitwiseXor")) {
                        c = 7;
                        break;
                    }
                    break;
                case -794517348:
                    if (m2112u2.equals("getAndBitwiseXorRelease")) {
                        c = '\b';
                        break;
                    }
                    break;
                case -567150350:
                    if (m2112u2.equals("weakCompareAndSetPlain")) {
                        c = '\t';
                        break;
                    }
                    break;
                case -240822786:
                    if (m2112u2.equals("weakCompareAndSetAcquire")) {
                        c = '\n';
                        break;
                    }
                    break;
                case -230706875:
                    if (m2112u2.equals("setRelease")) {
                        c = 11;
                        break;
                    }
                    break;
                case -127361888:
                    if (m2112u2.equals("getAcquire")) {
                        c = '\f';
                        break;
                    }
                    break;
                case -37641530:
                    if (m2112u2.equals("getAndSetRelease")) {
                        c = '\r';
                        break;
                    }
                    break;
                case 102230:
                    if (m2112u2.equals("get")) {
                        c = 14;
                        break;
                    }
                    break;
                case 113762:
                    if (m2112u2.equals("set")) {
                        c = 15;
                        break;
                    }
                    break;
                case 93645315:
                    if (m2112u2.equals("getAndBitwiseOrAcquire")) {
                        c = 16;
                        break;
                    }
                    break;
                case 101293086:
                    if (m2112u2.equals("setVolatile")) {
                        c = 17;
                        break;
                    }
                    break;
                case 189872914:
                    if (m2112u2.equals("getVolatile")) {
                        c = 18;
                        break;
                    }
                    break;
                case 282707520:
                    if (m2112u2.equals("getAndAdd")) {
                        c = 19;
                        break;
                    }
                    break;
                case 282724865:
                    if (m2112u2.equals("getAndSet")) {
                        c = 20;
                        break;
                    }
                    break;
                case 353422447:
                    if (m2112u2.equals("getAndBitwiseAndAcquire")) {
                        c = 21;
                        break;
                    }
                    break;
                case 470702883:
                    if (m2112u2.equals("setOpaque")) {
                        c = 22;
                        break;
                    }
                    break;
                case 685319959:
                    if (m2112u2.equals("getOpaque")) {
                        c = 23;
                        break;
                    }
                    break;
                case 748071969:
                    if (m2112u2.equals("compareAndExchangeAcquire")) {
                        c = 24;
                        break;
                    }
                    break;
                case 937077366:
                    if (m2112u2.equals("getAndAddAcquire")) {
                        c = 25;
                        break;
                    }
                    break;
                case 1245632875:
                    if (m2112u2.equals("getAndBitwiseXorAcquire")) {
                        c = 26;
                        break;
                    }
                    break;
                case 1352153939:
                    if (m2112u2.equals("getAndBitwiseOr")) {
                        c = 27;
                        break;
                    }
                    break;
                case 1483964149:
                    if (m2112u2.equals("compareAndExchange")) {
                        c = 28;
                        break;
                    }
                    break;
                case 2002508693:
                    if (m2112u2.equals("getAndSetAcquire")) {
                        c = 29;
                        break;
                    }
                    break;
                case 2013994287:
                    if (m2112u2.equals("weakCompareAndSetRelease")) {
                        c = 30;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case '\b':
                case '\t':
                case '\n':
                case 11:
                case '\f':
                case '\r':
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                    return true;
            }
        }
        return false;
    }

    @Override // p218x1.AbstractC7236x, p218x1.AbstractC7204a
    /* renamed from: d */
    public final int mo2048d(AbstractC7204a abstractC7204a) {
        int mo2048d = super.mo2048d(abstractC7204a);
        if (mo2048d != 0) {
            return mo2048d;
        }
        return this.f36560d.compareTo(((AbstractC7213e) abstractC7204a).f36560d);
    }
}
