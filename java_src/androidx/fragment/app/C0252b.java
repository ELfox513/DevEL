package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.AbstractC0285n;
import androidx.lifecycle.AbstractC0317d;
import java.util.ArrayList;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: androidx.fragment.app.b */
/* loaded from: classes.dex */
public final class C0252b implements Parcelable {
    public static final Parcelable.Creator<C0252b> CREATOR = new C0253a();

    /* renamed from: a */
    public final int[] f959a;

    /* renamed from: b */
    public final ArrayList<String> f960b;

    /* renamed from: d */
    public final int[] f961d;

    /* renamed from: k */
    public final int[] f962k;

    /* renamed from: p */
    public final int f963p;

    /* renamed from: q */
    public final int f964q;

    /* renamed from: r */
    public final String f965r;

    /* renamed from: s */
    public final int f966s;

    /* renamed from: t */
    public final int f967t;

    /* renamed from: u */
    public final CharSequence f968u;

    /* renamed from: v */
    public final int f969v;

    /* renamed from: w */
    public final CharSequence f970w;

    /* renamed from: x */
    public final ArrayList<String> f971x;

    /* renamed from: y */
    public final ArrayList<String> f972y;

    /* renamed from: z */
    public final boolean f973z;

    /* renamed from: androidx.fragment.app.b$a */
    /* loaded from: classes.dex */
    public static class C0253a implements Parcelable.Creator<C0252b> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public C0252b createFromParcel(Parcel parcel) {
            return new C0252b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public C0252b[] newArray(int i) {
            return new C0252b[i];
        }
    }

    public C0252b(C0251a c0251a) {
        int size = c0251a.f1097a.size();
        this.f959a = new int[size * 5];
        if (c0251a.f1104h) {
            this.f960b = new ArrayList<>(size);
            this.f961d = new int[size];
            this.f962k = new int[size];
            int i = 0;
            int i2 = 0;
            while (i < size) {
                AbstractC0285n.C0286a c0286a = c0251a.f1097a.get(i);
                int i3 = i2 + 1;
                this.f959a[i2] = c0286a.f1115a;
                ArrayList<String> arrayList = this.f960b;
                Fragment fragment = c0286a.f1116b;
                arrayList.add(fragment != null ? fragment.f923p : null);
                int[] iArr = this.f959a;
                int i4 = i3 + 1;
                iArr[i3] = c0286a.f1117c;
                int i5 = i4 + 1;
                iArr[i4] = c0286a.f1118d;
                int i6 = i5 + 1;
                iArr[i5] = c0286a.f1119e;
                iArr[i6] = c0286a.f1120f;
                this.f961d[i] = c0286a.f1121g.ordinal();
                this.f962k[i] = c0286a.f1122h.ordinal();
                i++;
                i2 = i6 + 1;
            }
            this.f963p = c0251a.f1102f;
            this.f964q = c0251a.f1103g;
            this.f965r = c0251a.f1106j;
            this.f966s = c0251a.f958u;
            this.f967t = c0251a.f1107k;
            this.f968u = c0251a.f1108l;
            this.f969v = c0251a.f1109m;
            this.f970w = c0251a.f1110n;
            this.f971x = c0251a.f1111o;
            this.f972y = c0251a.f1112p;
            this.f973z = c0251a.f1113q;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: a */
    public C0251a m27099a(LayoutInflater$Factory2C0264j layoutInflater$Factory2C0264j) {
        C0251a c0251a = new C0251a(layoutInflater$Factory2C0264j);
        int i = 0;
        int i2 = 0;
        while (i < this.f959a.length) {
            AbstractC0285n.C0286a c0286a = new AbstractC0285n.C0286a();
            int i3 = i + 1;
            c0286a.f1115a = this.f959a[i];
            if (LayoutInflater$Factory2C0264j.f1006S) {
                Log.v("FragmentManager", "Instantiate " + c0251a + " op #" + i2 + " base fragment #" + this.f959a[i3]);
            }
            String str = this.f960b.get(i2);
            if (str != null) {
                c0286a.f1116b = layoutInflater$Factory2C0264j.f1031r.get(str);
            } else {
                c0286a.f1116b = null;
            }
            c0286a.f1121g = AbstractC0317d.EnumC0319b.values()[this.f961d[i2]];
            c0286a.f1122h = AbstractC0317d.EnumC0319b.values()[this.f962k[i2]];
            int[] iArr = this.f959a;
            int i4 = i3 + 1;
            int i5 = iArr[i3];
            c0286a.f1117c = i5;
            int i6 = i4 + 1;
            int i7 = iArr[i4];
            c0286a.f1118d = i7;
            int i8 = i6 + 1;
            int i9 = iArr[i6];
            c0286a.f1119e = i9;
            int i10 = iArr[i8];
            c0286a.f1120f = i10;
            c0251a.f1098b = i5;
            c0251a.f1099c = i7;
            c0251a.f1100d = i9;
            c0251a.f1101e = i10;
            c0251a.m26890c(c0286a);
            i2++;
            i = i8 + 1;
        }
        c0251a.f1102f = this.f963p;
        c0251a.f1103g = this.f964q;
        c0251a.f1106j = this.f965r;
        c0251a.f958u = this.f966s;
        c0251a.f1104h = true;
        c0251a.f1107k = this.f967t;
        c0251a.f1108l = this.f968u;
        c0251a.f1109m = this.f969v;
        c0251a.f1110n = this.f970w;
        c0251a.f1111o = this.f971x;
        c0251a.f1112p = this.f972y;
        c0251a.f1113q = this.f973z;
        c0251a.m27114h(1);
        return c0251a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f959a);
        parcel.writeStringList(this.f960b);
        parcel.writeIntArray(this.f961d);
        parcel.writeIntArray(this.f962k);
        parcel.writeInt(this.f963p);
        parcel.writeInt(this.f964q);
        parcel.writeString(this.f965r);
        parcel.writeInt(this.f966s);
        parcel.writeInt(this.f967t);
        TextUtils.writeToParcel(this.f968u, parcel, 0);
        parcel.writeInt(this.f969v);
        TextUtils.writeToParcel(this.f970w, parcel, 0);
        parcel.writeStringList(this.f971x);
        parcel.writeStringList(this.f972y);
        parcel.writeInt(this.f973z ? 1 : 0);
    }

    public C0252b(Parcel parcel) {
        this.f959a = parcel.createIntArray();
        this.f960b = parcel.createStringArrayList();
        this.f961d = parcel.createIntArray();
        this.f962k = parcel.createIntArray();
        this.f963p = parcel.readInt();
        this.f964q = parcel.readInt();
        this.f965r = parcel.readString();
        this.f966s = parcel.readInt();
        this.f967t = parcel.readInt();
        this.f968u = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f969v = parcel.readInt();
        this.f970w = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f971x = parcel.createStringArrayList();
        this.f972y = parcel.createStringArrayList();
        this.f973z = parcel.readInt() != 0;
    }
}
