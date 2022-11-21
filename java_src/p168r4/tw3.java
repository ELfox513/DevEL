package p168r4;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.tw3 */
/* loaded from: classes2.dex */
public final class tw3 implements kw3, InterfaceC5844ho {

    /* renamed from: A */
    public static final o33<Long> f32049A;

    /* renamed from: B */
    public static final o33<Long> f32050B;

    /* renamed from: C */
    public static final o33<Long> f32051C;

    /* renamed from: D */
    public static final o33<Long> f32052D;

    /* renamed from: E */
    public static final o33<Long> f32053E;

    /* renamed from: F */
    public static tw3 f32054F;

    /* renamed from: y */
    public static final q33<String, Integer> f32055y;

    /* renamed from: z */
    public static final o33<Long> f32056z;

    /* renamed from: a */
    public final s33<Integer, Long> f32057a;

    /* renamed from: k */
    public final InterfaceC5940ka f32060k;

    /* renamed from: q */
    public int f32062q;

    /* renamed from: r */
    public long f32063r;

    /* renamed from: s */
    public long f32064s;

    /* renamed from: t */
    public int f32065t;

    /* renamed from: u */
    public long f32066u;

    /* renamed from: v */
    public long f32067v;

    /* renamed from: w */
    public long f32068w;

    /* renamed from: x */
    public long f32069x;

    /* renamed from: b */
    public final iw3 f32058b = new iw3();

    /* renamed from: d */
    public final rx3 f32059d = new rx3(2000);

    /* renamed from: p */
    public final boolean f32061p = true;

    /* renamed from: j */
    public static boolean m6690j(C6350vc c6350vc, boolean z) {
        return z && !c6350vc.m6172b(8);
    }

    @Override // p168r4.InterfaceC5844ho
    /* renamed from: a */
    public final synchronized void mo6699a(InterfaceC6087o8 interfaceC6087o8, C6350vc c6350vc, boolean z) {
        boolean z2;
        if (!m6690j(c6350vc, z)) {
            return;
        }
        if (this.f32062q > 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        C5903ja.m10371d(z2);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i = (int) (elapsedRealtime - this.f32063r);
        this.f32066u += i;
        long j = this.f32067v;
        long j2 = this.f32064s;
        this.f32067v = j + j2;
        if (i > 0) {
            this.f32059d.m7281b((int) Math.sqrt(j2), (((float) j2) * 8000.0f) / i);
            if (this.f32066u >= 2000 || this.f32067v >= 524288) {
                this.f32068w = this.f32059d.m7280c(0.5f);
            }
            m6692h(i, this.f32064s, this.f32068w);
            this.f32063r = elapsedRealtime;
            this.f32064s = 0L;
        }
        this.f32062q--;
    }

    @Override // p168r4.kw3
    /* renamed from: b */
    public final void mo6698b(Handler handler, jw3 jw3Var) {
        this.f32058b.m10482a(handler, jw3Var);
    }

    @Override // p168r4.kw3
    /* renamed from: c */
    public final void mo6697c(jw3 jw3Var) {
        this.f32058b.m10481b(jw3Var);
    }

    @Override // p168r4.InterfaceC5844ho
    /* renamed from: f */
    public final synchronized void mo6694f(InterfaceC6087o8 interfaceC6087o8, C6350vc c6350vc, boolean z, int i) {
        if (m6690j(c6350vc, z)) {
            this.f32064s += i;
        }
    }

    /* renamed from: g */
    public final synchronized void m6695e(int i) {
        int i2;
        int i3 = this.f32065t;
        if (i3 != 0 && !this.f32061p) {
            return;
        }
        if (i3 == i) {
            return;
        }
        this.f32065t = i;
        if (i != 1 && i != 0 && i != 8) {
            this.f32068w = m6691i(i);
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f32062q > 0) {
                i2 = (int) (elapsedRealtime - this.f32063r);
            } else {
                i2 = 0;
            }
            m6692h(i2, this.f32064s, this.f32068w);
            this.f32063r = elapsedRealtime;
            this.f32064s = 0L;
            this.f32067v = 0L;
            this.f32066u = 0L;
            this.f32059d.m7282a();
        }
    }

    /* renamed from: h */
    public final void m6692h(int i, long j, long j2) {
        int i2;
        if (i != 0) {
            i2 = i;
        } else if (j == 0 && j2 == this.f32069x) {
            return;
        } else {
            i2 = 0;
        }
        this.f32069x = j2;
        this.f32058b.m10480c(i2, j, j2);
    }

    @Override // p168r4.InterfaceC5844ho
    /* renamed from: s */
    public final synchronized void mo6689s(InterfaceC6087o8 interfaceC6087o8, C6350vc c6350vc, boolean z) {
        if (!m6690j(c6350vc, z)) {
            return;
        }
        if (this.f32062q == 0) {
            this.f32063r = SystemClock.elapsedRealtime();
        }
        this.f32062q++;
    }

    @Override // p168r4.InterfaceC5844ho
    /* renamed from: y */
    public final void mo6688y(InterfaceC6087o8 interfaceC6087o8, C6350vc c6350vc, boolean z) {
    }

    static {
        p33 p33Var = new p33();
        p33Var.m8491a("AD", 1, 2, 0, 0, 2, 2);
        p33Var.m8491a("AE", 1, 4, 4, 4, 2, 2);
        p33Var.m8491a("AF", 4, 4, 3, 4, 2, 2);
        p33Var.m8491a("AG", 4, 2, 1, 4, 2, 2);
        p33Var.m8491a("AI", 1, 2, 2, 2, 2, 2);
        p33Var.m8491a("AL", 1, 1, 1, 1, 2, 2);
        p33Var.m8491a("AM", 2, 2, 1, 3, 2, 2);
        p33Var.m8491a("AO", 3, 4, 3, 1, 2, 2);
        p33Var.m8491a("AR", 2, 4, 2, 1, 2, 2);
        p33Var.m8491a("AS", 2, 2, 3, 3, 2, 2);
        p33Var.m8491a("AT", 0, 1, 0, 0, 0, 2);
        p33Var.m8491a("AU", 0, 2, 0, 1, 1, 2);
        p33Var.m8491a("AW", 1, 2, 0, 4, 2, 2);
        p33Var.m8491a("AX", 0, 2, 2, 2, 2, 2);
        p33Var.m8491a("AZ", 3, 3, 3, 4, 4, 2);
        p33Var.m8491a("BA", 1, 1, 0, 1, 2, 2);
        p33Var.m8491a("BB", 0, 2, 0, 0, 2, 2);
        p33Var.m8491a("BD", 2, 0, 3, 3, 2, 2);
        p33Var.m8491a("BE", 0, 0, 2, 3, 2, 2);
        p33Var.m8491a("BF", 4, 4, 4, 2, 2, 2);
        p33Var.m8491a("BG", 0, 1, 0, 0, 2, 2);
        p33Var.m8491a("BH", 1, 0, 2, 4, 2, 2);
        p33Var.m8491a("BI", 4, 4, 4, 4, 2, 2);
        p33Var.m8491a("BJ", 4, 4, 4, 4, 2, 2);
        p33Var.m8491a("BL", 1, 2, 2, 2, 2, 2);
        p33Var.m8491a("BM", 0, 2, 0, 0, 2, 2);
        p33Var.m8491a("BN", 3, 2, 1, 0, 2, 2);
        p33Var.m8491a("BO", 1, 2, 4, 2, 2, 2);
        p33Var.m8491a("BQ", 1, 2, 1, 2, 2, 2);
        p33Var.m8491a("BR", 2, 4, 3, 2, 2, 2);
        p33Var.m8491a("BS", 2, 2, 1, 3, 2, 2);
        p33Var.m8491a("BT", 3, 0, 3, 2, 2, 2);
        p33Var.m8491a("BW", 3, 4, 1, 1, 2, 2);
        p33Var.m8491a("BY", 1, 1, 1, 2, 2, 2);
        p33Var.m8491a("BZ", 2, 2, 2, 2, 2, 2);
        p33Var.m8491a("CA", 0, 3, 1, 2, 4, 2);
        p33Var.m8491a("CD", 4, 2, 2, 1, 2, 2);
        p33Var.m8491a("CF", 4, 2, 3, 2, 2, 2);
        p33Var.m8491a("CG", 3, 4, 2, 2, 2, 2);
        p33Var.m8491a("CH", 0, 0, 0, 0, 1, 2);
        p33Var.m8491a("CI", 3, 3, 3, 3, 2, 2);
        p33Var.m8491a("CK", 2, 2, 3, 0, 2, 2);
        p33Var.m8491a("CL", 1, 1, 2, 2, 2, 2);
        p33Var.m8491a("CM", 3, 4, 3, 2, 2, 2);
        p33Var.m8491a("CN", 2, 2, 2, 1, 3, 2);
        p33Var.m8491a("CO", 2, 3, 4, 2, 2, 2);
        p33Var.m8491a("CR", 2, 3, 4, 4, 2, 2);
        p33Var.m8491a("CU", 4, 4, 2, 2, 2, 2);
        p33Var.m8491a("CV", 2, 3, 1, 0, 2, 2);
        p33Var.m8491a("CW", 1, 2, 0, 0, 2, 2);
        p33Var.m8491a("CY", 1, 1, 0, 0, 2, 2);
        p33Var.m8491a("CZ", 0, 1, 0, 0, 1, 2);
        p33Var.m8491a("DE", 0, 0, 1, 1, 0, 2);
        p33Var.m8491a("DJ", 4, 0, 4, 4, 2, 2);
        p33Var.m8491a("DK", 0, 0, 1, 0, 0, 2);
        p33Var.m8491a("DM", 1, 2, 2, 2, 2, 2);
        p33Var.m8491a("DO", 3, 4, 4, 4, 2, 2);
        p33Var.m8491a("DZ", 3, 3, 4, 4, 2, 4);
        p33Var.m8491a("EC", 2, 4, 3, 1, 2, 2);
        p33Var.m8491a("EE", 0, 1, 0, 0, 2, 2);
        p33Var.m8491a("EG", 3, 4, 3, 3, 2, 2);
        p33Var.m8491a("EH", 2, 2, 2, 2, 2, 2);
        p33Var.m8491a("ER", 4, 2, 2, 2, 2, 2);
        p33Var.m8491a("ES", 0, 1, 1, 1, 2, 2);
        p33Var.m8491a("ET", 4, 4, 4, 1, 2, 2);
        p33Var.m8491a("FI", 0, 0, 0, 0, 0, 2);
        p33Var.m8491a("FJ", 3, 0, 2, 3, 2, 2);
        p33Var.m8491a("FK", 4, 2, 2, 2, 2, 2);
        p33Var.m8491a("FM", 3, 2, 4, 4, 2, 2);
        p33Var.m8491a("FO", 1, 2, 0, 1, 2, 2);
        p33Var.m8491a("FR", 1, 1, 2, 0, 1, 2);
        p33Var.m8491a("GA", 3, 4, 1, 1, 2, 2);
        p33Var.m8491a("GB", 0, 0, 1, 1, 1, 2);
        p33Var.m8491a("GD", 1, 2, 2, 2, 2, 2);
        p33Var.m8491a("GE", 1, 1, 1, 2, 2, 2);
        p33Var.m8491a("GF", 2, 2, 2, 3, 2, 2);
        p33Var.m8491a("GG", 1, 2, 0, 0, 2, 2);
        p33Var.m8491a("GH", 3, 1, 3, 2, 2, 2);
        p33Var.m8491a("GI", 0, 2, 0, 0, 2, 2);
        p33Var.m8491a("GL", 1, 2, 0, 0, 2, 2);
        p33Var.m8491a("GM", 4, 3, 2, 4, 2, 2);
        p33Var.m8491a("GN", 4, 3, 4, 2, 2, 2);
        p33Var.m8491a("GP", 2, 1, 2, 3, 2, 2);
        p33Var.m8491a("GQ", 4, 2, 2, 4, 2, 2);
        p33Var.m8491a("GR", 1, 2, 0, 0, 2, 2);
        p33Var.m8491a("GT", 3, 2, 3, 1, 2, 2);
        p33Var.m8491a("GU", 1, 2, 3, 4, 2, 2);
        p33Var.m8491a("GW", 4, 4, 4, 4, 2, 2);
        p33Var.m8491a("GY", 3, 3, 3, 4, 2, 2);
        p33Var.m8491a("HK", 0, 1, 2, 3, 2, 0);
        p33Var.m8491a("HN", 3, 1, 3, 3, 2, 2);
        p33Var.m8491a("HR", 1, 1, 0, 0, 3, 2);
        p33Var.m8491a("HT", 4, 4, 4, 4, 2, 2);
        p33Var.m8491a("HU", 0, 0, 0, 0, 0, 2);
        p33Var.m8491a("ID", 3, 2, 3, 3, 2, 2);
        p33Var.m8491a("IE", 0, 0, 1, 1, 3, 2);
        p33Var.m8491a("IL", 1, 0, 2, 3, 4, 2);
        p33Var.m8491a("IM", 0, 2, 0, 1, 2, 2);
        p33Var.m8491a("IN", 2, 1, 3, 3, 2, 2);
        p33Var.m8491a("IO", 4, 2, 2, 4, 2, 2);
        p33Var.m8491a("IQ", 3, 3, 4, 4, 2, 2);
        p33Var.m8491a("IR", 3, 2, 3, 2, 2, 2);
        p33Var.m8491a("IS", 0, 2, 0, 0, 2, 2);
        p33Var.m8491a("IT", 0, 4, 0, 1, 2, 2);
        p33Var.m8491a("JE", 2, 2, 1, 2, 2, 2);
        p33Var.m8491a("JM", 3, 3, 4, 4, 2, 2);
        p33Var.m8491a("JO", 2, 2, 1, 1, 2, 2);
        p33Var.m8491a("JP", 0, 0, 0, 0, 2, 1);
        p33Var.m8491a("KE", 3, 4, 2, 2, 2, 2);
        p33Var.m8491a("KG", 2, 0, 1, 1, 2, 2);
        p33Var.m8491a("KH", 1, 0, 4, 3, 2, 2);
        p33Var.m8491a("KI", 4, 2, 4, 3, 2, 2);
        p33Var.m8491a("KM", 4, 3, 2, 3, 2, 2);
        p33Var.m8491a("KN", 1, 2, 2, 2, 2, 2);
        p33Var.m8491a("KP", 4, 2, 2, 2, 2, 2);
        p33Var.m8491a("KR", 0, 0, 1, 3, 1, 2);
        p33Var.m8491a("KW", 1, 3, 1, 1, 1, 2);
        p33Var.m8491a("KY", 1, 2, 0, 2, 2, 2);
        p33Var.m8491a("KZ", 2, 2, 2, 3, 2, 2);
        p33Var.m8491a("LA", 1, 2, 1, 1, 2, 2);
        p33Var.m8491a("LB", 3, 2, 0, 0, 2, 2);
        p33Var.m8491a("LC", 1, 2, 0, 0, 2, 2);
        p33Var.m8491a("LI", 0, 2, 2, 2, 2, 2);
        p33Var.m8491a("LK", 2, 0, 2, 3, 2, 2);
        p33Var.m8491a("LR", 3, 4, 4, 3, 2, 2);
        p33Var.m8491a("LS", 3, 3, 2, 3, 2, 2);
        p33Var.m8491a("LT", 0, 0, 0, 0, 2, 2);
        p33Var.m8491a("LU", 1, 0, 1, 1, 2, 2);
        p33Var.m8491a("LV", 0, 0, 0, 0, 2, 2);
        p33Var.m8491a("LY", 4, 2, 4, 3, 2, 2);
        p33Var.m8491a("MA", 3, 2, 2, 1, 2, 2);
        p33Var.m8491a("MC", 0, 2, 0, 0, 2, 2);
        p33Var.m8491a("MD", 1, 2, 0, 0, 2, 2);
        p33Var.m8491a("ME", 1, 2, 0, 1, 2, 2);
        p33Var.m8491a("MF", 2, 2, 1, 1, 2, 2);
        p33Var.m8491a("MG", 3, 4, 2, 2, 2, 2);
        p33Var.m8491a("MH", 4, 2, 2, 4, 2, 2);
        p33Var.m8491a("MK", 1, 1, 0, 0, 2, 2);
        p33Var.m8491a("ML", 4, 4, 2, 2, 2, 2);
        p33Var.m8491a("MM", 2, 3, 3, 3, 2, 2);
        p33Var.m8491a("MN", 2, 4, 2, 2, 2, 2);
        p33Var.m8491a("MO", 0, 2, 4, 4, 2, 2);
        p33Var.m8491a("MP", 0, 2, 2, 2, 2, 2);
        p33Var.m8491a("MQ", 2, 2, 2, 3, 2, 2);
        p33Var.m8491a("MR", 3, 0, 4, 3, 2, 2);
        p33Var.m8491a("MS", 1, 2, 2, 2, 2, 2);
        p33Var.m8491a("MT", 0, 2, 0, 0, 2, 2);
        p33Var.m8491a("MU", 2, 1, 1, 2, 2, 2);
        p33Var.m8491a("MV", 4, 3, 2, 4, 2, 2);
        p33Var.m8491a("MW", 4, 2, 1, 0, 2, 2);
        p33Var.m8491a("MX", 2, 4, 4, 4, 4, 2);
        p33Var.m8491a("MY", 1, 0, 3, 2, 2, 2);
        p33Var.m8491a("MZ", 3, 3, 2, 1, 2, 2);
        p33Var.m8491a("NA", 4, 3, 3, 2, 2, 2);
        p33Var.m8491a("NC", 3, 0, 4, 4, 2, 2);
        p33Var.m8491a("NE", 4, 4, 4, 4, 2, 2);
        p33Var.m8491a("NF", 2, 2, 2, 2, 2, 2);
        p33Var.m8491a("NG", 3, 3, 2, 3, 2, 2);
        p33Var.m8491a("NI", 2, 1, 4, 4, 2, 2);
        p33Var.m8491a("NL", 0, 2, 3, 2, 0, 2);
        p33Var.m8491a("NO", 0, 1, 2, 0, 0, 2);
        p33Var.m8491a("NP", 2, 0, 4, 2, 2, 2);
        p33Var.m8491a("NR", 3, 2, 3, 1, 2, 2);
        p33Var.m8491a("NU", 4, 2, 2, 2, 2, 2);
        p33Var.m8491a("NZ", 0, 2, 1, 2, 4, 2);
        p33Var.m8491a("OM", 2, 2, 1, 3, 3, 2);
        p33Var.m8491a("PA", 1, 3, 3, 3, 2, 2);
        p33Var.m8491a("PE", 2, 3, 4, 4, 2, 2);
        p33Var.m8491a("PF", 2, 2, 2, 1, 2, 2);
        p33Var.m8491a("PG", 4, 4, 3, 2, 2, 2);
        p33Var.m8491a("PH", 2, 1, 3, 3, 3, 2);
        p33Var.m8491a("PK", 3, 2, 3, 3, 2, 2);
        p33Var.m8491a("PL", 1, 0, 1, 2, 3, 2);
        p33Var.m8491a("PM", 0, 2, 2, 2, 2, 2);
        p33Var.m8491a("PR", 2, 1, 2, 2, 4, 3);
        p33Var.m8491a("PS", 3, 3, 2, 2, 2, 2);
        p33Var.m8491a("PT", 0, 1, 1, 0, 2, 2);
        p33Var.m8491a("PW", 1, 2, 4, 1, 2, 2);
        p33Var.m8491a("PY", 2, 0, 3, 2, 2, 2);
        p33Var.m8491a("QA", 2, 3, 1, 2, 3, 2);
        p33Var.m8491a("RE", 1, 0, 2, 2, 2, 2);
        p33Var.m8491a("RO", 0, 1, 0, 1, 0, 2);
        p33Var.m8491a("RS", 1, 2, 0, 0, 2, 2);
        p33Var.m8491a("RU", 0, 1, 0, 1, 4, 2);
        p33Var.m8491a("RW", 3, 3, 3, 1, 2, 2);
        p33Var.m8491a("SA", 2, 2, 2, 1, 1, 2);
        p33Var.m8491a("SB", 4, 2, 3, 2, 2, 2);
        p33Var.m8491a("SC", 4, 2, 1, 3, 2, 2);
        p33Var.m8491a("SD", 4, 4, 4, 4, 2, 2);
        p33Var.m8491a("SE", 0, 0, 0, 0, 0, 2);
        p33Var.m8491a("SG", 1, 0, 1, 2, 3, 2);
        p33Var.m8491a("SH", 4, 2, 2, 2, 2, 2);
        p33Var.m8491a("SI", 0, 0, 0, 0, 2, 2);
        p33Var.m8491a("SJ", 2, 2, 2, 2, 2, 2);
        p33Var.m8491a("SK", 0, 1, 0, 0, 2, 2);
        p33Var.m8491a("SL", 4, 3, 4, 0, 2, 2);
        p33Var.m8491a("SM", 0, 2, 2, 2, 2, 2);
        p33Var.m8491a("SN", 4, 4, 4, 4, 2, 2);
        p33Var.m8491a("SO", 3, 3, 3, 4, 2, 2);
        p33Var.m8491a("SR", 3, 2, 2, 2, 2, 2);
        p33Var.m8491a("SS", 4, 4, 3, 3, 2, 2);
        p33Var.m8491a("ST", 2, 2, 1, 2, 2, 2);
        p33Var.m8491a("SV", 2, 1, 4, 3, 2, 2);
        p33Var.m8491a("SX", 2, 2, 1, 0, 2, 2);
        p33Var.m8491a("SY", 4, 3, 3, 2, 2, 2);
        p33Var.m8491a("SZ", 3, 3, 2, 4, 2, 2);
        p33Var.m8491a("TC", 2, 2, 2, 0, 2, 2);
        p33Var.m8491a("TD", 4, 3, 4, 4, 2, 2);
        p33Var.m8491a("TG", 3, 2, 2, 4, 2, 2);
        p33Var.m8491a("TH", 0, 3, 2, 3, 2, 2);
        p33Var.m8491a("TJ", 4, 4, 4, 4, 2, 2);
        p33Var.m8491a("TL", 4, 0, 4, 4, 2, 2);
        p33Var.m8491a("TM", 4, 2, 4, 3, 2, 2);
        p33Var.m8491a("TN", 2, 1, 1, 2, 2, 2);
        p33Var.m8491a("TO", 3, 3, 4, 3, 2, 2);
        p33Var.m8491a("TR", 1, 2, 1, 1, 2, 2);
        p33Var.m8491a("TT", 1, 4, 0, 1, 2, 2);
        p33Var.m8491a("TV", 3, 2, 2, 4, 2, 2);
        p33Var.m8491a("TW", 0, 0, 0, 0, 1, 0);
        p33Var.m8491a("TZ", 3, 3, 3, 2, 2, 2);
        p33Var.m8491a("UA", 0, 3, 1, 1, 2, 2);
        p33Var.m8491a("UG", 3, 2, 3, 3, 2, 2);
        p33Var.m8491a("US", 1, 1, 2, 2, 4, 2);
        p33Var.m8491a("UY", 2, 2, 1, 1, 2, 2);
        p33Var.m8491a("UZ", 2, 1, 3, 4, 2, 2);
        p33Var.m8491a("VC", 1, 2, 2, 2, 2, 2);
        p33Var.m8491a("VE", 4, 4, 4, 4, 2, 2);
        p33Var.m8491a("VG", 2, 2, 1, 1, 2, 2);
        p33Var.m8491a("VI", 1, 2, 1, 2, 2, 2);
        p33Var.m8491a("VN", 0, 1, 3, 4, 2, 2);
        p33Var.m8491a("VU", 4, 0, 3, 1, 2, 2);
        p33Var.m8491a("WF", 4, 2, 2, 4, 2, 2);
        p33Var.m8491a("WS", 3, 1, 3, 1, 2, 2);
        p33Var.m8491a("XK", 0, 1, 1, 0, 2, 2);
        p33Var.m8491a("YE", 4, 4, 4, 3, 2, 2);
        p33Var.m8491a("YT", 4, 2, 2, 3, 2, 2);
        p33Var.m8491a("ZA", 3, 3, 2, 1, 2, 2);
        p33Var.m8491a("ZM", 3, 2, 3, 3, 2, 2);
        p33Var.m8491a("ZW", 3, 2, 4, 3, 2, 2);
        f32055y = p33Var.m8490b();
        f32056z = o33.m8896u(6200000L, 3900000L, 2300000L, 1300000L, 620000L);
        f32049A = o33.m8896u(248000L, 160000L, 142000L, 127000L, 113000L);
        f32050B = o33.m8896u(2200000L, 1300000L, 950000L, 760000L, 520000L);
        f32051C = o33.m8896u(4400000L, 2300000L, 1500000L, 1100000L, 640000L);
        f32052D = o33.m8896u(10000000L, 7200000L, 5000000L, 2700000L, 1600000L);
        f32053E = o33.m8896u(2600000L, 2200000L, 2000000L, 1500000L, 470000L);
    }

    /* renamed from: d */
    public static synchronized tw3 m6696d(Context context) {
        tw3 tw3Var;
        Context applicationContext;
        synchronized (tw3.class) {
            if (f32054F == null) {
                if (context == null) {
                    applicationContext = null;
                } else {
                    applicationContext = context.getApplicationContext();
                }
                Context context2 = applicationContext;
                o33<Integer> m8037i = f32055y.m8037i(C5979lc.m9682x(context));
                if (m8037i.isEmpty()) {
                    m8037i = o33.m8895v(2, 2, 2, 2, 2, 2);
                }
                HashMap hashMap = new HashMap(8);
                hashMap.put(0, 1000000L);
                o33<Long> o33Var = f32056z;
                hashMap.put(2, o33Var.get(m8037i.get(0).intValue()));
                hashMap.put(3, f32049A.get(m8037i.get(1).intValue()));
                hashMap.put(4, f32050B.get(m8037i.get(2).intValue()));
                hashMap.put(5, f32051C.get(m8037i.get(3).intValue()));
                hashMap.put(10, f32052D.get(m8037i.get(4).intValue()));
                hashMap.put(9, f32053E.get(m8037i.get(5).intValue()));
                hashMap.put(7, o33Var.get(m8037i.get(0).intValue()));
                f32054F = new tw3(context2, hashMap, 2000, InterfaceC5940ka.f26353a, true, null);
            }
            tw3Var = f32054F;
        }
        return tw3Var;
    }

    /* renamed from: i */
    public final long m6691i(int i) {
        Long l = this.f32057a.get(Integer.valueOf(i));
        if (l == null) {
            l = this.f32057a.get(0);
        }
        if (l == null) {
            l = 1000000L;
        }
        return l.longValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ tw3(Context context, Context context2, Map<Integer, Long> map, int i, InterfaceC5940ka interfaceC5940ka, boolean z) {
        this.f32057a = s33.m7224b(context2);
        this.f32060k = i;
        if (context != null) {
            C6349vb m6193a = C6349vb.m6193a(context);
            int m6191c = m6193a.m6191c();
            this.f32065t = m6191c;
            this.f32068w = m6691i(m6191c);
            m6193a.m6192b(new InterfaceC6164qb(this) { // from class: r4.rw3

                /* renamed from: a */
                public final tw3 f30723a;

                {
                    this.f30723a = this;
                }

                @Override // p168r4.InterfaceC6164qb
                /* renamed from: h */
                public final void mo7312h(int i2) {
                    this.f30723a.m6695e(i2);
                }
            });
            return;
        }
        this.f32065t = 0;
        this.f32068w = m6691i(0);
    }
}
