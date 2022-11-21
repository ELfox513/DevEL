package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.TextureView;
@TargetApi(14)
/* renamed from: r4.vn0 */
/* loaded from: classes2.dex */
public abstract class vn0 extends TextureView implements so0 {

    /* renamed from: a */
    public final io0 f32764a;

    /* renamed from: b */
    public final to0 f32765b;

    /* renamed from: A */
    public void mo6082A(int i) {
    }

    /* renamed from: B */
    public void mo6081B(int i) {
    }

    /* renamed from: C */
    public void mo6080C(int i) {
    }

    /* renamed from: e */
    public void mo6079e(int i) {
    }

    /* renamed from: f */
    public void mo6078f(int i) {
    }

    /* renamed from: g */
    public abstract String mo6077g();

    /* renamed from: h */
    public abstract void mo6076h(un0 un0Var);

    /* renamed from: i */
    public abstract void mo6075i(String str);

    /* renamed from: j */
    public abstract void mo6074j();

    /* renamed from: k */
    public abstract void mo6073k();

    /* renamed from: l */
    public abstract void mo6072l();

    /* renamed from: m */
    public abstract int mo6071m();

    /* renamed from: n */
    public abstract void mo6070n();

    /* renamed from: o */
    public abstract int mo6069o();

    /* renamed from: p */
    public abstract void mo6068p(int i);

    /* renamed from: q */
    public abstract void mo6067q(float f, float f2);

    /* renamed from: r */
    public abstract int mo6066r();

    /* renamed from: s */
    public abstract int mo6065s();

    /* renamed from: t */
    public abstract long mo6064t();

    /* renamed from: u */
    public abstract long mo6063u();

    /* renamed from: v */
    public abstract long mo6062v();

    /* renamed from: w */
    public abstract int mo6061w();

    /* renamed from: z */
    public void mo6060z(String str, String[] strArr) {
        mo6075i(str);
    }

    public vn0(Context context) {
        super(context);
        this.f32764a = new io0();
        this.f32765b = new to0(context, this);
    }
}
