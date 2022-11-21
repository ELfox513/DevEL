package p168r4;

import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
/* renamed from: r4.eb3 */
/* loaded from: classes2.dex */
public final class eb3 extends q93<te3> {
    public eb3() {
        super(te3.class, new cb3(c93.class));
    }

    /* renamed from: m */
    public static boolean m11825m() {
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
            return false;
        }
    }

    @Override // p168r4.q93
    /* renamed from: b */
    public final String mo4339b() {
        return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
    }

    @Override // p168r4.q93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ te3 mo4338c(ll3 ll3Var) {
        return te3.m6836E(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.q93
    /* renamed from: h */
    public final o93<?, te3> mo4336h() {
        return new db3(this, we3.class);
    }

    @Override // p168r4.q93
    /* renamed from: i */
    public final int mo4335i() {
        return 3;
    }

    @Override // p168r4.q93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4337d(te3 te3Var) {
        te3 te3Var2 = te3Var;
        dk3.m12123b(te3Var2.m6838C(), 0);
        dk3.m12124a(te3Var2.m6837D().mo7747o());
    }

    /* renamed from: k */
    public static void m11827k(boolean z) {
        if (m11825m()) {
            ja3.m10366c(new eb3(), true);
        }
    }

    /* renamed from: l */
    public static /* synthetic */ n93<we3> m11826l(int i, int i2) {
        ve3 m5743E = we3.m5743E();
        m5743E.m6165v(i);
        return new n93<>(m5743E.m9614o(), i2);
    }
}
