package p168r4;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: r4.vq0 */
/* loaded from: classes2.dex */
public final class vq0 {

    /* renamed from: a */
    public final ArrayList<C5950kk> f32775a = new ArrayList<>();

    /* renamed from: b */
    public long f32776b;

    /* renamed from: b */
    public final void m6038b(C5950kk c5950kk) {
        this.f32775a.add(c5950kk);
    }

    /* renamed from: a */
    public final long m6039a() {
        Iterator<C5950kk> it = this.f32775a.iterator();
        while (it.hasNext()) {
            Map<String, List<String>> mo8788c = it.next().mo8788c();
            if (mo8788c != null) {
                for (Map.Entry<String, List<String>> entry : mo8788c.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase(entry.getKey())) {
                            this.f32776b = Math.max(this.f32776b, Long.parseLong(entry.getValue().get(0)));
                        }
                    } catch (RuntimeException unused) {
                    }
                }
                it.remove();
            }
        }
        return this.f32776b;
    }
}
