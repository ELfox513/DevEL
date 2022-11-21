package p185t3;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import p220x3.C7297q;
/* renamed from: t3.c */
/* loaded from: classes.dex */
public class DialogFragmentC6736c extends DialogFragment {

    /* renamed from: a */
    public Dialog f35393a;

    /* renamed from: b */
    public DialogInterface.OnCancelListener f35394b;

    /* renamed from: d */
    public Dialog f35395d;

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(@RecentlyNonNull DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f35394b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public void show(@RecentlyNonNull FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }

    /* renamed from: a */
    public static DialogFragmentC6736c m3522a(@RecentlyNonNull Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        DialogFragmentC6736c dialogFragmentC6736c = new DialogFragmentC6736c();
        Dialog dialog2 = (Dialog) C7297q.m1882k(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        dialogFragmentC6736c.f35393a = dialog2;
        if (onCancelListener != null) {
            dialogFragmentC6736c.f35394b = onCancelListener;
        }
        return dialogFragmentC6736c;
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.f35393a;
        if (dialog == null) {
            setShowsDialog(false);
            if (this.f35395d == null) {
                this.f35395d = new AlertDialog.Builder(getActivity()).create();
            }
            return this.f35395d;
        }
        return dialog;
    }
}
