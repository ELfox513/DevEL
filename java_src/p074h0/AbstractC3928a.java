package p074h0;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: h0.a */
/* loaded from: classes.dex */
public abstract class AbstractC3928a implements Parcelable {

    /* renamed from: a */
    public final Parcelable f17225a;

    /* renamed from: b */
    public static final AbstractC3928a f17224b = new C3929a();
    public static final Parcelable.Creator<AbstractC3928a> CREATOR = new C3930b();

    /* renamed from: h0.a$a */
    /* loaded from: classes.dex */
    public static class C3929a extends AbstractC3928a {
        public C3929a() {
            super((C3929a) null);
        }
    }

    public /* synthetic */ AbstractC3928a(C3929a c3929a) {
        this();
    }

    /* renamed from: a */
    public final Parcelable m17721a() {
        return this.f17225a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f17225a, i);
    }

    /* renamed from: h0.a$b */
    /* loaded from: classes.dex */
    public static class C3930b implements Parcelable.ClassLoaderCreator<AbstractC3928a> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AbstractC3928a createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: c */
        public AbstractC3928a[] newArray(int i) {
            return new AbstractC3928a[i];
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        /* renamed from: b */
        public AbstractC3928a createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return AbstractC3928a.f17224b;
            }
            throw new IllegalStateException("superState must be null");
        }
    }

    public AbstractC3928a() {
        this.f17225a = null;
    }

    public AbstractC3928a(Parcelable parcelable) {
        if (parcelable != null) {
            this.f17225a = parcelable == f17224b ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public AbstractC3928a(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.f17225a = readParcelable == null ? f17224b : readParcelable;
    }
}
