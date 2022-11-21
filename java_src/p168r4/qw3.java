package p168r4;

import java.util.Arrays;
/* renamed from: r4.qw3 */
/* loaded from: classes2.dex */
public final class qw3 {

    /* renamed from: b */
    public int f30343b;

    /* renamed from: c */
    public int f30344c;

    /* renamed from: d */
    public int f30345d = 0;

    /* renamed from: e */
    public dw3[] f30346e = new dw3[100];

    /* renamed from: a */
    public final dw3[] f30342a = new dw3[1];

    public qw3(boolean z, int i) {
    }

    /* renamed from: a */
    public final synchronized void m7654a() {
        m7653b(0);
    }

    /* renamed from: b */
    public final synchronized void m7653b(int i) {
        int i2 = this.f30343b;
        this.f30343b = i;
        if (i < i2) {
            m7649f();
        }
    }

    /* renamed from: c */
    public final synchronized dw3 m7652c() {
        dw3 dw3Var;
        this.f30344c++;
        int i = this.f30345d;
        if (i > 0) {
            dw3[] dw3VarArr = this.f30346e;
            int i2 = i - 1;
            this.f30345d = i2;
            dw3Var = dw3VarArr[i2];
            dw3Var.getClass();
            dw3VarArr[i2] = null;
        } else {
            dw3Var = new dw3(new byte[65536], 0);
        }
        return dw3Var;
    }

    /* renamed from: d */
    public final synchronized void m7651d(dw3 dw3Var) {
        dw3[] dw3VarArr = this.f30342a;
        dw3VarArr[0] = dw3Var;
        m7650e(dw3VarArr);
    }

    /* renamed from: e */
    public final synchronized void m7650e(dw3[] dw3VarArr) {
        int length = this.f30345d + dw3VarArr.length;
        dw3[] dw3VarArr2 = this.f30346e;
        int length2 = dw3VarArr2.length;
        if (length >= length2) {
            this.f30346e = (dw3[]) Arrays.copyOf(dw3VarArr2, Math.max(length2 + length2, length));
        }
        for (dw3 dw3Var : dw3VarArr) {
            dw3[] dw3VarArr3 = this.f30346e;
            int i = this.f30345d;
            this.f30345d = i + 1;
            dw3VarArr3[i] = dw3Var;
        }
        this.f30344c -= dw3VarArr.length;
        notifyAll();
    }

    /* renamed from: f */
    public final synchronized void m7649f() {
        int max = Math.max(0, C5979lc.m9707b0(this.f30343b, 65536) - this.f30344c);
        int i = this.f30345d;
        if (max >= i) {
            return;
        }
        Arrays.fill(this.f30346e, max, i, (Object) null);
        this.f30345d = max;
    }

    /* renamed from: g */
    public final synchronized int m7648g() {
        return this.f30344c * 65536;
    }
}
