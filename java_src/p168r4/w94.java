package p168r4;

import java.io.UnsupportedEncodingException;
import java.util.Map;
/* renamed from: r4.w94 */
/* loaded from: classes2.dex */
public class w94 extends q84<String> {

    /* renamed from: x */
    public final Object f33144x;

    /* renamed from: y */
    public final v84<String> f33145y;

    public w94(int i, String str, v84<String> v84Var, u84 u84Var) {
        super(i, str, u84Var);
        this.f33144x = new Object();
        this.f33145y = v84Var;
    }

    @Override // p168r4.q84
    /* renamed from: H */
    public final w84<String> mo5795H(l84 l84Var) {
        String str;
        String str2;
        try {
            byte[] bArr = l84Var.f27129b;
            Map<String, String> map = l84Var.f27130c;
            String str3 = "ISO-8859-1";
            if (map != null && (str2 = map.get("Content-Type")) != null) {
                String[] split = str2.split(";", 0);
                int i = 1;
                while (true) {
                    if (i >= split.length) {
                        break;
                    }
                    String[] split2 = split[i].trim().split("=", 0);
                    if (split2.length == 2 && split2[0].equals("charset")) {
                        str3 = split2[1];
                        break;
                    }
                    i++;
                }
            }
            str = new String(bArr, str3);
        } catch (UnsupportedEncodingException unused) {
            str = new String(l84Var.f27129b);
        }
        return w84.m5799a(str, n94.m9142a(l84Var));
    }

    /* renamed from: O */
    public void mo5794O(String str) {
        v84<String> v84Var;
        synchronized (this.f33144x) {
            v84Var = this.f33145y;
        }
        v84Var.mo6200a(str);
    }
}
