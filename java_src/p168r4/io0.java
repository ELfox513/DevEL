package p168r4;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import java.util.concurrent.TimeUnit;
import p016b3.C0497k2;
@TargetApi(14)
/* renamed from: r4.io0 */
/* loaded from: classes2.dex */
public final class io0 {

    /* renamed from: b */
    public long f25205b;

    /* renamed from: a */
    public final long f25204a = TimeUnit.MILLISECONDS.toNanos(((Long) C5592av.m12935c().m8098c(C6225rz.f31161y)).longValue());

    /* renamed from: c */
    public boolean f25206c = true;

    /* renamed from: a */
    public final void m10589a() {
        this.f25206c = true;
    }

    /* renamed from: b */
    public final void m10588b(SurfaceTexture surfaceTexture, un0 un0Var) {
        if (un0Var == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (!this.f25206c && Math.abs(timestamp - this.f25205b) < this.f25204a) {
            return;
        }
        this.f25206c = false;
        this.f25205b = timestamp;
        C0497k2.f1630i.post(new ho0(this, un0Var));
    }
}
