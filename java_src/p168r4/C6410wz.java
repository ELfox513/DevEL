package p168r4;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import p016b3.C0497k2;
import p235z2.C7601t;
@Deprecated
/* renamed from: r4.wz */
/* loaded from: classes2.dex */
public final class C6410wz {

    /* renamed from: d */
    public String f33371d;

    /* renamed from: e */
    public Context f33372e;

    /* renamed from: f */
    public String f33373f;

    /* renamed from: h */
    public AtomicBoolean f33375h;

    /* renamed from: i */
    public File f33376i;

    /* renamed from: a */
    public final BlockingQueue<h00> f33368a = new ArrayBlockingQueue(100);

    /* renamed from: b */
    public final LinkedHashMap<String, String> f33369b = new LinkedHashMap<>();

    /* renamed from: c */
    public final Map<String, c00> f33370c = new HashMap();

    /* renamed from: g */
    public final HashSet<String> f33374g = new HashSet<>(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    /* renamed from: b */
    public final boolean m5541b(h00 h00Var) {
        return this.f33368a.offer(h00Var);
    }

    /* renamed from: d */
    public final c00 m5539d(String str) {
        c00 c00Var = this.f33370c.get(str);
        return c00Var != null ? c00Var : c00.f21285a;
    }

    /* renamed from: a */
    public final void m5542a(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.f33372e = context;
        this.f33373f = str;
        this.f33371d = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f33375h = atomicBoolean;
        atomicBoolean.set(b10.f20805c.m6673e().booleanValue());
        if (this.f33375h.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.f33376i = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f33369b.put(entry.getKey(), entry.getValue());
        }
        qm0.f30190a.execute(new Runnable(this) { // from class: r4.vz

            /* renamed from: a */
            public final C6410wz f32984a;

            {
                this.f32984a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f32984a.m5537f();
            }
        });
        Map<String, c00> map2 = this.f33370c;
        c00 c00Var = c00.f21286b;
        map2.put("action", c00Var);
        this.f33370c.put("ad_format", c00Var);
        this.f33370c.put("e", c00.f21287c);
    }

    /* renamed from: c */
    public final Map<String, String> m5540c(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String str = (String) linkedHashMap.get(key);
            linkedHashMap.put(key, m5539d(key).mo4018a(str, entry.getValue()));
        }
        return linkedHashMap;
    }

    /* renamed from: e */
    public final void m5538e(String str) {
        if (this.f33374g.contains(str)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("sdkVersion", this.f33373f);
        linkedHashMap.put("ue", str);
        m5536g(m5540c(this.f33369b, linkedHashMap), null);
    }

    /* renamed from: f */
    public final /* bridge */ /* synthetic */ void m5537f() {
        while (true) {
            try {
                h00 take = this.f33368a.take();
                f00 m11025c = take.m11025c();
                if (!TextUtils.isEmpty(m11025c.m11660a())) {
                    m5536g(m5540c(this.f33369b, take.m11023e()), m11025c);
                }
            } catch (InterruptedException e) {
                cm0.m12436g("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }

    /* renamed from: g */
    public final void m5536g(Map<String, String> map, f00 f00Var) {
        FileOutputStream fileOutputStream;
        Uri.Builder buildUpon = Uri.parse(this.f33371d).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String uri = buildUpon.build().toString();
        if (f00Var != null) {
            StringBuilder sb = new StringBuilder(uri);
            if (!TextUtils.isEmpty(f00Var.m11660a())) {
                sb.append("&it=");
                sb.append(f00Var.m11660a());
            }
            if (!TextUtils.isEmpty(f00Var.m11659b())) {
                sb.append("&blat=");
                sb.append(f00Var.m11659b());
            }
            uri = sb.toString();
        }
        if (this.f33375h.get()) {
            File file = this.f33376i;
            if (file != null) {
                FileOutputStream fileOutputStream2 = null;
                try {
                    try {
                        fileOutputStream = new FileOutputStream(file, true);
                    } catch (IOException e) {
                        e = e;
                    }
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    fileOutputStream.write(uri.getBytes());
                    fileOutputStream.write(10);
                    try {
                        fileOutputStream.close();
                        return;
                    } catch (IOException e2) {
                        cm0.m12436g("CsiReporter: Cannot close file: sdk_csi_data.txt.", e2);
                        return;
                    }
                } catch (IOException e3) {
                    e = e3;
                    fileOutputStream2 = fileOutputStream;
                    cm0.m12436g("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                            return;
                        } catch (IOException e4) {
                            cm0.m12436g("CsiReporter: Cannot close file: sdk_csi_data.txt.", e4);
                            return;
                        }
                    }
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e5) {
                            cm0.m12436g("CsiReporter: Cannot close file: sdk_csi_data.txt.", e5);
                        }
                    }
                    throw th;
                }
            }
            cm0.m12437f("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
            return;
        }
        C7601t.m939d();
        C0497k2.m26308n(this.f33372e, this.f33373f, uri);
    }
}
