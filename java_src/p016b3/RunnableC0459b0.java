package p016b3;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
/* renamed from: b3.b0 */
/* loaded from: classes.dex */
public final class RunnableC0459b0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f1547a;

    /* renamed from: b */
    public final /* synthetic */ String f1548b;

    /* renamed from: d */
    public final /* synthetic */ boolean f1549d;

    /* renamed from: k */
    public final /* synthetic */ boolean f1550k;

    public RunnableC0459b0(C0463c0 c0463c0, Context context, String str, boolean z, boolean z2) {
        this.f1547a = context;
        this.f1548b = str;
        this.f1549d = z;
        this.f1550k = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f1547a);
        builder.setMessage(this.f1548b);
        if (this.f1549d) {
            builder.setTitle("Error");
        } else {
            builder.setTitle("Info");
        }
        if (this.f1550k) {
            builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builder.setPositiveButton("Learn More", new DialogInterface$OnClickListenerC0455a0(this));
            builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builder.create().show();
    }
}
