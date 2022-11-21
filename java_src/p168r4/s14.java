package p168r4;

import java.util.Collections;
/* renamed from: r4.s14 */
/* loaded from: classes2.dex */
public final class s14 extends x14 {

    /* renamed from: e */
    public static final int[] f31216e = {5512, 11025, 22050, 44100};

    /* renamed from: b */
    public boolean f31217b;

    /* renamed from: c */
    public boolean f31218c;

    /* renamed from: d */
    public int f31219d;

    public s14(d14 d14Var) {
        super(d14Var);
    }

    @Override // p168r4.x14
    /* renamed from: a */
    public final boolean mo4931a(C6423xb c6423xb) {
        String str;
        if (!this.f31217b) {
            int m5397v = c6423xb.m5397v();
            int i = m5397v >> 4;
            this.f31219d = i;
            if (i == 2) {
                int i2 = f31216e[(m5397v >> 2) & 3];
                C5639c5 c5639c5 = new C5639c5();
                c5639c5.m12564n("audio/mpeg");
                c5639c5.m12610B(1);
                c5639c5.m12609C(i2);
                this.f33412a.mo4004f(c5639c5.m12603I());
                this.f31218c = true;
            } else if (i != 7 && i != 8) {
                if (i != 10) {
                    StringBuilder sb = new StringBuilder(39);
                    sb.append("Audio format not supported: ");
                    sb.append(i);
                    throw new w14(sb.toString());
                }
            } else {
                if (i == 7) {
                    str = "audio/g711-alaw";
                } else {
                    str = "audio/g711-mlaw";
                }
                C5639c5 c5639c52 = new C5639c5();
                c5639c52.m12564n(str);
                c5639c52.m12610B(1);
                c5639c52.m12609C(8000);
                this.f33412a.mo4004f(c5639c52.m12603I());
                this.f31218c = true;
            }
            this.f31217b = true;
        } else {
            c6423xb.m5400s(1);
        }
        return true;
    }

    @Override // p168r4.x14
    /* renamed from: b */
    public final boolean mo4930b(C6423xb c6423xb, long j) {
        if (this.f31219d == 2) {
            int m5407l = c6423xb.m5407l();
            this.f33412a.mo4009a(c6423xb, m5407l);
            this.f33412a.mo4005e(j, 1, m5407l, 0, null);
            return true;
        }
        int m5397v = c6423xb.m5397v();
        if (m5397v == 0 && !this.f31218c) {
            int m5407l2 = c6423xb.m5407l();
            byte[] bArr = new byte[m5407l2];
            c6423xb.m5398u(bArr, 0, m5407l2);
            az3 m12253a = cz3.m12253a(bArr);
            C5639c5 c5639c5 = new C5639c5();
            c5639c5.m12564n("audio/mp4a-latm");
            c5639c5.m12567k(m12253a.f20785c);
            c5639c5.m12610B(m12253a.f20784b);
            c5639c5.m12609C(m12253a.f20783a);
            c5639c5.m12562p(Collections.singletonList(bArr));
            this.f33412a.mo4004f(c5639c5.m12603I());
            this.f31218c = true;
            return false;
        } else if (this.f31219d == 10 && m5397v != 1) {
            return false;
        } else {
            int m5407l3 = c6423xb.m5407l();
            this.f33412a.mo4009a(c6423xb, m5407l3);
            this.f33412a.mo4005e(j, 1, m5407l3, 0, null);
            return true;
        }
    }
}
