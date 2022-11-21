package p168r4;
/* renamed from: r4.h13 */
/* loaded from: classes2.dex */
public abstract class h13 extends g03<String> {

    /* renamed from: d */
    public final CharSequence f24403d;

    /* renamed from: k */
    public final m03 f24404k;

    /* renamed from: p */
    public int f24405p = 0;

    /* renamed from: q */
    public int f24406q;

    public h13(j13 j13Var, CharSequence charSequence) {
        m03 m03Var;
        m03Var = j13Var.f25860a;
        this.f24404k = m03Var;
        this.f24406q = Integer.MAX_VALUE;
        this.f24403d = charSequence;
    }

    /* renamed from: c */
    public abstract int mo11009c(int i);

    /* renamed from: e */
    public abstract int mo11008e(int i);

    @Override // p168r4.g03
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ String mo11010a() {
        int mo11008e;
        int i = this.f24405p;
        while (true) {
            int i2 = this.f24405p;
            if (i2 != -1) {
                int mo11009c = mo11009c(i2);
                if (mo11009c == -1) {
                    mo11009c = this.f24403d.length();
                    this.f24405p = -1;
                    mo11008e = -1;
                } else {
                    mo11008e = mo11008e(mo11009c);
                    this.f24405p = mo11008e;
                }
                if (mo11008e == i) {
                    int i3 = mo11008e + 1;
                    this.f24405p = i3;
                    if (i3 > this.f24403d.length()) {
                        this.f24405p = -1;
                    }
                } else {
                    if (i < mo11009c) {
                        this.f24403d.charAt(i);
                    }
                    if (i < mo11009c) {
                        this.f24403d.charAt(mo11009c - 1);
                    }
                    int i4 = this.f24406q;
                    if (i4 == 1) {
                        mo11009c = this.f24403d.length();
                        this.f24405p = -1;
                        if (mo11009c > i) {
                            this.f24403d.charAt(mo11009c - 1);
                        }
                    } else {
                        this.f24406q = i4 - 1;
                    }
                    return this.f24403d.subSequence(i, mo11009c).toString();
                }
            } else {
                m11313b();
                return null;
            }
        }
    }
}
