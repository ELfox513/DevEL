package p168r4;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.t83 */
/* loaded from: classes2.dex */
public final class t83<V> extends n73<V> {

    /* renamed from: s */
    public h83<V> f31733s;

    /* renamed from: t */
    public ScheduledFuture<?> f31734t;

    public t83(h83<V> h83Var) {
        h83Var.getClass();
        this.f31733s = h83Var;
    }

    /* renamed from: I */
    public static <V> h83<V> m6901I(h83<V> h83Var, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        t83 t83Var = new t83(h83Var);
        q83 q83Var = new q83(t83Var);
        t83Var.f31734t = scheduledExecutorService.schedule(q83Var, j, timeUnit);
        h83Var.mo6087c(q83Var, l73.INSTANCE);
        return t83Var;
    }

    @Override // p168r4.p63
    /* renamed from: i */
    public final String mo5448i() {
        h83<V> h83Var = this.f31733s;
        ScheduledFuture<?> scheduledFuture = this.f31734t;
        if (h83Var != null) {
            String obj = h83Var.toString();
            StringBuilder sb = new StringBuilder(obj.length() + 14);
            sb.append("inputFuture=[");
            sb.append(obj);
            sb.append("]");
            String sb2 = sb.toString();
            if (scheduledFuture != null) {
                long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
                if (delay > 0) {
                    StringBuilder sb3 = new StringBuilder(sb2.length() + 43);
                    sb3.append(sb2);
                    sb3.append(", remaining delay=[");
                    sb3.append(delay);
                    sb3.append(" ms]");
                    return sb3.toString();
                }
                return sb2;
            }
            return sb2;
        }
        return null;
    }

    @Override // p168r4.p63
    /* renamed from: j */
    public final void mo5447j() {
        m8455z(this.f31733s);
        ScheduledFuture<?> scheduledFuture = this.f31734t;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f31733s = null;
        this.f31734t = null;
    }
}
