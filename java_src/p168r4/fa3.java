package p168r4;

import java.security.GeneralSecurityException;
import java.util.Set;
/* renamed from: r4.fa3 */
/* loaded from: classes2.dex */
public final class fa3 implements ia3 {

    /* renamed from: a */
    public final /* synthetic */ q93 f23436a;

    public fa3(q93 q93Var) {
        this.f23436a = q93Var;
    }

    @Override // p168r4.ia3
    /* renamed from: a */
    public final i93<?> mo10700a() {
        q93 q93Var = this.f23436a;
        return new k93(q93Var, q93Var.m7921g());
    }

    @Override // p168r4.ia3
    /* renamed from: b */
    public final Class<?> mo10699b() {
        return this.f23436a.getClass();
    }

    @Override // p168r4.ia3
    /* renamed from: c */
    public final Class<?> mo10698c() {
        return null;
    }

    @Override // p168r4.ia3
    /* renamed from: e */
    public final Set<Class<?>> mo10696e() {
        return this.f23436a.m7922f();
    }

    @Override // p168r4.ia3
    /* renamed from: d */
    public final <Q> i93<Q> mo10697d(Class<Q> cls) {
        try {
            return new k93(this.f23436a, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }
}
