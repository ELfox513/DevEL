package p168r4;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
import net.bytebuddy.pool.TypePool;
import p235z2.C7601t;
@Deprecated
/* renamed from: r4.h00 */
/* loaded from: classes2.dex */
public final class h00 {

    /* renamed from: a */
    public final List<d00> f24385a = new LinkedList();

    /* renamed from: b */
    public final Map<String, String> f24386b;

    /* renamed from: c */
    public final Object f24387c;

    /* renamed from: a */
    public final void m11027a(h00 h00Var) {
        synchronized (this.f24387c) {
        }
    }

    /* renamed from: b */
    public final boolean m11026b(d00 d00Var, long j, String... strArr) {
        synchronized (this.f24387c) {
            for (int i = 0; i <= 0; i++) {
                this.f24385a.add(new d00(j, strArr[i], d00Var));
            }
        }
        return true;
    }

    /* renamed from: c */
    public final f00 m11025c() {
        f00 f00Var;
        boolean booleanValue = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = new HashMap();
        synchronized (this.f24387c) {
            for (d00 d00Var : this.f24385a) {
                long m12248a = d00Var.m12248a();
                String m12247b = d00Var.m12247b();
                d00 m12246c = d00Var.m12246c();
                if (m12246c != null && m12248a > 0) {
                    sb.append(m12247b);
                    sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                    sb.append(m12248a - m12246c.m12248a());
                    sb.append(',');
                    if (booleanValue) {
                        if (!hashMap.containsKey(Long.valueOf(m12246c.m12248a()))) {
                            hashMap.put(Long.valueOf(m12246c.m12248a()), new StringBuilder(m12247b));
                        } else {
                            StringBuilder sb2 = (StringBuilder) hashMap.get(Long.valueOf(m12246c.m12248a()));
                            sb2.append(SignatureVisitor.EXTENDS);
                            sb2.append(m12247b);
                        }
                    }
                }
            }
            this.f24385a.clear();
            String str = null;
            if (!TextUtils.isEmpty(null)) {
                sb.append((String) null);
            } else if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            StringBuilder sb3 = new StringBuilder();
            if (booleanValue) {
                for (Map.Entry entry : hashMap.entrySet()) {
                    sb3.append((CharSequence) entry.getValue());
                    sb3.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                    sb3.append(C7601t.m932k().mo24763a() + (((Long) entry.getKey()).longValue() - C7601t.m932k().mo24762b()));
                    sb3.append(',');
                }
                if (sb3.length() > 0) {
                    sb3.setLength(sb3.length() - 1);
                }
                str = sb3.toString();
            }
            f00Var = new f00(sb.toString(), str);
        }
        return f00Var;
    }

    /* renamed from: e */
    public final Map<String, String> m11023e() {
        Map<String, String> map;
        synchronized (this.f24387c) {
            C7601t.m935h().m9062e();
            map = this.f24386b;
        }
        return map;
    }

    public h00(boolean z, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f24386b = linkedHashMap;
        this.f24387c = new Object();
        linkedHashMap.put("action", "make_wv");
        linkedHashMap.put("ad_format", str2);
    }

    /* renamed from: f */
    public static final d00 m11022f() {
        return new d00(C7601t.m932k().mo24762b(), null, null);
    }

    /* renamed from: d */
    public final void m11024d(String str, String str2) {
        C6410wz m9062e;
        if (TextUtils.isEmpty(str2) || (m9062e = C7601t.m935h().m9062e()) == null) {
            return;
        }
        synchronized (this.f24387c) {
            c00 m5539d = m9062e.m5539d(str);
            Map<String, String> map = this.f24386b;
            map.put(str, m5539d.mo4018a(map.get(str), str2));
        }
    }
}
