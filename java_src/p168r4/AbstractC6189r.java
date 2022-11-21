package p168r4;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.util.Iterator;
import java.util.LinkedList;
/* renamed from: r4.r */
/* loaded from: classes2.dex */
public abstract class AbstractC6189r implements InterfaceC6152q {

    /* renamed from: E */
    public static volatile C6338v0 f30372E;

    /* renamed from: A */
    public float f30373A;

    /* renamed from: D */
    public DisplayMetrics f30376D;

    /* renamed from: a */
    public MotionEvent f30377a;

    /* renamed from: u */
    public double f30386u;

    /* renamed from: v */
    public double f30387v;

    /* renamed from: w */
    public double f30388w;

    /* renamed from: x */
    public float f30389x;

    /* renamed from: y */
    public float f30390y;

    /* renamed from: z */
    public float f30391z;

    /* renamed from: b */
    public final LinkedList<MotionEvent> f30378b = new LinkedList<>();

    /* renamed from: d */
    public long f30379d = 0;

    /* renamed from: k */
    public long f30380k = 0;

    /* renamed from: p */
    public long f30381p = 0;

    /* renamed from: q */
    public long f30382q = 0;

    /* renamed from: r */
    public long f30383r = 0;

    /* renamed from: s */
    public long f30384s = 0;

    /* renamed from: t */
    public long f30385t = 0;

    /* renamed from: B */
    public boolean f30374B = false;

    /* renamed from: C */
    public boolean f30375C = false;

    @Override // p168r4.InterfaceC6152q
    /* renamed from: b */
    public final String mo1019b(Context context, String str, View view) {
        return m7634n(context, str, 3, view, null, null);
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: d */
    public final String mo1017d(Context context, View view, Activity activity) {
        return m7634n(context, null, 2, view, null, null);
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: e */
    public final String mo1016e(Context context, String str, View view, Activity activity) {
        return m7634n(context, str, 3, view, activity, null);
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: g */
    public final synchronized void mo1014g(MotionEvent motionEvent) {
        Long l;
        if (this.f30374B) {
            m7635m();
            this.f30374B = false;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 || action == 2) {
                double rawX = motionEvent.getRawX();
                double rawY = motionEvent.getRawY();
                double d = this.f30387v;
                Double.isNaN(rawX);
                double d2 = rawX - d;
                double d3 = this.f30388w;
                Double.isNaN(rawY);
                double d4 = rawY - d3;
                this.f30386u += Math.sqrt((d2 * d2) + (d4 * d4));
                this.f30387v = rawX;
                this.f30388w = rawY;
            }
        } else {
            this.f30386u = 0.0d;
            this.f30387v = motionEvent.getRawX();
            this.f30388w = motionEvent.getRawY();
        }
        int action2 = motionEvent.getAction();
        if (action2 != 0) {
            try {
                if (action2 != 1) {
                    if (action2 != 2) {
                        if (action2 == 3) {
                            this.f30382q++;
                        }
                    } else {
                        this.f30380k += motionEvent.getHistorySize() + 1;
                        C6412x0 mo7261k = mo7261k(motionEvent);
                        Long l2 = mo7261k.f33392e;
                        if (l2 != null && mo7261k.f33395h != null) {
                            this.f30384s += l2.longValue() + mo7261k.f33395h.longValue();
                        }
                        if (this.f30376D != null && (l = mo7261k.f33393f) != null && mo7261k.f33396i != null) {
                            this.f30385t += l.longValue() + mo7261k.f33396i.longValue();
                        }
                    }
                } else {
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    this.f30377a = obtain;
                    this.f30378b.add(obtain);
                    if (this.f30378b.size() > 6) {
                        this.f30378b.remove().recycle();
                    }
                    this.f30381p++;
                    this.f30383r = mo7260l(new Throwable().getStackTrace());
                }
            } catch (C6004m0 unused) {
            }
        } else {
            this.f30389x = motionEvent.getX();
            this.f30390y = motionEvent.getY();
            this.f30391z = motionEvent.getRawX();
            this.f30373A = motionEvent.getRawY();
            this.f30379d++;
        }
        this.f30375C = true;
    }

    /* renamed from: h */
    public abstract za4 mo7264h(Context context, sa4 sa4Var);

    /* renamed from: i */
    public abstract za4 mo7263i(Context context, View view, Activity activity);

    /* renamed from: j */
    public abstract za4 mo7262j(Context context, View view, Activity activity);

    /* renamed from: k */
    public abstract C6412x0 mo7261k(MotionEvent motionEvent);

    /* renamed from: l */
    public abstract long mo7260l(StackTraceElement[] stackTraceElementArr);

    @Override // p168r4.InterfaceC6152q
    /* renamed from: f */
    public final synchronized void mo1015f(int i, int i2, int i3) {
        if (this.f30377a != null) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30792E1)).booleanValue()) {
                m7635m();
            } else {
                this.f30377a.recycle();
            }
        }
        DisplayMetrics displayMetrics = this.f30376D;
        if (displayMetrics != null) {
            float f = displayMetrics.density;
            this.f30377a = MotionEvent.obtain(0L, i3, 1, i * f, i2 * f, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        } else {
            this.f30377a = null;
        }
        this.f30375C = false;
    }

    /* renamed from: m */
    public final void m7635m() {
        this.f30383r = 0L;
        this.f30379d = 0L;
        this.f30380k = 0L;
        this.f30381p = 0L;
        this.f30382q = 0L;
        this.f30384s = 0L;
        this.f30385t = 0L;
        if (this.f30378b.size() > 0) {
            Iterator<MotionEvent> it = this.f30378b.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.f30378b.clear();
        } else {
            MotionEvent motionEvent = this.f30377a;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.f30377a = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m7634n(android.content.Context r20, java.lang.String r21, int r22, android.view.View r23, android.app.Activity r24, byte[] r25) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.AbstractC6189r.m7634n(android.content.Context, java.lang.String, int, android.view.View, android.app.Activity, byte[]):java.lang.String");
    }

    public AbstractC6189r(Context context) {
        try {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30896R1)).booleanValue()) {
                jc4.m10307b();
            } else {
                C6375w0.m5946a(f30372E);
            }
            this.f30376D = context.getResources().getDisplayMetrics();
        } catch (Throwable unused) {
        }
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: a */
    public final String mo1020a(Context context) {
        if (!C6449y0.m4939f()) {
            return m7634n(context, null, 1, null, null, null);
        }
        throw new IllegalStateException("The caller must not be called from the UI thread.");
    }
}
