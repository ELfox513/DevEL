package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;
import p209w0.AbstractC7114j;
import p209w0.AbstractC7131t;
import p209w0.C7117l;
/* loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f1435a = AbstractC7114j.m2489f("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        AbstractC7114j.m2491c().mo2488a(f1435a, "Requesting diagnostics", new Throwable[0]);
        try {
            AbstractC7131t.m2475g(context).m2476f(C7117l.m2483d(DiagnosticsWorker.class));
        } catch (IllegalStateException e) {
            AbstractC7114j.m2491c().mo2487b(f1435a, "WorkManager is not initialized", e);
        }
    }
}
