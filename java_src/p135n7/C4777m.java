package p135n7;

import p126m7.InterfaceC4665l;
/* renamed from: n7.m */
/* loaded from: classes2.dex */
public class C4777m implements InterfaceC4665l {

    /* renamed from: a */
    public final String f19068a;

    /* renamed from: b */
    public final int f19069b;

    @Override // p126m7.InterfaceC4665l
    /* renamed from: e */
    public int mo15386e() {
        return this.f19069b;
    }

    /* renamed from: f */
    public final String m15385f() {
        return mo15388c().trim();
    }

    @Override // p126m7.InterfaceC4665l
    /* renamed from: a */
    public long mo15390a() {
        if (this.f19069b == 0) {
            return 0L;
        }
        String m15385f = m15385f();
        try {
            return Long.valueOf(m15385f).longValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", m15385f, "long"), e);
        }
    }

    @Override // p126m7.InterfaceC4665l
    /* renamed from: b */
    public double mo15389b() {
        if (this.f19069b == 0) {
            return 0.0d;
        }
        String m15385f = m15385f();
        try {
            return Double.valueOf(m15385f).doubleValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", m15385f, "double"), e);
        }
    }

    @Override // p126m7.InterfaceC4665l
    /* renamed from: c */
    public String mo15388c() {
        if (this.f19069b == 0) {
            return "";
        }
        m15384g();
        return this.f19068a;
    }

    @Override // p126m7.InterfaceC4665l
    /* renamed from: d */
    public boolean mo15387d() {
        if (this.f19069b == 0) {
            return false;
        }
        String m15385f = m15385f();
        if (C4775k.f19059f.matcher(m15385f).matches()) {
            return true;
        }
        if (C4775k.f19060g.matcher(m15385f).matches()) {
            return false;
        }
        throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", m15385f, "boolean"));
    }

    /* renamed from: g */
    public final void m15384g() {
        if (this.f19068a != null) {
            return;
        }
        throw new IllegalArgumentException("Value is null, and cannot be converted to the desired type.");
    }

    public C4777m(String str, int i) {
        this.f19068a = str;
        this.f19069b = i;
    }
}
