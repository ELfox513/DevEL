package p209w0;

import android.app.Notification;
/* renamed from: w0.e */
/* loaded from: classes.dex */
public final class C7108e {

    /* renamed from: a */
    public final int f36118a;

    /* renamed from: b */
    public final int f36119b;

    /* renamed from: c */
    public final Notification f36120c;

    /* renamed from: a */
    public int m2501a() {
        return this.f36119b;
    }

    /* renamed from: b */
    public Notification m2500b() {
        return this.f36120c;
    }

    /* renamed from: c */
    public int m2499c() {
        return this.f36118a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C7108e.class != obj.getClass()) {
            return false;
        }
        C7108e c7108e = (C7108e) obj;
        if (this.f36118a != c7108e.f36118a || this.f36119b != c7108e.f36119b) {
            return false;
        }
        return this.f36120c.equals(c7108e.f36120c);
    }

    public int hashCode() {
        return (((this.f36118a * 31) + this.f36119b) * 31) + this.f36120c.hashCode();
    }

    public String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f36118a + ", mForegroundServiceType=" + this.f36119b + ", mNotification=" + this.f36120c + '}';
    }

    public C7108e(int i, Notification notification, int i2) {
        this.f36118a = i;
        this.f36120c = notification;
        this.f36119b = i2;
    }
}
