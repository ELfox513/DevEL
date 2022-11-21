package p168r4;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.vt3 */
/* loaded from: classes2.dex */
public final class vt3 extends ps3<Integer> {

    /* renamed from: s */
    public static final C6306u5 f32808s;

    /* renamed from: j */
    public final ht3[] f32809j;

    /* renamed from: k */
    public final AbstractC5717e8[] f32810k;

    /* renamed from: l */
    public final ArrayList<ht3> f32811l;

    /* renamed from: m */
    public final Map<Object, Long> f32812m;

    /* renamed from: n */
    public final o43<Object, ls3> f32813n;

    /* renamed from: o */
    public int f32814o;

    /* renamed from: p */
    public long[][] f32815p;

    /* renamed from: q */
    public ut3 f32816q;

    /* renamed from: r */
    public final rs3 f32817r;

    @Override // p168r4.ps3
    /* renamed from: B */
    public final /* bridge */ /* synthetic */ ft3 mo6014B(Integer num, ft3 ft3Var) {
        if (num.intValue() == 0) {
            return ft3Var;
        }
        return null;
    }

    @Override // p168r4.ht3
    /* renamed from: v */
    public final C6306u5 mo6008v() {
        ht3[] ht3VarArr = this.f32809j;
        return ht3VarArr.length > 0 ? ht3VarArr[0].mo6008v() : f32808s;
    }

    static {
        C5972l5 c5972l5 = new C5972l5();
        c5972l5.m9793a("MergingMediaSource");
        f32808s = c5972l5.m9791c();
    }

    public vt3(boolean z, boolean z2, ht3... ht3VarArr) {
        rs3 rs3Var = new rs3();
        this.f32809j = ht3VarArr;
        this.f32817r = rs3Var;
        this.f32811l = new ArrayList<>(Arrays.asList(ht3VarArr));
        this.f32814o = -1;
        this.f32810k = new AbstractC5717e8[ht3VarArr.length];
        this.f32815p = new long[0];
        this.f32812m = new HashMap();
        this.f32813n = w43.m5879a(8).m6638b(2).mo6911c();
    }

    @Override // p168r4.ht3
    /* renamed from: b */
    public final et3 mo6013b(ft3 ft3Var, qw3 qw3Var, long j) {
        int length = this.f32809j.length;
        et3[] et3VarArr = new et3[length];
        int mo4072i = this.f32810k[0].mo4072i(ft3Var.f23237a);
        for (int i = 0; i < length; i++) {
            et3VarArr[i] = this.f32809j[i].mo6013b(ft3Var.m11366c(this.f32810k[i].mo4071j(mo4072i)), qw3Var, j - this.f32815p[mo4072i][i]);
        }
        return new tt3(this.f32817r, this.f32815p[mo4072i], et3VarArr, null);
    }

    @Override // p168r4.ht3
    /* renamed from: h */
    public final void mo6012h(et3 et3Var) {
        tt3 tt3Var = (tt3) et3Var;
        int i = 0;
        while (true) {
            ht3[] ht3VarArr = this.f32809j;
            if (i < ht3VarArr.length) {
                ht3VarArr[i].mo6012h(tt3Var.m6720k(i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // p168r4.ps3, p168r4.ht3
    /* renamed from: t */
    public final void mo6009t() {
        ut3 ut3Var = this.f32816q;
        if (ut3Var == null) {
            super.mo6009t();
            return;
        }
        throw ut3Var;
    }

    @Override // p168r4.ps3
    /* renamed from: z */
    public final /* bridge */ /* synthetic */ void mo6007z(Integer num, ht3 ht3Var, AbstractC5717e8 abstractC5717e8) {
        int i;
        if (this.f32816q == null) {
            if (this.f32814o == -1) {
                i = abstractC5717e8.mo4074g();
                this.f32814o = i;
            } else {
                int mo4074g = abstractC5717e8.mo4074g();
                int i2 = this.f32814o;
                if (mo4074g == i2) {
                    i = i2;
                } else {
                    this.f32816q = new ut3(0);
                    return;
                }
            }
            if (this.f32815p.length == 0) {
                this.f32815p = (long[][]) Array.newInstance(Long.TYPE, i, this.f32810k.length);
            }
            this.f32811l.remove(ht3Var);
            this.f32810k[num.intValue()] = abstractC5717e8;
            if (this.f32811l.isEmpty()) {
                m7082q(this.f32810k[0]);
            }
        }
    }

    @Override // p168r4.ps3, p168r4.so3
    /* renamed from: m */
    public final void mo6011m(InterfaceC5844ho interfaceC5844ho) {
        super.mo6011m(interfaceC5844ho);
        for (int i = 0; i < this.f32809j.length; i++) {
            m8216A(Integer.valueOf(i), this.f32809j[i]);
        }
    }

    @Override // p168r4.ps3, p168r4.so3
    /* renamed from: p */
    public final void mo6010p() {
        super.mo6010p();
        Arrays.fill(this.f32810k, (Object) null);
        this.f32814o = -1;
        this.f32816q = null;
        this.f32811l.clear();
        Collections.addAll(this.f32811l, this.f32809j);
    }
}
