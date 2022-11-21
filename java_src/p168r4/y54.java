package p168r4;

import android.util.Log;
/* renamed from: r4.y54 */
/* loaded from: classes2.dex */
public final class y54 implements m54 {

    /* renamed from: b */
    public d14 f33979b;

    /* renamed from: c */
    public boolean f33980c;

    /* renamed from: e */
    public int f33982e;

    /* renamed from: f */
    public int f33983f;

    /* renamed from: a */
    public final C6423xb f33978a = new C6423xb(10);

    /* renamed from: d */
    public long f33981d = -9223372036854775807L;

    @Override // p168r4.m54
    /* renamed from: d */
    public final void mo4422d(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f33980c = true;
        if (j != -9223372036854775807L) {
            this.f33981d = j;
        }
        this.f33982e = 0;
        this.f33983f = 0;
    }

    @Override // p168r4.m54
    public final void zza() {
        this.f33980c = false;
        this.f33981d = -9223372036854775807L;
    }

    @Override // p168r4.m54
    /* renamed from: b */
    public final void mo4424b(C6423xb c6423xb) {
        C5903ja.m10370e(this.f33979b);
        if (!this.f33980c) {
            return;
        }
        int m5407l = c6423xb.m5407l();
        int i = this.f33983f;
        if (i < 10) {
            int min = Math.min(m5407l, 10 - i);
            System.arraycopy(c6423xb.m5402q(), c6423xb.m5404o(), this.f33978a.m5402q(), this.f33983f, min);
            if (this.f33983f + min == 10) {
                this.f33978a.m5403p(0);
                if (this.f33978a.m5397v() == 73 && this.f33978a.m5397v() == 68 && this.f33978a.m5397v() == 51) {
                    this.f33978a.m5400s(3);
                    this.f33982e = this.f33978a.m5418a() + 10;
                } else {
                    Log.w("Id3Reader", "Discarding invalid ID3 tag");
                    this.f33980c = false;
                    return;
                }
            }
        }
        int min2 = Math.min(m5407l, this.f33982e - this.f33983f);
        b14.m12888b(this.f33979b, c6423xb, min2);
        this.f33983f += min2;
    }

    @Override // p168r4.m54
    /* renamed from: c */
    public final void mo4423c() {
        int i;
        C5903ja.m10370e(this.f33979b);
        if (this.f33980c && (i = this.f33982e) != 0 && this.f33983f == i) {
            long j = this.f33981d;
            if (j != -9223372036854775807L) {
                this.f33979b.mo4005e(j, 1, i, 0, null);
            }
            this.f33980c = false;
        }
    }

    @Override // p168r4.m54
    /* renamed from: a */
    public final void mo4425a(d04 d04Var, z64 z64Var) {
        z64Var.m4416a();
        d14 mo10795r = d04Var.mo10795r(z64Var.m4415b(), 5);
        this.f33979b = mo10795r;
        C5639c5 c5639c5 = new C5639c5();
        c5639c5.m12579d(z64Var.m4414c());
        c5639c5.m12564n("application/id3");
        mo10795r.mo4004f(c5639c5.m12603I());
    }
}
