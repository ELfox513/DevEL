package p168r4;

import android.text.TextUtils;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.pk1 */
/* loaded from: classes2.dex */
public final class pk1 {

    /* renamed from: a */
    public final rp1 f29495a;

    /* renamed from: b */
    public final fo1 f29496b;

    /* renamed from: c */
    public final zz0 f29497c;

    /* renamed from: d */
    public final mj1 f29498d;

    public pk1(rp1 rp1Var, fo1 fo1Var, zz0 zz0Var, mj1 mj1Var) {
        this.f29495a = rp1Var;
        this.f29496b = fo1Var;
        this.f29497c = zz0Var;
        this.f29498d = mj1Var;
    }

    /* renamed from: e */
    public final /* synthetic */ void m8287e(cs0 cs0Var, Map map) {
        this.f29498d.mo9370K();
    }

    /* renamed from: f */
    public final /* synthetic */ void m8286f(cs0 cs0Var, Map map) {
        this.f29496b.m11450g("sendMessageToNativeJs", map);
    }

    /* renamed from: a */
    public final View m8291a() {
        cs0 m7400b = this.f29495a.m7400b(C6478yt.m4575Y0(), null, null);
        ((View) m7400b).setVisibility(8);
        m7400b.mo5080g0("/sendMessageToSdk", new u50(this) { // from class: r4.jk1

            /* renamed from: a */
            public final pk1 f26063a;

            {
                this.f26063a = this;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, Map map) {
                this.f26063a.m8286f((cs0) obj, map);
            }
        });
        m7400b.mo5080g0("/adMuted", new u50(this) { // from class: r4.kk1

            /* renamed from: a */
            public final pk1 f26466a;

            {
                this.f26466a = this;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, Map map) {
                this.f26466a.m8287e((cs0) obj, map);
            }
        });
        this.f29496b.m11448i(new WeakReference(m7400b), "/loadHtml", new u50(this) { // from class: r4.lk1

            /* renamed from: a */
            public final pk1 f27240a;

            {
                this.f27240a = this;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, final Map map) {
                final pk1 pk1Var = this.f27240a;
                cs0 cs0Var = (cs0) obj;
                cs0Var.mo5057o0().mo7000s0(new qt0(pk1Var, map) { // from class: r4.ok1

                    /* renamed from: a */
                    public final pk1 f29025a;

                    /* renamed from: b */
                    public final Map f29026b;

                    {
                        this.f29025a = pk1Var;
                        this.f29026b = map;
                    }

                    @Override // p168r4.qt0
                    /* renamed from: R */
                    public final void mo5285R(boolean z) {
                        this.f29025a.m8288d(this.f29026b, z);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    cs0Var.loadData(str, "text/html", "UTF-8");
                } else {
                    cs0Var.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                }
            }
        });
        this.f29496b.m11448i(new WeakReference(m7400b), "/showOverlay", new u50(this) { // from class: r4.mk1

            /* renamed from: a */
            public final pk1 f27756a;

            {
                this.f27756a = this;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, Map map) {
                this.f27756a.m8289c((cs0) obj, map);
            }
        });
        this.f29496b.m11448i(new WeakReference(m7400b), "/hideOverlay", new u50(this) { // from class: r4.nk1

            /* renamed from: a */
            public final pk1 f28313a;

            {
                this.f28313a = this;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, Map map) {
                this.f28313a.m8290b((cs0) obj, map);
            }
        });
        return (View) m7400b;
    }

    /* renamed from: b */
    public final /* synthetic */ void m8290b(cs0 cs0Var, Map map) {
        cm0.m12438e("Hiding native ads overlay.");
        cs0Var.mo5124I().setVisibility(8);
        this.f29497c.m4013d(false);
    }

    /* renamed from: c */
    public final /* synthetic */ void m8289c(cs0 cs0Var, Map map) {
        cm0.m12438e("Showing native ads overlay.");
        cs0Var.mo5124I().setVisibility(0);
        this.f29497c.m4013d(true);
    }

    /* renamed from: d */
    public final /* synthetic */ void m8288d(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "htmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.f29496b.m11450g("sendMessageToNativeJs", hashMap);
    }
}
