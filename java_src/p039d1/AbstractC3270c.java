package p039d1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import p084i1.InterfaceC4086a;
import p209w0.AbstractC7114j;
/* renamed from: d1.c */
/* loaded from: classes.dex */
public abstract class AbstractC3270c<T> extends AbstractC3272d<T> {

    /* renamed from: h */
    public static final String f15575h = AbstractC7114j.m2489f("BrdcstRcvrCnstrntTrckr");

    /* renamed from: g */
    public final BroadcastReceiver f15576g;

    /* renamed from: d1.c$a */
    /* loaded from: classes.dex */
    public class C3271a extends BroadcastReceiver {
        public C3271a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                AbstractC3270c.this.mo19203h(context, intent);
            }
        }
    }

    /* renamed from: g */
    public abstract IntentFilter mo19204g();

    /* renamed from: h */
    public abstract void mo19203h(Context context, Intent intent);

    public AbstractC3270c(Context context, InterfaceC4086a interfaceC4086a) {
        super(context, interfaceC4086a);
        this.f15576g = new C3271a();
    }

    @Override // p039d1.AbstractC3272d
    /* renamed from: e */
    public void mo19211e() {
        AbstractC7114j.m2491c().mo2488a(f15575h, String.format("%s: registering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f15580b.registerReceiver(this.f15576g, mo19204g());
    }

    @Override // p039d1.AbstractC3272d
    /* renamed from: f */
    public void mo19210f() {
        AbstractC7114j.m2491c().mo2488a(f15575h, String.format("%s: unregistering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f15580b.unregisterReceiver(this.f15576g);
    }
}
