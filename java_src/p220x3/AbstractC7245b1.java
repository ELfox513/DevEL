package p220x3;

import android.util.Log;
import java.util.ArrayList;
/* renamed from: x3.b1 */
/* loaded from: classes.dex */
public abstract class AbstractC7245b1<TListener> {

    /* renamed from: a */
    public TListener f36641a;

    /* renamed from: b */
    public boolean f36642b = false;

    /* renamed from: c */
    public final /* synthetic */ AbstractC7246c f36643c;

    public AbstractC7245b1(AbstractC7246c abstractC7246c, TListener tlistener) {
        this.f36643c = abstractC7246c;
        this.f36641a = tlistener;
    }

    /* renamed from: a */
    public abstract void mo1875a();

    /* renamed from: b */
    public abstract void mo1874b(TListener tlistener);

    /* renamed from: c */
    public final void m2028c() {
        TListener tlistener;
        synchronized (this) {
            tlistener = this.f36641a;
            if (this.f36642b) {
                String valueOf = String.valueOf(this);
                StringBuilder sb = new StringBuilder(valueOf.length() + 47);
                sb.append("Callback proxy ");
                sb.append(valueOf);
                sb.append(" being reused. This is not safe.");
                Log.w("GmsClient", sb.toString());
            }
        }
        if (tlistener != null) {
            try {
                mo1874b(tlistener);
            } catch (RuntimeException e) {
                throw e;
            }
        }
        synchronized (this) {
            this.f36642b = true;
        }
        m2027d();
    }

    /* renamed from: e */
    public final void m2026e() {
        synchronized (this) {
            this.f36641a = null;
        }
    }

    /* renamed from: d */
    public final void m2027d() {
        ArrayList arrayList;
        ArrayList arrayList2;
        m2026e();
        arrayList = this.f36643c.f36648C;
        synchronized (arrayList) {
            arrayList2 = this.f36643c.f36648C;
            arrayList2.remove(this);
        }
    }
}
