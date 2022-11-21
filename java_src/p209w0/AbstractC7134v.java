package p209w0;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
/* renamed from: w0.v */
/* loaded from: classes.dex */
public abstract class AbstractC7134v {

    /* renamed from: a */
    public static final String f36154a = AbstractC7114j.m2489f("WorkerFactory");

    /* renamed from: w0.v$a */
    /* loaded from: classes.dex */
    public class C7135a extends AbstractC7134v {
        @Override // p209w0.AbstractC7134v
        /* renamed from: a */
        public ListenableWorker mo2461a(Context context, String str, WorkerParameters workerParameters) {
            return null;
        }
    }

    /* renamed from: c */
    public static AbstractC7134v m2462c() {
        return new C7135a();
    }

    /* renamed from: a */
    public abstract ListenableWorker mo2461a(Context context, String str, WorkerParameters workerParameters);

    /* renamed from: b */
    public final ListenableWorker m2463b(Context context, String str, WorkerParameters workerParameters) {
        ListenableWorker mo2461a = mo2461a(context, str, workerParameters);
        if (mo2461a == null) {
            Class cls = null;
            try {
                cls = Class.forName(str).asSubclass(ListenableWorker.class);
            } catch (Throwable th) {
                AbstractC7114j m2491c = AbstractC7114j.m2491c();
                String str2 = f36154a;
                m2491c.mo2487b(str2, "Invalid class: " + str, th);
            }
            if (cls != null) {
                try {
                    mo2461a = (ListenableWorker) cls.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                } catch (Throwable th2) {
                    AbstractC7114j m2491c2 = AbstractC7114j.m2491c();
                    String str3 = f36154a;
                    m2491c2.mo2487b(str3, "Could not instantiate " + str, th2);
                }
            }
        }
        if (mo2461a != null && mo2461a.isUsed()) {
            throw new IllegalStateException(String.format("WorkerFactory (%s) returned an instance of a ListenableWorker (%s) which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.", getClass().getName(), str));
        }
        return mo2461a;
    }
}
