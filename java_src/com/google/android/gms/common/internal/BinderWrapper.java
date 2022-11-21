package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepName;
import p220x3.C7266g1;
@KeepName
/* loaded from: classes.dex */
public final class BinderWrapper implements Parcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new C7266g1();

    /* renamed from: a */
    public IBinder f7753a;

    public BinderWrapper(@RecentlyNonNull IBinder iBinder) {
        this.f7753a = iBinder;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        parcel.writeStrongBinder(this.f7753a);
    }
}
