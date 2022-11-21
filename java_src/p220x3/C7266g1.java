package p220x3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.BinderWrapper;
/* renamed from: x3.g1 */
/* loaded from: classes.dex */
public final class C7266g1 implements Parcelable.Creator<BinderWrapper> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ BinderWrapper createFromParcel(Parcel parcel) {
        return new BinderWrapper(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ BinderWrapper[] newArray(int i) {
        return new BinderWrapper[i];
    }
}
