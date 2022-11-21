package p168r4;

import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import p235z2.C7601t;
/* renamed from: r4.ae0 */
/* loaded from: classes2.dex */
public final class ae0 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ String f20469a;

    /* renamed from: b */
    public final /* synthetic */ String f20470b;

    /* renamed from: d */
    public final /* synthetic */ ce0 f20471d;

    public ae0(ce0 ce0Var, String str, String str2) {
        this.f20471d = ce0Var;
        this.f20469a = str;
        this.f20470b = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        context = this.f20471d.f21501d;
        DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
        try {
            String str = this.f20469a;
            String str2 = this.f20470b;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            C7601t.m939d();
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
            downloadManager.enqueue(request);
        } catch (IllegalStateException unused) {
            this.f20471d.m11557b("Could not store picture.");
        }
    }
}
