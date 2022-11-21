package p016b3;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.prineside.tdi2.Config;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import p168r4.C5592av;
import p168r4.C6225rz;
import p168r4.cm0;
import p168r4.dv1;
import p168r4.i83;
import p168r4.iv1;
import p168r4.qm0;
import p235z2.C7601t;
/* renamed from: b3.y */
/* loaded from: classes.dex */
public final class C0547y {

    /* renamed from: a */
    public final Context f1702a;

    /* renamed from: b */
    public final iv1 f1703b;

    /* renamed from: c */
    public String f1704c;

    /* renamed from: d */
    public String f1705d;

    /* renamed from: e */
    public String f1706e;

    /* renamed from: f */
    public String f1707f;

    /* renamed from: g */
    public int f1708g;

    /* renamed from: h */
    public int f1709h;

    /* renamed from: i */
    public PointF f1710i;

    /* renamed from: j */
    public PointF f1711j;

    /* renamed from: k */
    public Handler f1712k;

    /* renamed from: l */
    public Runnable f1713l;

    public C0547y(Context context) {
        this.f1708g = 0;
        this.f1713l = new Runnable(this) { // from class: b3.i

            /* renamed from: a */
            public final C0547y f1616a;

            {
                this.f1616a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f1616a.m26231r();
            }
        };
        this.f1702a = context;
        this.f1709h = ViewConfiguration.get(context).getScaledTouchSlop();
        C7601t.m925r().m26396a();
        this.f1712k = C7601t.m925r().m26395b();
        this.f1703b = C7601t.m929n().m26411b();
    }

    /* renamed from: u */
    public static final int m26228u(List<String> list, String str, boolean z) {
        if (z) {
            list.add(str);
            return list.size() - 1;
        }
        return -1;
    }

    /* renamed from: c */
    public final void m26246c(String str) {
        this.f1705d = str;
    }

    /* renamed from: d */
    public final void m26245d(String str) {
        this.f1706e = str;
    }

    /* renamed from: e */
    public final void m26244e(String str) {
        this.f1704c = str;
    }

    /* renamed from: f */
    public final void m26243f(String str) {
        this.f1707f = str;
    }

    /* renamed from: j */
    public final /* synthetic */ void m26239j() {
        m26229t(this.f1702a);
    }

    /* renamed from: k */
    public final /* synthetic */ void m26238k() {
        m26229t(this.f1702a);
    }

    /* renamed from: m */
    public final /* synthetic */ void m26236m() {
        C7601t.m929n().m26410c(this.f1702a);
    }

    /* renamed from: n */
    public final /* synthetic */ void m26235n() {
        C7601t.m929n().m26410c(this.f1702a);
    }

    /* renamed from: r */
    public final /* synthetic */ void m26231r() {
        this.f1708g = 4;
        m26247b();
    }

    /* renamed from: b */
    public final void m26247b() {
        try {
            if (!(this.f1702a instanceof Activity)) {
                cm0.m12438e("Can not create dialog without Activity Context");
                return;
            }
            String str = "Creative preview (enabled)";
            if (true == TextUtils.isEmpty(C7601t.m929n().m26404i())) {
                str = "Creative preview";
            }
            String str2 = "Troubleshooting (enabled)";
            if (true != C7601t.m929n().m26400m()) {
                str2 = "Troubleshooting";
            }
            ArrayList arrayList = new ArrayList();
            final int m26228u = m26228u(arrayList, "Ad information", true);
            final int m26228u2 = m26228u(arrayList, str, true);
            final int m26228u3 = m26228u(arrayList, str2, true);
            boolean booleanValue = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f30797E6)).booleanValue();
            final int m26228u4 = m26228u(arrayList, "Open ad inspector", booleanValue);
            final int m26228u5 = m26228u(arrayList, "Ad inspector settings", booleanValue);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.f1702a, C7601t.m937f().mo26268m());
            builder.setTitle("Select a debug mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener(this, m26228u, m26228u2, m26228u3, m26228u4, m26228u5) { // from class: b3.p

                /* renamed from: a */
                public final C0547y f1659a;

                /* renamed from: b */
                public final int f1660b;

                /* renamed from: d */
                public final int f1661d;

                /* renamed from: k */
                public final int f1662k;

                /* renamed from: p */
                public final int f1663p;

                /* renamed from: q */
                public final int f1664q;

                {
                    this.f1659a = this;
                    this.f1660b = m26228u;
                    this.f1661d = m26228u2;
                    this.f1662k = m26228u3;
                    this.f1663p = m26228u4;
                    this.f1664q = m26228u5;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f1659a.m26232q(this.f1660b, this.f1661d, this.f1662k, this.f1663p, this.f1664q, dialogInterface, i);
                }
            });
            builder.create().show();
        } catch (WindowManager.BadTokenException e) {
            C0543w1.m26250l("", e);
        }
    }

    /* renamed from: q */
    public final /* synthetic */ void m26232q(int i, int i2, int i3, int i4, int i5, DialogInterface dialogInterface, int i6) {
        if (i6 == i) {
            if (!(this.f1702a instanceof Activity)) {
                cm0.m12438e("Can not create dialog without Activity Context");
                return;
            }
            String str = this.f1704c;
            final String str2 = "No debug information";
            if (!TextUtils.isEmpty(str)) {
                Uri build = new Uri.Builder().encodedQuery(str.replaceAll("\\+", "%20")).build();
                StringBuilder sb = new StringBuilder();
                C7601t.m939d();
                Map<String, String> m26304r = C0497k2.m26304r(build);
                for (String str3 : m26304r.keySet()) {
                    sb.append(str3);
                    sb.append(" = ");
                    sb.append(m26304r.get(str3));
                    sb.append("\n\n");
                }
                String trim = sb.toString().trim();
                if (!TextUtils.isEmpty(trim)) {
                    str2 = trim;
                }
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this.f1702a);
            builder.setMessage(str2);
            builder.setTitle("Ad Information");
            builder.setPositiveButton("Share", new DialogInterface.OnClickListener(this, str2) { // from class: b3.u

                /* renamed from: a */
                public final C0547y f1685a;

                /* renamed from: b */
                public final String f1686b;

                {
                    this.f1685a = this;
                    this.f1686b = str2;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface2, int i7) {
                    this.f1685a.m26234o(this.f1686b, dialogInterface2, i7);
                }
            });
            builder.setNegativeButton("Close", DialogInterface$OnClickListenerC0538v.f1695a);
            builder.create().show();
        } else if (i6 == i2) {
            cm0.m12442a("Debug mode [Creative Preview] selected.");
            qm0.f30190a.execute(new Runnable(this) { // from class: b3.l

                /* renamed from: a */
                public final C0547y f1640a;

                {
                    this.f1640a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f1640a.m26241h();
                }
            });
        } else if (i6 == i3) {
            cm0.m12442a("Debug mode [Troubleshooting] selected.");
            qm0.f30190a.execute(new Runnable(this) { // from class: b3.m

                /* renamed from: a */
                public final C0547y f1644a;

                {
                    this.f1644a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f1644a.m26242g();
                }
            });
        } else if (i6 == i4) {
            final i83 i83Var = qm0.f30194e;
            i83 i83Var2 = qm0.f30190a;
            if (this.f1703b.m10494n()) {
                i83Var.execute(new Runnable(this) { // from class: b3.w

                    /* renamed from: a */
                    public final C0547y f1699a;

                    {
                        this.f1699a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1699a.m26235n();
                    }
                });
            } else {
                i83Var2.execute(new Runnable(this, i83Var) { // from class: b3.x

                    /* renamed from: a */
                    public final C0547y f1700a;

                    /* renamed from: b */
                    public final i83 f1701b;

                    {
                        this.f1700a = this;
                        this.f1701b = i83Var;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1700a.m26237l(this.f1701b);
                    }
                });
            }
        } else if (i6 == i5) {
            final i83 i83Var3 = qm0.f30194e;
            i83 i83Var4 = qm0.f30190a;
            if (this.f1703b.m10494n()) {
                i83Var3.execute(new Runnable(this) { // from class: b3.j

                    /* renamed from: a */
                    public final C0547y f1618a;

                    {
                        this.f1618a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1618a.m26238k();
                    }
                });
            } else {
                i83Var4.execute(new Runnable(this, i83Var3) { // from class: b3.k

                    /* renamed from: a */
                    public final C0547y f1625a;

                    /* renamed from: b */
                    public final i83 f1626b;

                    {
                        this.f1625a = this;
                        this.f1626b = i83Var3;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1625a.m26240i(this.f1626b);
                    }
                });
            }
        }
    }

    /* renamed from: s */
    public final boolean m26230s(float f, float f2, float f3, float f4) {
        if (Math.abs(this.f1710i.x - f) < this.f1709h && Math.abs(this.f1710i.y - f2) < this.f1709h && Math.abs(this.f1711j.x - f3) < this.f1709h && Math.abs(this.f1711j.y - f4) < this.f1709h) {
            return true;
        }
        return false;
    }

    /* renamed from: t */
    public final void m26229t(Context context) {
        final int i;
        ArrayList arrayList = new ArrayList();
        int m26228u = m26228u(arrayList, "None", true);
        final int m26228u2 = m26228u(arrayList, "Shake", true);
        final int m26228u3 = m26228u(arrayList, "Flick", true);
        dv1 dv1Var = dv1.NONE;
        int ordinal = this.f1703b.m10502f().ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                i = m26228u;
            } else {
                i = m26228u3;
            }
        } else {
            i = m26228u2;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context, C7601t.m937f().mo26268m());
        final AtomicInteger atomicInteger = new AtomicInteger(i);
        builder.setTitle("Setup gesture");
        builder.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i, new DialogInterface.OnClickListener(atomicInteger) { // from class: b3.q

            /* renamed from: a */
            public final AtomicInteger f1673a;

            {
                this.f1673a = atomicInteger;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.f1673a.set(i2);
            }
        });
        builder.setNegativeButton("Dismiss", new DialogInterface.OnClickListener(this) { // from class: b3.r

            /* renamed from: a */
            public final C0547y f1674a;

            {
                this.f1674a = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.f1674a.m26247b();
            }
        });
        builder.setPositiveButton("Save", new DialogInterface.OnClickListener(this, atomicInteger, i, m26228u2, m26228u3) { // from class: b3.s

            /* renamed from: a */
            public final C0547y f1675a;

            /* renamed from: b */
            public final AtomicInteger f1676b;

            /* renamed from: d */
            public final int f1677d;

            /* renamed from: k */
            public final int f1678k;

            /* renamed from: p */
            public final int f1679p;

            {
                this.f1675a = this;
                this.f1676b = atomicInteger;
                this.f1677d = i;
                this.f1678k = m26228u2;
                this.f1679p = m26228u3;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.f1675a.m26233p(this.f1676b, this.f1677d, this.f1678k, this.f1679p, dialogInterface, i2);
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener(this) { // from class: b3.t

            /* renamed from: a */
            public final C0547y f1680a;

            {
                this.f1680a = this;
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f1680a.m26247b();
            }
        });
        builder.create().show();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.f1704c);
        sb.append(",DebugSignal: ");
        sb.append(this.f1707f);
        sb.append(",AFMA Version: ");
        sb.append(this.f1706e);
        sb.append(",Ad Unit ID: ");
        sb.append(this.f1705d);
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: a */
    public final void m26248a(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.f1708g = 0;
            this.f1710i = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i = this.f1708g;
        if (i == -1) {
            return;
        }
        if (i == 0) {
            if (actionMasked == 5) {
                this.f1708g = 5;
                this.f1711j = new PointF(motionEvent.getX(1), motionEvent.getY(1));
                this.f1712k.postDelayed(this.f1713l, ((Long) C5592av.m12935c().m8098c(C6225rz.f30988c3)).longValue());
            }
        } else if (i == 5) {
            if (pointerCount == 2) {
                if (actionMasked == 2) {
                    boolean z = false;
                    for (int i2 = 0; i2 < historySize; i2++) {
                        z |= !m26230s(motionEvent.getHistoricalX(0, i2), motionEvent.getHistoricalY(0, i2), motionEvent.getHistoricalX(1, i2), motionEvent.getHistoricalY(1, i2));
                    }
                    if (m26230s(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1)) && !z) {
                        return;
                    }
                } else {
                    return;
                }
            }
            this.f1708g = -1;
            this.f1712k.removeCallbacks(this.f1713l);
        }
    }

    /* renamed from: g */
    public final /* synthetic */ void m26242g() {
        C0463c0 m929n = C7601t.m929n();
        Context context = this.f1702a;
        String str = this.f1705d;
        String str2 = this.f1706e;
        String str3 = this.f1707f;
        boolean m26400m = m929n.m26400m();
        m929n.m26401l(m929n.m26408e(context, str, str2));
        if (m929n.m26400m()) {
            if (!m26400m && !TextUtils.isEmpty(str3)) {
                m929n.m26405h(context, str2, str3, str);
            }
            cm0.m12442a("Device is linked for debug signals.");
            m929n.m26399n(context, "The device is successfully linked for troubleshooting.", false, true);
            return;
        }
        m929n.m26407f(context, str, str2);
    }

    /* renamed from: h */
    public final /* synthetic */ void m26241h() {
        C0463c0 m929n = C7601t.m929n();
        Context context = this.f1702a;
        String str = this.f1705d;
        String str2 = this.f1706e;
        if (!m929n.m26409d(context, str, str2)) {
            m929n.m26399n(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
        } else if ("2".equals(m929n.f1584f)) {
            cm0.m12442a("Creative is not pushed for this device.");
            m929n.m26399n(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if (Config.SITE_API_VERSION.equals(m929n.f1584f)) {
            cm0.m12442a("The app is not linked for creative preview.");
            m929n.m26407f(context, str, str2);
        } else if ("0".equals(m929n.f1584f)) {
            cm0.m12442a("Device is linked for in app preview.");
            m929n.m26399n(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    /* renamed from: i */
    public final /* synthetic */ void m26240i(i83 i83Var) {
        if (!C7601t.m929n().m26408e(this.f1702a, this.f1705d, this.f1706e)) {
            C7601t.m929n().m26407f(this.f1702a, this.f1705d, this.f1706e);
        } else {
            i83Var.execute(new Runnable(this) { // from class: b3.n

                /* renamed from: a */
                public final C0547y f1652a;

                {
                    this.f1652a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f1652a.m26239j();
                }
            });
        }
    }

    /* renamed from: l */
    public final /* synthetic */ void m26237l(i83 i83Var) {
        if (!C7601t.m929n().m26408e(this.f1702a, this.f1705d, this.f1706e)) {
            C7601t.m929n().m26407f(this.f1702a, this.f1705d, this.f1706e);
        } else {
            i83Var.execute(new Runnable(this) { // from class: b3.o

                /* renamed from: a */
                public final C0547y f1655a;

                {
                    this.f1655a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f1655a.m26236m();
                }
            });
        }
    }

    /* renamed from: o */
    public final /* synthetic */ void m26234o(String str, DialogInterface dialogInterface, int i) {
        C7601t.m939d();
        C0497k2.m26306p(this.f1702a, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    /* renamed from: p */
    public final /* synthetic */ void m26233p(AtomicInteger atomicInteger, int i, int i2, int i3, DialogInterface dialogInterface, int i4) {
        if (atomicInteger.get() != i) {
            if (atomicInteger.get() == i2) {
                this.f1703b.m10503e(dv1.SHAKE);
            } else if (atomicInteger.get() == i3) {
                this.f1703b.m10503e(dv1.FLICK);
            } else {
                this.f1703b.m10503e(dv1.NONE);
            }
        }
        m26247b();
    }

    public C0547y(Context context, String str) {
        this(context);
        this.f1704c = str;
    }
}
