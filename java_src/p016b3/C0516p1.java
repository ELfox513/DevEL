package p016b3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import p168r4.C5592av;
import p168r4.C6225rz;
/* renamed from: b3.p1 */
/* loaded from: classes.dex */
public final class C0516p1 {

    /* renamed from: d */
    public boolean f1671d;

    /* renamed from: e */
    public Context f1672e;

    /* renamed from: c */
    public boolean f1670c = false;

    /* renamed from: b */
    public final Map<BroadcastReceiver, IntentFilter> f1669b = new WeakHashMap();

    /* renamed from: a */
    public final BroadcastReceiver f1668a = new C0512o1(this);

    /* renamed from: a */
    public final synchronized void m26283a(Context context) {
        if (this.f1670c) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        this.f1672e = applicationContext;
        if (applicationContext == null) {
            this.f1672e = context;
        }
        C6225rz.m7278a(this.f1672e);
        this.f1671d = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31076n2)).booleanValue();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f1672e.registerReceiver(this.f1668a, intentFilter);
        this.f1670c = true;
    }

    /* renamed from: b */
    public final synchronized void m26282b(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (this.f1671d) {
            this.f1669b.put(broadcastReceiver, intentFilter);
        } else {
            context.registerReceiver(broadcastReceiver, intentFilter);
        }
    }

    /* renamed from: c */
    public final synchronized void m26281c(Context context, BroadcastReceiver broadcastReceiver) {
        if (this.f1671d) {
            this.f1669b.remove(broadcastReceiver);
        } else {
            context.unregisterReceiver(broadcastReceiver);
        }
    }

    /* renamed from: e */
    public final synchronized void m26279e(Context context, Intent intent) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<BroadcastReceiver, IntentFilter> entry : this.f1669b.entrySet()) {
            if (entry.getValue().hasAction(intent.getAction())) {
                arrayList.add(entry.getKey());
            }
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((BroadcastReceiver) arrayList.get(i)).onReceive(context, intent);
        }
    }
}
