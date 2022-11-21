package p168r4;

import java.util.ArrayList;
import java.util.Arrays;
/* renamed from: r4.v54 */
/* loaded from: classes2.dex */
public final class v54 implements m54 {

    /* renamed from: a */
    public final o64 f32590a;

    /* renamed from: e */
    public long f32594e;

    /* renamed from: g */
    public String f32596g;

    /* renamed from: h */
    public d14 f32597h;

    /* renamed from: i */
    public u54 f32598i;

    /* renamed from: j */
    public boolean f32599j;

    /* renamed from: l */
    public boolean f32601l;

    /* renamed from: f */
    public final boolean[] f32595f = new boolean[3];

    /* renamed from: b */
    public final b64 f32591b = new b64(7, 128);

    /* renamed from: c */
    public final b64 f32592c = new b64(8, 128);

    /* renamed from: d */
    public final b64 f32593d = new b64(6, 128);

    /* renamed from: k */
    public long f32600k = -9223372036854775807L;

    /* renamed from: m */
    public final C6423xb f32602m = new C6423xb();

    @Override // p168r4.m54
    /* renamed from: c */
    public final void mo4423c() {
    }

    @Override // p168r4.m54
    /* renamed from: d */
    public final void mo4422d(long j, int i) {
        if (j != -9223372036854775807L) {
            this.f32600k = j;
        }
        this.f32601l |= (i & 2) != 0;
    }

    @Override // p168r4.m54
    /* renamed from: b */
    public final void mo4424b(C6423xb c6423xb) {
        int i;
        C5903ja.m10370e(this.f32597h);
        int i2 = C5979lc.f27164a;
        int m5404o = c6423xb.m5404o();
        int m5406m = c6423xb.m5406m();
        byte[] m5402q = c6423xb.m5402q();
        this.f32594e += c6423xb.m5407l();
        b14.m12888b(this.f32597h, c6423xb, c6423xb.m5407l());
        while (true) {
            int m9131d = C6053nb.m9131d(m5402q, m5404o, m5406m, this.f32595f);
            if (m9131d != m5406m) {
                int i3 = m9131d + 3;
                int i4 = m5402q[i3] & 31;
                int i5 = m9131d - m5404o;
                if (i5 > 0) {
                    m6227e(m5402q, m5404o, m9131d);
                }
                int i6 = m5406m - m9131d;
                long j = this.f32594e - i6;
                if (i5 < 0) {
                    i = -i5;
                } else {
                    i = 0;
                }
                long j2 = this.f32600k;
                if (!this.f32599j) {
                    this.f32591b.m12862e(i);
                    this.f32592c.m12862e(i);
                    if (!this.f32599j) {
                        if (this.f32591b.m12865b() && this.f32592c.m12865b()) {
                            ArrayList arrayList = new ArrayList();
                            b64 b64Var = this.f32591b;
                            arrayList.add(Arrays.copyOf(b64Var.f20878d, b64Var.f20879e));
                            b64 b64Var2 = this.f32592c;
                            arrayList.add(Arrays.copyOf(b64Var2.f20878d, b64Var2.f20879e));
                            b64 b64Var3 = this.f32591b;
                            C6015mb m9133b = C6053nb.m9133b(b64Var3.f20878d, 3, b64Var3.f20879e);
                            b64 b64Var4 = this.f32592c;
                            C5978lb m9132c = C6053nb.m9132c(b64Var4.f20878d, 3, b64Var4.f20879e);
                            String m9760a = C5977la.m9760a(m9133b.f27561a, m9133b.f27562b, m9133b.f27563c);
                            d14 d14Var = this.f32597h;
                            C5639c5 c5639c5 = new C5639c5();
                            c5639c5.m12579d(this.f32596g);
                            c5639c5.m12564n("video/avc");
                            c5639c5.m12567k(m9760a);
                            c5639c5.m12559s(m9133b.f27565e);
                            c5639c5.m12558t(m9133b.f27566f);
                            c5639c5.m12555w(m9133b.f27567g);
                            c5639c5.m12562p(arrayList);
                            d14Var.mo4004f(c5639c5.m12603I());
                            this.f32599j = true;
                            this.f32598i.m6634a(m9133b);
                            this.f32598i.m6633b(m9132c);
                            this.f32591b.m12866a();
                            this.f32592c.m12866a();
                        }
                    } else if (this.f32591b.m12865b()) {
                        b64 b64Var5 = this.f32591b;
                        this.f32598i.m6634a(C6053nb.m9133b(b64Var5.f20878d, 3, b64Var5.f20879e));
                        this.f32591b.m12866a();
                    } else if (this.f32592c.m12865b()) {
                        b64 b64Var6 = this.f32592c;
                        this.f32598i.m6633b(C6053nb.m9132c(b64Var6.f20878d, 3, b64Var6.f20879e));
                        this.f32592c.m12866a();
                    }
                }
                if (this.f32593d.m12862e(i)) {
                    b64 b64Var7 = this.f32593d;
                    this.f32602m.m5409j(this.f32593d.f20878d, C6053nb.m9134a(b64Var7.f20878d, b64Var7.f20879e));
                    this.f32602m.m5403p(4);
                    this.f32590a.m8873b(j2, this.f32602m);
                }
                if (this.f32598i.m6630e(j, i6, this.f32599j, this.f32601l)) {
                    this.f32601l = false;
                }
                long j3 = this.f32600k;
                if (!this.f32599j) {
                    this.f32591b.m12864c(i4);
                    this.f32592c.m12864c(i4);
                }
                this.f32593d.m12864c(i4);
                this.f32598i.m6631d(j, i4, j3);
                m5404o = i3;
            } else {
                m6227e(m5402q, m5404o, m5406m);
                return;
            }
        }
    }

    /* renamed from: e */
    public final void m6227e(byte[] bArr, int i, int i2) {
        if (!this.f32599j) {
            this.f32591b.m12863d(bArr, i, i2);
            this.f32592c.m12863d(bArr, i, i2);
        }
        this.f32593d.m12863d(bArr, i, i2);
    }

    @Override // p168r4.m54
    public final void zza() {
        this.f32594e = 0L;
        this.f32601l = false;
        this.f32600k = -9223372036854775807L;
        C6053nb.m9130e(this.f32595f);
        this.f32591b.m12866a();
        this.f32592c.m12866a();
        this.f32593d.m12866a();
        u54 u54Var = this.f32598i;
        if (u54Var != null) {
            u54Var.m6632c();
        }
    }

    public v54(o64 o64Var, boolean z, boolean z2) {
        this.f32590a = o64Var;
    }

    @Override // p168r4.m54
    /* renamed from: a */
    public final void mo4425a(d04 d04Var, z64 z64Var) {
        z64Var.m4416a();
        this.f32596g = z64Var.m4414c();
        d14 mo10795r = d04Var.mo10795r(z64Var.m4415b(), 2);
        this.f32597h = mo10795r;
        this.f32598i = new u54(mo10795r, false, false);
        this.f32590a.m8874a(d04Var, z64Var);
    }
}
