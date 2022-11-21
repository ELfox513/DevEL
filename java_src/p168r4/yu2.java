package p168r4;

import android.view.View;
/* renamed from: r4.yu2 */
/* loaded from: classes2.dex */
public abstract class yu2 {
    /* renamed from: a */
    public abstract void mo4562a();

    /* renamed from: b */
    public abstract void mo4561b(View view);

    /* renamed from: c */
    public abstract void mo4560c();

    /* renamed from: d */
    public abstract void mo4559d(View view, ev2 ev2Var, String str);

    /* renamed from: e */
    public static yu2 m4558e(zu2 zu2Var, av2 av2Var) {
        if (wu2.m5565b()) {
            return new cv2(zu2Var, av2Var);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }
}
