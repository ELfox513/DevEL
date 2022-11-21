package p139o2;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import p085i2.AbstractC4113m;
import p112l2.C4560a;
import p148p2.InterfaceC5321c;
import p166r2.InterfaceC5525a;
import p175s2.C6577a;
/* renamed from: o2.a */
/* loaded from: classes.dex */
public class C5064a implements InterfaceC5091v {

    /* renamed from: a */
    public final Context f19289a;

    /* renamed from: b */
    public final InterfaceC5321c f19290b;

    /* renamed from: c */
    public AlarmManager f19291c;

    /* renamed from: d */
    public final AbstractC5072g f19292d;

    /* renamed from: e */
    public final InterfaceC5525a f19293e;

    public C5064a(Context context, InterfaceC5321c interfaceC5321c, InterfaceC5525a interfaceC5525a, AbstractC5072g abstractC5072g) {
        this(context, interfaceC5321c, (AlarmManager) context.getSystemService("alarm"), interfaceC5525a, abstractC5072g);
    }

    @Override // p139o2.InterfaceC5091v
    /* renamed from: b */
    public void mo14673b(AbstractC4113m abstractC4113m, int i) {
        mo14674a(abstractC4113m, i, false);
    }

    /* renamed from: c */
    public boolean m14726c(Intent intent) {
        return PendingIntent.getBroadcast(this.f19289a, 0, intent, 536870912) != null;
    }

    @Override // p139o2.InterfaceC5091v
    /* renamed from: a */
    public void mo14674a(AbstractC4113m abstractC4113m, int i, boolean z) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter("backendName", abstractC4113m.mo17356b());
        builder.appendQueryParameter("priority", String.valueOf(C6577a.m3882a(abstractC4113m.mo17354d())));
        if (abstractC4113m.mo17355c() != null) {
            builder.appendQueryParameter("extras", Base64.encodeToString(abstractC4113m.mo17355c(), 0));
        }
        Intent intent = new Intent(this.f19289a, AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra("attemptNumber", i);
        if (!z && m14726c(intent)) {
            C4560a.m16005a("AlarmManagerScheduler", "Upload for context %s is already scheduled. Returning...", abstractC4113m);
            return;
        }
        long mo13467w0 = this.f19290b.mo13467w0(abstractC4113m);
        long m14717g = this.f19292d.m14717g(abstractC4113m.mo17354d(), mo13467w0, i);
        C4560a.m16004b("AlarmManagerScheduler", "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d", abstractC4113m, Long.valueOf(m14717g), Long.valueOf(mo13467w0), Integer.valueOf(i));
        this.f19291c.set(3, this.f19293e.getTime() + m14717g, PendingIntent.getBroadcast(this.f19289a, 0, intent, 0));
    }

    public C5064a(Context context, InterfaceC5321c interfaceC5321c, AlarmManager alarmManager, InterfaceC5525a interfaceC5525a, AbstractC5072g abstractC5072g) {
        this.f19289a = context;
        this.f19290b = interfaceC5321c;
        this.f19291c = alarmManager;
        this.f19293e = interfaceC5525a;
        this.f19292d = abstractC5072g;
    }
}
