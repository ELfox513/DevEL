package p168r4;

import android.util.Log;
/* renamed from: r4.k34 */
/* loaded from: classes2.dex */
public final class k34 implements h34 {

    /* renamed from: a */
    public final int f26276a;

    /* renamed from: b */
    public final int f26277b;

    /* renamed from: c */
    public final C6423xb f26278c;

    @Override // p168r4.h34
    /* renamed from: a */
    public final int mo9796a() {
        return this.f26276a;
    }

    @Override // p168r4.h34
    /* renamed from: b */
    public final int mo9795b() {
        int i = this.f26276a;
        return i == -1 ? this.f26278c.m5417b() : i;
    }

    @Override // p168r4.h34
    public final int zza() {
        return this.f26277b;
    }

    public k34(e34 e34Var, C5713e5 c5713e5) {
        C6423xb c6423xb = e34Var.f22784b;
        this.f26278c = c6423xb;
        c6423xb.m5403p(12);
        int m5417b = c6423xb.m5417b();
        if ("audio/raw".equals(c5713e5.f22814l)) {
            int m9687s = C5979lc.m9687s(c5713e5.f22797A, c5713e5.f22827y);
            if (m5417b == 0 || m5417b % m9687s != 0) {
                StringBuilder sb = new StringBuilder(88);
                sb.append("Audio sample size mismatch. stsd sample size: ");
                sb.append(m9687s);
                sb.append(", stsz sample size: ");
                sb.append(m5417b);
                Log.w("AtomParsers", sb.toString());
                m5417b = m9687s;
            }
        }
        this.f26276a = m5417b == 0 ? -1 : m5417b;
        this.f26277b = c6423xb.m5417b();
    }
}
