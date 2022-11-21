package p136o;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import p000a.InterfaceC0000a;
import p000a.InterfaceC0002b;
/* renamed from: o.b */
/* loaded from: classes.dex */
public class C5055b {

    /* renamed from: a */
    public final InterfaceC0002b f19266a;

    /* renamed from: b */
    public final ComponentName f19267b;

    /* renamed from: o.b$a */
    /* loaded from: classes.dex */
    public class BinderC5056a extends InterfaceC0000a.AbstractBinderC0001a {

        /* renamed from: a */
        public Handler f19268a = new Handler(Looper.getMainLooper());

        @Override // p000a.InterfaceC0000a
        /* renamed from: A4 */
        public void mo14745A4(String str, Bundle bundle) {
        }

        @Override // p000a.InterfaceC0000a
        /* renamed from: I6 */
        public void mo14744I6(int i, Uri uri, boolean z, Bundle bundle) {
        }

        @Override // p000a.InterfaceC0000a
        /* renamed from: f5 */
        public void mo14743f5(int i, Bundle bundle) {
        }

        @Override // p000a.InterfaceC0000a
        /* renamed from: n6 */
        public void mo14742n6(String str, Bundle bundle) {
        }

        @Override // p000a.InterfaceC0000a
        /* renamed from: z6 */
        public void mo14741z6(Bundle bundle) {
        }

        public BinderC5056a(C5054a c5054a) {
        }
    }

    /* renamed from: c */
    public boolean m14746c(long j) {
        try {
            return this.f19266a.mo27841a3(j);
        } catch (RemoteException unused) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m14748a(Context context, String str, AbstractServiceConnectionC5059d abstractServiceConnectionC5059d) {
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, abstractServiceConnectionC5059d, 33);
    }

    /* renamed from: b */
    public C5061e m14747b(C5054a c5054a) {
        BinderC5056a binderC5056a = new BinderC5056a(c5054a);
        try {
            if (!this.f19266a.mo27842E2(binderC5056a)) {
                return null;
            }
            return new C5061e(this.f19266a, binderC5056a, this.f19267b);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public C5055b(InterfaceC0002b interfaceC0002b, ComponentName componentName) {
        this.f19266a = interfaceC0002b;
        this.f19267b = componentName;
    }
}
