package androidx.fragment.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
/* renamed from: androidx.fragment.app.c */
/* loaded from: classes.dex */
public class DialogInterface$OnCancelListenerC0254c extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* renamed from: j0 */
    public Handler f974j0;

    /* renamed from: k0 */
    public Runnable f975k0 = new RunnableC0255a();

    /* renamed from: l0 */
    public int f976l0 = 0;

    /* renamed from: m0 */
    public int f977m0 = 0;

    /* renamed from: n0 */
    public boolean f978n0 = true;

    /* renamed from: o0 */
    public boolean f979o0 = true;

    /* renamed from: p0 */
    public int f980p0 = -1;

    /* renamed from: q0 */
    public Dialog f981q0;

    /* renamed from: r0 */
    public boolean f982r0;

    /* renamed from: s0 */
    public boolean f983s0;

    /* renamed from: t0 */
    public boolean f984t0;

    /* renamed from: androidx.fragment.app.c$a */
    /* loaded from: classes.dex */
    public class RunnableC0255a implements Runnable {
        public RunnableC0255a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DialogInterface$OnCancelListenerC0254c dialogInterface$OnCancelListenerC0254c = DialogInterface$OnCancelListenerC0254c.this;
            Dialog dialog = dialogInterface$OnCancelListenerC0254c.f981q0;
            if (dialog != null) {
                dialogInterface$OnCancelListenerC0254c.onDismiss(dialog);
            }
        }
    }

    /* renamed from: c0 */
    public Dialog mo3458c0(Bundle bundle) {
        throw null;
    }

    /* renamed from: d0 */
    public void m27095d0(boolean z) {
        this.f979o0 = z;
    }

    /* renamed from: e0 */
    public void m27094e0(Dialog dialog, int i) {
        if (i != 1 && i != 2) {
            if (i == 3) {
                dialog.getWindow().addFlags(24);
            } else {
                return;
            }
        }
        dialog.requestWindowFeature(1);
    }

    /* renamed from: f0 */
    public void mo3457f0(AbstractC0262i abstractC0262i, String str) {
        this.f983s0 = false;
        this.f984t0 = true;
        AbstractC0285n mo26979a = abstractC0262i.mo26979a();
        mo26979a.m26891b(this, str);
        mo26979a.mo26889d();
    }

    /* renamed from: b0 */
    public void m27096b0(boolean z, boolean z2) {
        if (this.f983s0) {
            return;
        }
        this.f983s0 = true;
        this.f984t0 = false;
        Dialog dialog = this.f981q0;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f981q0.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.f974j0.getLooper()) {
                    onDismiss(this.f981q0);
                } else {
                    this.f974j0.post(this.f975k0);
                }
            }
        }
        this.f982r0 = true;
        if (this.f980p0 >= 0) {
            requireFragmentManager().mo26964f(this.f980p0, 1);
            this.f980p0 = -1;
            return;
        }
        AbstractC0285n mo26979a = requireFragmentManager().mo26979a();
        mo26979a.mo26886g(this);
        if (z) {
            mo26979a.mo26888e();
        } else {
            mo26979a.mo26889d();
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.f982r0) {
            m27096b0(true, true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        if (!this.f979o0) {
            return super.onGetLayoutInflater(bundle);
        }
        Dialog mo3458c0 = mo3458c0(bundle);
        this.f981q0 = mo3458c0;
        if (mo3458c0 != null) {
            m27094e0(mo3458c0, this.f976l0);
            return (LayoutInflater) this.f981q0.getContext().getSystemService("layout_inflater");
        }
        return (LayoutInflater) this.f888D.m27046f().getSystemService("layout_inflater");
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        Bundle bundle2;
        super.onActivityCreated(bundle);
        if (!this.f979o0) {
            return;
        }
        View view = getView();
        if (view != null) {
            if (view.getParent() == null) {
                this.f981q0.setContentView(view);
            } else {
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
        }
        ActivityC0256d activity = getActivity();
        if (activity != null) {
            this.f981q0.setOwnerActivity(activity);
        }
        this.f981q0.setCancelable(this.f978n0);
        this.f981q0.setOnCancelListener(this);
        this.f981q0.setOnDismissListener(this);
        if (bundle != null && (bundle2 = bundle.getBundle("android:savedDialogState")) != null) {
            this.f981q0.onRestoreInstanceState(bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (!this.f984t0) {
            this.f983s0 = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        this.f974j0 = new Handler();
        if (this.f892H == 0) {
            z = true;
        } else {
            z = false;
        }
        this.f979o0 = z;
        if (bundle != null) {
            this.f976l0 = bundle.getInt("android:style", 0);
            this.f977m0 = bundle.getInt("android:theme", 0);
            this.f978n0 = bundle.getBoolean("android:cancelable", true);
            this.f979o0 = bundle.getBoolean("android:showsDialog", this.f979o0);
            this.f980p0 = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.f981q0;
        if (dialog != null) {
            this.f982r0 = true;
            dialog.setOnDismissListener(null);
            this.f981q0.dismiss();
            if (!this.f983s0) {
                onDismiss(this.f981q0);
            }
            this.f981q0 = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (!this.f984t0 && !this.f983s0) {
            this.f983s0 = true;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        Bundle onSaveInstanceState;
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.f981q0;
        if (dialog != null && (onSaveInstanceState = dialog.onSaveInstanceState()) != null) {
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i = this.f976l0;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.f977m0;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.f978n0;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.f979o0;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.f980p0;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = this.f981q0;
        if (dialog != null) {
            this.f982r0 = false;
            dialog.show();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        Dialog dialog = this.f981q0;
        if (dialog != null) {
            dialog.hide();
        }
    }
}
