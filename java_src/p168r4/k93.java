package p168r4;

import java.security.GeneralSecurityException;
import p168r4.ao3;
/* renamed from: r4.k93 */
/* loaded from: classes2.dex */
public class k93<PrimitiveT, KeyProtoT extends ao3> implements i93<PrimitiveT> {

    /* renamed from: a */
    public final q93<KeyProtoT> f26349a;

    /* renamed from: b */
    public final Class<PrimitiveT> f26350b;

    /* renamed from: b */
    public final j93<?, KeyProtoT> m10090b() {
        return new j93<>(this.f26349a.mo4336h());
    }

    @Override // p168r4.i93
    /* renamed from: c */
    public final Class<PrimitiveT> mo10089c() {
        return this.f26350b;
    }

    @Override // p168r4.i93
    /* renamed from: e */
    public final String mo10088e() {
        return this.f26349a.mo4339b();
    }

    /* renamed from: a */
    public final PrimitiveT m10091a(KeyProtoT keyprotot) {
        if (!Void.class.equals(this.f26350b)) {
            this.f26349a.mo4337d(keyprotot);
            return (PrimitiveT) this.f26349a.m7923e(keyprotot, (Class<PrimitiveT>) this.f26350b);
        }
        throw new GeneralSecurityException("Cannot create a primitive for Void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p168r4.i93
    /* renamed from: r */
    public final PrimitiveT mo10085r(ao3 ao3Var) {
        String str;
        String name = this.f26349a.m7924a().getName();
        if (name.length() != 0) {
            str = "Expected proto of type ".concat(name);
        } else {
            str = new String("Expected proto of type ");
        }
        if (this.f26349a.m7924a().isInstance(ao3Var)) {
            return m10091a(ao3Var);
        }
        throw new GeneralSecurityException(str);
    }

    @Override // p168r4.i93
    /* renamed from: s */
    public final PrimitiveT mo10084s(ll3 ll3Var) {
        String str;
        try {
            return m10091a(this.f26349a.mo4338c(ll3Var));
        } catch (bn3 e) {
            String name = this.f26349a.m7924a().getName();
            if (name.length() != 0) {
                str = "Failures parsing proto of type ".concat(name);
            } else {
                str = new String("Failures parsing proto of type ");
            }
            throw new GeneralSecurityException(str, e);
        }
    }

    public k93(q93<KeyProtoT> q93Var, Class<PrimitiveT> cls) {
        if (!q93Var.m7922f().contains(cls) && !Void.class.equals(cls)) {
            throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", q93Var.toString(), cls.getName()));
        }
        this.f26349a = q93Var;
        this.f26350b = cls;
    }

    @Override // p168r4.i93
    /* renamed from: p */
    public final wg3 mo10087p(ll3 ll3Var) {
        try {
            KeyProtoT m10376a = m10090b().m10376a(ll3Var);
            vg3 m5730E = wg3.m5730E();
            m5730E.m6158v(this.f26349a.mo4339b());
            m5730E.m6157x(m10376a.mo6494F());
            m5730E.m6156z(this.f26349a.mo4335i());
            return m5730E.m9614o();
        } catch (bn3 e) {
            throw new GeneralSecurityException("Unexpected proto", e);
        }
    }

    @Override // p168r4.i93
    /* renamed from: q */
    public final ao3 mo10086q(ll3 ll3Var) {
        String str;
        try {
            return m10090b().m10376a(ll3Var);
        } catch (bn3 e) {
            String name = this.f26349a.mo4336h().m8856a().getName();
            if (name.length() != 0) {
                str = "Failures parsing proto of type ".concat(name);
            } else {
                str = new String("Failures parsing proto of type ");
            }
            throw new GeneralSecurityException(str, e);
        }
    }
}
