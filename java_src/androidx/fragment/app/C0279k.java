package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: androidx.fragment.app.k */
/* loaded from: classes.dex */
public final class C0279k implements Parcelable {
    public static final Parcelable.Creator<C0279k> CREATOR = new C0280a();

    /* renamed from: a */
    public ArrayList<C0283m> f1071a;

    /* renamed from: b */
    public ArrayList<String> f1072b;

    /* renamed from: d */
    public C0252b[] f1073d;

    /* renamed from: k */
    public String f1074k;

    /* renamed from: p */
    public int f1075p;

    /* renamed from: androidx.fragment.app.k$a */
    /* loaded from: classes.dex */
    public static class C0280a implements Parcelable.Creator<C0279k> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public C0279k createFromParcel(Parcel parcel) {
            return new C0279k(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public C0279k[] newArray(int i) {
            return new C0279k[i];
        }
    }

    public C0279k() {
        this.f1074k = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f1071a);
        parcel.writeStringList(this.f1072b);
        parcel.writeTypedArray(this.f1073d, i);
        parcel.writeString(this.f1074k);
        parcel.writeInt(this.f1075p);
    }

    public C0279k(Parcel parcel) {
        this.f1074k = null;
        this.f1071a = parcel.createTypedArrayList(C0283m.CREATOR);
        this.f1072b = parcel.createStringArrayList();
        this.f1073d = (C0252b[]) parcel.createTypedArray(C0252b.CREATOR);
        this.f1074k = parcel.readString();
        this.f1075p = parcel.readInt();
    }
}
