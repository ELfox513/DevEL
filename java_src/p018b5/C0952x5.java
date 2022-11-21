package p018b5;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p145p.C5270a;
/* renamed from: b5.x5 */
/* loaded from: classes2.dex */
public final class C0952x5 implements InterfaceC0579b6 {

    /* renamed from: g */
    public static final Map<Uri, C0952x5> f2389g = new C5270a();

    /* renamed from: h */
    public static final String[] f2390h = {"key", "value"};

    /* renamed from: a */
    public final ContentResolver f2391a;

    /* renamed from: b */
    public final Uri f2392b;

    /* renamed from: c */
    public final ContentObserver f2393c;

    /* renamed from: d */
    public final Object f2394d;

    /* renamed from: e */
    public volatile Map<String, String> f2395e;

    /* renamed from: f */
    public final List<InterfaceC0969y5> f2396f;

    @Override // p018b5.InterfaceC0579b6
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ Object mo24990u(String str) {
        return m24994b().get(str);
    }

    /* renamed from: a */
    public static C0952x5 m24995a(ContentResolver contentResolver, Uri uri) {
        C0952x5 c0952x5;
        synchronized (C0952x5.class) {
            Map<Uri, C0952x5> map = f2389g;
            c0952x5 = map.get(uri);
            if (c0952x5 == null) {
                try {
                    C0952x5 c0952x52 = new C0952x5(contentResolver, uri);
                    try {
                        map.put(uri, c0952x52);
                    } catch (SecurityException unused) {
                    }
                    c0952x5 = c0952x52;
                } catch (SecurityException unused2) {
                }
            }
        }
        return c0952x5;
    }

    /* renamed from: d */
    public static synchronized void m24992d() {
        synchronized (C0952x5.class) {
            for (C0952x5 c0952x5 : f2389g.values()) {
                c0952x5.f2391a.unregisterContentObserver(c0952x5.f2393c);
            }
            f2389g.clear();
        }
    }

    /* renamed from: b */
    public final Map<String, String> m24994b() {
        Map<String, String> map;
        Map<String, String> map2 = this.f2395e;
        if (map2 == null) {
            synchronized (this.f2394d) {
                map2 = this.f2395e;
                if (map2 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        map = (Map) C0986z5.m24869a(new InterfaceC0561a6() { // from class: b5.u5
                            @Override // p018b5.InterfaceC0561a6
                            public final Object zza() {
                                return C0952x5.this.m24993c();
                            }
                        });
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                    } catch (SQLiteException | IllegalStateException | SecurityException unused) {
                        Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        map = null;
                    }
                    this.f2395e = map;
                    map2 = map;
                }
            }
        }
        if (map2 != null) {
            return map2;
        }
        return Collections.emptyMap();
    }

    /* renamed from: c */
    public final /* synthetic */ Map m24993c() {
        Map hashMap;
        Cursor query = this.f2391a.query(this.f2392b, f2390h, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            if (count <= 256) {
                hashMap = new C5270a(count);
            } else {
                hashMap = new HashMap(count, 1.0f);
            }
            while (query.moveToNext()) {
                hashMap.put(query.getString(0), query.getString(1));
            }
            return hashMap;
        } finally {
            query.close();
        }
    }

    /* renamed from: e */
    public final void m24991e() {
        synchronized (this.f2394d) {
            this.f2395e = null;
            AbstractC0851r6.m25427e();
        }
        synchronized (this) {
            for (InterfaceC0969y5 interfaceC0969y5 : this.f2396f) {
                interfaceC0969y5.zza();
            }
        }
    }

    public C0952x5(ContentResolver contentResolver, Uri uri) {
        C0918v5 c0918v5 = new C0918v5(this, null);
        this.f2393c = c0918v5;
        this.f2394d = new Object();
        this.f2396f = new ArrayList();
        contentResolver.getClass();
        uri.getClass();
        this.f2391a = contentResolver;
        this.f2392b = uri;
        contentResolver.registerContentObserver(uri, false, c0918v5);
    }
}
