package p168r4;

import java.util.Map;
/* renamed from: r4.t23 */
/* loaded from: classes2.dex */
public final class t23 extends i23 {

    /* renamed from: a */
    public final Object f31631a;

    /* renamed from: b */
    public int f31632b;

    /* renamed from: d */
    public final /* synthetic */ w23 f31633d;

    public t23(w23 w23Var, int i) {
        this.f31633d = w23Var;
        this.f31631a = w23.m5907v(w23Var, i);
        this.f31632b = i;
    }

    @Override // p168r4.i23, java.util.Map.Entry
    public final Object getKey() {
        return this.f31631a;
    }

    /* renamed from: a */
    public final void m6920a() {
        int m5930B;
        int i = this.f31632b;
        if (i != -1 && i < this.f31633d.size() && v03.m6257a(this.f31631a, w23.m5907v(this.f31633d, this.f31632b))) {
            return;
        }
        m5930B = this.f31633d.m5930B(this.f31631a);
        this.f31632b = m5930B;
    }

    @Override // p168r4.i23, java.util.Map.Entry
    public final Object getValue() {
        Map m5919j = this.f31633d.m5919j();
        if (m5919j != null) {
            return m5919j.get(this.f31631a);
        }
        m6920a();
        int i = this.f31632b;
        if (i == -1) {
            return null;
        }
        return w23.m5906w(this.f31633d, i);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        Map m5919j = this.f31633d.m5919j();
        if (m5919j != null) {
            return m5919j.put(this.f31631a, obj);
        }
        m6920a();
        int i = this.f31632b;
        if (i == -1) {
            this.f31633d.put(this.f31631a, obj);
            return null;
        }
        Object m5906w = w23.m5906w(this.f31633d, i);
        w23.m5905x(this.f31633d, this.f31632b, obj);
        return m5906w;
    }
}
