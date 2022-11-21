package p185t3;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import androidx.fragment.app.AbstractC0262i;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0254c;
import p220x3.C7297q;
/* renamed from: t3.p */
/* loaded from: classes.dex */
public class C6760p extends DialogInterface$OnCancelListenerC0254c {

    /* renamed from: u0 */
    public Dialog f35440u0;

    /* renamed from: v0 */
    public DialogInterface.OnCancelListener f35441v0;

    /* renamed from: w0 */
    public Dialog f35442w0;

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0254c
    /* renamed from: f0 */
    public void mo3457f0(@RecentlyNonNull AbstractC0262i abstractC0262i, String str) {
        super.mo3457f0(abstractC0262i, str);
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(@RecentlyNonNull DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f35441v0;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    /* renamed from: g0 */
    public static C6760p m3456g0(@RecentlyNonNull Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        C6760p c6760p = new C6760p();
        Dialog dialog2 = (Dialog) C7297q.m1882k(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        c6760p.f35440u0 = dialog2;
        if (onCancelListener != null) {
            c6760p.f35441v0 = onCancelListener;
        }
        return c6760p;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC0254c
    /* renamed from: c0 */
    public Dialog mo3458c0(Bundle bundle) {
        Dialog dialog = this.f35440u0;
        if (dialog == null) {
            m27095d0(false);
            if (this.f35442w0 == null) {
                this.f35442w0 = new AlertDialog.Builder(getActivity()).create();
            }
            return this.f35442w0;
        }
        return dialog;
    }
}
