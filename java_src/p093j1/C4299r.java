package p093j1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import p027c5.C1062a;
/* renamed from: j1.r */
/* loaded from: classes.dex */
public final class C4299r extends BroadcastReceiver {

    /* renamed from: a */
    public final InterfaceC4287g f18160a;

    /* renamed from: b */
    public boolean f18161b;

    /* renamed from: c */
    public final /* synthetic */ C4298q f18162c;

    public C4299r(C4298q c4298q, InterfaceC4287g interfaceC4287g) {
        this.f18162c = c4298q;
        this.f18160a = interfaceC4287g;
    }

    /* renamed from: b */
    public final void m16844b(Context context) {
        C4299r c4299r;
        if (this.f18161b) {
            c4299r = this.f18162c.f18159b;
            context.unregisterReceiver(c4299r);
            this.f18161b = false;
            return;
        }
        C1062a.m24710l("BillingBroadcastManager", "Receiver is not registered.");
    }

    /* renamed from: c */
    public final void m16843c(Context context, IntentFilter intentFilter) {
        C4299r c4299r;
        if (!this.f18161b) {
            c4299r = this.f18162c.f18159b;
            context.registerReceiver(c4299r, intentFilter);
            this.f18161b = true;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f18160a.onPurchasesUpdated(C1062a.m24712j(intent, "BillingBroadcastManager"), C1062a.m24714h(intent.getExtras()));
    }
}
