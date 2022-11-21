package p220x3;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import p203v3.InterfaceC7014h;
/* renamed from: x3.e0 */
/* loaded from: classes.dex */
public abstract class AbstractDialogInterface$OnClickListenerC7259e0 implements DialogInterface.OnClickListener {
    /* renamed from: b */
    public static AbstractDialogInterface$OnClickListenerC7259e0 m1951b(Activity activity, Intent intent, int i) {
        return new C7252c0(intent, activity, i);
    }

    /* renamed from: c */
    public static AbstractDialogInterface$OnClickListenerC7259e0 m1950c(InterfaceC7014h interfaceC7014h, Intent intent, int i) {
        return new C7256d0(intent, interfaceC7014h, 2);
    }

    /* renamed from: a */
    public abstract void mo1952a();

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        try {
            mo1952a();
        } catch (ActivityNotFoundException e) {
            String str = "Failed to start resolution intent.";
            if (true == Build.FINGERPRINT.contains("generic")) {
                str = "Failed to start resolution intent. This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store.";
            }
            Log.e("DialogRedirect", str, e);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
