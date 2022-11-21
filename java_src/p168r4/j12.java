package p168r4;

import android.app.AlertDialog;
import java.util.Timer;
import java.util.TimerTask;
import p004a3.BinderC0073n;
/* renamed from: r4.j12 */
/* loaded from: classes2.dex */
public final class j12 extends TimerTask {

    /* renamed from: a */
    public final /* synthetic */ AlertDialog f25857a;

    /* renamed from: b */
    public final /* synthetic */ Timer f25858b;

    /* renamed from: d */
    public final /* synthetic */ BinderC0073n f25859d;

    public j12(AlertDialog alertDialog, Timer timer, BinderC0073n binderC0073n) {
        this.f25857a = alertDialog;
        this.f25858b = timer;
        this.f25859d = binderC0073n;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.f25857a.dismiss();
        this.f25858b.cancel();
        BinderC0073n binderC0073n = this.f25859d;
        if (binderC0073n != null) {
            binderC0073n.m27702a();
        }
    }
}
