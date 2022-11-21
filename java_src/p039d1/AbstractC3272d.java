package p039d1;

import android.content.Context;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import p014b1.InterfaceC0424a;
import p084i1.InterfaceC4086a;
import p209w0.AbstractC7114j;
/* renamed from: d1.d */
/* loaded from: classes.dex */
public abstract class AbstractC3272d<T> {

    /* renamed from: f */
    public static final String f15578f = AbstractC7114j.m2489f("ConstraintTracker");

    /* renamed from: a */
    public final InterfaceC4086a f15579a;

    /* renamed from: b */
    public final Context f15580b;

    /* renamed from: c */
    public final Object f15581c = new Object();

    /* renamed from: d */
    public final Set<InterfaceC0424a<T>> f15582d = new LinkedHashSet();

    /* renamed from: e */
    public T f15583e;

    /* renamed from: d1.d$a */
    /* loaded from: classes.dex */
    public class RunnableC3273a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f15584a;

        public RunnableC3273a(List list) {
            this.f15584a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (InterfaceC0424a interfaceC0424a : this.f15584a) {
                interfaceC0424a.mo24799a(AbstractC3272d.this.f15583e);
            }
        }
    }

    /* renamed from: b */
    public abstract T mo19205b();

    /* renamed from: e */
    public abstract void mo19211e();

    /* renamed from: f */
    public abstract void mo19210f();

    /* renamed from: a */
    public void m19218a(InterfaceC0424a<T> interfaceC0424a) {
        synchronized (this.f15581c) {
            if (this.f15582d.add(interfaceC0424a)) {
                if (this.f15582d.size() == 1) {
                    this.f15583e = mo19205b();
                    AbstractC7114j.m2491c().mo2488a(f15578f, String.format("%s: initial state = %s", getClass().getSimpleName(), this.f15583e), new Throwable[0]);
                    mo19211e();
                }
                interfaceC0424a.mo24799a(this.f15583e);
            }
        }
    }

    /* renamed from: c */
    public void m19217c(InterfaceC0424a<T> interfaceC0424a) {
        synchronized (this.f15581c) {
            if (this.f15582d.remove(interfaceC0424a) && this.f15582d.isEmpty()) {
                mo19210f();
            }
        }
    }

    /* renamed from: d */
    public void m19216d(T t) {
        synchronized (this.f15581c) {
            T t2 = this.f15583e;
            if (t2 != t && (t2 == null || !t2.equals(t))) {
                this.f15583e = t;
                this.f15579a.mo17408a().execute(new RunnableC3273a(new ArrayList(this.f15582d)));
            }
        }
    }

    public AbstractC3272d(Context context, InterfaceC4086a interfaceC4086a) {
        this.f15580b = context.getApplicationContext();
        this.f15579a = interfaceC4086a;
    }
}
