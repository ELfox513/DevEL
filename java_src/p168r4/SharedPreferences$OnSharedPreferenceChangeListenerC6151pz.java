package p168r4;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import org.json.JSONException;
import org.json.JSONObject;
import p042d4.C3325e;
import p185t3.C6756m;
/* renamed from: r4.pz */
/* loaded from: classes2.dex */
public final class SharedPreferences$OnSharedPreferenceChangeListenerC6151pz implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: g */
    public Context f29858g;

    /* renamed from: a */
    public final Object f29852a = new Object();

    /* renamed from: b */
    public final ConditionVariable f29853b = new ConditionVariable();

    /* renamed from: c */
    public volatile boolean f29854c = false;

    /* renamed from: d */
    public volatile boolean f29855d = false;

    /* renamed from: e */
    public SharedPreferences f29856e = null;

    /* renamed from: f */
    public Bundle f29857f = new Bundle();

    /* renamed from: h */
    public JSONObject f29859h = new JSONObject();

    /* renamed from: d */
    public final /* synthetic */ String m8097d() {
        return this.f29856e.getString("flag_configuration", "{}");
    }

    /* renamed from: e */
    public final /* synthetic */ Object m8096e(AbstractC5928jz abstractC5928jz) {
        return abstractC5928jz.mo10142d(this.f29856e);
    }

    /* renamed from: b */
    public final void m8099b(Context context) {
        Context applicationContext;
        if (this.f29854c) {
            return;
        }
        synchronized (this.f29852a) {
            if (this.f29854c) {
                return;
            }
            if (!this.f29855d) {
                this.f29855d = true;
            }
            if (context.getApplicationContext() == null) {
                applicationContext = context;
            } else {
                applicationContext = context.getApplicationContext();
            }
            this.f29858g = applicationContext;
            try {
                this.f29857f = C3325e.m19140a(applicationContext).m19146c(this.f29858g.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            }
            Context m3480c = C6756m.m3480c(context);
            if (m3480c != null || (m3480c = context.getApplicationContext()) != null) {
                context = m3480c;
            }
            if (context == null) {
                this.f29855d = false;
                this.f29853b.open();
                return;
            }
            C5592av.m12937a();
            SharedPreferences m9533a = C6002lz.m9533a(context);
            this.f29856e = m9533a;
            if (m9533a != null) {
                m9533a.registerOnSharedPreferenceChangeListener(this);
            }
            v10.m6252b(new C6114oz(this));
            m8095f();
            this.f29854c = true;
            this.f29855d = false;
            this.f29853b.open();
        }
    }

    /* renamed from: c */
    public final <T> T m8098c(final AbstractC5928jz<T> abstractC5928jz) {
        if (!this.f29853b.block(5000L)) {
            synchronized (this.f29852a) {
                if (!this.f29855d) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.f29854c || this.f29856e == null) {
            synchronized (this.f29852a) {
                if (this.f29854c && this.f29856e != null) {
                }
                return abstractC5928jz.m10140f();
            }
        }
        if (abstractC5928jz.m10133m() == 2) {
            Bundle bundle = this.f29857f;
            if (bundle == null) {
                return abstractC5928jz.m10140f();
            }
            return abstractC5928jz.mo10145a(bundle);
        } else if (abstractC5928jz.m10133m() == 1 && this.f29859h.has(abstractC5928jz.m10141e())) {
            return abstractC5928jz.mo10143c(this.f29859h);
        } else {
            return (T) C6299tz.m6685a(new m13(this, abstractC5928jz) { // from class: r4.mz

                /* renamed from: a */
                public final SharedPreferences$OnSharedPreferenceChangeListenerC6151pz f28021a;

                /* renamed from: b */
                public final AbstractC5928jz f28022b;

                {
                    this.f28021a = this;
                    this.f28022b = abstractC5928jz;
                }

                @Override // p168r4.m13
                public final Object zza() {
                    return this.f28021a.m8096e(this.f28022b);
                }
            });
        }
    }

    /* renamed from: f */
    public final void m8095f() {
        if (this.f29856e == null) {
            return;
        }
        try {
            this.f29859h = new JSONObject((String) C6299tz.m6685a(new m13(this) { // from class: r4.nz

                /* renamed from: a */
                public final SharedPreferences$OnSharedPreferenceChangeListenerC6151pz f28735a;

                {
                    this.f28735a = this;
                }

                @Override // p168r4.m13
                public final Object zza() {
                    return this.f28735a.m8097d();
                }
            }));
        } catch (JSONException unused) {
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            m8095f();
        }
    }
}
