package p037d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import java.util.Calendar;
import p172s.C6565k;
/* renamed from: d.o */
/* loaded from: classes.dex */
public class C3143o {

    /* renamed from: d */
    public static C3143o f15434d;

    /* renamed from: a */
    public final Context f15435a;

    /* renamed from: b */
    public final LocationManager f15436b;

    /* renamed from: c */
    public final C3144a f15437c = new C3144a();

    /* renamed from: d.o$a */
    /* loaded from: classes.dex */
    public static class C3144a {

        /* renamed from: a */
        public boolean f15438a;

        /* renamed from: b */
        public long f15439b;

        /* renamed from: c */
        public long f15440c;

        /* renamed from: d */
        public long f15441d;

        /* renamed from: e */
        public long f15442e;

        /* renamed from: f */
        public long f15443f;
    }

    /* renamed from: e */
    public final boolean m19529e() {
        return this.f15437c.f15443f > System.currentTimeMillis();
    }

    /* renamed from: a */
    public static C3143o m19533a(Context context) {
        if (f15434d == null) {
            Context applicationContext = context.getApplicationContext();
            f15434d = new C3143o(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f15434d;
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: b */
    public final Location m19532b() {
        Location location;
        Location location2 = null;
        if (C6565k.m3908b(this.f15435a, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            location = m19531c("network");
        } else {
            location = null;
        }
        if (C6565k.m3908b(this.f15435a, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            location2 = m19531c("gps");
        }
        if (location2 != null && location != null) {
            if (location2.getTime() > location.getTime()) {
                return location2;
            }
            return location;
        } else if (location2 != null) {
            return location2;
        } else {
            return location;
        }
    }

    /* renamed from: c */
    public final Location m19531c(String str) {
        try {
            if (this.f15436b.isProviderEnabled(str)) {
                return this.f15436b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e) {
            Log.d("TwilightManager", "Failed to get last known location", e);
            return null;
        }
    }

    /* renamed from: d */
    public boolean m19530d() {
        C3144a c3144a = this.f15437c;
        if (m19529e()) {
            return c3144a.f15438a;
        }
        Location m19532b = m19532b();
        if (m19532b != null) {
            m19528f(m19532b);
            return c3144a.f15438a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        if (i >= 6 && i < 22) {
            return false;
        }
        return true;
    }

    /* renamed from: f */
    public final void m19528f(Location location) {
        boolean z;
        long j;
        long j2;
        C3144a c3144a = this.f15437c;
        long currentTimeMillis = System.currentTimeMillis();
        C3142n m19534b = C3142n.m19534b();
        m19534b.m19535a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j3 = m19534b.f15431a;
        m19534b.m19535a(currentTimeMillis, location.getLatitude(), location.getLongitude());
        if (m19534b.f15433c == 1) {
            z = true;
        } else {
            z = false;
        }
        long j4 = m19534b.f15432b;
        long j5 = m19534b.f15431a;
        boolean z2 = z;
        m19534b.m19535a(86400000 + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j6 = m19534b.f15432b;
        if (j4 != -1 && j5 != -1) {
            if (currentTimeMillis > j5) {
                j2 = 0 + j6;
            } else if (currentTimeMillis > j4) {
                j2 = 0 + j5;
            } else {
                j2 = 0 + j4;
            }
            j = j2 + 60000;
        } else {
            j = 43200000 + currentTimeMillis;
        }
        c3144a.f15438a = z2;
        c3144a.f15439b = j3;
        c3144a.f15440c = j4;
        c3144a.f15441d = j5;
        c3144a.f15442e = j6;
        c3144a.f15443f = j;
    }

    public C3143o(Context context, LocationManager locationManager) {
        this.f15435a = context;
        this.f15436b = locationManager;
    }
}
