package p168r4;

import java.util.List;
/* renamed from: r4.sl3 */
/* loaded from: classes2.dex */
public final class sl3 implements lo3 {

    /* renamed from: a */
    public final rl3 f31406a;

    /* renamed from: b */
    public int f31407b;

    /* renamed from: c */
    public int f31408c;

    /* renamed from: d */
    public int f31409d = 0;

    public sl3(rl3 rl3Var) {
        zm3.m4179b(rl3Var, "input");
        this.f31406a = rl3Var;
        rl3Var.f30628c = this;
    }

    /* renamed from: S */
    public static final void m7127S(int i) {
        if ((i & 3) != 0) {
            throw bn3.m12733k();
        }
    }

    /* renamed from: T */
    public static final void m7126T(int i) {
        if ((i & 7) != 0) {
            throw bn3.m12733k();
        }
    }

    /* renamed from: U */
    public static sl3 m7125U(rl3 rl3Var) {
        sl3 sl3Var = rl3Var.f30628c;
        return sl3Var != null ? sl3Var : new sl3(rl3Var);
    }

    @Override // p168r4.lo3
    /* renamed from: E */
    public final int mo7141E() {
        m7131O(0);
        return this.f31406a.mo7439y();
    }

    @Override // p168r4.lo3
    /* renamed from: K */
    public final long mo7135K() {
        m7131O(0);
        return this.f31406a.mo7438z();
    }

    /* renamed from: O */
    public final void m7131O(int i) {
        if ((this.f31407b & 7) != i) {
            throw bn3.m12735i();
        }
    }

    /* renamed from: R */
    public final void m7128R(int i) {
        if (this.f31406a.mo7461c() != i) {
            throw bn3.m12740d();
        }
    }

    @Override // p168r4.lo3
    /* renamed from: a */
    public final int mo7124a() {
        int i = this.f31409d;
        if (i != 0) {
            this.f31407b = i;
            this.f31409d = 0;
        } else {
            i = this.f31406a.mo7457g();
            this.f31407b = i;
        }
        if (i == 0 || i == this.f31408c) {
            return Integer.MAX_VALUE;
        }
        return i >>> 3;
    }

    @Override // p168r4.lo3
    /* renamed from: b */
    public final int mo7123b() {
        return this.f31407b;
    }

    @Override // p168r4.lo3
    /* renamed from: c */
    public final double mo7122c() {
        m7131O(1);
        return this.f31406a.mo7454j();
    }

    @Override // p168r4.lo3
    /* renamed from: d */
    public final float mo7121d() {
        m7131O(5);
        return this.f31406a.mo7453k();
    }

    @Override // p168r4.lo3
    /* renamed from: f */
    public final long mo7119f() {
        m7131O(0);
        return this.f31406a.mo7451m();
    }

    @Override // p168r4.lo3
    /* renamed from: g */
    public final long mo7118g() {
        m7131O(0);
        return this.f31406a.mo7452l();
    }

    @Override // p168r4.lo3
    /* renamed from: h */
    public final long mo7117h() {
        m7131O(1);
        return this.f31406a.mo7449o();
    }

    @Override // p168r4.lo3
    /* renamed from: i */
    public final int mo7116i() {
        m7131O(5);
        return this.f31406a.mo7448p();
    }

    @Override // p168r4.lo3
    /* renamed from: j */
    public final int mo7115j() {
        m7131O(0);
        return this.f31406a.mo7450n();
    }

    @Override // p168r4.lo3
    /* renamed from: k */
    public final boolean mo7114k() {
        m7131O(0);
        return this.f31406a.mo7447q();
    }

    @Override // p168r4.lo3
    /* renamed from: l */
    public final String mo7113l() {
        m7131O(2);
        return this.f31406a.mo7446r();
    }

    @Override // p168r4.lo3
    /* renamed from: m */
    public final ll3 mo7112m() {
        m7131O(2);
        return this.f31406a.mo7444t();
    }

    @Override // p168r4.lo3
    /* renamed from: n */
    public final int mo7111n() {
        m7131O(5);
        return this.f31406a.mo7441w();
    }

    @Override // p168r4.lo3
    /* renamed from: p */
    public final String mo7109p() {
        m7131O(2);
        return this.f31406a.mo7445s();
    }

    @Override // p168r4.lo3
    /* renamed from: r */
    public final int mo7107r() {
        m7131O(0);
        return this.f31406a.mo7442v();
    }

    @Override // p168r4.lo3
    /* renamed from: t */
    public final long mo7105t() {
        m7131O(1);
        return this.f31406a.mo7440x();
    }

    @Override // p168r4.lo3
    /* renamed from: v */
    public final <T> T mo7103v(ro3<T> ro3Var, bm3 bm3Var) {
        m7131O(2);
        return (T) m7130P(ro3Var, bm3Var);
    }

    @Override // p168r4.lo3
    /* renamed from: w */
    public final int mo7102w() {
        m7131O(0);
        return this.f31406a.mo7443u();
    }

    @Override // p168r4.lo3
    /* renamed from: z */
    public final <T> T mo7099z(ro3<T> ro3Var, bm3 bm3Var) {
        m7131O(3);
        return (T) m7129Q(ro3Var, bm3Var);
    }

    @Override // p168r4.lo3
    /* renamed from: A */
    public final void mo7145A(List<Long> list) {
        int mo7457g;
        int mo7457g2;
        if (list instanceof ln3) {
            ln3 ln3Var = (ln3) list;
            int i = this.f31407b & 7;
            if (i != 0) {
                if (i == 2) {
                    int mo7461c = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                    do {
                        ln3Var.m9605i(this.f31406a.mo7438z());
                    } while (this.f31406a.mo7461c() < mo7461c);
                    m7128R(mo7461c);
                    return;
                }
                throw bn3.m12735i();
            }
            do {
                ln3Var.m9605i(this.f31406a.mo7438z());
                if (this.f31406a.mo7462b()) {
                    return;
                }
                mo7457g2 = this.f31406a.mo7457g();
            } while (mo7457g2 == this.f31407b);
            this.f31409d = mo7457g2;
            return;
        }
        int i2 = this.f31407b & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int mo7461c2 = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                do {
                    list.add(Long.valueOf(this.f31406a.mo7438z()));
                } while (this.f31406a.mo7461c() < mo7461c2);
                m7128R(mo7461c2);
                return;
            }
            throw bn3.m12735i();
        }
        do {
            list.add(Long.valueOf(this.f31406a.mo7438z()));
            if (this.f31406a.mo7462b()) {
                return;
            }
            mo7457g = this.f31406a.mo7457g();
        } while (mo7457g == this.f31407b);
        this.f31409d = mo7457g;
    }

    @Override // p168r4.lo3
    /* renamed from: B */
    public final void mo7144B(List<Long> list) {
        int mo7457g;
        int mo7457g2;
        if (list instanceof ln3) {
            ln3 ln3Var = (ln3) list;
            int i = this.f31407b & 7;
            if (i != 0) {
                if (i == 2) {
                    int mo7461c = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                    do {
                        ln3Var.m9605i(this.f31406a.mo7452l());
                    } while (this.f31406a.mo7461c() < mo7461c);
                    m7128R(mo7461c);
                    return;
                }
                throw bn3.m12735i();
            }
            do {
                ln3Var.m9605i(this.f31406a.mo7452l());
                if (this.f31406a.mo7462b()) {
                    return;
                }
                mo7457g2 = this.f31406a.mo7457g();
            } while (mo7457g2 == this.f31407b);
            this.f31409d = mo7457g2;
            return;
        }
        int i2 = this.f31407b & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int mo7461c2 = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                do {
                    list.add(Long.valueOf(this.f31406a.mo7452l()));
                } while (this.f31406a.mo7461c() < mo7461c2);
                m7128R(mo7461c2);
                return;
            }
            throw bn3.m12735i();
        }
        do {
            list.add(Long.valueOf(this.f31406a.mo7452l()));
            if (this.f31406a.mo7462b()) {
                return;
            }
            mo7457g = this.f31406a.mo7457g();
        } while (mo7457g == this.f31407b);
        this.f31409d = mo7457g;
    }

    @Override // p168r4.lo3
    /* renamed from: C */
    public final void mo7143C(List<Integer> list) {
        int mo7457g;
        int mo7457g2;
        if (list instanceof qm3) {
            qm3 qm3Var = (qm3) list;
            int i = this.f31407b & 7;
            if (i != 0) {
                if (i == 2) {
                    int mo7461c = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                    do {
                        qm3Var.mo6483Y(this.f31406a.mo7443u());
                    } while (this.f31406a.mo7461c() < mo7461c);
                    m7128R(mo7461c);
                    return;
                }
                throw bn3.m12735i();
            }
            do {
                qm3Var.mo6483Y(this.f31406a.mo7443u());
                if (this.f31406a.mo7462b()) {
                    return;
                }
                mo7457g2 = this.f31406a.mo7457g();
            } while (mo7457g2 == this.f31407b);
            this.f31409d = mo7457g2;
            return;
        }
        int i2 = this.f31407b & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int mo7461c2 = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                do {
                    list.add(Integer.valueOf(this.f31406a.mo7443u()));
                } while (this.f31406a.mo7461c() < mo7461c2);
                m7128R(mo7461c2);
                return;
            }
            throw bn3.m12735i();
        }
        do {
            list.add(Integer.valueOf(this.f31406a.mo7443u()));
            if (this.f31406a.mo7462b()) {
                return;
            }
            mo7457g = this.f31406a.mo7457g();
        } while (mo7457g == this.f31407b);
        this.f31409d = mo7457g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p168r4.lo3
    /* renamed from: D */
    public final <T> void mo7142D(List<T> list, ro3<T> ro3Var, bm3 bm3Var) {
        int mo7457g;
        int i = this.f31407b;
        if ((i & 7) == 2) {
            do {
                list.add(m7130P(ro3Var, bm3Var));
                if (!this.f31406a.mo7462b() && this.f31409d == 0) {
                    mo7457g = this.f31406a.mo7457g();
                } else {
                    return;
                }
            } while (mo7457g == i);
            this.f31409d = mo7457g;
            return;
        }
        throw bn3.m12735i();
    }

    @Override // p168r4.lo3
    /* renamed from: F */
    public final void mo7140F(List<Long> list) {
        int mo7457g;
        int mo7457g2;
        if (list instanceof ln3) {
            ln3 ln3Var = (ln3) list;
            int i = this.f31407b & 7;
            if (i != 0) {
                if (i == 2) {
                    int mo7461c = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                    do {
                        ln3Var.m9605i(this.f31406a.mo7451m());
                    } while (this.f31406a.mo7461c() < mo7461c);
                    m7128R(mo7461c);
                    return;
                }
                throw bn3.m12735i();
            }
            do {
                ln3Var.m9605i(this.f31406a.mo7451m());
                if (this.f31406a.mo7462b()) {
                    return;
                }
                mo7457g2 = this.f31406a.mo7457g();
            } while (mo7457g2 == this.f31407b);
            this.f31409d = mo7457g2;
            return;
        }
        int i2 = this.f31407b & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int mo7461c2 = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                do {
                    list.add(Long.valueOf(this.f31406a.mo7451m()));
                } while (this.f31406a.mo7461c() < mo7461c2);
                m7128R(mo7461c2);
                return;
            }
            throw bn3.m12735i();
        }
        do {
            list.add(Long.valueOf(this.f31406a.mo7451m()));
            if (this.f31406a.mo7462b()) {
                return;
            }
            mo7457g = this.f31406a.mo7457g();
        } while (mo7457g == this.f31407b);
        this.f31409d = mo7457g;
    }

    @Override // p168r4.lo3
    /* renamed from: G */
    public final void mo7139G(List<ll3> list) {
        int mo7457g;
        if ((this.f31407b & 7) == 2) {
            do {
                list.add(mo7112m());
                if (this.f31406a.mo7462b()) {
                    return;
                }
                mo7457g = this.f31406a.mo7457g();
            } while (mo7457g == this.f31407b);
            this.f31409d = mo7457g;
            return;
        }
        throw bn3.m12735i();
    }

    @Override // p168r4.lo3
    /* renamed from: H */
    public final void mo7138H(List<Integer> list) {
        int mo7457g;
        int mo7457g2;
        if (list instanceof qm3) {
            qm3 qm3Var = (qm3) list;
            int i = this.f31407b & 7;
            if (i != 2) {
                if (i == 5) {
                    do {
                        qm3Var.mo6483Y(this.f31406a.mo7441w());
                        if (this.f31406a.mo7462b()) {
                            return;
                        }
                        mo7457g2 = this.f31406a.mo7457g();
                    } while (mo7457g2 == this.f31407b);
                    this.f31409d = mo7457g2;
                    return;
                }
                throw bn3.m12735i();
            }
            int mo7443u = this.f31406a.mo7443u();
            m7127S(mo7443u);
            int mo7461c = this.f31406a.mo7461c() + mo7443u;
            do {
                qm3Var.mo6483Y(this.f31406a.mo7441w());
            } while (this.f31406a.mo7461c() < mo7461c);
            return;
        }
        int i2 = this.f31407b & 7;
        if (i2 != 2) {
            if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f31406a.mo7441w()));
                    if (this.f31406a.mo7462b()) {
                        return;
                    }
                    mo7457g = this.f31406a.mo7457g();
                } while (mo7457g == this.f31407b);
                this.f31409d = mo7457g;
                return;
            }
            throw bn3.m12735i();
        }
        int mo7443u2 = this.f31406a.mo7443u();
        m7127S(mo7443u2);
        int mo7461c2 = this.f31406a.mo7461c() + mo7443u2;
        do {
            list.add(Integer.valueOf(this.f31406a.mo7441w()));
        } while (this.f31406a.mo7461c() < mo7461c2);
    }

    @Override // p168r4.lo3
    /* renamed from: I */
    public final void mo7137I(List<Long> list) {
        int mo7457g;
        int mo7457g2;
        if (list instanceof ln3) {
            ln3 ln3Var = (ln3) list;
            int i = this.f31407b & 7;
            if (i != 1) {
                if (i == 2) {
                    int mo7443u = this.f31406a.mo7443u();
                    m7126T(mo7443u);
                    int mo7461c = this.f31406a.mo7461c() + mo7443u;
                    do {
                        ln3Var.m9605i(this.f31406a.mo7449o());
                    } while (this.f31406a.mo7461c() < mo7461c);
                    return;
                }
                throw bn3.m12735i();
            }
            do {
                ln3Var.m9605i(this.f31406a.mo7449o());
                if (this.f31406a.mo7462b()) {
                    return;
                }
                mo7457g2 = this.f31406a.mo7457g();
            } while (mo7457g2 == this.f31407b);
            this.f31409d = mo7457g2;
            return;
        }
        int i2 = this.f31407b & 7;
        if (i2 != 1) {
            if (i2 == 2) {
                int mo7443u2 = this.f31406a.mo7443u();
                m7126T(mo7443u2);
                int mo7461c2 = this.f31406a.mo7461c() + mo7443u2;
                do {
                    list.add(Long.valueOf(this.f31406a.mo7449o()));
                } while (this.f31406a.mo7461c() < mo7461c2);
                return;
            }
            throw bn3.m12735i();
        }
        do {
            list.add(Long.valueOf(this.f31406a.mo7449o()));
            if (this.f31406a.mo7462b()) {
                return;
            }
            mo7457g = this.f31406a.mo7457g();
        } while (mo7457g == this.f31407b);
        this.f31409d = mo7457g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p168r4.lo3
    /* renamed from: J */
    public final <T> void mo7136J(List<T> list, ro3<T> ro3Var, bm3 bm3Var) {
        int mo7457g;
        int i = this.f31407b;
        if ((i & 7) == 3) {
            do {
                list.add(m7129Q(ro3Var, bm3Var));
                if (!this.f31406a.mo7462b() && this.f31409d == 0) {
                    mo7457g = this.f31406a.mo7457g();
                } else {
                    return;
                }
            } while (mo7457g == i);
            this.f31409d = mo7457g;
            return;
        }
        throw bn3.m12735i();
    }

    @Override // p168r4.lo3
    /* renamed from: L */
    public final void mo7134L(List<Integer> list) {
        int mo7457g;
        int mo7457g2;
        if (list instanceof qm3) {
            qm3 qm3Var = (qm3) list;
            int i = this.f31407b & 7;
            if (i != 0) {
                if (i == 2) {
                    int mo7461c = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                    do {
                        qm3Var.mo6483Y(this.f31406a.mo7442v());
                    } while (this.f31406a.mo7461c() < mo7461c);
                    m7128R(mo7461c);
                    return;
                }
                throw bn3.m12735i();
            }
            do {
                qm3Var.mo6483Y(this.f31406a.mo7442v());
                if (this.f31406a.mo7462b()) {
                    return;
                }
                mo7457g2 = this.f31406a.mo7457g();
            } while (mo7457g2 == this.f31407b);
            this.f31409d = mo7457g2;
            return;
        }
        int i2 = this.f31407b & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int mo7461c2 = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                do {
                    list.add(Integer.valueOf(this.f31406a.mo7442v()));
                } while (this.f31406a.mo7461c() < mo7461c2);
                m7128R(mo7461c2);
                return;
            }
            throw bn3.m12735i();
        }
        do {
            list.add(Integer.valueOf(this.f31406a.mo7442v()));
            if (this.f31406a.mo7462b()) {
                return;
            }
            mo7457g = this.f31406a.mo7457g();
        } while (mo7457g == this.f31407b);
        this.f31409d = mo7457g;
    }

    @Override // p168r4.lo3
    /* renamed from: M */
    public final void mo7133M(List<Integer> list) {
        int mo7457g;
        int mo7457g2;
        if (list instanceof qm3) {
            qm3 qm3Var = (qm3) list;
            int i = this.f31407b & 7;
            if (i != 0) {
                if (i == 2) {
                    int mo7461c = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                    do {
                        qm3Var.mo6483Y(this.f31406a.mo7450n());
                    } while (this.f31406a.mo7461c() < mo7461c);
                    m7128R(mo7461c);
                    return;
                }
                throw bn3.m12735i();
            }
            do {
                qm3Var.mo6483Y(this.f31406a.mo7450n());
                if (this.f31406a.mo7462b()) {
                    return;
                }
                mo7457g2 = this.f31406a.mo7457g();
            } while (mo7457g2 == this.f31407b);
            this.f31409d = mo7457g2;
            return;
        }
        int i2 = this.f31407b & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int mo7461c2 = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                do {
                    list.add(Integer.valueOf(this.f31406a.mo7450n()));
                } while (this.f31406a.mo7461c() < mo7461c2);
                m7128R(mo7461c2);
                return;
            }
            throw bn3.m12735i();
        }
        do {
            list.add(Integer.valueOf(this.f31406a.mo7450n()));
            if (this.f31406a.mo7462b()) {
                return;
            }
            mo7457g = this.f31406a.mo7457g();
        } while (mo7457g == this.f31407b);
        this.f31409d = mo7457g;
    }

    /* renamed from: N */
    public final void m7132N(List<String> list, boolean z) {
        String mo7113l;
        int mo7457g;
        int mo7457g2;
        if ((this.f31407b & 7) == 2) {
            if ((list instanceof gn3) && !z) {
                gn3 gn3Var = (gn3) list;
                do {
                    gn3Var.mo9285p(mo7112m());
                    if (this.f31406a.mo7462b()) {
                        return;
                    }
                    mo7457g2 = this.f31406a.mo7457g();
                } while (mo7457g2 == this.f31407b);
                this.f31409d = mo7457g2;
                return;
            }
            do {
                if (z) {
                    mo7113l = mo7109p();
                } else {
                    mo7113l = mo7113l();
                }
                list.add(mo7113l);
                if (this.f31406a.mo7462b()) {
                    return;
                }
                mo7457g = this.f31406a.mo7457g();
            } while (mo7457g == this.f31407b);
            this.f31409d = mo7457g;
            return;
        }
        throw bn3.m12735i();
    }

    /* renamed from: P */
    public final <T> T m7130P(ro3<T> ro3Var, bm3 bm3Var) {
        rl3 rl3Var;
        int mo7443u = this.f31406a.mo7443u();
        rl3 rl3Var2 = this.f31406a;
        if (rl3Var2.f30626a < rl3Var2.f30627b) {
            int mo7464A = rl3Var2.mo7464A(mo7443u);
            T zza = ro3Var.zza();
            this.f31406a.f30626a++;
            ro3Var.mo7404j(zza, this, bm3Var);
            ro3Var.mo7409e(zza);
            this.f31406a.mo7456h(0);
            rl3Var.f30626a--;
            this.f31406a.mo7463a(mo7464A);
            return zza;
        }
        throw new bn3("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* renamed from: Q */
    public final <T> T m7129Q(ro3<T> ro3Var, bm3 bm3Var) {
        int i = this.f31408c;
        this.f31408c = ((this.f31407b >>> 3) << 3) | 4;
        try {
            T zza = ro3Var.zza();
            ro3Var.mo7404j(zza, this, bm3Var);
            ro3Var.mo7409e(zza);
            if (this.f31407b == this.f31408c) {
                return zza;
            }
            throw bn3.m12733k();
        } finally {
            this.f31408c = i;
        }
    }

    @Override // p168r4.lo3
    /* renamed from: e */
    public final boolean mo7120e() {
        int i;
        if (!this.f31406a.mo7462b() && (i = this.f31407b) != this.f31408c) {
            return this.f31406a.mo7455i(i);
        }
        return false;
    }

    @Override // p168r4.lo3
    /* renamed from: o */
    public final void mo7110o(List<Integer> list) {
        int mo7457g;
        int mo7457g2;
        if (list instanceof qm3) {
            qm3 qm3Var = (qm3) list;
            int i = this.f31407b & 7;
            if (i != 0) {
                if (i == 2) {
                    int mo7461c = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                    do {
                        qm3Var.mo6483Y(this.f31406a.mo7439y());
                    } while (this.f31406a.mo7461c() < mo7461c);
                    m7128R(mo7461c);
                    return;
                }
                throw bn3.m12735i();
            }
            do {
                qm3Var.mo6483Y(this.f31406a.mo7439y());
                if (this.f31406a.mo7462b()) {
                    return;
                }
                mo7457g2 = this.f31406a.mo7457g();
            } while (mo7457g2 == this.f31407b);
            this.f31409d = mo7457g2;
            return;
        }
        int i2 = this.f31407b & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int mo7461c2 = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                do {
                    list.add(Integer.valueOf(this.f31406a.mo7439y()));
                } while (this.f31406a.mo7461c() < mo7461c2);
                m7128R(mo7461c2);
                return;
            }
            throw bn3.m12735i();
        }
        do {
            list.add(Integer.valueOf(this.f31406a.mo7439y()));
            if (this.f31406a.mo7462b()) {
                return;
            }
            mo7457g = this.f31406a.mo7457g();
        } while (mo7457g == this.f31407b);
        this.f31409d = mo7457g;
    }

    @Override // p168r4.lo3
    /* renamed from: q */
    public final void mo7108q(List<Float> list) {
        int mo7457g;
        int mo7457g2;
        if (list instanceof im3) {
            im3 im3Var = (im3) list;
            int i = this.f31407b & 7;
            if (i != 2) {
                if (i == 5) {
                    do {
                        im3Var.m10593e(this.f31406a.mo7453k());
                        if (this.f31406a.mo7462b()) {
                            return;
                        }
                        mo7457g2 = this.f31406a.mo7457g();
                    } while (mo7457g2 == this.f31407b);
                    this.f31409d = mo7457g2;
                    return;
                }
                throw bn3.m12735i();
            }
            int mo7443u = this.f31406a.mo7443u();
            m7127S(mo7443u);
            int mo7461c = this.f31406a.mo7461c() + mo7443u;
            do {
                im3Var.m10593e(this.f31406a.mo7453k());
            } while (this.f31406a.mo7461c() < mo7461c);
            return;
        }
        int i2 = this.f31407b & 7;
        if (i2 != 2) {
            if (i2 == 5) {
                do {
                    list.add(Float.valueOf(this.f31406a.mo7453k()));
                    if (this.f31406a.mo7462b()) {
                        return;
                    }
                    mo7457g = this.f31406a.mo7457g();
                } while (mo7457g == this.f31407b);
                this.f31409d = mo7457g;
                return;
            }
            throw bn3.m12735i();
        }
        int mo7443u2 = this.f31406a.mo7443u();
        m7127S(mo7443u2);
        int mo7461c2 = this.f31406a.mo7461c() + mo7443u2;
        do {
            list.add(Float.valueOf(this.f31406a.mo7453k()));
        } while (this.f31406a.mo7461c() < mo7461c2);
    }

    @Override // p168r4.lo3
    /* renamed from: s */
    public final void mo7106s(List<Boolean> list) {
        int mo7457g;
        int mo7457g2;
        if (list instanceof zk3) {
            zk3 zk3Var = (zk3) list;
            int i = this.f31407b & 7;
            if (i != 0) {
                if (i == 2) {
                    int mo7461c = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                    do {
                        zk3Var.m4191e(this.f31406a.mo7447q());
                    } while (this.f31406a.mo7461c() < mo7461c);
                    m7128R(mo7461c);
                    return;
                }
                throw bn3.m12735i();
            }
            do {
                zk3Var.m4191e(this.f31406a.mo7447q());
                if (this.f31406a.mo7462b()) {
                    return;
                }
                mo7457g2 = this.f31406a.mo7457g();
            } while (mo7457g2 == this.f31407b);
            this.f31409d = mo7457g2;
            return;
        }
        int i2 = this.f31407b & 7;
        if (i2 != 0) {
            if (i2 == 2) {
                int mo7461c2 = this.f31406a.mo7461c() + this.f31406a.mo7443u();
                do {
                    list.add(Boolean.valueOf(this.f31406a.mo7447q()));
                } while (this.f31406a.mo7461c() < mo7461c2);
                m7128R(mo7461c2);
                return;
            }
            throw bn3.m12735i();
        }
        do {
            list.add(Boolean.valueOf(this.f31406a.mo7447q()));
            if (this.f31406a.mo7462b()) {
                return;
            }
            mo7457g = this.f31406a.mo7457g();
        } while (mo7457g == this.f31407b);
        this.f31409d = mo7457g;
    }

    @Override // p168r4.lo3
    /* renamed from: u */
    public final void mo7104u(List<Long> list) {
        int mo7457g;
        int mo7457g2;
        if (list instanceof ln3) {
            ln3 ln3Var = (ln3) list;
            int i = this.f31407b & 7;
            if (i != 1) {
                if (i == 2) {
                    int mo7443u = this.f31406a.mo7443u();
                    m7126T(mo7443u);
                    int mo7461c = this.f31406a.mo7461c() + mo7443u;
                    do {
                        ln3Var.m9605i(this.f31406a.mo7440x());
                    } while (this.f31406a.mo7461c() < mo7461c);
                    return;
                }
                throw bn3.m12735i();
            }
            do {
                ln3Var.m9605i(this.f31406a.mo7440x());
                if (this.f31406a.mo7462b()) {
                    return;
                }
                mo7457g2 = this.f31406a.mo7457g();
            } while (mo7457g2 == this.f31407b);
            this.f31409d = mo7457g2;
            return;
        }
        int i2 = this.f31407b & 7;
        if (i2 != 1) {
            if (i2 == 2) {
                int mo7443u2 = this.f31406a.mo7443u();
                m7126T(mo7443u2);
                int mo7461c2 = this.f31406a.mo7461c() + mo7443u2;
                do {
                    list.add(Long.valueOf(this.f31406a.mo7440x()));
                } while (this.f31406a.mo7461c() < mo7461c2);
                return;
            }
            throw bn3.m12735i();
        }
        do {
            list.add(Long.valueOf(this.f31406a.mo7440x()));
            if (this.f31406a.mo7462b()) {
                return;
            }
            mo7457g = this.f31406a.mo7457g();
        } while (mo7457g == this.f31407b);
        this.f31409d = mo7457g;
    }

    @Override // p168r4.lo3
    /* renamed from: x */
    public final void mo7101x(List<Double> list) {
        int mo7457g;
        int mo7457g2;
        if (list instanceof yl3) {
            yl3 yl3Var = (yl3) list;
            int i = this.f31407b & 7;
            if (i != 1) {
                if (i == 2) {
                    int mo7443u = this.f31406a.mo7443u();
                    m7126T(mo7443u);
                    int mo7461c = this.f31406a.mo7461c() + mo7443u;
                    do {
                        yl3Var.m4632e(this.f31406a.mo7454j());
                    } while (this.f31406a.mo7461c() < mo7461c);
                    return;
                }
                throw bn3.m12735i();
            }
            do {
                yl3Var.m4632e(this.f31406a.mo7454j());
                if (this.f31406a.mo7462b()) {
                    return;
                }
                mo7457g2 = this.f31406a.mo7457g();
            } while (mo7457g2 == this.f31407b);
            this.f31409d = mo7457g2;
            return;
        }
        int i2 = this.f31407b & 7;
        if (i2 != 1) {
            if (i2 == 2) {
                int mo7443u2 = this.f31406a.mo7443u();
                m7126T(mo7443u2);
                int mo7461c2 = this.f31406a.mo7461c() + mo7443u2;
                do {
                    list.add(Double.valueOf(this.f31406a.mo7454j()));
                } while (this.f31406a.mo7461c() < mo7461c2);
                return;
            }
            throw bn3.m12735i();
        }
        do {
            list.add(Double.valueOf(this.f31406a.mo7454j()));
            if (this.f31406a.mo7462b()) {
                return;
            }
            mo7457g = this.f31406a.mo7457g();
        } while (mo7457g == this.f31407b);
        this.f31409d = mo7457g;
    }

    @Override // p168r4.lo3
    /* renamed from: y */
    public final void mo7100y(List<Integer> list) {
        int mo7457g;
        int mo7457g2;
        if (list instanceof qm3) {
            qm3 qm3Var = (qm3) list;
            int i = this.f31407b & 7;
            if (i != 2) {
                if (i == 5) {
                    do {
                        qm3Var.mo6483Y(this.f31406a.mo7448p());
                        if (this.f31406a.mo7462b()) {
                            return;
                        }
                        mo7457g2 = this.f31406a.mo7457g();
                    } while (mo7457g2 == this.f31407b);
                    this.f31409d = mo7457g2;
                    return;
                }
                throw bn3.m12735i();
            }
            int mo7443u = this.f31406a.mo7443u();
            m7127S(mo7443u);
            int mo7461c = this.f31406a.mo7461c() + mo7443u;
            do {
                qm3Var.mo6483Y(this.f31406a.mo7448p());
            } while (this.f31406a.mo7461c() < mo7461c);
            return;
        }
        int i2 = this.f31407b & 7;
        if (i2 != 2) {
            if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f31406a.mo7448p()));
                    if (this.f31406a.mo7462b()) {
                        return;
                    }
                    mo7457g = this.f31406a.mo7457g();
                } while (mo7457g == this.f31407b);
                this.f31409d = mo7457g;
                return;
            }
            throw bn3.m12735i();
        }
        int mo7443u2 = this.f31406a.mo7443u();
        m7127S(mo7443u2);
        int mo7461c2 = this.f31406a.mo7461c() + mo7443u2;
        do {
            list.add(Integer.valueOf(this.f31406a.mo7448p()));
        } while (this.f31406a.mo7461c() < mo7461c2);
    }
}
