package p168r4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import p168r4.ao3;
/* renamed from: r4.q93 */
/* loaded from: classes2.dex */
public abstract class q93<KeyProtoT extends ao3> {

    /* renamed from: a */
    public final Class<KeyProtoT> f30057a;

    /* renamed from: b */
    public final Map<Class<?>, p93<?, KeyProtoT>> f30058b;

    /* renamed from: c */
    public final Class<?> f30059c;

    /* renamed from: a */
    public final Class<KeyProtoT> m7924a() {
        return this.f30057a;
    }

    /* renamed from: b */
    public abstract String mo4339b();

    /* renamed from: c */
    public abstract KeyProtoT mo4338c(ll3 ll3Var);

    /* renamed from: d */
    public abstract void mo4337d(KeyProtoT keyprotot);

    /* renamed from: f */
    public final Set<Class<?>> m7922f() {
        return this.f30058b.keySet();
    }

    /* renamed from: g */
    public final Class<?> m7921g() {
        return this.f30059c;
    }

    /* renamed from: h */
    public o93<?, KeyProtoT> mo4336h() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }

    /* renamed from: i */
    public abstract int mo4335i();

    /* renamed from: j */
    public int mo5772j() {
        return 1;
    }

    /* renamed from: e */
    public final <P> P m7923e(KeyProtoT keyprotot, Class<P> cls) {
        p93<?, KeyProtoT> p93Var = this.f30058b.get(cls);
        if (p93Var != null) {
            return (P) p93Var.mo4400b(keyprotot);
        }
        String canonicalName = cls.getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 41);
        sb.append("Requested primitive class ");
        sb.append(canonicalName);
        sb.append(" not supported.");
        throw new IllegalArgumentException(sb.toString());
    }

    @SafeVarargs
    public q93(Class<KeyProtoT> cls, p93<?, KeyProtoT>... p93VarArr) {
        String str;
        this.f30057a = cls;
        HashMap hashMap = new HashMap();
        for (int i = 0; i <= 0; i++) {
            p93<?, KeyProtoT> p93Var = p93VarArr[i];
            if (hashMap.containsKey(p93Var.m8436a())) {
                String valueOf = String.valueOf(p93Var.m8436a().getCanonicalName());
                if (valueOf.length() != 0) {
                    str = "KeyTypeManager constructed with duplicate factories for primitive ".concat(valueOf);
                } else {
                    str = new String("KeyTypeManager constructed with duplicate factories for primitive ");
                }
                throw new IllegalArgumentException(str);
            }
            hashMap.put(p93Var.m8436a(), p93Var);
        }
        this.f30059c = p93VarArr[0].m8436a();
        this.f30058b = Collections.unmodifiableMap(hashMap);
    }
}
