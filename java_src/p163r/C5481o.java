package p163r;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import com.badlogic.gdx.graphics.GL20;
import java.util.ArrayList;
/* renamed from: r.o */
/* loaded from: classes.dex */
public class C5481o {

    /* renamed from: r.o$a */
    /* loaded from: classes.dex */
    public static class C5482a {

        /* renamed from: a */
        public final Bundle f20168a;

        /* renamed from: b */
        public IconCompat f20169b;

        /* renamed from: c */
        public final C5514z0[] f20170c;

        /* renamed from: d */
        public final C5514z0[] f20171d;

        /* renamed from: e */
        public boolean f20172e;

        /* renamed from: f */
        public boolean f20173f;

        /* renamed from: g */
        public final int f20174g;

        /* renamed from: h */
        public final boolean f20175h;
        @Deprecated

        /* renamed from: i */
        public int f20176i;

        /* renamed from: j */
        public CharSequence f20177j;

        /* renamed from: k */
        public PendingIntent f20178k;

        public C5482a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i != 0 ? IconCompat.m27221b(null, "", i) : null, charSequence, pendingIntent);
        }

        /* renamed from: a */
        public PendingIntent m13237a() {
            return this.f20178k;
        }

        /* renamed from: b */
        public boolean m13236b() {
            return this.f20172e;
        }

        /* renamed from: c */
        public C5514z0[] m13235c() {
            return this.f20171d;
        }

        /* renamed from: d */
        public Bundle m13234d() {
            return this.f20168a;
        }

        /* renamed from: f */
        public C5514z0[] m13232f() {
            return this.f20170c;
        }

        /* renamed from: g */
        public int m13231g() {
            return this.f20174g;
        }

        /* renamed from: h */
        public boolean m13230h() {
            return this.f20173f;
        }

        /* renamed from: i */
        public CharSequence m13229i() {
            return this.f20177j;
        }

        /* renamed from: j */
        public boolean m13228j() {
            return this.f20175h;
        }

        public C5482a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true, false);
        }

        /* renamed from: e */
        public IconCompat m13233e() {
            int i;
            if (this.f20169b == null && (i = this.f20176i) != 0) {
                this.f20169b = IconCompat.m27221b(null, "", i);
            }
            return this.f20169b;
        }

        public C5482a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, C5514z0[] c5514z0Arr, C5514z0[] c5514z0Arr2, boolean z, int i, boolean z2, boolean z3) {
            this.f20173f = true;
            this.f20169b = iconCompat;
            if (iconCompat != null && iconCompat.m27216g() == 2) {
                this.f20176i = iconCompat.m27220c();
            }
            this.f20177j = C5485d.m13222d(charSequence);
            this.f20178k = pendingIntent;
            this.f20168a = bundle == null ? new Bundle() : bundle;
            this.f20170c = c5514z0Arr;
            this.f20171d = c5514z0Arr2;
            this.f20172e = z;
            this.f20174g = i;
            this.f20173f = z2;
            this.f20175h = z3;
        }
    }

    /* renamed from: r.o$b */
    /* loaded from: classes.dex */
    public static class C5483b extends AbstractC5486e {

        /* renamed from: e */
        public CharSequence f20179e;

        @Override // p163r.C5481o.AbstractC5486e
        /* renamed from: c */
        public String mo13205c() {
            return "androidx.core.app.NotificationCompat$BigTextStyle";
        }

        /* renamed from: h */
        public C5483b m13227h(CharSequence charSequence) {
            this.f20179e = C5485d.m13222d(charSequence);
            return this;
        }

        @Override // p163r.C5481o.AbstractC5486e
        /* renamed from: b */
        public void mo13206b(InterfaceC5479n interfaceC5479n) {
            Notification.BigTextStyle bigText = new Notification.BigTextStyle(interfaceC5479n.mo13188a()).setBigContentTitle(this.f20227b).bigText(this.f20179e);
            if (this.f20229d) {
                bigText.setSummaryText(this.f20228c);
            }
        }

        @Override // p163r.C5481o.AbstractC5486e
        /* renamed from: a */
        public void mo13207a(Bundle bundle) {
            super.mo13207a(bundle);
            if (Build.VERSION.SDK_INT < 21) {
                bundle.putCharSequence("android.bigText", this.f20179e);
            }
        }
    }

    /* renamed from: r.o$c */
    /* loaded from: classes.dex */
    public static final class C5484c {
        /* renamed from: a */
        public static Notification.BubbleMetadata m13226a(C5484c c5484c) {
            return null;
        }
    }

    /* renamed from: r.o$d */
    /* loaded from: classes.dex */
    public static class C5485d {

        /* renamed from: A */
        public boolean f20180A;

        /* renamed from: B */
        public boolean f20181B;

        /* renamed from: C */
        public String f20182C;

        /* renamed from: D */
        public Bundle f20183D;

        /* renamed from: E */
        public int f20184E;

        /* renamed from: F */
        public int f20185F;

        /* renamed from: G */
        public Notification f20186G;

        /* renamed from: H */
        public RemoteViews f20187H;

        /* renamed from: I */
        public RemoteViews f20188I;

        /* renamed from: J */
        public RemoteViews f20189J;

        /* renamed from: K */
        public String f20190K;

        /* renamed from: L */
        public int f20191L;

        /* renamed from: M */
        public String f20192M;

        /* renamed from: N */
        public long f20193N;

        /* renamed from: O */
        public int f20194O;

        /* renamed from: P */
        public boolean f20195P;

        /* renamed from: Q */
        public Notification f20196Q;

        /* renamed from: R */
        public boolean f20197R;

        /* renamed from: S */
        public Icon f20198S;
        @Deprecated

        /* renamed from: T */
        public ArrayList<String> f20199T;

        /* renamed from: a */
        public Context f20200a;

        /* renamed from: b */
        public ArrayList<C5482a> f20201b;

        /* renamed from: c */
        public ArrayList<C5512y0> f20202c;

        /* renamed from: d */
        public ArrayList<C5482a> f20203d;

        /* renamed from: e */
        public CharSequence f20204e;

        /* renamed from: f */
        public CharSequence f20205f;

        /* renamed from: g */
        public PendingIntent f20206g;

        /* renamed from: h */
        public PendingIntent f20207h;

        /* renamed from: i */
        public RemoteViews f20208i;

        /* renamed from: j */
        public Bitmap f20209j;

        /* renamed from: k */
        public CharSequence f20210k;

        /* renamed from: l */
        public int f20211l;

        /* renamed from: m */
        public int f20212m;

        /* renamed from: n */
        public boolean f20213n;

        /* renamed from: o */
        public boolean f20214o;

        /* renamed from: p */
        public AbstractC5486e f20215p;

        /* renamed from: q */
        public CharSequence f20216q;

        /* renamed from: r */
        public CharSequence f20217r;

        /* renamed from: s */
        public CharSequence[] f20218s;

        /* renamed from: t */
        public int f20219t;

        /* renamed from: u */
        public int f20220u;

        /* renamed from: v */
        public boolean f20221v;

        /* renamed from: w */
        public String f20222w;

        /* renamed from: x */
        public boolean f20223x;

        /* renamed from: y */
        public String f20224y;

        /* renamed from: z */
        public boolean f20225z;

        public C5485d(Context context, String str) {
            this.f20201b = new ArrayList<>();
            this.f20202c = new ArrayList<>();
            this.f20203d = new ArrayList<>();
            this.f20213n = true;
            this.f20225z = false;
            this.f20184E = 0;
            this.f20185F = 0;
            this.f20191L = 0;
            this.f20194O = 0;
            Notification notification = new Notification();
            this.f20196Q = notification;
            this.f20200a = context;
            this.f20190K = str;
            notification.when = System.currentTimeMillis();
            this.f20196Q.audioStreamType = -1;
            this.f20212m = 0;
            this.f20199T = new ArrayList<>();
            this.f20195P = true;
        }

        /* renamed from: a */
        public C5485d m13225a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f20201b.add(new C5482a(i, charSequence, pendingIntent));
            return this;
        }

        /* renamed from: b */
        public Notification m13224b() {
            return new C5499u0(this).m13186c();
        }

        /* renamed from: e */
        public C5485d m13221e(boolean z) {
            m13214l(16, z);
            return this;
        }

        /* renamed from: f */
        public C5485d m13220f(String str) {
            this.f20190K = str;
            return this;
        }

        /* renamed from: g */
        public C5485d m13219g(int i) {
            this.f20184E = i;
            return this;
        }

        /* renamed from: h */
        public C5485d m13218h(PendingIntent pendingIntent) {
            this.f20206g = pendingIntent;
            return this;
        }

        /* renamed from: i */
        public C5485d m13217i(CharSequence charSequence) {
            this.f20205f = m13222d(charSequence);
            return this;
        }

        /* renamed from: j */
        public C5485d m13216j(CharSequence charSequence) {
            this.f20204e = m13222d(charSequence);
            return this;
        }

        /* renamed from: k */
        public C5485d m13215k(PendingIntent pendingIntent) {
            this.f20196Q.deleteIntent = pendingIntent;
            return this;
        }

        /* renamed from: m */
        public C5485d m13213m(boolean z) {
            this.f20225z = z;
            return this;
        }

        /* renamed from: n */
        public C5485d m13212n(int i) {
            this.f20212m = i;
            return this;
        }

        /* renamed from: o */
        public C5485d m13211o(int i) {
            this.f20196Q.icon = i;
            return this;
        }

        /* renamed from: q */
        public C5485d m13209q(CharSequence charSequence) {
            this.f20196Q.tickerText = m13222d(charSequence);
            return this;
        }

        /* renamed from: r */
        public C5485d m13208r(long j) {
            this.f20196Q.when = j;
            return this;
        }

        /* renamed from: d */
        public static CharSequence m13222d(CharSequence charSequence) {
            if (charSequence == null) {
                return charSequence;
            }
            if (charSequence.length() > 5120) {
                return charSequence.subSequence(0, GL20.GL_BYTE);
            }
            return charSequence;
        }

        /* renamed from: c */
        public Bundle m13223c() {
            if (this.f20183D == null) {
                this.f20183D = new Bundle();
            }
            return this.f20183D;
        }

        /* renamed from: l */
        public final void m13214l(int i, boolean z) {
            if (z) {
                Notification notification = this.f20196Q;
                notification.flags = i | notification.flags;
                return;
            }
            Notification notification2 = this.f20196Q;
            notification2.flags = (i ^ (-1)) & notification2.flags;
        }

        /* renamed from: p */
        public C5485d m13210p(AbstractC5486e abstractC5486e) {
            if (this.f20215p != abstractC5486e) {
                this.f20215p = abstractC5486e;
                if (abstractC5486e != null) {
                    abstractC5486e.m13201g(this);
                }
            }
            return this;
        }

        @Deprecated
        public C5485d(Context context) {
            this(context, null);
        }
    }

    /* renamed from: r.o$e */
    /* loaded from: classes.dex */
    public static abstract class AbstractC5486e {

        /* renamed from: a */
        public C5485d f20226a;

        /* renamed from: b */
        public CharSequence f20227b;

        /* renamed from: c */
        public CharSequence f20228c;

        /* renamed from: d */
        public boolean f20229d = false;

        /* renamed from: b */
        public abstract void mo13206b(InterfaceC5479n interfaceC5479n);

        /* renamed from: c */
        public abstract String mo13205c();

        /* renamed from: d */
        public RemoteViews m13204d(InterfaceC5479n interfaceC5479n) {
            return null;
        }

        /* renamed from: e */
        public RemoteViews m13203e(InterfaceC5479n interfaceC5479n) {
            return null;
        }

        /* renamed from: f */
        public RemoteViews m13202f(InterfaceC5479n interfaceC5479n) {
            return null;
        }

        /* renamed from: a */
        public void mo13207a(Bundle bundle) {
            if (this.f20229d) {
                bundle.putCharSequence("android.summaryText", this.f20228c);
            }
            CharSequence charSequence = this.f20227b;
            if (charSequence != null) {
                bundle.putCharSequence("android.title.big", charSequence);
            }
            String mo13205c = mo13205c();
            if (mo13205c != null) {
                bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", mo13205c);
            }
        }

        /* renamed from: g */
        public void m13201g(C5485d c5485d) {
            if (this.f20226a != c5485d) {
                this.f20226a = c5485d;
                if (c5485d != null) {
                    c5485d.m13210p(this);
                }
            }
        }
    }

    /* renamed from: a */
    public static Bundle m13238a(Notification notification) {
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras;
        }
        return C5501v0.m13178c(notification);
    }
}
