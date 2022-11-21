package androidx.versionedparcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import p200v0.C6967b;
import p200v0.InterfaceC6968c;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new C0369a();

    /* renamed from: a */
    public final InterfaceC6968c f1314a;

    /* renamed from: androidx.versionedparcelable.ParcelImpl$a */
    /* loaded from: classes.dex */
    public static class C0369a implements Parcelable.Creator<ParcelImpl> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ParcelImpl createFromParcel(Parcel parcel) {
            return new ParcelImpl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ParcelImpl[] newArray(int i) {
            return new ParcelImpl[i];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        new C6967b(parcel).m2869L(this.f1314a);
    }

    public ParcelImpl(Parcel parcel) {
        this.f1314a = new C6967b(parcel).m2855u();
    }
}
