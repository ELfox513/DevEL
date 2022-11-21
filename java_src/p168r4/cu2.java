package p168r4;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p026c4.InterfaceC1045f;
/* renamed from: r4.cu2 */
/* loaded from: classes2.dex */
public final class cu2 {

    /* renamed from: a */
    public final InterfaceC1045f f21682a;

    /* renamed from: b */
    public final Map<String, List<String>> f21683b = new HashMap();

    /* renamed from: c */
    public final Map<String, Long> f21684c = new HashMap();

    /* renamed from: a */
    public final void m12358a(String str) {
        if (this.f21684c.containsKey(str)) {
            long mo24762b = this.f21682a.mo24762b();
            long longValue = this.f21684c.remove(str).longValue();
            StringBuilder sb = new StringBuilder(20);
            sb.append(mo24762b - longValue);
            m12355d(str, sb.toString());
            return;
        }
        this.f21684c.put(str, Long.valueOf(this.f21682a.mo24762b()));
    }

    /* renamed from: b */
    public final void m12357b(String str, String str2) {
        if (this.f21684c.containsKey(str)) {
            long mo24762b = this.f21682a.mo24762b();
            long longValue = this.f21684c.remove(str).longValue();
            StringBuilder sb = new StringBuilder(str2.length() + 20);
            sb.append(str2);
            sb.append(mo24762b - longValue);
            m12355d(str, sb.toString());
            return;
        }
        this.f21684c.put(str, Long.valueOf(this.f21682a.mo24762b()));
    }

    /* renamed from: c */
    public final List<bu2> m12356c() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : this.f21683b.entrySet()) {
            int i = 0;
            if (entry.getValue().size() > 1) {
                for (String str : entry.getValue()) {
                    String key = entry.getKey();
                    i++;
                    StringBuilder sb = new StringBuilder(String.valueOf(key).length() + 12);
                    sb.append(key);
                    sb.append(".");
                    sb.append(i);
                    arrayList.add(new bu2(sb.toString(), str));
                }
            } else {
                arrayList.add(new bu2(entry.getKey(), entry.getValue().get(0)));
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public final void m12355d(String str, String str2) {
        if (!this.f21683b.containsKey(str)) {
            this.f21683b.put(str, new ArrayList());
        }
        this.f21683b.get(str).add(str2);
    }

    public cu2(InterfaceC1045f interfaceC1045f) {
        this.f21682a = interfaceC1045f;
    }
}
