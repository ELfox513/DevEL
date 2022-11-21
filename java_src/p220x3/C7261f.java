package p220x3;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.api.Scope;
import p185t3.C6738d;
import p185t3.C6746h;
import p220x3.InterfaceC7273j;
import p228y3.AbstractC7408a;
/* renamed from: x3.f */
/* loaded from: classes.dex */
public class C7261f extends AbstractC7408a {
    @RecentlyNonNull
    public static final Parcelable.Creator<C7261f> CREATOR = new C7279k1();

    /* renamed from: a */
    public final int f36708a;

    /* renamed from: b */
    public final int f36709b;

    /* renamed from: d */
    public int f36710d;

    /* renamed from: k */
    public String f36711k;

    /* renamed from: p */
    public IBinder f36712p;

    /* renamed from: q */
    public Scope[] f36713q;

    /* renamed from: r */
    public Bundle f36714r;

    /* renamed from: s */
    public Account f36715s;

    /* renamed from: t */
    public C6738d[] f36716t;

    /* renamed from: u */
    public C6738d[] f36717u;

    /* renamed from: v */
    public boolean f36718v;

    /* renamed from: w */
    public int f36719w;

    /* renamed from: x */
    public boolean f36720x;

    /* renamed from: y */
    public final String f36721y;

    public C7261f(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, C6738d[] c6738dArr, C6738d[] c6738dArr2, boolean z, int i4, boolean z2, String str2) {
        this.f36708a = i;
        this.f36709b = i2;
        this.f36710d = i3;
        if ("com.google.android.gms".equals(str)) {
            this.f36711k = "com.google.android.gms";
        } else {
            this.f36711k = str;
        }
        if (i < 2) {
            this.f36715s = iBinder != null ? BinderC7240a.m2041t0(InterfaceC7273j.AbstractBinderC7274a.m1928o0(iBinder)) : null;
        } else {
            this.f36712p = iBinder;
            this.f36715s = account;
        }
        this.f36713q = scopeArr;
        this.f36714r = bundle;
        this.f36716t = c6738dArr;
        this.f36717u = c6738dArr2;
        this.f36718v = z;
        this.f36719w = i4;
        this.f36720x = z2;
        this.f36721y = str2;
    }

    @RecentlyNullable
    /* renamed from: X0 */
    public final String m1949X0() {
        return this.f36721y;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        C7279k1.m1926a(this, parcel, i);
    }

    public C7261f(int i, String str) {
        this.f36708a = 6;
        this.f36710d = C6746h.f35418a;
        this.f36709b = i;
        this.f36718v = true;
        this.f36721y = str;
    }
}
