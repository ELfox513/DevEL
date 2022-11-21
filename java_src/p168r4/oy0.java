package p168r4;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
import net.bytebuddy.pool.TypePool;
import p235z2.C7601t;
/* renamed from: r4.oy0 */
/* loaded from: classes2.dex */
public final class oy0 implements yx0 {

    /* renamed from: a */
    public final CookieManager f29269a;

    public oy0(Context context) {
        this.f29269a = C7601t.m937f().mo26270k(context);
    }

    @Override // p168r4.yx0
    /* renamed from: a */
    public final void mo4539a(Map<String, String> map) {
        String str;
        if (this.f29269a == null) {
            return;
        }
        if (map.get("clear") != null) {
            String str2 = (String) C5592av.m12935c().m8098c(C6225rz.f31170z0);
            String cookie = this.f29269a.getCookie(str2);
            if (cookie != null) {
                List<String> m10440f = j13.m10444b(m03.m9523b(TypePool.Default.LazyTypeDescription.GenericTypeToken.INDEXED_TYPE_DELIMITER)).m10440f(cookie);
                for (int i = 0; i < m10440f.size(); i++) {
                    CookieManager cookieManager = this.f29269a;
                    Iterator<String> it = j13.m10444b(m03.m9523b(SignatureVisitor.INSTANCEOF)).m10442d(m10440f.get(i)).iterator();
                    it.getClass();
                    if (it.hasNext()) {
                        String valueOf = String.valueOf(it.next());
                        String valueOf2 = String.valueOf((String) C5592av.m12935c().m8098c(C6225rz.f31098q0));
                        if (valueOf2.length() != 0) {
                            str = valueOf.concat(valueOf2);
                        } else {
                            str = new String(valueOf);
                        }
                        cookieManager.setCookie(str2, str);
                    } else {
                        StringBuilder sb = new StringBuilder(91);
                        sb.append("position (0) must be less than the number of elements that remained (");
                        sb.append(0);
                        sb.append(")");
                        throw new IndexOutOfBoundsException(sb.toString());
                    }
                }
                return;
            }
            return;
        }
        String str3 = map.get("cookie");
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        this.f29269a.setCookie((String) C5592av.m12935c().m8098c(C6225rz.f31170z0), str3);
    }
}
