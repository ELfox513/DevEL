package p060f4;

import android.content.Context;
import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import p185t3.C6756m;
import p220x3.C7297q;
/* renamed from: f4.c */
/* loaded from: classes.dex */
public abstract class AbstractC3515c<T> {

    /* renamed from: a */
    public final String f15982a;

    /* renamed from: b */
    public T f15983b;

    /* renamed from: f4.c$a */
    /* loaded from: classes.dex */
    public static class C3516a extends Exception {
        public C3516a(@RecentlyNonNull String str) {
            super(str);
        }

        public C3516a(@RecentlyNonNull String str, @RecentlyNonNull Throwable th) {
            super(str, th);
        }
    }

    public AbstractC3515c(@RecentlyNonNull String str) {
        this.f15982a = str;
    }

    @RecentlyNonNull
    /* renamed from: a */
    public abstract T mo6841a(@RecentlyNonNull IBinder iBinder);

    @RecentlyNonNull
    /* renamed from: b */
    public final T m18739b(@RecentlyNonNull Context context) {
        if (this.f15983b == null) {
            C7297q.m1883j(context);
            Context m3480c = C6756m.m3480c(context);
            if (m3480c != null) {
                try {
                    this.f15983b = mo6841a((IBinder) m3480c.getClassLoader().loadClass(this.f15982a).newInstance());
                } catch (ClassNotFoundException e) {
                    throw new C3516a("Could not load creator class.", e);
                } catch (IllegalAccessException e2) {
                    throw new C3516a("Could not access creator.", e2);
                } catch (InstantiationException e3) {
                    throw new C3516a("Could not instantiate creator.", e3);
                }
            } else {
                throw new C3516a("Could not get remote context.");
            }
        }
        return this.f15983b;
    }
}
