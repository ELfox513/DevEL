package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.lifecycle.AbstractC0317d;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: androidx.fragment.app.m */
/* loaded from: classes.dex */
public final class C0283m implements Parcelable {
    public static final Parcelable.Creator<C0283m> CREATOR = new C0284a();

    /* renamed from: a */
    public final String f1083a;

    /* renamed from: b */
    public final String f1084b;

    /* renamed from: d */
    public final boolean f1085d;

    /* renamed from: k */
    public final int f1086k;

    /* renamed from: p */
    public final int f1087p;

    /* renamed from: q */
    public final String f1088q;

    /* renamed from: r */
    public final boolean f1089r;

    /* renamed from: s */
    public final boolean f1090s;

    /* renamed from: t */
    public final boolean f1091t;

    /* renamed from: u */
    public final Bundle f1092u;

    /* renamed from: v */
    public final boolean f1093v;

    /* renamed from: w */
    public final int f1094w;

    /* renamed from: x */
    public Bundle f1095x;

    /* renamed from: y */
    public Fragment f1096y;

    /* renamed from: androidx.fragment.app.m$a */
    /* loaded from: classes.dex */
    public static class C0284a implements Parcelable.Creator<C0283m> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public C0283m createFromParcel(Parcel parcel) {
            return new C0283m(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public C0283m[] newArray(int i) {
            return new C0283m[i];
        }
    }

    public C0283m(Fragment fragment) {
        this.f1083a = fragment.getClass().getName();
        this.f1084b = fragment.f923p;
        this.f1085d = fragment.f931x;
        this.f1086k = fragment.f891G;
        this.f1087p = fragment.f892H;
        this.f1088q = fragment.f893I;
        this.f1089r = fragment.f896L;
        this.f1090s = fragment.f930w;
        this.f1091t = fragment.f895K;
        this.f1092u = fragment.f924q;
        this.f1093v = fragment.f894J;
        this.f1094w = fragment.f915c0.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: a */
    public Fragment m26894a(ClassLoader classLoader, C0260g c0260g) {
        if (this.f1096y == null) {
            Bundle bundle = this.f1092u;
            if (bundle != null) {
                bundle.setClassLoader(classLoader);
            }
            Fragment mo26912a = c0260g.mo26912a(classLoader, this.f1083a);
            this.f1096y = mo26912a;
            mo26912a.setArguments(this.f1092u);
            Bundle bundle2 = this.f1095x;
            if (bundle2 != null) {
                bundle2.setClassLoader(classLoader);
                this.f1096y.f913b = this.f1095x;
            } else {
                this.f1096y.f913b = new Bundle();
            }
            Fragment fragment = this.f1096y;
            fragment.f923p = this.f1084b;
            fragment.f931x = this.f1085d;
            fragment.f933z = true;
            fragment.f891G = this.f1086k;
            fragment.f892H = this.f1087p;
            fragment.f893I = this.f1088q;
            fragment.f896L = this.f1089r;
            fragment.f930w = this.f1090s;
            fragment.f895K = this.f1091t;
            fragment.f894J = this.f1093v;
            fragment.f915c0 = AbstractC0317d.EnumC0319b.values()[this.f1094w];
            if (LayoutInflater$Factory2C0264j.f1006S) {
                Log.v("FragmentManager", "Instantiated fragment " + this.f1096y);
            }
        }
        return this.f1096y;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f1083a);
        sb.append(" (");
        sb.append(this.f1084b);
        sb.append(")}:");
        if (this.f1085d) {
            sb.append(" fromLayout");
        }
        if (this.f1087p != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f1087p));
        }
        String str = this.f1088q;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f1088q);
        }
        if (this.f1089r) {
            sb.append(" retainInstance");
        }
        if (this.f1090s) {
            sb.append(" removing");
        }
        if (this.f1091t) {
            sb.append(" detached");
        }
        if (this.f1093v) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1083a);
        parcel.writeString(this.f1084b);
        parcel.writeInt(this.f1085d ? 1 : 0);
        parcel.writeInt(this.f1086k);
        parcel.writeInt(this.f1087p);
        parcel.writeString(this.f1088q);
        parcel.writeInt(this.f1089r ? 1 : 0);
        parcel.writeInt(this.f1090s ? 1 : 0);
        parcel.writeInt(this.f1091t ? 1 : 0);
        parcel.writeBundle(this.f1092u);
        parcel.writeInt(this.f1093v ? 1 : 0);
        parcel.writeBundle(this.f1095x);
        parcel.writeInt(this.f1094w);
    }

    public C0283m(Parcel parcel) {
        this.f1083a = parcel.readString();
        this.f1084b = parcel.readString();
        this.f1085d = parcel.readInt() != 0;
        this.f1086k = parcel.readInt();
        this.f1087p = parcel.readInt();
        this.f1088q = parcel.readString();
        this.f1089r = parcel.readInt() != 0;
        this.f1090s = parcel.readInt() != 0;
        this.f1091t = parcel.readInt() != 0;
        this.f1092u = parcel.readBundle();
        this.f1093v = parcel.readInt() != 0;
        this.f1095x = parcel.readBundle();
        this.f1094w = parcel.readInt();
    }
}
