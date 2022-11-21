package p168r4;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import p026c4.InterfaceC1045f;
/* renamed from: r4.gl0 */
/* loaded from: classes2.dex */
public final class gl0 {

    /* renamed from: a */
    public final InterfaceC1045f f24125a;

    /* renamed from: b */
    public final rl0 f24126b;

    /* renamed from: e */
    public final String f24129e;

    /* renamed from: f */
    public final String f24130f;

    /* renamed from: d */
    public final Object f24128d = new Object();

    /* renamed from: g */
    public long f24131g = -1;

    /* renamed from: h */
    public long f24132h = -1;

    /* renamed from: i */
    public long f24133i = 0;

    /* renamed from: j */
    public long f24134j = -1;

    /* renamed from: k */
    public long f24135k = -1;

    /* renamed from: c */
    public final LinkedList<fl0> f24127c = new LinkedList<>();

    public gl0(InterfaceC1045f interfaceC1045f, rl0 rl0Var, String str, String str2) {
        this.f24125a = interfaceC1045f;
        this.f24126b = rl0Var;
        this.f24129e = str;
        this.f24130f = str2;
    }

    /* renamed from: k */
    public final String m11119k() {
        return this.f24129e;
    }

    /* renamed from: b */
    public final void m11128b(C6293tt c6293tt) {
        synchronized (this.f24128d) {
            long mo24762b = this.f24125a.mo24762b();
            this.f24134j = mo24762b;
            this.f24126b.m7470e(c6293tt, mo24762b);
        }
    }

    /* renamed from: c */
    public final void m11127c() {
        synchronized (this.f24128d) {
            this.f24126b.m7469f();
        }
    }

    /* renamed from: d */
    public final void m11126d() {
        synchronized (this.f24128d) {
            this.f24126b.m7468g();
        }
    }

    /* renamed from: e */
    public final void m11125e(long j) {
        synchronized (this.f24128d) {
            this.f24135k = j;
            if (j != -1) {
                this.f24126b.m7474a(this);
            }
        }
    }

    /* renamed from: f */
    public final void m11124f() {
        synchronized (this.f24128d) {
            if (this.f24135k != -1 && this.f24131g == -1) {
                this.f24131g = this.f24125a.mo24762b();
                this.f24126b.m7474a(this);
            }
            this.f24126b.m7471d();
        }
    }

    /* renamed from: g */
    public final void m11123g() {
        synchronized (this.f24128d) {
            if (this.f24135k != -1) {
                fl0 fl0Var = new fl0(this);
                fl0Var.m11488c();
                this.f24127c.add(fl0Var);
                this.f24133i++;
                this.f24126b.m7472c();
                this.f24126b.m7474a(this);
            }
        }
    }

    /* renamed from: h */
    public final void m11122h() {
        synchronized (this.f24128d) {
            if (this.f24135k != -1 && !this.f24127c.isEmpty()) {
                fl0 last = this.f24127c.getLast();
                if (last.m11490a() == -1) {
                    last.m11489b();
                    this.f24126b.m7474a(this);
                }
            }
        }
    }

    /* renamed from: i */
    public final void m11121i(boolean z) {
        synchronized (this.f24128d) {
            if (this.f24135k != -1) {
                this.f24132h = this.f24125a.mo24762b();
            }
        }
    }

    /* renamed from: j */
    public final Bundle m11120j() {
        Bundle bundle;
        synchronized (this.f24128d) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.f24129e);
            bundle.putString("slotid", this.f24130f);
            bundle.putBoolean("ismediation", false);
            bundle.putLong("treq", this.f24134j);
            bundle.putLong("tresponse", this.f24135k);
            bundle.putLong("timp", this.f24131g);
            bundle.putLong("tload", this.f24132h);
            bundle.putLong("pcc", this.f24133i);
            bundle.putLong("tfetch", -1L);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<fl0> it = this.f24127c.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().m11487d());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }
}
