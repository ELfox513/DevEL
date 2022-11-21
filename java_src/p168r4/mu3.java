package p168r4;

import android.net.Uri;
/* renamed from: r4.mu3 */
/* loaded from: classes2.dex */
public final class mu3 extends so3 implements du3 {

    /* renamed from: g */
    public final C6306u5 f27888g;

    /* renamed from: h */
    public final C6269t5 f27889h;

    /* renamed from: i */
    public final InterfaceC5974l7 f27890i;

    /* renamed from: j */
    public final wt3 f27891j;

    /* renamed from: k */
    public final ut2 f27892k;

    /* renamed from: l */
    public final int f27893l;

    /* renamed from: m */
    public boolean f27894m;

    /* renamed from: n */
    public long f27895n;

    /* renamed from: o */
    public boolean f27896o;

    /* renamed from: p */
    public boolean f27897p;

    /* renamed from: q */
    public InterfaceC5844ho f27898q;

    /* renamed from: r */
    public final ww3 f27899r;

    @Override // p168r4.ht3
    /* renamed from: b */
    public final et3 mo6013b(ft3 ft3Var, qw3 qw3Var, long j) {
        InterfaceC6087o8 zza = this.f27890i.zza();
        InterfaceC5844ho interfaceC5844ho = this.f27898q;
        if (interfaceC5844ho != null) {
            zza.mo5984c(interfaceC5844ho);
        }
        Uri uri = this.f27889h.f31683a;
        xt3 zza2 = this.f27891j.zza();
        ut2 ut2Var = this.f27892k;
        po2 m7078w = m7078w(ft3Var);
        ww3 ww3Var = this.f27899r;
        ot3 m7080s = m7080s(ft3Var);
        String str = this.f27889h.f31686d;
        return new hu3(uri, zza, zza2, ut2Var, m7078w, ww3Var, m7080s, this, qw3Var, null, this.f27893l, null);
    }

    @Override // p168r4.ht3
    /* renamed from: h */
    public final void mo6012h(et3 et3Var) {
        ((hu3) et3Var).m10803T();
    }

    @Override // p168r4.du3
    /* renamed from: i */
    public final void mo9265i(long j, boolean z, boolean z2) {
        if (j == -9223372036854775807L) {
            j = this.f27895n;
        }
        if (!this.f27894m && this.f27895n == j && this.f27896o == z && this.f27897p == z2) {
            return;
        }
        this.f27895n = j;
        this.f27896o = z;
        this.f27897p = z2;
        this.f27894m = false;
        m9264z();
    }

    @Override // p168r4.so3
    /* renamed from: m */
    public final void mo6011m(InterfaceC5844ho interfaceC5844ho) {
        this.f27898q = interfaceC5844ho;
        m9264z();
    }

    @Override // p168r4.so3
    /* renamed from: p */
    public final void mo6010p() {
    }

    @Override // p168r4.ht3
    /* renamed from: t */
    public final void mo6009t() {
    }

    @Override // p168r4.ht3
    /* renamed from: v */
    public final C6306u5 mo6008v() {
        return this.f27888g;
    }

    /* renamed from: z */
    public final void m9264z() {
        C6195r5 c6195r5;
        AbstractC5717e8 abstractC5717e8;
        long j = this.f27895n;
        boolean z = this.f27896o;
        boolean z2 = this.f27897p;
        C6306u5 c6306u5 = this.f27888g;
        if (z2) {
            c6195r5 = c6306u5.f32177c;
        } else {
            c6195r5 = null;
        }
        zu3 zu3Var = new zu3(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j, 0L, 0L, z, false, false, null, c6306u5, c6195r5);
        if (this.f27894m) {
            abstractC5717e8 = new iu3(this, zu3Var);
        } else {
            abstractC5717e8 = zu3Var;
        }
        m7082q(abstractC5717e8);
    }

    public /* synthetic */ mu3(C6306u5 c6306u5, InterfaceC5974l7 interfaceC5974l7, wt3 wt3Var, ut2 ut2Var, ww3 ww3Var, int i, lu3 lu3Var, byte[] bArr) {
        C6269t5 c6269t5 = c6306u5.f32176b;
        c6269t5.getClass();
        this.f27889h = c6269t5;
        this.f27888g = c6306u5;
        this.f27890i = interfaceC5974l7;
        this.f27891j = wt3Var;
        this.f27892k = ut2Var;
        this.f27899r = ww3Var;
        this.f27893l = i;
        this.f27894m = true;
        this.f27895n = -9223372036854775807L;
    }
}
