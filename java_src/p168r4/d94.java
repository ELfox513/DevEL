package p168r4;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* renamed from: r4.d94 */
/* loaded from: classes2.dex */
public final class d94 implements p84 {

    /* renamed from: a */
    public final Map<String, List<q84<?>>> f22193a = new HashMap();

    /* renamed from: b */
    public final b84 f22194b;

    /* renamed from: c */
    public final BlockingQueue<q84<?>> f22195c;

    /* renamed from: d */
    public final g84 f22196d;

    /* JADX WARN: Multi-variable type inference failed */
    public d94(b84 b84Var, b84 b84Var2, BlockingQueue<q84<?>> blockingQueue, g84 g84Var) {
        this.f22196d = blockingQueue;
        this.f22194b = b84Var;
        this.f22195c = b84Var2;
    }

    @Override // p168r4.p84
    /* renamed from: a */
    public final synchronized void mo8448a(q84<?> q84Var) {
        String m7932v = q84Var.m7932v();
        List<q84<?>> remove = this.f22193a.remove(m7932v);
        if (remove != null && !remove.isEmpty()) {
            if (c94.f21450b) {
                c94.m12507a("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), m7932v);
            }
            q84<?> remove2 = remove.remove(0);
            this.f22193a.put(m7932v, remove);
            remove2.m7945K(this);
            try {
                this.f22195c.put(remove2);
            } catch (InterruptedException e) {
                c94.m12505c("Couldn't add request to queue. %s", e.toString());
                Thread.currentThread().interrupt();
                this.f22194b.m12843b();
            }
        }
    }

    /* renamed from: c */
    public final synchronized boolean m12189c(q84<?> q84Var) {
        String m7932v = q84Var.m7932v();
        if (this.f22193a.containsKey(m7932v)) {
            List<q84<?>> list = this.f22193a.get(m7932v);
            if (list == null) {
                list = new ArrayList<>();
            }
            q84Var.m7938h("waiting-for-response");
            list.add(q84Var);
            this.f22193a.put(m7932v, list);
            if (c94.f21450b) {
                c94.m12506b("Request for cacheKey=%s is in flight, putting on hold.", m7932v);
            }
            return true;
        }
        this.f22193a.put(m7932v, null);
        q84Var.m7945K(this);
        if (c94.f21450b) {
            c94.m12506b("new request, sending to network %s", m7932v);
        }
        return false;
    }

    @Override // p168r4.p84
    /* renamed from: b */
    public final void mo8447b(q84<?> q84Var, w84<?> w84Var) {
        List<q84<?>> remove;
        y74 y74Var = w84Var.f33140b;
        if (y74Var != null && !y74Var.m4796a(System.currentTimeMillis())) {
            String m7932v = q84Var.m7932v();
            synchronized (this) {
                remove = this.f22193a.remove(m7932v);
            }
            if (remove != null) {
                if (c94.f21450b) {
                    c94.m12507a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), m7932v);
                }
                for (q84<?> q84Var2 : remove) {
                    this.f22196d.m11250a(q84Var2, w84Var, null);
                }
                return;
            }
            return;
        }
        mo8448a(q84Var);
    }
}
