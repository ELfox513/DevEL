package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* renamed from: r4.fa2 */
/* loaded from: classes2.dex */
public final class fa2 implements eg2<ga2> {

    /* renamed from: a */
    public final i83 f23432a;

    /* renamed from: b */
    public final Context f23433b;

    /* renamed from: c */
    public final hp2 f23434c;

    /* renamed from: d */
    public final View f23435d;

    public fa2(i83 i83Var, Context context, hp2 hp2Var, ViewGroup viewGroup) {
        this.f23432a = i83Var;
        this.f23433b = context;
        this.f23434c = hp2Var;
        this.f23435d = viewGroup;
    }

    @Override // p168r4.eg2
    public final h83<ga2> zza() {
        return this.f23432a.mo8015c(new Callable(this) { // from class: r4.ea2

            /* renamed from: a */
            public final fa2 f22920a;

            {
                this.f22920a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f22920a.m11594a();
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ ga2 m11594a() {
        int i;
        Context context = this.f23433b;
        C6478yt c6478yt = this.f23434c.f24780e;
        ArrayList arrayList = new ArrayList();
        View view = this.f23435d;
        while (view != null) {
            ViewParent parent = view.getParent();
            if (parent == null) {
                break;
            }
            if (parent instanceof ViewGroup) {
                i = ((ViewGroup) parent).indexOfChild(view);
            } else {
                i = -1;
            }
            Bundle bundle = new Bundle();
            bundle.putString("type", parent.getClass().getName());
            bundle.putInt("index_of_child", i);
            arrayList.add(bundle);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return new ga2(context, c6478yt, arrayList);
    }
}
