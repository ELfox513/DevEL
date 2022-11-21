package p168r4;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.b94 */
/* loaded from: classes2.dex */
public final class b94 {

    /* renamed from: c */
    public static final boolean f20924c = c94.f21450b;

    /* renamed from: a */
    public final List<a94> f20925a = new ArrayList();

    /* renamed from: b */
    public boolean f20926b = false;

    /* renamed from: a */
    public final synchronized void m12838a(String str, long j) {
        if (!this.f20926b) {
            this.f20925a.add(new a94(str, j, SystemClock.elapsedRealtime()));
        } else {
            throw new IllegalStateException("Marker added to finished log");
        }
    }

    /* renamed from: b */
    public final synchronized void m12837b(String str) {
        List<a94> list;
        long j;
        this.f20926b = true;
        if (this.f20925a.size() == 0) {
            j = 0;
        } else {
            j = this.f20925a.get(list.size() - 1).f20426c - this.f20925a.get(0).f20426c;
        }
        if (j <= 0) {
            return;
        }
        long j2 = this.f20925a.get(0).f20426c;
        c94.m12506b("(%-4d ms) %s", Long.valueOf(j), str);
        for (a94 a94Var : this.f20925a) {
            long j3 = a94Var.f20426c;
            c94.m12506b("(+%-4d) [%2d] %s", Long.valueOf(j3 - j2), Long.valueOf(a94Var.f20425b), a94Var.f20424a);
            j2 = j3;
        }
    }

    public final void finalize() {
        if (!this.f20926b) {
            m12837b("Request on the loose");
            c94.m12505c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }
}
