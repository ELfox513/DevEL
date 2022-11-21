package p136o;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;
import p163r.C5465i;
import p172s.C6550a;
/* renamed from: o.c */
/* loaded from: classes.dex */
public final class C5057c {

    /* renamed from: a */
    public final Intent f19270a;

    /* renamed from: b */
    public final Bundle f19271b;

    /* renamed from: o.c$a */
    /* loaded from: classes.dex */
    public static final class C5058a {

        /* renamed from: a */
        public final Intent f19272a;

        /* renamed from: b */
        public ArrayList<Bundle> f19273b;

        /* renamed from: c */
        public Bundle f19274c;

        /* renamed from: d */
        public ArrayList<Bundle> f19275d;

        /* renamed from: e */
        public boolean f19276e;

        public C5058a() {
            this(null);
        }

        public C5058a(C5061e c5061e) {
            Intent intent = new Intent("android.intent.action.VIEW");
            this.f19272a = intent;
            this.f19273b = null;
            this.f19274c = null;
            this.f19275d = null;
            this.f19276e = true;
            if (c5061e != null) {
                intent.setPackage(c5061e.m14737b().getPackageName());
            }
            Bundle bundle = new Bundle();
            C5465i.m13259a(bundle, "android.support.customtabs.extra.SESSION", c5061e != null ? c5061e.m14738a() : null);
            intent.putExtras(bundle);
        }

        /* renamed from: a */
        public C5057c m14739a() {
            ArrayList<Bundle> arrayList = this.f19273b;
            if (arrayList != null) {
                this.f19272a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.f19275d;
            if (arrayList2 != null) {
                this.f19272a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f19272a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f19276e);
            return new C5057c(this.f19272a, this.f19274c);
        }
    }

    /* renamed from: a */
    public void m14740a(Context context, Uri uri) {
        this.f19270a.setData(uri);
        C6550a.m3933g(context, this.f19270a, this.f19271b);
    }

    public C5057c(Intent intent, Bundle bundle) {
        this.f19270a = intent;
        this.f19271b = bundle;
    }
}
