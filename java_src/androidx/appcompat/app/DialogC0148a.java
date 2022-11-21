package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.app.AlertController;
import p021c.C1008a;
import p037d.DialogC3137k;
/* renamed from: androidx.appcompat.app.a */
/* loaded from: classes.dex */
public class DialogC0148a extends DialogC3137k {

    /* renamed from: d */
    public final AlertController f326d;

    /* renamed from: androidx.appcompat.app.a$a */
    /* loaded from: classes.dex */
    public static class C0149a {

        /* renamed from: a */
        public final AlertController.C0140f f327a;

        /* renamed from: b */
        public final int f328b;

        public C0149a(Context context) {
            this(context, DialogC0148a.m27585i(context, 0));
        }

        /* renamed from: b */
        public Context m27583b() {
            return this.f327a.f287a;
        }

        /* renamed from: d */
        public C0149a m27581d(View view) {
            this.f327a.f293g = view;
            return this;
        }

        /* renamed from: e */
        public C0149a m27580e(Drawable drawable) {
            this.f327a.f290d = drawable;
            return this;
        }

        /* renamed from: f */
        public C0149a m27579f(DialogInterface.OnKeyListener onKeyListener) {
            this.f327a.f307u = onKeyListener;
            return this;
        }

        /* renamed from: h */
        public C0149a m27577h(CharSequence charSequence) {
            this.f327a.f292f = charSequence;
            return this;
        }

        public C0149a(Context context, int i) {
            this.f327a = new AlertController.C0140f(new ContextThemeWrapper(context, DialogC0148a.m27585i(context, i)));
            this.f328b = i;
        }

        /* renamed from: a */
        public DialogC0148a m27584a() {
            DialogC0148a dialogC0148a = new DialogC0148a(this.f327a.f287a, this.f328b);
            this.f327a.m27589a(dialogC0148a.f326d);
            dialogC0148a.setCancelable(this.f327a.f304r);
            if (this.f327a.f304r) {
                dialogC0148a.setCanceledOnTouchOutside(true);
            }
            dialogC0148a.setOnCancelListener(this.f327a.f305s);
            dialogC0148a.setOnDismissListener(this.f327a.f306t);
            DialogInterface.OnKeyListener onKeyListener = this.f327a.f307u;
            if (onKeyListener != null) {
                dialogC0148a.setOnKeyListener(onKeyListener);
            }
            return dialogC0148a;
        }

        /* renamed from: c */
        public C0149a m27582c(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0140f c0140f = this.f327a;
            c0140f.f309w = listAdapter;
            c0140f.f310x = onClickListener;
            return this;
        }

        /* renamed from: g */
        public C0149a m27578g(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0140f c0140f = this.f327a;
            c0140f.f309w = listAdapter;
            c0140f.f310x = onClickListener;
            c0140f.f279I = i;
            c0140f.f278H = true;
            return this;
        }
    }

    /* renamed from: h */
    public ListView m27586h() {
        return this.f326d.m27613d();
    }

    /* renamed from: i */
    public static int m27585i(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C1008a.f2519o, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f326d.m27610g(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f326d.m27609h(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public DialogC0148a(Context context, int i) {
        super(context, m27585i(context, i));
        this.f326d = new AlertController(getContext(), this, getWindow());
    }

    @Override // p037d.DialogC3137k, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f326d.m27612e();
    }

    @Override // p037d.DialogC3137k, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f326d.m27600q(charSequence);
    }
}
