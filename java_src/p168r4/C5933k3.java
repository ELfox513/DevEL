package p168r4;

import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.k3 */
/* loaded from: classes2.dex */
public final class C5933k3 implements InterfaceC5794gb {

    /* renamed from: a */
    public final C6497zb f26266a;

    /* renamed from: b */
    public final InterfaceC5896j3 f26267b;

    /* renamed from: d */
    public InterfaceC5790g7 f26268d;

    /* renamed from: k */
    public InterfaceC5794gb f26269k;

    /* renamed from: p */
    public boolean f26270p = true;

    /* renamed from: q */
    public boolean f26271q;

    public C5933k3(InterfaceC5896j3 interfaceC5896j3, InterfaceC5940ka interfaceC5940ka) {
        this.f26267b = interfaceC5896j3;
        this.f26266a = new C6497zb(interfaceC5940ka);
    }

    @Override // p168r4.InterfaceC5794gb
    /* renamed from: B */
    public final long mo4346B() {
        throw null;
    }

    /* renamed from: a */
    public final void m10108a() {
        this.f26271q = true;
        this.f26266a.m4345a();
    }

    /* renamed from: b */
    public final void m10107b() {
        this.f26271q = false;
        this.f26266a.m4344b();
    }

    /* renamed from: d */
    public final void m10106d(long j) {
        this.f26266a.m4342d(j);
    }

    /* renamed from: f */
    public final void m10104f(InterfaceC5790g7 interfaceC5790g7) {
        if (interfaceC5790g7 == this.f26268d) {
            this.f26269k = null;
            this.f26268d = null;
            this.f26270p = true;
        }
    }

    @Override // p168r4.InterfaceC5794gb
    /* renamed from: z */
    public final C6159q6 mo4341z() {
        InterfaceC5794gb interfaceC5794gb = this.f26269k;
        return interfaceC5794gb != null ? interfaceC5794gb.mo4341z() : this.f26266a.mo4341z();
    }

    @Override // p168r4.InterfaceC5794gb
    /* renamed from: c */
    public final void mo4343c(C6159q6 c6159q6) {
        InterfaceC5794gb interfaceC5794gb = this.f26269k;
        if (interfaceC5794gb != null) {
            interfaceC5794gb.mo4343c(c6159q6);
            c6159q6 = this.f26269k.mo4341z();
        }
        this.f26266a.mo4343c(c6159q6);
    }

    /* renamed from: g */
    public final long m10103g(boolean z) {
        InterfaceC5790g7 interfaceC5790g7 = this.f26268d;
        if (interfaceC5790g7 != null && !interfaceC5790g7.mo10710K() && (this.f26268d.mo10709O() || (!z && !this.f26268d.mo11269H()))) {
            InterfaceC5794gb interfaceC5794gb = this.f26269k;
            interfaceC5794gb.getClass();
            long mo4346B = interfaceC5794gb.mo4346B();
            if (this.f26270p) {
                if (mo4346B < this.f26266a.mo4346B()) {
                    this.f26266a.m4344b();
                } else {
                    this.f26270p = false;
                    if (this.f26271q) {
                        this.f26266a.m4345a();
                    }
                }
            }
            this.f26266a.m4342d(mo4346B);
            C6159q6 mo4341z = interfaceC5794gb.mo4341z();
            if (!mo4341z.equals(this.f26266a.mo4341z())) {
                this.f26266a.mo4343c(mo4341z);
                this.f26267b.mo4874b(mo4341z);
            }
        } else {
            this.f26270p = true;
            if (this.f26271q) {
                this.f26266a.m4345a();
            }
        }
        if (this.f26270p) {
            return this.f26266a.mo4346B();
        }
        InterfaceC5794gb interfaceC5794gb2 = this.f26269k;
        interfaceC5794gb2.getClass();
        return interfaceC5794gb2.mo4346B();
    }

    /* renamed from: e */
    public final void m10105e(InterfaceC5790g7 interfaceC5790g7) {
        InterfaceC5794gb interfaceC5794gb;
        InterfaceC5794gb mo11257j = interfaceC5790g7.mo11257j();
        if (mo11257j != null && mo11257j != (interfaceC5794gb = this.f26269k)) {
            if (interfaceC5794gb == null) {
                this.f26269k = mo11257j;
                this.f26268d = interfaceC5790g7;
                mo11257j.mo4343c(this.f26266a.mo4341z());
                return;
            }
            throw C6082o3.m8908c(new IllegalStateException("Multiple renderer media clocks enabled."), CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
        }
    }
}
