package p105k4;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.PlayerEntity;
import com.prineside.tdi2.tiles.CoreTile;
import java.util.Set;
import p006a5.AbstractC0106t;
import p006a5.C0109w;
import p078h4.C4025d;
import p078h4.C4030f;
import p078h4.C4032h;
import p088i5.C4127a;
import p097j5.C4348j;
import p185t3.C6734b;
import p185t3.C6756m;
import p194u3.C6894b;
import p203v3.InterfaceC7002d;
import p203v3.InterfaceC7005e;
import p203v3.InterfaceC7023k;
import p220x3.AbstractC7246c;
import p220x3.AbstractC7264g;
import p220x3.C7243b;
import p220x3.C7254d;
import p220x3.C7297q;
/* renamed from: k4.l */
/* loaded from: classes.dex */
public class C4454l extends AbstractC7264g<InterfaceC4446d> {

    /* renamed from: T */
    public final AbstractC0106t f18465T;

    /* renamed from: U */
    public final String f18466U;

    /* renamed from: V */
    public PlayerEntity f18467V;

    /* renamed from: W */
    public GameEntity f18468W;

    /* renamed from: X */
    public final View$OnAttachStateChangeListenerC4449g f18469X;

    /* renamed from: Y */
    public boolean f18470Y;

    /* renamed from: Z */
    public final long f18471Z;

    /* renamed from: a0 */
    public boolean f18472a0;

    /* renamed from: b0 */
    public final C4025d.C4026a f18473b0;

    /* renamed from: c0 */
    public Bundle f18474c0;

    /* renamed from: k4.l$b */
    /* loaded from: classes.dex */
    public static final class BinderC4456b extends BinderC4443a {

        /* renamed from: a */
        public final C4348j<Void> f18476a;

        @Override // p105k4.BinderC4443a, p105k4.InterfaceC4460p
        /* renamed from: o3 */
        public final void mo16373o3(int i, String str) {
            if (i != 0 && i != 3003) {
                C4454l.m16456p0(this.f18476a, i);
            } else {
                this.f18476a.m16773c(null);
            }
        }

        public BinderC4456b(C4348j<Void> c4348j) {
            this.f18476a = c4348j;
        }
    }

    public C4454l(Context context, Looper looper, C7254d c7254d, C4025d.C4026a c4026a, InterfaceC7005e interfaceC7005e, InterfaceC7023k interfaceC7023k) {
        super(context, looper, 1, c7254d, interfaceC7005e, interfaceC7023k);
        this.f18465T = new C4453k(this);
        this.f18470Y = false;
        this.f18472a0 = false;
        this.f18466U = c7254d.m1970g();
        this.f18469X = View$OnAttachStateChangeListenerC4449g.m16475b(this, c7254d.m1971f());
        this.f18471Z = hashCode();
        this.f18473b0 = c4026a;
        if (!c4026a.f17528s) {
            if (c7254d.m1968i() != null || (context instanceof Activity)) {
                m16459m0(c7254d.m1968i());
            }
        }
    }

    /* renamed from: l0 */
    public static void m16460l0(RemoteException remoteException) {
        C4461q.m16348c("GamesGmsClientImpl", "service died", remoteException);
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: C */
    public String mo913C() {
        return "com.google.android.gms.games.internal.IGamesService";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: D */
    public String mo912D() {
        return "com.google.android.gms.games.service.START";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: M */
    public boolean mo2017M() {
        return true;
    }

    @Override // p220x3.AbstractC7264g, p194u3.C6883a.InterfaceC6892f
    /* renamed from: a */
    public Set<Scope> mo1945a() {
        return mo1946A();
    }

    @Override // p220x3.AbstractC7246c, p194u3.C6883a.InterfaceC6892f
    /* renamed from: e */
    public void mo1996e() {
        this.f18470Y = false;
        if (isConnected()) {
            try {
                this.f18465T.m27669a();
                ((InterfaceC4446d) m2025B()).mo16466V(this.f18471Z);
            } catch (RemoteException unused) {
                C4461q.m16349b("GamesGmsClientImpl", "Failed to notify client disconnect.");
            }
        }
        super.mo1996e();
    }

    @Override // p220x3.AbstractC7246c, p194u3.C6883a.InterfaceC6892f
    /* renamed from: h */
    public void mo1991h(AbstractC7246c.InterfaceC7249c interfaceC7249c) {
        this.f18467V = null;
        this.f18468W = null;
        super.mo1991h(interfaceC7249c);
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: k */
    public int mo910k() {
        return C6756m.f35427a;
    }

    /* renamed from: m0 */
    public final void m16459m0(View view) {
        this.f18469X.m16474c(view);
    }

    /* renamed from: u0 */
    public final void m16451u0(int i) {
        this.f18469X.m16476a(i);
    }

    /* renamed from: k4.l$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC4455a<T> extends BinderC4443a {

        /* renamed from: a */
        public final InterfaceC7002d<T> f18475a;

        /* renamed from: o0 */
        public final void m16450o0(T t) {
            this.f18475a.mo2720b(t);
        }

        public AbstractBinderC4455a(InterfaceC7002d<T> interfaceC7002d) {
            this.f18475a = (InterfaceC7002d) C7297q.m1882k(interfaceC7002d, "Holder must not be null");
        }
    }

    /* renamed from: n0 */
    public static <R> void m16458n0(C4348j<R> c4348j, SecurityException securityException) {
        if (c4348j != null) {
            c4348j.m16774b(new C6894b(C4030f.m17517b(4)));
        }
    }

    /* renamed from: o0 */
    public static <R> void m16457o0(InterfaceC7002d<R> interfaceC7002d, SecurityException securityException) {
        if (interfaceC7002d != null) {
            interfaceC7002d.mo2721a(C4030f.m17517b(4));
        }
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: I */
    public /* synthetic */ void mo2021I(IInterface iInterface) {
        InterfaceC4446d interfaceC4446d = (InterfaceC4446d) iInterface;
        super.mo2021I(interfaceC4446d);
        if (this.f18470Y) {
            this.f18469X.m16470g();
            this.f18470Y = false;
        }
        C4025d.C4026a c4026a = this.f18473b0;
        if (!c4026a.f17521a && !c4026a.f17528s) {
            try {
                interfaceC4446d.mo16462t6(new BinderC4457m(new C0109w(this.f18469X.m16471f())), this.f18471Z);
            } catch (RemoteException e) {
                m16460l0(e);
            }
        }
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: L */
    public void mo2018L(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (i == 0 && bundle != null) {
            bundle.setClassLoader(C4454l.class.getClassLoader());
            boolean z = bundle.getBoolean("show_welcome_popup");
            this.f18470Y = z;
            this.f18472a0 = z;
            this.f18467V = (PlayerEntity) bundle.getParcelable("com.google.android.gms.games.current_player");
            this.f18468W = (GameEntity) bundle.getParcelable("com.google.android.gms.games.current_game");
        }
        super.mo2018L(i, iBinder, bundle, i2);
    }

    @Override // p220x3.AbstractC7246c, p194u3.C6883a.InterfaceC6892f
    /* renamed from: f */
    public void mo1994f(AbstractC7246c.InterfaceC7251e interfaceC7251e) {
        try {
            m16454r0(new C4459o(interfaceC7251e));
        } catch (RemoteException unused) {
            interfaceC7251e.mo1977O0();
        }
    }

    @Override // p220x3.AbstractC7246c, p194u3.C6883a.InterfaceC6892f
    /* renamed from: n */
    public boolean mo1987n() {
        C4025d.C4026a c4026a = this.f18473b0;
        if (c4026a.f17534y == 1 || c4026a.f17531v != null || c4026a.f17528s) {
            return false;
        }
        return true;
    }

    /* renamed from: q0 */
    public final void m16455q0(C4348j<Void> c4348j, String str) {
        BinderC4456b binderC4456b;
        if (c4348j == null) {
            binderC4456b = null;
        } else {
            binderC4456b = new BinderC4456b(c4348j);
        }
        try {
            ((InterfaceC4446d) m2025B()).mo16463m4(binderC4456b, str, this.f18469X.m16472e(), this.f18469X.m16473d());
        } catch (SecurityException e) {
            m16458n0(c4348j, e);
        }
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: r */
    public /* synthetic */ IInterface mo909r(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.games.internal.IGamesService");
        if (queryLocalInterface instanceof InterfaceC4446d) {
            return (InterfaceC4446d) queryLocalInterface;
        }
        return new C4450h(iBinder);
    }

    /* renamed from: r0 */
    public final void m16454r0(InterfaceC7002d<Status> interfaceC7002d) {
        this.f18465T.m27669a();
        try {
            ((InterfaceC4446d) m2025B()).mo16468P5(new BinderC4458n(interfaceC7002d));
        } catch (SecurityException e) {
            m16457o0(interfaceC7002d, e);
        }
    }

    /* renamed from: p0 */
    public static <R> void m16456p0(C4348j<R> c4348j, int i) {
        int i2;
        Status m17514b = C4032h.m17514b(i);
        int m23036Z0 = m17514b.m23036Z0();
        if (m23036Z0 != 1) {
            if (m23036Z0 != 2) {
                if (m23036Z0 != 3) {
                    if (m23036Z0 != 4) {
                        if (m23036Z0 != 5) {
                            if (m23036Z0 != 6) {
                                if (m23036Z0 != 7) {
                                    if (m23036Z0 != 1500) {
                                        if (m23036Z0 != 1501) {
                                            switch (m23036Z0) {
                                                case 7:
                                                    break;
                                                case 8:
                                                    i2 = 26508;
                                                    break;
                                                case 9:
                                                    i2 = 26509;
                                                    break;
                                                case 500:
                                                    i2 = 26520;
                                                    break;
                                                case 9000:
                                                    i2 = 26620;
                                                    break;
                                                case 9001:
                                                    i2 = 26621;
                                                    break;
                                                case 9002:
                                                    i2 = 26622;
                                                    break;
                                                case 9003:
                                                    i2 = 26623;
                                                    break;
                                                case 9004:
                                                    i2 = 26624;
                                                    break;
                                                case 9006:
                                                    i2 = 26625;
                                                    break;
                                                case 9009:
                                                    i2 = 26626;
                                                    break;
                                                case 9010:
                                                    i2 = 26627;
                                                    break;
                                                case 9011:
                                                    i2 = 26628;
                                                    break;
                                                case 9012:
                                                    i2 = 26629;
                                                    break;
                                                case 9016:
                                                    i2 = 26630;
                                                    break;
                                                case 9017:
                                                    i2 = 26631;
                                                    break;
                                                case 9018:
                                                    i2 = 26632;
                                                    break;
                                                case 9200:
                                                    i2 = 26650;
                                                    break;
                                                case 9202:
                                                    i2 = 26652;
                                                    break;
                                                case 10000:
                                                    i2 = 26700;
                                                    break;
                                                case 10001:
                                                    i2 = 26701;
                                                    break;
                                                case 10002:
                                                    i2 = 26702;
                                                    break;
                                                case 10003:
                                                    i2 = 26703;
                                                    break;
                                                case 10004:
                                                    i2 = 26704;
                                                    break;
                                                default:
                                                    switch (m23036Z0) {
                                                        case CoreTile.FIXED_LEVEL_XP_REQUIREMENT /* 1000 */:
                                                            i2 = 26530;
                                                            break;
                                                        case 1001:
                                                            i2 = 26531;
                                                            break;
                                                        case 1002:
                                                            i2 = 26532;
                                                            break;
                                                        case 1003:
                                                            i2 = 26533;
                                                            break;
                                                        case 1004:
                                                            i2 = 26534;
                                                            break;
                                                        case 1005:
                                                            i2 = 26535;
                                                            break;
                                                        case 1006:
                                                            i2 = 26536;
                                                            break;
                                                        default:
                                                            switch (m23036Z0) {
                                                                case 2000:
                                                                    i2 = 26550;
                                                                    break;
                                                                case 2001:
                                                                    i2 = 26551;
                                                                    break;
                                                                case 2002:
                                                                    i2 = 26552;
                                                                    break;
                                                                default:
                                                                    switch (m23036Z0) {
                                                                        case 3000:
                                                                            i2 = 26560;
                                                                            break;
                                                                        case 3001:
                                                                            i2 = 26561;
                                                                            break;
                                                                        case 3002:
                                                                            i2 = 26562;
                                                                            break;
                                                                        case 3003:
                                                                            i2 = 26563;
                                                                            break;
                                                                        default:
                                                                            switch (m23036Z0) {
                                                                                case 4000:
                                                                                    i2 = 26570;
                                                                                    break;
                                                                                case 4001:
                                                                                    i2 = 26571;
                                                                                    break;
                                                                                case 4002:
                                                                                    i2 = 26572;
                                                                                    break;
                                                                                case 4003:
                                                                                    i2 = 26573;
                                                                                    break;
                                                                                case 4004:
                                                                                    i2 = 26574;
                                                                                    break;
                                                                                case 4005:
                                                                                    i2 = 26575;
                                                                                    break;
                                                                                case 4006:
                                                                                    i2 = 26576;
                                                                                    break;
                                                                                default:
                                                                                    switch (m23036Z0) {
                                                                                        case 6000:
                                                                                            i2 = 26580;
                                                                                            break;
                                                                                        case 6001:
                                                                                            i2 = 26581;
                                                                                            break;
                                                                                        case 6002:
                                                                                            i2 = 26582;
                                                                                            break;
                                                                                        case 6003:
                                                                                            i2 = 26583;
                                                                                            break;
                                                                                        case 6004:
                                                                                            i2 = 26584;
                                                                                            break;
                                                                                        default:
                                                                                            switch (m23036Z0) {
                                                                                                case 6500:
                                                                                                    i2 = 26590;
                                                                                                    break;
                                                                                                case 6501:
                                                                                                    i2 = 26591;
                                                                                                    break;
                                                                                                case 6502:
                                                                                                    i2 = 26592;
                                                                                                    break;
                                                                                                case 6503:
                                                                                                    i2 = 26593;
                                                                                                    break;
                                                                                                case 6504:
                                                                                                    i2 = 26594;
                                                                                                    break;
                                                                                                case 6505:
                                                                                                    i2 = 26595;
                                                                                                    break;
                                                                                                case 6506:
                                                                                                    i2 = 26596;
                                                                                                    break;
                                                                                                case 6507:
                                                                                                    i2 = 26597;
                                                                                                    break;
                                                                                                default:
                                                                                                    switch (m23036Z0) {
                                                                                                        case 7000:
                                                                                                            i2 = 26600;
                                                                                                            break;
                                                                                                        case 7001:
                                                                                                            i2 = 26601;
                                                                                                            break;
                                                                                                        case 7002:
                                                                                                            i2 = 26602;
                                                                                                            break;
                                                                                                        case 7003:
                                                                                                            i2 = 26603;
                                                                                                            break;
                                                                                                        case 7004:
                                                                                                            i2 = 26604;
                                                                                                            break;
                                                                                                        case 7005:
                                                                                                            i2 = 26605;
                                                                                                            break;
                                                                                                        case 7006:
                                                                                                            i2 = 26606;
                                                                                                            break;
                                                                                                        case 7007:
                                                                                                            i2 = 26607;
                                                                                                            break;
                                                                                                        default:
                                                                                                            switch (m23036Z0) {
                                                                                                                case 8000:
                                                                                                                    i2 = 26610;
                                                                                                                    break;
                                                                                                                case 8001:
                                                                                                                    i2 = 26611;
                                                                                                                    break;
                                                                                                                case 8002:
                                                                                                                    i2 = 26612;
                                                                                                                    break;
                                                                                                                case 8003:
                                                                                                                    i2 = 26613;
                                                                                                                    break;
                                                                                                                default:
                                                                                                                    i2 = m23036Z0;
                                                                                                                    break;
                                                                                                            }
                                                                                                    }
                                                                                            }
                                                                                    }
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                        } else {
                                            i2 = 26541;
                                        }
                                    } else {
                                        i2 = 26540;
                                    }
                                }
                                i2 = 26507;
                            } else {
                                i2 = 26506;
                            }
                        } else {
                            i2 = 26505;
                        }
                    } else {
                        i2 = 26504;
                    }
                } else {
                    i2 = 26503;
                }
            } else {
                i2 = 26502;
            }
        } else {
            i2 = 8;
        }
        if (i2 != m17514b.m23036Z0()) {
            if (C4032h.m17515a(m17514b.m23036Z0()).equals(m17514b.m23035a1())) {
                m17514b = C4030f.m17516c(i2, m17514b.m23037Y0());
            } else {
                switch (m23036Z0) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 10:
                        break;
                    case 9:
                    default:
                        m17514b = new Status(i2, m17514b.m23035a1(), m17514b.m23037Y0());
                        break;
                }
            }
        }
        c4348j.m16774b(C7243b.m2038a(m17514b));
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: J */
    public void mo2020J(C6734b c6734b) {
        super.mo2020J(c6734b);
        this.f18470Y = false;
    }

    /* renamed from: k0 */
    public final void m16461k0(IBinder iBinder, Bundle bundle) {
        if (isConnected()) {
            try {
                ((InterfaceC4446d) m2025B()).mo16464e5(iBinder, bundle);
            } catch (RemoteException e) {
                m16460l0(e);
            }
        }
    }

    /* renamed from: s0 */
    public final void m16453s0() {
        if (isConnected()) {
            try {
                ((InterfaceC4446d) m2025B()).mo16465X5();
            } catch (RemoteException e) {
                m16460l0(e);
            }
        }
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: v */
    public Bundle mo1982v() {
        try {
            Bundle mo16467Q6 = ((InterfaceC4446d) m2025B()).mo16467Q6();
            if (mo16467Q6 != null) {
                mo16467Q6.setClassLoader(C4454l.class.getClassLoader());
                this.f18474c0 = mo16467Q6;
            }
            return mo16467Q6;
        } catch (RemoteException e) {
            m16460l0(e);
            return null;
        }
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: y */
    public Bundle mo907y() {
        String locale = m1981w().getResources().getConfiguration().locale.toString();
        Bundle m17523c = this.f18473b0.m17523c();
        m17523c.putString("com.google.android.gms.games.key.gamePackageName", this.f18466U);
        m17523c.putString("com.google.android.gms.games.key.desiredLocale", locale);
        m17523c.putParcelable("com.google.android.gms.games.key.popupWindowToken", new BinderWrapper(this.f18469X.m16472e()));
        if (!m17523c.containsKey("com.google.android.gms.games.key.API_VERSION")) {
            m17523c.putInt("com.google.android.gms.games.key.API_VERSION", 8);
        }
        m17523c.putBundle("com.google.android.gms.games.key.signInOptions", C4127a.m17323k0(m1944h0()));
        return m17523c;
    }
}
