package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RecentlyNonNull;
import p060f4.BinderC3514b;
import p168r4.C6479yu;
import p168r4.cm0;
import p168r4.we0;
/* loaded from: classes.dex */
public final class AdActivity extends Activity {

    /* renamed from: a */
    public we0 f7617a;

    @Override // android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        m23099a();
    }

    /* renamed from: a */
    public final void m23099a() {
        we0 we0Var = this.f7617a;
        if (we0Var != null) {
            try {
                we0Var.mo5747r();
            } catch (RemoteException e) {
                cm0.m12434i("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, @RecentlyNonNull Intent intent) {
        try {
            we0 we0Var = this.f7617a;
            if (we0Var != null) {
                we0Var.mo5749m2(i, i2, intent);
            }
        } catch (Exception e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        try {
            we0 we0Var = this.f7617a;
            if (we0Var != null) {
                if (!we0Var.mo5757g()) {
                    return;
                }
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
        super.onBackPressed();
        try {
            we0 we0Var2 = this.f7617a;
            if (we0Var2 != null) {
                we0Var2.mo5759c();
            }
        } catch (RemoteException e2) {
            cm0.m12434i("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        try {
            we0 we0Var = this.f7617a;
            if (we0Var != null) {
                we0Var.mo5750m();
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        try {
            we0 we0Var = this.f7617a;
            if (we0Var != null) {
                we0Var.mo5752k();
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(@RecentlyNonNull Bundle bundle) {
        try {
            we0 we0Var = this.f7617a;
            if (we0Var != null) {
                we0Var.mo5746u0(bundle);
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public final void onStop() {
        try {
            we0 we0Var = this.f7617a;
            if (we0Var != null) {
                we0Var.mo5748o();
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(@RecentlyNonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            we0 we0Var = this.f7617a;
            if (we0Var != null) {
                we0Var.mo5754i0(BinderC3514b.m18741L0(configuration));
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        we0 m5570k = C6479yu.m4567b().m5570k(this);
        this.f7617a = m5570k;
        if (m5570k != null) {
            try {
                m5570k.mo5751l0(bundle);
                return;
            } catch (RemoteException e) {
                cm0.m12434i("#007 Could not call remote method.", e);
                finish();
                return;
            }
        }
        cm0.m12434i("#007 Could not call remote method.", null);
        finish();
    }

    @Override // android.app.Activity
    public final void onRestart() {
        super.onRestart();
        try {
            we0 we0Var = this.f7617a;
            if (we0Var != null) {
                we0Var.mo5753j();
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        try {
            we0 we0Var = this.f7617a;
            if (we0Var != null) {
                we0Var.mo5755i();
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        try {
            we0 we0Var = this.f7617a;
            if (we0Var != null) {
                we0Var.mo5756h();
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            we0 we0Var = this.f7617a;
            if (we0Var != null) {
                we0Var.mo5758d();
            }
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    public final void setContentView(@RecentlyNonNull View view) {
        super.setContentView(view);
        m23099a();
    }

    @Override // android.app.Activity
    public final void setContentView(@RecentlyNonNull View view, @RecentlyNonNull ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        m23099a();
    }
}
