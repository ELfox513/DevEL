package p072g7;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import p099j7.C4368a;
import p099j7.C4381h;
import p108k7.C4514k;
import p108k7.EnumC4518l;
import p239z6.C7873a;
/* renamed from: g7.a */
/* loaded from: classes2.dex */
public class C3907a implements Parcelable {
    public static final Parcelable.Creator<C3907a> CREATOR = new C3908a();

    /* renamed from: a */
    public final String f17149a;

    /* renamed from: b */
    public final C4381h f17150b;

    /* renamed from: d */
    public boolean f17151d;

    /* renamed from: g7.a$a */
    /* loaded from: classes2.dex */
    public class C3908a implements Parcelable.Creator<C3907a> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public C3907a createFromParcel(Parcel parcel) {
            return new C3907a(parcel, (C3908a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public C3907a[] newArray(int i) {
            return new C3907a[i];
        }
    }

    public /* synthetic */ C3907a(Parcel parcel, C3908a c3908a) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: l */
    public C4381h m17795l() {
        return this.f17150b;
    }

    /* renamed from: p */
    public boolean m17793p() {
        return this.f17151d;
    }

    /* renamed from: u */
    public boolean m17792u() {
        return this.f17151d;
    }

    /* renamed from: v */
    public String m17791v() {
        return this.f17149a;
    }

    /* renamed from: x */
    public void m17790x(boolean z) {
        this.f17151d = z;
    }

    public C3907a(String str, C4368a c4368a) {
        this.f17151d = false;
        this.f17149a = str;
        this.f17150b = c4368a.m16746a();
    }

    /* renamed from: n */
    public boolean m17794n() {
        if (TimeUnit.MICROSECONDS.toMinutes(this.f17150b.m16732h()) > C7873a.m75f().m56y()) {
            return true;
        }
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f17149a);
        parcel.writeByte(this.f17151d ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.f17150b, 0);
    }

    /* renamed from: h */
    public static C4514k[] m17797h(List<C3907a> list) {
        if (list.isEmpty()) {
            return null;
        }
        C4514k[] c4514kArr = new C4514k[list.size()];
        C4514k m17798a = list.get(0).m17798a();
        boolean z = false;
        for (int i = 1; i < list.size(); i++) {
            C4514k m17798a2 = list.get(i).m17798a();
            if (!z && list.get(i).m17792u()) {
                c4514kArr[0] = m17798a2;
                c4514kArr[i] = m17798a;
                z = true;
            } else {
                c4514kArr[i] = m17798a2;
            }
        }
        if (!z) {
            c4514kArr[0] = m17798a;
        }
        return c4514kArr;
    }

    /* renamed from: j */
    public static C3907a m17796j() {
        C3907a c3907a = new C3907a(UUID.randomUUID().toString().replaceAll("\\-", ""), new C4368a());
        c3907a.m17790x(m17789z());
        return c3907a;
    }

    /* renamed from: z */
    public static boolean m17789z() {
        C7873a m75f = C7873a.m75f();
        if (m75f.m87I() && Math.random() < m75f.m94B()) {
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public C4514k m17798a() {
        C4514k.C4517c m16123S = C4514k.m16127X().m16123S(this.f17149a);
        if (this.f17151d) {
            m16123S.m16124Q(EnumC4518l.GAUGES_AND_SYSTEM_EVENTS);
        }
        return m16123S.build();
    }

    public C3907a(Parcel parcel) {
        this.f17151d = false;
        this.f17149a = parcel.readString();
        this.f17151d = parcel.readByte() != 0;
        this.f17150b = (C4381h) parcel.readParcelable(C4381h.class.getClassLoader());
    }
}
