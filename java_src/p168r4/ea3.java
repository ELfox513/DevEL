package p168r4;

import java.util.Collections;
import java.util.Set;
/* renamed from: r4.ea3 */
/* loaded from: classes2.dex */
public final class ea3 implements ia3 {

    /* renamed from: a */
    public final /* synthetic */ i93 f22921a;

    public ea3(i93 i93Var) {
        this.f22921a = i93Var;
    }

    @Override // p168r4.ia3
    /* renamed from: a */
    public final i93<?> mo10700a() {
        return this.f22921a;
    }

    @Override // p168r4.ia3
    /* renamed from: b */
    public final Class<?> mo10699b() {
        return this.f22921a.getClass();
    }

    @Override // p168r4.ia3
    /* renamed from: c */
    public final Class<?> mo10698c() {
        return null;
    }

    @Override // p168r4.ia3
    /* renamed from: e */
    public final Set<Class<?>> mo10696e() {
        return Collections.singleton(this.f22921a.mo10089c());
    }

    @Override // p168r4.ia3
    /* renamed from: d */
    public final <Q> i93<Q> mo10697d(Class<Q> cls) {
        if (this.f22921a.mo10089c().equals(cls)) {
            return this.f22921a;
        }
        throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
    }
}
