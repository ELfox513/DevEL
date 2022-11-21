package p037d;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import p145p.C5272b;
/* renamed from: d.d */
/* loaded from: classes.dex */
public abstract class AbstractC3107d {

    /* renamed from: a */
    public static int f15311a = -100;

    /* renamed from: b */
    public static final C5272b<WeakReference<AbstractC3107d>> f15312b = new C5272b<>();

    /* renamed from: d */
    public static final Object f15313d = new Object();

    /* renamed from: g */
    public static AbstractC3107d m19681g(Activity activity, InterfaceC3106c interfaceC3106c) {
        return new LayoutInflater$Factory2C3109f(activity, interfaceC3106c);
    }

    /* renamed from: h */
    public static AbstractC3107d m19680h(Dialog dialog, InterfaceC3106c interfaceC3106c) {
        return new LayoutInflater$Factory2C3109f(dialog, interfaceC3106c);
    }

    /* renamed from: j */
    public static int m19679j() {
        return f15311a;
    }

    /* renamed from: A */
    public abstract void mo19675A(int i);

    /* renamed from: B */
    public abstract void mo19673B(View view);

    /* renamed from: C */
    public abstract void mo19671C(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: D */
    public void mo19669D(int i) {
    }

    /* renamed from: E */
    public abstract void mo19667E(CharSequence charSequence);

    /* renamed from: d */
    public abstract void mo19633d(View view, ViewGroup.LayoutParams layoutParams);

    @Deprecated
    /* renamed from: e */
    public void m19682e(Context context) {
    }

    /* renamed from: f */
    public Context mo19630f(Context context) {
        m19682e(context);
        return context;
    }

    /* renamed from: i */
    public abstract <T extends View> T mo19626i(int i);

    /* renamed from: k */
    public int mo19623k() {
        return -100;
    }

    /* renamed from: l */
    public abstract MenuInflater mo19621l();

    /* renamed from: m */
    public abstract AbstractC3101a mo19619m();

    /* renamed from: n */
    public abstract void mo19617n();

    /* renamed from: o */
    public abstract void mo19615o();

    /* renamed from: p */
    public abstract void mo19613p(Configuration configuration);

    /* renamed from: q */
    public abstract void mo19611q(Bundle bundle);

    /* renamed from: r */
    public abstract void mo19609r();

    /* renamed from: s */
    public abstract void mo19607s(Bundle bundle);

    /* renamed from: t */
    public abstract void mo19605t();

    /* renamed from: u */
    public abstract void mo19603u(Bundle bundle);

    /* renamed from: v */
    public abstract void mo19601v();

    /* renamed from: w */
    public abstract void mo19599w();

    /* renamed from: z */
    public abstract boolean mo19595z(int i);

    /* renamed from: c */
    public static void m19683c(AbstractC3107d abstractC3107d) {
        synchronized (f15313d) {
            m19677y(abstractC3107d);
            f15312b.add(new WeakReference<>(abstractC3107d));
        }
    }

    /* renamed from: x */
    public static void m19678x(AbstractC3107d abstractC3107d) {
        synchronized (f15313d) {
            m19677y(abstractC3107d);
        }
    }

    /* renamed from: y */
    public static void m19677y(AbstractC3107d abstractC3107d) {
        synchronized (f15313d) {
            Iterator<WeakReference<AbstractC3107d>> it = f15312b.iterator();
            while (it.hasNext()) {
                AbstractC3107d abstractC3107d2 = it.next().get();
                if (abstractC3107d2 == abstractC3107d || abstractC3107d2 == null) {
                    it.remove();
                }
            }
        }
    }
}
