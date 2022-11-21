package p168r4;

import android.util.Log;
/* renamed from: r4.k74 */
/* loaded from: classes2.dex */
public final class k74 {
    /* renamed from: a */
    public static i74 m10095a(b04 b04Var) {
        boolean z;
        byte[] bArr;
        C6423xb c6423xb = new C6423xb(16);
        if (j74.m10389a(b04Var, c6423xb).f25949a != 1380533830) {
            return null;
        }
        vz3 vz3Var = (vz3) b04Var;
        vz3Var.mo5960i(c6423xb.m5402q(), 0, 4, false);
        c6423xb.m5403p(0);
        int m5423D = c6423xb.m5423D();
        if (m5423D != 1463899717) {
            StringBuilder sb = new StringBuilder(36);
            sb.append("Unsupported RIFF format: ");
            sb.append(m5423D);
            Log.e("WavHeaderReader", sb.toString());
            return null;
        }
        j74 m10389a = j74.m10389a(b04Var, c6423xb);
        while (m10389a.f25949a != 1718449184) {
            vz3Var.m5955o((int) m10389a.f25950b, false);
            m10389a = j74.m10389a(b04Var, c6423xb);
        }
        if (m10389a.f25950b >= 16) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        vz3Var.mo5960i(c6423xb.m5402q(), 0, 16, false);
        c6423xb.m5403p(0);
        int m5395x = c6423xb.m5395x();
        int m5395x2 = c6423xb.m5395x();
        int m5416c = c6423xb.m5416c();
        int m5416c2 = c6423xb.m5416c();
        int m5395x3 = c6423xb.m5395x();
        int m5395x4 = c6423xb.m5395x();
        int i = ((int) m10389a.f25950b) - 16;
        if (i > 0) {
            byte[] bArr2 = new byte[i];
            vz3Var.mo5960i(bArr2, 0, i, false);
            bArr = bArr2;
        } else {
            bArr = C5979lc.f27169f;
        }
        return new i74(m5395x, m5395x2, m5416c, m5416c2, m5395x3, m5395x4, bArr);
    }
}
