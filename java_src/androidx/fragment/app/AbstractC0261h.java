package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p022c0.C1024g;
import p163r.C5444c;
/* renamed from: androidx.fragment.app.h */
/* loaded from: classes.dex */
public abstract class AbstractC0261h<E> extends AbstractC0258e {

    /* renamed from: a */
    public final Activity f999a;

    /* renamed from: b */
    public final Context f1000b;

    /* renamed from: d */
    public final Handler f1001d;

    /* renamed from: k */
    public final int f1002k;

    /* renamed from: p */
    public final LayoutInflater$Factory2C0264j f1003p;

    public AbstractC0261h(ActivityC0256d activityC0256d) {
        this(activityC0256d, activityC0256d, new Handler(), 0);
    }

    @Override // androidx.fragment.app.AbstractC0258e
    /* renamed from: c */
    public View mo27049c(int i) {
        return null;
    }

    @Override // androidx.fragment.app.AbstractC0258e
    /* renamed from: d */
    public boolean mo27048d() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public Activity m27047e() {
        return this.f999a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public Context m27046f() {
        return this.f1000b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public Handler m27045g() {
        return this.f1001d;
    }

    /* renamed from: h */
    public void mo27044h(Fragment fragment) {
    }

    /* renamed from: i */
    public void mo27043i(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    /* renamed from: j */
    public abstract E mo27042j();

    /* renamed from: k */
    public LayoutInflater mo27041k() {
        return LayoutInflater.from(this.f1000b);
    }

    /* renamed from: l */
    public int mo27040l() {
        return this.f1002k;
    }

    /* renamed from: m */
    public boolean mo27039m() {
        return true;
    }

    /* renamed from: n */
    public void mo27038n(Fragment fragment, String[] strArr, int i) {
    }

    /* renamed from: o */
    public boolean mo27037o(Fragment fragment) {
        return true;
    }

    /* renamed from: p */
    public boolean mo27036p(String str) {
        return false;
    }

    /* renamed from: q */
    public void mo27035q(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            this.f1000b.startActivity(intent);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }

    /* renamed from: r */
    public void mo27034r(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (i == -1) {
            C5444c.m13283o(this.f999a, intentSender, i, intent, i2, i3, i4, bundle);
            return;
        }
        throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
    }

    /* renamed from: s */
    public void mo27033s() {
    }

    public AbstractC0261h(Activity activity, Context context, Handler handler, int i) {
        this.f1003p = new LayoutInflater$Factory2C0264j();
        this.f999a = activity;
        this.f1000b = (Context) C1024g.m24808c(context, "context == null");
        this.f1001d = (Handler) C1024g.m24808c(handler, "handler == null");
        this.f1002k = i;
    }
}
