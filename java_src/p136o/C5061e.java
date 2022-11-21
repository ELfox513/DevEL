package p136o;

import android.content.ComponentName;
import android.os.IBinder;
import p000a.InterfaceC0000a;
import p000a.InterfaceC0002b;
/* renamed from: o.e */
/* loaded from: classes.dex */
public final class C5061e {

    /* renamed from: a */
    public final Object f19278a = new Object();

    /* renamed from: b */
    public final InterfaceC0002b f19279b;

    /* renamed from: c */
    public final InterfaceC0000a f19280c;

    /* renamed from: d */
    public final ComponentName f19281d;

    /* renamed from: a */
    public IBinder m14738a() {
        return this.f19280c.asBinder();
    }

    /* renamed from: b */
    public ComponentName m14737b() {
        return this.f19281d;
    }

    public C5061e(InterfaceC0002b interfaceC0002b, InterfaceC0000a interfaceC0000a, ComponentName componentName) {
        this.f19279b = interfaceC0002b;
        this.f19280c = interfaceC0000a;
        this.f19281d = componentName;
    }
}
