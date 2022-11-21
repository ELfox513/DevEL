package p168r4;

import java.security.GeneralSecurityException;
import java.util.Arrays;
/* renamed from: r4.pc3 */
/* loaded from: classes2.dex */
public final class pc3 implements bj3 {

    /* renamed from: a */
    public final String f29421a;

    /* renamed from: b */
    public final int f29422b;

    /* renamed from: c */
    public ne3 f29423c;

    /* renamed from: d */
    public od3 f29424d;

    /* renamed from: e */
    public int f29425e;

    /* renamed from: f */
    public ze3 f29426f;

    @Override // p168r4.bj3
    public final int zza() {
        return this.f29422b;
    }

    @Override // p168r4.bj3
    /* renamed from: a */
    public final qc3 mo8358a(byte[] bArr) {
        if (bArr.length == this.f29422b) {
            if (this.f29421a.equals(la3.f27151b)) {
                me3 m9114I = ne3.m9114I();
                m9114I.m9613p(this.f29423c);
                m9114I.m9403x(ll3.m9633H(bArr, 0, this.f29422b));
                return new qc3((c93) ja3.m10360i(this.f29421a, m9114I.m9614o(), c93.class));
            } else if (this.f29421a.equals(la3.f27150a)) {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, this.f29425e);
                byte[] copyOfRange2 = Arrays.copyOfRange(bArr, this.f29425e, this.f29422b);
                td3 m6541J = ud3.m6541J();
                m6541J.m9613p(this.f29424d.m8826D());
                m6541J.m6868z(ll3.m9632I(copyOfRange));
                mg3 m9101J = ng3.m9101J();
                m9101J.m9613p(this.f29424d.m8825E());
                m9101J.m9393z(ll3.m9632I(copyOfRange2));
                nd3 m8823J = od3.m8823J();
                m8823J.m9121v(this.f29424d.m8827C());
                m8823J.m9120x(m6541J.m9614o());
                m8823J.m9119z(m9101J.m9614o());
                return new qc3((c93) ja3.m10360i(this.f29421a, m8823J.m9614o(), c93.class));
            } else if (this.f29421a.equals(ac3.f20459a)) {
                ye3 m4274I = ze3.m4274I();
                m4274I.m9613p(this.f29426f);
                m4274I.m4743x(ll3.m9633H(bArr, 0, this.f29422b));
                return new qc3((f93) ja3.m10360i(this.f29421a, m4274I.m9614o(), f93.class));
            } else {
                throw new GeneralSecurityException("unknown DEM key type");
            }
        }
        throw new GeneralSecurityException("Symmetric key has incorrect length");
    }

    public pc3(zg3 zg3Var) {
        String str;
        String m4256C = zg3Var.m4256C();
        this.f29421a = m4256C;
        if (m4256C.equals(la3.f27151b)) {
            try {
                qe3 m7871D = qe3.m7871D(zg3Var.m4255D(), bm3.m12746a());
                this.f29423c = (ne3) ja3.m10361h(zg3Var);
                this.f29422b = m7871D.m7872C();
            } catch (bn3 e) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e);
            }
        } else if (m4256C.equals(la3.f27150a)) {
            try {
                rd3 m7526E = rd3.m7526E(zg3Var.m4255D(), bm3.m12746a());
                this.f29424d = (od3) ja3.m10361h(zg3Var);
                this.f29425e = m7526E.m7528C().m5361D();
                this.f29422b = this.f29425e + m7526E.m7527D().m7863D();
            } catch (bn3 e2) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e2);
            }
        } else if (m4256C.equals(ac3.f20459a)) {
            try {
                df3 m12143D = df3.m12143D(zg3Var.m4255D(), bm3.m12746a());
                this.f29426f = (ze3) ja3.m10361h(zg3Var);
                this.f29422b = m12143D.m12144C();
            } catch (bn3 e3) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e3);
            }
        } else {
            String valueOf = String.valueOf(m4256C);
            if (valueOf.length() != 0) {
                str = "unsupported AEAD DEM key type: ".concat(valueOf);
            } else {
                str = new String("unsupported AEAD DEM key type: ");
            }
            throw new GeneralSecurityException(str);
        }
    }
}
