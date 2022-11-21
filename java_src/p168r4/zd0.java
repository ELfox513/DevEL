package p168r4;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import java.util.Set;
import p026c4.C1046g;
/* renamed from: r4.zd0 */
/* loaded from: classes2.dex */
public final class zd0 extends fe0 {

    /* renamed from: u */
    public static final Set<String> f34466u = C1046g.m24767g("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");

    /* renamed from: c */
    public String f34467c;

    /* renamed from: d */
    public boolean f34468d;

    /* renamed from: e */
    public int f34469e;

    /* renamed from: f */
    public int f34470f;

    /* renamed from: g */
    public int f34471g;

    /* renamed from: h */
    public int f34472h;

    /* renamed from: i */
    public int f34473i;

    /* renamed from: j */
    public int f34474j;

    /* renamed from: k */
    public final Object f34475k;

    /* renamed from: l */
    public final cs0 f34476l;

    /* renamed from: m */
    public final Activity f34477m;

    /* renamed from: n */
    public vt0 f34478n;

    /* renamed from: o */
    public ImageView f34479o;

    /* renamed from: p */
    public LinearLayout f34480p;

    /* renamed from: q */
    public final ge0 f34481q;

    /* renamed from: r */
    public PopupWindow f34482r;

    /* renamed from: s */
    public RelativeLayout f34483s;

    /* renamed from: t */
    public ViewGroup f34484t;

    /* renamed from: j */
    public final void m4296j(int i, int i2, boolean z) {
        synchronized (this.f34475k) {
            this.f34469e = i;
            this.f34470f = i2;
        }
    }

    /* renamed from: l */
    public final void m4294l(int i, int i2) {
        this.f34469e = i;
        this.f34470f = i2;
    }

    public zd0(cs0 cs0Var, ge0 ge0Var) {
        super(cs0Var, "resize");
        this.f34467c = "top-right";
        this.f34468d = true;
        this.f34469e = 0;
        this.f34470f = 0;
        this.f34471g = -1;
        this.f34472h = 0;
        this.f34473i = 0;
        this.f34474j = -1;
        this.f34475k = new Object();
        this.f34476l = cs0Var;
        this.f34477m = cs0Var.mo5078h();
        this.f34481q = ge0Var;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0257 A[Catch: all -> 0x0482, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:9:0x0012, B:11:0x001a, B:12:0x001f, B:14:0x0021, B:16:0x002d, B:17:0x0032, B:19:0x0034, B:21:0x003c, B:23:0x004a, B:24:0x005b, B:26:0x0069, B:27:0x007a, B:29:0x0088, B:30:0x0099, B:32:0x00a7, B:33:0x00b8, B:35:0x00c6, B:36:0x00d4, B:38:0x00e2, B:39:0x00e4, B:41:0x00e8, B:43:0x00ec, B:45:0x00f4, B:48:0x00fc, B:52:0x0122, B:58:0x012e, B:126:0x0257, B:127:0x025c, B:129:0x025e, B:131:0x027e, B:133:0x0282, B:135:0x028f, B:137:0x02cb, B:169:0x0384, B:176:0x03b3, B:177:0x03cb, B:178:0x03ec, B:180:0x03f4, B:181:0x03fb, B:182:0x0422, B:185:0x0425, B:187:0x0435, B:189:0x043f, B:191:0x044f, B:192:0x0464, B:188:0x043a, B:170:0x038b, B:171:0x0392, B:172:0x0399, B:173:0x03a0, B:174:0x03a6, B:175:0x03ad, B:136:0x02c8, B:194:0x0466, B:195:0x046b, B:59:0x0135, B:61:0x0139, B:89:0x018c, B:97:0x01dc, B:99:0x01e7, B:101:0x01ea, B:103:0x01ed, B:105:0x01f1, B:108:0x01f7, B:90:0x0197, B:92:0x01ad, B:94:0x01b8, B:91:0x01a2, B:93:0x01b0, B:95:0x01bd, B:96:0x01d1, B:98:0x01df, B:109:0x0208, B:115:0x0232, B:121:0x0242, B:118:0x0238, B:120:0x0240, B:112:0x022a, B:114:0x0230, B:122:0x0249, B:123:0x024f, B:197:0x046d, B:198:0x0472, B:200:0x0474, B:201:0x0479, B:203:0x047b, B:204:0x0480), top: B:211:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x025e A[Catch: all -> 0x0482, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:7:0x0010, B:9:0x0012, B:11:0x001a, B:12:0x001f, B:14:0x0021, B:16:0x002d, B:17:0x0032, B:19:0x0034, B:21:0x003c, B:23:0x004a, B:24:0x005b, B:26:0x0069, B:27:0x007a, B:29:0x0088, B:30:0x0099, B:32:0x00a7, B:33:0x00b8, B:35:0x00c6, B:36:0x00d4, B:38:0x00e2, B:39:0x00e4, B:41:0x00e8, B:43:0x00ec, B:45:0x00f4, B:48:0x00fc, B:52:0x0122, B:58:0x012e, B:126:0x0257, B:127:0x025c, B:129:0x025e, B:131:0x027e, B:133:0x0282, B:135:0x028f, B:137:0x02cb, B:169:0x0384, B:176:0x03b3, B:177:0x03cb, B:178:0x03ec, B:180:0x03f4, B:181:0x03fb, B:182:0x0422, B:185:0x0425, B:187:0x0435, B:189:0x043f, B:191:0x044f, B:192:0x0464, B:188:0x043a, B:170:0x038b, B:171:0x0392, B:172:0x0399, B:173:0x03a0, B:174:0x03a6, B:175:0x03ad, B:136:0x02c8, B:194:0x0466, B:195:0x046b, B:59:0x0135, B:61:0x0139, B:89:0x018c, B:97:0x01dc, B:99:0x01e7, B:101:0x01ea, B:103:0x01ed, B:105:0x01f1, B:108:0x01f7, B:90:0x0197, B:92:0x01ad, B:94:0x01b8, B:91:0x01a2, B:93:0x01b0, B:95:0x01bd, B:96:0x01d1, B:98:0x01df, B:109:0x0208, B:115:0x0232, B:121:0x0242, B:118:0x0238, B:120:0x0240, B:112:0x022a, B:114:0x0230, B:122:0x0249, B:123:0x024f, B:197:0x046d, B:198:0x0472, B:200:0x0474, B:201:0x0479, B:203:0x047b, B:204:0x0480), top: B:211:0x0007, inners: #1 }] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4298h(java.util.Map<java.lang.String, java.lang.String> r18) {
        /*
            Method dump skipped, instructions count: 1212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.zd0.m4298h(java.util.Map):void");
    }

    /* renamed from: i */
    public final void m4297i(boolean z) {
        synchronized (this.f34475k) {
            PopupWindow popupWindow = this.f34482r;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.f34483s.removeView((View) this.f34476l);
                ViewGroup viewGroup = this.f34484t;
                if (viewGroup != null) {
                    viewGroup.removeView(this.f34479o);
                    this.f34484t.addView((View) this.f34476l);
                    this.f34476l.mo5043u0(this.f34478n);
                }
                if (z) {
                    m11553f("default");
                    ge0 ge0Var = this.f34481q;
                    if (ge0Var != null) {
                        ge0Var.mo8227a();
                    }
                }
                this.f34482r = null;
                this.f34483s = null;
                this.f34484t = null;
                this.f34480p = null;
            }
        }
    }

    /* renamed from: k */
    public final boolean m4295k() {
        boolean z;
        synchronized (this.f34475k) {
            if (this.f34482r != null) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }
}
