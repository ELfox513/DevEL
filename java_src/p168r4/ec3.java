package p168r4;

import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.ec3 */
/* loaded from: classes2.dex */
public final class ec3 extends o93<rf3, xf3> {

    /* renamed from: b */
    public final /* synthetic */ fc3 f22942b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ec3(fc3 fc3Var, Class cls) {
        super(cls);
        this.f22942b = fc3Var;
    }

    @Override // p168r4.o93
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo5374b(rf3 rf3Var) {
        oc3.m8834a(rf3Var.m7519C());
    }

    @Override // p168r4.o93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ xf3 mo5372d(rf3 rf3Var) {
        rf3 rf3Var2 = rf3Var;
        KeyPair m10902c = hj3.m10902c(hj3.m10901d(oc3.m8832c(rf3Var2.m7519C().m6531C().m11160K())));
        ECPoint w = ((ECPublicKey) m10902c.getPublic()).getW();
        zf3 m13025K = ag3.m13025K();
        m13025K.m4266v(0);
        m13025K.m4265x(rf3Var2.m7519C());
        m13025K.m4264z(ll3.m9632I(w.getAffineX().toByteArray()));
        m13025K.m4267A(ll3.m9632I(w.getAffineY().toByteArray()));
        wf3 m5325J = xf3.m5325J();
        m5325J.m5737v(0);
        m5325J.m5736x(m13025K.m9614o());
        m5325J.m5735z(ll3.m9632I(((ECPrivateKey) m10902c.getPrivate()).getS().toByteArray()));
        return m5325J.m9614o();
    }

    @Override // p168r4.o93
    /* renamed from: e */
    public final Map<String, n93<rf3>> mo5371e() {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        byte[] bArr6;
        byte[] bArr7;
        byte[] bArr8;
        byte[] bArr9;
        HashMap hashMap = new HashMap();
        l93 m9458a = m93.m9458a("AES128_GCM");
        bArr = fc3.f23450d;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM", fc3.m11576l(4, 5, 3, m9458a, bArr, 1));
        l93 m9458a2 = m93.m9458a("AES128_GCM");
        bArr2 = fc3.f23450d;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW", fc3.m11576l(4, 5, 3, m9458a2, bArr2, 3));
        l93 m9458a3 = m93.m9458a("AES128_GCM");
        bArr3 = fc3.f23450d;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM", fc3.m11576l(4, 5, 4, m9458a3, bArr3, 1));
        l93 m9458a4 = m93.m9458a("AES128_GCM");
        bArr4 = fc3.f23450d;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW", fc3.m11576l(4, 5, 4, m9458a4, bArr4, 3));
        l93 m9458a5 = m93.m9458a("AES128_GCM");
        bArr5 = fc3.f23450d;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX", fc3.m11576l(4, 5, 4, m9458a5, bArr5, 3));
        l93 m9458a6 = m93.m9458a("AES128_CTR_HMAC_SHA256");
        bArr6 = fc3.f23450d;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", fc3.m11576l(4, 5, 3, m9458a6, bArr6, 1));
        l93 m9458a7 = m93.m9458a("AES128_CTR_HMAC_SHA256");
        bArr7 = fc3.f23450d;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", fc3.m11576l(4, 5, 3, m9458a7, bArr7, 3));
        l93 m9458a8 = m93.m9458a("AES128_CTR_HMAC_SHA256");
        bArr8 = fc3.f23450d;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", fc3.m11576l(4, 5, 4, m9458a8, bArr8, 1));
        l93 m9458a9 = m93.m9458a("AES128_CTR_HMAC_SHA256");
        bArr9 = fc3.f23450d;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", fc3.m11576l(4, 5, 4, m9458a9, bArr9, 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // p168r4.o93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ rf3 mo5373c(ll3 ll3Var) {
        return rf3.m7518D(ll3Var, bm3.m12746a());
    }
}
