package p168r4;

import java.security.GeneralSecurityException;
import java.util.Set;
/* renamed from: r4.ga3 */
/* loaded from: classes2.dex */
public final class ga3 implements ia3 {

    /* renamed from: a */
    public final /* synthetic */ da3 f23954a;

    /* renamed from: b */
    public final /* synthetic */ q93 f23955b;

    public ga3(da3 da3Var, q93 q93Var) {
        this.f23954a = da3Var;
        this.f23955b = q93Var;
    }

    @Override // p168r4.ia3
    /* renamed from: a */
    public final i93<?> mo10700a() {
        da3 da3Var = this.f23954a;
        return new ca3(da3Var, this.f23955b, da3Var.m7921g());
    }

    @Override // p168r4.ia3
    /* renamed from: b */
    public final Class<?> mo10699b() {
        return this.f23954a.getClass();
    }

    @Override // p168r4.ia3
    /* renamed from: c */
    public final Class<?> mo10698c() {
        return this.f23955b.getClass();
    }

    @Override // p168r4.ia3
    /* renamed from: e */
    public final Set<Class<?>> mo10696e() {
        return this.f23954a.m7922f();
    }

    @Override // p168r4.ia3
    /* renamed from: d */
    public final <Q> i93<Q> mo10697d(Class<Q> cls) {
        try {
            return new ca3(this.f23954a, this.f23955b, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }
}
