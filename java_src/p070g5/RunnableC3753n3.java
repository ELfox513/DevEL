package p070g5;

import android.util.Log;
/* renamed from: g5.n3 */
/* loaded from: classes2.dex */
public final class RunnableC3753n3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f16748a;

    /* renamed from: b */
    public final /* synthetic */ String f16749b;

    /* renamed from: d */
    public final /* synthetic */ Object f16750d;

    /* renamed from: k */
    public final /* synthetic */ Object f16751k;

    /* renamed from: p */
    public final /* synthetic */ Object f16752p;

    /* renamed from: q */
    public final /* synthetic */ C3789q3 f16753q;

    public RunnableC3753n3(C3789q3 c3789q3, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f16753q = c3789q3;
        this.f16748a = i;
        this.f16749b = str;
        this.f16750d = obj;
        this.f16751k = obj2;
        this.f16752p = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c;
        long j;
        char c2;
        long j2;
        C3670g4 m18546A = this.f16753q.f17008a.m18546A();
        if (m18546A.m17919i()) {
            c = this.f16753q.f16875c;
            if (c == 0) {
                if (this.f16753q.f17008a.m18513u().m18377C()) {
                    C3789q3 c3789q3 = this.f16753q;
                    c3789q3.f17008a.mo17857G();
                    c3789q3.f16875c = 'C';
                } else {
                    C3789q3 c3789q32 = this.f16753q;
                    c3789q32.f17008a.mo17857G();
                    c3789q32.f16875c = 'c';
                }
            }
            j = this.f16753q.f16876d;
            if (j < 0) {
                C3789q3 c3789q33 = this.f16753q;
                c3789q33.f17008a.m18513u().m18367l();
                c3789q33.f16876d = 43042L;
            }
            char charAt = "01VDIWEA?".charAt(this.f16748a);
            c2 = this.f16753q.f16875c;
            j2 = this.f16753q.f16876d;
            String m18009v = C3789q3.m18009v(true, this.f16749b, this.f16750d, this.f16751k, this.f16752p);
            StringBuilder sb = new StringBuilder(String.valueOf(m18009v).length() + 24);
            sb.append("2");
            sb.append(charAt);
            sb.append(c2);
            sb.append(j2);
            sb.append(":");
            sb.append(m18009v);
            String sb2 = sb.toString();
            if (sb2.length() > 1024) {
                sb2 = this.f16749b.substring(0, 1024);
            }
            C3634d4 c3634d4 = m18546A.f16497d;
            if (c3634d4 != null) {
                c3634d4.m18422b(sb2, 1L);
                return;
            }
            return;
        }
        Log.println(6, this.f16753q.m18007x(), "Persisted config not initialized. Not logging error/warn");
    }
}
