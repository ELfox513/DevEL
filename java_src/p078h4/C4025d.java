package p078h4;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p006a5.C0090d;
import p006a5.C0091e;
import p006a5.C0095i;
import p006a5.C0098l;
import p006a5.C0099m;
import p006a5.C0101o;
import p006a5.C0102p;
import p006a5.C0103q;
import p006a5.C0104r;
import p006a5.C0111y;
import p087i4.InterfaceC4126a;
import p096j4.InterfaceC4329a;
import p105k4.C4454l;
import p123m4.InterfaceC4635a;
import p141o4.InterfaceC5093a;
import p150p4.InterfaceC5358a;
import p159q4.InterfaceC5422b;
import p194u3.AbstractC6900f;
import p194u3.C6883a;
import p220x3.C7254d;
import p220x3.C7297q;
/* renamed from: h4.d */
/* loaded from: classes.dex */
public final class C4025d {

    /* renamed from: a */
    public static final C6883a.C6893g<C4454l> f17504a;

    /* renamed from: b */
    public static final C6883a.AbstractC6884a<C4454l, C4026a> f17505b;

    /* renamed from: c */
    public static final C6883a.AbstractC6884a<C4454l, C4026a> f17506c;
    @RecentlyNonNull

    /* renamed from: d */
    public static final Scope f17507d;
    @RecentlyNonNull

    /* renamed from: e */
    public static final Scope f17508e;
    @RecentlyNonNull

    /* renamed from: f */
    public static final Scope f17509f;
    @RecentlyNonNull
    @Deprecated

    /* renamed from: g */
    public static final C6883a<C4026a> f17510g;
    @RecentlyNonNull

    /* renamed from: h */
    public static final Scope f17511h;

    /* renamed from: i */
    public static final C6883a<C4026a> f17512i;
    @RecentlyNonNull
    @Deprecated

    /* renamed from: j */
    public static final InterfaceC4031g f17513j;
    @RecentlyNonNull
    @Deprecated

    /* renamed from: k */
    public static final InterfaceC4126a f17514k;
    @RecentlyNonNull
    @Deprecated

    /* renamed from: l */
    public static final InterfaceC4329a f17515l;
    @RecentlyNonNull
    @Deprecated

    /* renamed from: m */
    public static final InterfaceC4635a f17516m;
    @RecentlyNonNull
    @Deprecated

    /* renamed from: n */
    public static final InterfaceC4037m f17517n;
    @RecentlyNonNull
    @Deprecated

    /* renamed from: o */
    public static final InterfaceC5093a f17518o;
    @RecentlyNonNull
    @Deprecated

    /* renamed from: p */
    public static final InterfaceC5358a f17519p;
    @RecentlyNonNull
    @Deprecated

    /* renamed from: q */
    public static final InterfaceC5422b f17520q;

    /* renamed from: h4.d$a */
    /* loaded from: classes.dex */
    public static final class C4026a implements C6883a.InterfaceC6887d.InterfaceC6889b, C6883a.InterfaceC6887d {

        /* renamed from: a */
        public final boolean f17521a;

        /* renamed from: b */
        public final boolean f17522b;

        /* renamed from: d */
        public final int f17523d;

        /* renamed from: k */
        public final boolean f17524k;

        /* renamed from: p */
        public final int f17525p;
        @RecentlyNonNull

        /* renamed from: q */
        public final String f17526q;
        @RecentlyNonNull

        /* renamed from: r */
        public final ArrayList<String> f17527r;

        /* renamed from: s */
        public final boolean f17528s;

        /* renamed from: t */
        public final boolean f17529t;
        @RecentlyNonNull

        /* renamed from: u */
        public final GoogleSignInAccount f17530u;
        @RecentlyNonNull

        /* renamed from: v */
        public final String f17531v;

        /* renamed from: w */
        public final int f17532w;

        /* renamed from: x */
        public final int f17533x;

        /* renamed from: y */
        public final int f17534y;

        public C4026a(boolean z, boolean z2, int i, boolean z3, int i2, String str, ArrayList<String> arrayList, boolean z4, boolean z5, GoogleSignInAccount googleSignInAccount, String str2, int i3, int i4, int i5) {
            this.f17521a = z;
            this.f17522b = z2;
            this.f17523d = i;
            this.f17524k = z3;
            this.f17525p = i2;
            this.f17526q = str;
            this.f17527r = arrayList;
            this.f17528s = z4;
            this.f17529t = z5;
            this.f17530u = googleSignInAccount;
            this.f17531v = str2;
            this.f17532w = i3;
            this.f17533x = i4;
            this.f17534y = i5;
        }

        public final boolean equals(@RecentlyNonNull Object obj) {
            String str;
            GoogleSignInAccount googleSignInAccount;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C4026a)) {
                return false;
            }
            C4026a c4026a = (C4026a) obj;
            return this.f17521a == c4026a.f17521a && this.f17522b == c4026a.f17522b && this.f17523d == c4026a.f17523d && this.f17524k == c4026a.f17524k && this.f17525p == c4026a.f17525p && ((str = this.f17526q) != null ? str.equals(c4026a.f17526q) : c4026a.f17526q == null) && this.f17527r.equals(c4026a.f17527r) && this.f17528s == c4026a.f17528s && this.f17529t == c4026a.f17529t && ((googleSignInAccount = this.f17530u) != null ? googleSignInAccount.equals(c4026a.f17530u) : c4026a.f17530u == null) && TextUtils.equals(this.f17531v, c4026a.f17531v) && this.f17532w == c4026a.f17532w && this.f17533x == c4026a.f17533x && this.f17534y == c4026a.f17534y;
        }

        @Override // p194u3.C6883a.InterfaceC6887d.InterfaceC6889b
        @RecentlyNonNull
        /* renamed from: q0 */
        public final GoogleSignInAccount mo3065q0() {
            return this.f17530u;
        }

        @RecentlyNonNull
        /* renamed from: a */
        public static C4027a m17525a(@RecentlyNonNull GoogleSignInAccount googleSignInAccount, C4026a c4026a) {
            C4027a c4027a = new C4027a(null, null);
            c4027a.f17545j = googleSignInAccount;
            return c4027a;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public final Bundle m17523c() {
            Bundle bundle = new Bundle();
            bundle.putBoolean("com.google.android.gms.games.key.isHeadless", this.f17521a);
            bundle.putBoolean("com.google.android.gms.games.key.showConnectingPopup", this.f17522b);
            bundle.putInt("com.google.android.gms.games.key.connectingPopupGravity", this.f17523d);
            bundle.putBoolean("com.google.android.gms.games.key.retryingSignIn", this.f17524k);
            bundle.putInt("com.google.android.gms.games.key.sdkVariant", this.f17525p);
            bundle.putString("com.google.android.gms.games.key.forceResolveAccountKey", this.f17526q);
            bundle.putStringArrayList("com.google.android.gms.games.key.proxyApis", this.f17527r);
            bundle.putBoolean("com.google.android.gms.games.key.unauthenticated", this.f17528s);
            bundle.putBoolean("com.google.android.gms.games.key.skipWelcomePopup", this.f17529t);
            bundle.putParcelable("com.google.android.gms.games.key.googleSignInAccount", this.f17530u);
            bundle.putString("com.google.android.gms.games.key.realClientPackageName", this.f17531v);
            bundle.putInt("com.google.android.gms.games.key.API_VERSION", this.f17533x);
            bundle.putInt("com.google.android.gms.games.key.authenticationStrategy", this.f17534y);
            return bundle;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2;
            int i = ((((((((((this.f17521a ? 1 : 0) + 527) * 31) + (this.f17522b ? 1 : 0)) * 31) + this.f17523d) * 31) + (this.f17524k ? 1 : 0)) * 31) + this.f17525p) * 31;
            String str = this.f17526q;
            int i2 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode3 = (((((((i + hashCode) * 31) + this.f17527r.hashCode()) * 31) + (this.f17528s ? 1 : 0)) * 31) + (this.f17529t ? 1 : 0)) * 31;
            GoogleSignInAccount googleSignInAccount = this.f17530u;
            if (googleSignInAccount == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = googleSignInAccount.hashCode();
            }
            int i3 = (hashCode3 + hashCode2) * 31;
            String str2 = this.f17531v;
            if (str2 != null) {
                i2 = str2.hashCode();
            }
            return ((((((i3 + i2) * 31) + this.f17532w) * 31) + this.f17533x) * 31) + this.f17534y;
        }

        /* renamed from: h4.d$a$a */
        /* loaded from: classes.dex */
        public static final class C4027a {

            /* renamed from: o */
            public static final AtomicInteger f17535o = new AtomicInteger(0);

            /* renamed from: a */
            public boolean f17536a;

            /* renamed from: b */
            public boolean f17537b;

            /* renamed from: c */
            public int f17538c;

            /* renamed from: d */
            public boolean f17539d;

            /* renamed from: e */
            public int f17540e;

            /* renamed from: f */
            public String f17541f;

            /* renamed from: g */
            public ArrayList<String> f17542g;

            /* renamed from: h */
            public boolean f17543h;

            /* renamed from: i */
            public boolean f17544i;

            /* renamed from: j */
            public GoogleSignInAccount f17545j;

            /* renamed from: k */
            public String f17546k;

            /* renamed from: l */
            public int f17547l;

            /* renamed from: m */
            public int f17548m;

            /* renamed from: n */
            public int f17549n;

            public C4027a() {
                this.f17536a = false;
                this.f17537b = true;
                this.f17538c = 17;
                this.f17539d = false;
                this.f17540e = 4368;
                this.f17541f = null;
                this.f17542g = new ArrayList<>();
                this.f17543h = false;
                this.f17544i = false;
                this.f17545j = null;
                this.f17546k = null;
                this.f17547l = 0;
                this.f17548m = 8;
                this.f17549n = 0;
            }

            @RecentlyNonNull
            /* renamed from: a */
            public final C4026a m17522a() {
                return new C4026a(this.f17536a, this.f17537b, this.f17538c, this.f17539d, this.f17540e, this.f17541f, this.f17542g, this.f17543h, this.f17544i, this.f17545j, this.f17546k, this.f17547l, this.f17548m, this.f17549n, null);
            }

            @RecentlyNonNull
            /* renamed from: b */
            public final C4027a m17521b(int i) {
                this.f17540e = i;
                return this;
            }

            public C4027a(C4026a c4026a) {
                this.f17536a = false;
                this.f17537b = true;
                this.f17538c = 17;
                this.f17539d = false;
                this.f17540e = 4368;
                this.f17541f = null;
                this.f17542g = new ArrayList<>();
                this.f17543h = false;
                this.f17544i = false;
                this.f17545j = null;
                this.f17546k = null;
                this.f17547l = 0;
                this.f17548m = 8;
                this.f17549n = 0;
                if (c4026a != null) {
                    this.f17536a = c4026a.f17521a;
                    this.f17537b = c4026a.f17522b;
                    this.f17538c = c4026a.f17523d;
                    this.f17539d = c4026a.f17524k;
                    this.f17540e = c4026a.f17525p;
                    this.f17541f = c4026a.f17526q;
                    this.f17542g = c4026a.f17527r;
                    this.f17543h = c4026a.f17528s;
                    this.f17544i = c4026a.f17529t;
                    this.f17545j = c4026a.f17530u;
                    this.f17546k = c4026a.f17531v;
                    this.f17547l = c4026a.f17532w;
                    this.f17548m = c4026a.f17533x;
                    this.f17549n = c4026a.f17534y;
                }
            }

            public /* synthetic */ C4027a(C4041q c4041q) {
                this();
            }

            public /* synthetic */ C4027a(C4026a c4026a, C4041q c4041q) {
                this(c4026a);
            }
        }

        public /* synthetic */ C4026a(boolean z, boolean z2, int i, boolean z3, int i2, String str, ArrayList arrayList, boolean z4, boolean z5, GoogleSignInAccount googleSignInAccount, String str2, int i3, int i4, int i5, C4041q c4041q) {
            this(z, z2, i, z3, i2, str, arrayList, z4, z5, googleSignInAccount, str2, i3, i4, i5);
        }
    }

    /* renamed from: h4.d$b */
    /* loaded from: classes.dex */
    public static abstract class AbstractC4028b extends C6883a.AbstractC6884a<C4454l, C4026a> {
        public AbstractC4028b() {
        }

        public /* synthetic */ AbstractC4028b(C4041q c4041q) {
            this();
        }

        @Override // p194u3.C6883a.AbstractC6884a
        /* renamed from: a */
        public /* synthetic */ C4454l mo3067a(Context context, Looper looper, C7254d c7254d, C4026a c4026a, AbstractC6900f.InterfaceC6901a interfaceC6901a, AbstractC6900f.InterfaceC6902b interfaceC6902b) {
            C4026a c4026a2 = c4026a;
            if (c4026a2 == null) {
                c4026a2 = new C4026a.C4027a((C4041q) null).m17522a();
            }
            return new C4454l(context, looper, c7254d, c4026a2, interfaceC6901a, interfaceC6902b);
        }
    }

    /* renamed from: c */
    public static C4026a m17526c(GoogleSignInAccount googleSignInAccount) {
        return C4026a.m17525a(googleSignInAccount, null).m17521b(1052947).m17522a();
    }

    static {
        C6883a.C6893g<C4454l> c6893g = new C6883a.C6893g<>();
        f17504a = c6893g;
        C4041q c4041q = new C4041q();
        f17505b = c4041q;
        C4042r c4042r = new C4042r();
        f17506c = c4042r;
        f17507d = new Scope("https://www.googleapis.com/auth/games");
        f17508e = new Scope("https://www.googleapis.com/auth/games_lite");
        f17509f = new Scope("https://www.googleapis.com/auth/drive.appdata");
        f17510g = new C6883a<>("Games.API", c4041q, c6893g);
        f17511h = new Scope("https://www.googleapis.com/auth/games.firstparty");
        f17512i = new C6883a<>("Games.API_1P", c4042r, c6893g);
        f17513j = new C0095i();
        f17514k = new C0111y();
        f17515l = new C0090d();
        f17516m = new C0098l();
        f17517n = new C0099m();
        f17518o = new C0101o();
        f17519p = new C0102p();
        f17520q = new C0103q();
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static InterfaceC4022a m17528a(@RecentlyNonNull Activity activity, @RecentlyNonNull GoogleSignInAccount googleSignInAccount) {
        C7297q.m1882k(googleSignInAccount, "GoogleSignInAccount must not be null");
        return new C0104r(activity, m17526c(googleSignInAccount));
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static InterfaceC4029e m17527b(@RecentlyNonNull Activity activity, @RecentlyNonNull GoogleSignInAccount googleSignInAccount) {
        C7297q.m1882k(googleSignInAccount, "GoogleSignInAccount must not be null");
        return new C0091e(activity, m17526c(googleSignInAccount));
    }
}
