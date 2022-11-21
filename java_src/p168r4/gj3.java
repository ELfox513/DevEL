package p168r4;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import java.util.Arrays;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: r4.gj3 */
/* loaded from: classes2.dex */
public final class gj3 {

    /* renamed from: a */
    public final ECPublicKey f24116a;

    public gj3(ECPublicKey eCPublicKey) {
        this.f24116a = eCPublicKey;
    }

    /* renamed from: a */
    public final fj3 m11131a(String str, byte[] bArr, byte[] bArr2, int i, int i2) {
        char c;
        int i3;
        byte[] bArr3;
        int i4;
        byte[] bArr4;
        byte b;
        KeyPair m10902c = hj3.m10902c(this.f24116a.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) m10902c.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) m10902c.getPrivate();
        ECPublicKey eCPublicKey2 = this.f24116a;
        try {
            ECParameterSpec params = eCPublicKey2.getParams();
            ECParameterSpec params2 = eCPrivateKey.getParams();
            if (params.getCurve().equals(params2.getCurve()) && params.getGenerator().equals(params2.getGenerator()) && params.getOrder().equals(params2.getOrder()) && params.getCofactor() == params2.getCofactor()) {
                ECPoint w = eCPublicKey2.getW();
                hj3.m10904a(w, eCPrivateKey.getParams().getCurve());
                PublicKey generatePublic = kj3.f26449k.m10017b("EC").generatePublic(new ECPublicKeySpec(w, eCPrivateKey.getParams()));
                KeyAgreement m10017b = kj3.f26447i.m10017b("ECDH");
                m10017b.init(eCPrivateKey);
                int i5 = 1;
                try {
                    m10017b.doPhase(generatePublic, true);
                    byte[] generateSecret = m10017b.generateSecret();
                    EllipticCurve curve = eCPrivateKey.getParams().getCurve();
                    BigInteger bigInteger = new BigInteger(1, generateSecret);
                    if (bigInteger.signum() != -1 && bigInteger.compareTo(hj3.m10903b(curve)) < 0) {
                        BigInteger m10903b = hj3.m10903b(curve);
                        BigInteger mod = bigInteger.multiply(bigInteger).add(curve.getA()).multiply(bigInteger).add(curve.getB()).mod(m10903b);
                        if (m10903b.signum() == 1) {
                            BigInteger mod2 = mod.mod(m10903b);
                            BigInteger bigInteger2 = BigInteger.ZERO;
                            if (!mod2.equals(bigInteger2)) {
                                if (m10903b.testBit(0) && m10903b.testBit(1)) {
                                    bigInteger2 = mod2.modPow(m10903b.add(BigInteger.ONE).shiftRight(2), m10903b);
                                } else if (m10903b.testBit(0) && !m10903b.testBit(1)) {
                                    bigInteger2 = BigInteger.ONE;
                                    BigInteger shiftRight = m10903b.subtract(bigInteger2).shiftRight(1);
                                    int i6 = 0;
                                    while (true) {
                                        BigInteger mod3 = bigInteger2.multiply(bigInteger2).subtract(mod2).mod(m10903b);
                                        if (mod3.equals(BigInteger.ZERO)) {
                                            break;
                                        }
                                        BigInteger modPow = mod3.modPow(shiftRight, m10903b);
                                        BigInteger bigInteger3 = BigInteger.ONE;
                                        if (modPow.add(bigInteger3).equals(m10903b)) {
                                            BigInteger shiftRight2 = m10903b.add(bigInteger3).shiftRight(i5);
                                            BigInteger bigInteger4 = bigInteger2;
                                            for (int bitLength = shiftRight2.bitLength() - 2; bitLength >= 0; bitLength--) {
                                                BigInteger multiply = bigInteger4.multiply(bigInteger3);
                                                BigInteger mod4 = bigInteger4.multiply(bigInteger4).add(bigInteger3.multiply(bigInteger3).mod(m10903b).multiply(mod3)).mod(m10903b);
                                                BigInteger mod5 = multiply.add(multiply).mod(m10903b);
                                                if (shiftRight2.testBit(bitLength)) {
                                                    BigInteger mod6 = mod4.multiply(bigInteger2).add(mod5.multiply(mod3)).mod(m10903b);
                                                    bigInteger3 = bigInteger2.multiply(mod5).add(mod4).mod(m10903b);
                                                    bigInteger4 = mod6;
                                                } else {
                                                    bigInteger4 = mod4;
                                                    bigInteger3 = mod5;
                                                }
                                            }
                                            bigInteger2 = bigInteger4;
                                        } else if (modPow.equals(bigInteger3)) {
                                            bigInteger2 = bigInteger2.add(bigInteger3);
                                            i6++;
                                            if (i6 == 128 && !m10903b.isProbablePrime(80)) {
                                                throw new InvalidAlgorithmParameterException("p is not prime");
                                            }
                                            i5 = 1;
                                        } else {
                                            throw new InvalidAlgorithmParameterException("p is not prime");
                                        }
                                    }
                                } else {
                                    bigInteger2 = null;
                                }
                                if (bigInteger2 != null && bigInteger2.multiply(bigInteger2).mod(m10903b).compareTo(mod2) != 0) {
                                    throw new GeneralSecurityException("Could not find a modular square root");
                                }
                            }
                            if (!bigInteger2.testBit(0)) {
                                m10903b.subtract(bigInteger2).mod(m10903b);
                            }
                            EllipticCurve curve2 = eCPublicKey.getParams().getCurve();
                            ECPoint w2 = eCPublicKey.getW();
                            hj3.m10904a(w2, curve2);
                            int bitLength2 = (hj3.m10903b(curve2).subtract(BigInteger.ONE).bitLength() + 7) / 8;
                            int i7 = i2 - 1;
                            if (i7 != 0) {
                                if (i7 != 2) {
                                    int i8 = bitLength2 + 1;
                                    bArr4 = new byte[i8];
                                    byte[] byteArray = w2.getAffineX().toByteArray();
                                    int length = byteArray.length;
                                    c = 0;
                                    System.arraycopy(byteArray, 0, bArr4, i8 - length, length);
                                    if (true != w2.getAffineY().testBit(0)) {
                                        b = 2;
                                    } else {
                                        b = 3;
                                    }
                                    bArr4[0] = b;
                                } else {
                                    int i9 = bitLength2 + bitLength2;
                                    bArr4 = new byte[i9];
                                    byte[] byteArray2 = w2.getAffineX().toByteArray();
                                    int length2 = byteArray2.length;
                                    if (length2 > bitLength2) {
                                        byteArray2 = Arrays.copyOfRange(byteArray2, length2 - bitLength2, length2);
                                    }
                                    byte[] byteArray3 = w2.getAffineY().toByteArray();
                                    int length3 = byteArray3.length;
                                    if (length3 > bitLength2) {
                                        byteArray3 = Arrays.copyOfRange(byteArray3, length3 - bitLength2, length3);
                                    }
                                    int length4 = byteArray3.length;
                                    c = 0;
                                    System.arraycopy(byteArray3, 0, bArr4, i9 - length4, length4);
                                    int length5 = byteArray2.length;
                                    System.arraycopy(byteArray2, 0, bArr4, bitLength2 - length5, length5);
                                }
                                bArr3 = bArr4;
                                i4 = 2;
                                i3 = 1;
                            } else {
                                c = 0;
                                i3 = 1;
                                int i10 = bitLength2 + bitLength2 + 1;
                                bArr3 = new byte[i10];
                                byte[] byteArray4 = w2.getAffineX().toByteArray();
                                byte[] byteArray5 = w2.getAffineY().toByteArray();
                                int length6 = byteArray5.length;
                                System.arraycopy(byteArray5, 0, bArr3, i10 - length6, length6);
                                int length7 = byteArray4.length;
                                System.arraycopy(byteArray4, 0, bArr3, (bitLength2 + 1) - length7, length7);
                                bArr3[0] = 4;
                                i4 = 2;
                            }
                            byte[][] bArr5 = new byte[i4];
                            bArr5[c] = bArr3;
                            bArr5[i3] = generateSecret;
                            byte[] m5715a = wi3.m5715a(bArr5);
                            Mac m10017b2 = kj3.f26444f.m10017b(str);
                            if (i <= m10017b2.getMacLength() * 255) {
                                if (bArr != null && bArr.length != 0) {
                                    m10017b2.init(new SecretKeySpec(bArr, str));
                                } else {
                                    m10017b2.init(new SecretKeySpec(new byte[m10017b2.getMacLength()], str));
                                }
                                byte[] doFinal = m10017b2.doFinal(m5715a);
                                byte[] bArr6 = new byte[i];
                                m10017b2.init(new SecretKeySpec(doFinal, str));
                                byte[] bArr7 = new byte[0];
                                int i11 = 0;
                                while (true) {
                                    m10017b2.update(bArr7);
                                    m10017b2.update(bArr2);
                                    m10017b2.update((byte) i3);
                                    byte[] doFinal2 = m10017b2.doFinal();
                                    int length8 = doFinal2.length;
                                    int i12 = i11 + length8;
                                    if (i12 < i) {
                                        System.arraycopy(doFinal2, 0, bArr6, i11, length8);
                                        i3++;
                                        bArr7 = doFinal2;
                                        i11 = i12;
                                    } else {
                                        System.arraycopy(doFinal2, 0, bArr6, i11, i - i11);
                                        return new fj3(bArr3, bArr6);
                                    }
                                }
                            } else {
                                throw new GeneralSecurityException("size too large");
                            }
                        } else {
                            throw new InvalidAlgorithmParameterException("p must be positive");
                        }
                    } else {
                        throw new GeneralSecurityException("shared secret is out of range");
                    }
                } catch (IllegalStateException e) {
                    throw new GeneralSecurityException(e.toString());
                }
            } else {
                throw new GeneralSecurityException("invalid public key spec");
            }
        } catch (IllegalArgumentException | NullPointerException e2) {
            throw new GeneralSecurityException(e2.toString());
        }
    }
}
