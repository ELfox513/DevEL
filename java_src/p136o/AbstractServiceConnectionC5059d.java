package p136o;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import p000a.InterfaceC0002b;
/* renamed from: o.d */
/* loaded from: classes.dex */
public abstract class AbstractServiceConnectionC5059d implements ServiceConnection {

    /* renamed from: o.d$a */
    /* loaded from: classes.dex */
    public class C5060a extends C5055b {
        public C5060a(InterfaceC0002b interfaceC0002b, ComponentName componentName) {
            super(interfaceC0002b, componentName);
        }
    }

    /* renamed from: a */
    public abstract void mo9949a(ComponentName componentName, C5055b c5055b);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        mo9949a(componentName, new C5060a(InterfaceC0002b.AbstractBinderC0003a.m27843j0(iBinder), componentName));
    }
}
