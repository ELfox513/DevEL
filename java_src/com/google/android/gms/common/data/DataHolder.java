package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepName;
import com.prineside.tdi2.tiles.CoreTile;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import p212w3.C7177a;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
@KeepName
/* loaded from: classes.dex */
public final class DataHolder extends AbstractC7408a implements Closeable {
    @RecentlyNonNull
    public static final Parcelable.Creator<DataHolder> CREATOR = new C7177a();

    /* renamed from: v */
    public static final C1412a f7739v = new C1413a(new String[0], null);

    /* renamed from: a */
    public final int f7740a;

    /* renamed from: b */
    public final String[] f7741b;

    /* renamed from: d */
    public Bundle f7742d;

    /* renamed from: k */
    public final CursorWindow[] f7743k;

    /* renamed from: p */
    public final int f7744p;

    /* renamed from: q */
    public final Bundle f7745q;

    /* renamed from: r */
    public int[] f7746r;

    /* renamed from: s */
    public int f7747s;

    /* renamed from: t */
    public boolean f7748t = false;

    /* renamed from: u */
    public boolean f7749u = true;

    /* renamed from: com.google.android.gms.common.data.DataHolder$a */
    /* loaded from: classes.dex */
    public static class C1412a {

        /* renamed from: a */
        public final String[] f7750a;

        /* renamed from: b */
        public final ArrayList<HashMap<String, Object>> f7751b = new ArrayList<>();

        /* renamed from: c */
        public final HashMap<Object, Integer> f7752c = new HashMap<>();
    }

    public DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.f7740a = i;
        this.f7741b = strArr;
        this.f7743k = cursorWindowArr;
        this.f7744p = i2;
        this.f7745q = bundle;
    }

    @RecentlyNullable
    /* renamed from: X0 */
    public Bundle m23014X0() {
        return this.f7745q;
    }

    /* renamed from: Y0 */
    public int m23013Y0() {
        return this.f7744p;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.f7748t) {
                this.f7748t = true;
                int i = 0;
                while (true) {
                    CursorWindow[] cursorWindowArr = this.f7743k;
                    if (i >= cursorWindowArr.length) {
                        break;
                    }
                    cursorWindowArr[i].close();
                    i++;
                }
            }
        }
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.f7748t;
        }
        return z;
    }

    /* renamed from: Z0 */
    public final void m23012Z0() {
        this.f7742d = new Bundle();
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = this.f7741b;
            if (i2 >= strArr.length) {
                break;
            }
            this.f7742d.putInt(strArr[i2], i2);
            i2++;
        }
        this.f7746r = new int[this.f7743k.length];
        int i3 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.f7743k;
            if (i < cursorWindowArr.length) {
                this.f7746r[i] = i3;
                i3 += this.f7743k[i].getNumRows() - (i3 - cursorWindowArr[i].getStartPosition());
                i++;
            } else {
                this.f7747s = i3;
                return;
            }
        }
    }

    public final void finalize() {
        try {
            if (this.f7749u && this.f7743k.length > 0 && !isClosed()) {
                close();
                String obj = toString();
                StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 178);
                sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                sb.append(obj);
                sb.append(")");
                Log.e("DataBuffer", sb.toString());
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1472s(parcel, 1, this.f7741b, false);
        C7411c.m1470u(parcel, 2, this.f7743k, i, false);
        C7411c.m1479l(parcel, 3, m23013Y0());
        C7411c.m1485f(parcel, 4, m23014X0(), false);
        C7411c.m1479l(parcel, CoreTile.FIXED_LEVEL_XP_REQUIREMENT, this.f7740a);
        C7411c.m1489b(parcel, m1490a);
        if ((i & 1) != 0) {
            close();
        }
    }
}
