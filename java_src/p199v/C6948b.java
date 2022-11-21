package p199v;

import android.graphics.Insets;
import android.graphics.Rect;
/* renamed from: v.b */
/* loaded from: classes.dex */
public final class C6948b {

    /* renamed from: e */
    public static final C6948b f35821e = new C6948b(0, 0, 0, 0);

    /* renamed from: a */
    public final int f35822a;

    /* renamed from: b */
    public final int f35823b;

    /* renamed from: c */
    public final int f35824c;

    /* renamed from: d */
    public final int f35825d;

    /* renamed from: c */
    public static C6948b m2952c(Rect rect) {
        return m2953b(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: d */
    public static C6948b m2951d(Insets insets) {
        return m2953b(insets.left, insets.top, insets.right, insets.bottom);
    }

    /* renamed from: e */
    public Insets m2950e() {
        return Insets.m27630of(this.f35822a, this.f35823b, this.f35824c, this.f35825d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C6948b.class != obj.getClass()) {
            return false;
        }
        C6948b c6948b = (C6948b) obj;
        return this.f35825d == c6948b.f35825d && this.f35822a == c6948b.f35822a && this.f35824c == c6948b.f35824c && this.f35823b == c6948b.f35823b;
    }

    public String toString() {
        return "Insets{left=" + this.f35822a + ", top=" + this.f35823b + ", right=" + this.f35824c + ", bottom=" + this.f35825d + '}';
    }

    /* renamed from: a */
    public static C6948b m2954a(C6948b c6948b, C6948b c6948b2) {
        return m2953b(Math.max(c6948b.f35822a, c6948b2.f35822a), Math.max(c6948b.f35823b, c6948b2.f35823b), Math.max(c6948b.f35824c, c6948b2.f35824c), Math.max(c6948b.f35825d, c6948b2.f35825d));
    }

    /* renamed from: b */
    public static C6948b m2953b(int i, int i2, int i3, int i4) {
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return f35821e;
        }
        return new C6948b(i, i2, i3, i4);
    }

    public int hashCode() {
        return (((((this.f35822a * 31) + this.f35823b) * 31) + this.f35824c) * 31) + this.f35825d;
    }

    public C6948b(int i, int i2, int i3, int i4) {
        this.f35822a = i;
        this.f35823b = i2;
        this.f35824c = i3;
        this.f35825d = i4;
    }
}
