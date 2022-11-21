package p168r4;

import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECPrivateKeySpec;
/* renamed from: r4.dc3 */
/* loaded from: classes2.dex */
public final class dc3 extends p93<g93, xf3> {
    public dc3(Class cls) {
        super(cls);
    }

    @Override // p168r4.p93
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ g93 mo4400b(xf3 xf3Var) {
        xf3 xf3Var2 = xf3Var;
        uf3 m13029D = xf3Var2.m5328D().m13029D();
        gg3 m6531C = m13029D.m6531C();
        int m8832c = oc3.m8832c(m6531C.m11160K());
        byte[] m9626R = xf3Var2.m5327E().m9626R();
        return new cj3((ECPrivateKey) kj3.f26449k.m10017b("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, m9626R), hj3.m10901d(m8832c))), m6531C.m11165C().m9626R(), oc3.m8833b(m6531C.m11159L()), oc3.m8831d(m13029D.m6524M()), new pc3(m13029D.m6530D().m8804C()));
    }
}
