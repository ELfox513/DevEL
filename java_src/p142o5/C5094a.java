package p142o5;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import p133n5.C4755c;
import p160q5.InterfaceC5424a;
import p161q6.InterfaceC5434b;
/* renamed from: o5.a */
/* loaded from: classes2.dex */
public class C5094a {

    /* renamed from: a */
    public final Map<String, C4755c> f19358a = new HashMap();

    /* renamed from: b */
    public final Context f19359b;

    /* renamed from: c */
    public final InterfaceC5434b<InterfaceC5424a> f19360c;

    /* renamed from: a */
    public C4755c m14672a(String str) {
        return new C4755c(this.f19359b, this.f19360c, str);
    }

    /* renamed from: b */
    public synchronized C4755c m14671b(String str) {
        if (!this.f19358a.containsKey(str)) {
            this.f19358a.put(str, m14672a(str));
        }
        return this.f19358a.get(str);
    }

    public C5094a(Context context, InterfaceC5434b<InterfaceC5424a> interfaceC5434b) {
        this.f19359b = context;
        this.f19360c = interfaceC5434b;
    }
}
