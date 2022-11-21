package p091j;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import p046e.C3335b;
import p056f0.C3435g0;
/* renamed from: j.g */
/* loaded from: classes.dex */
public class C4181g extends CheckedTextView {

    /* renamed from: b */
    public static final int[] f17877b = {16843016};

    /* renamed from: a */
    public final C4199j0 f17878a;

    public C4181g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C4202k.m17108a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(C3335b.m19101d(getContext(), i));
    }

    public C4181g(Context context, AttributeSet attributeSet, int i) {
        super(C4226q1.m17018b(context), attributeSet, i);
        C4220o1.m17033a(this, getContext());
        C4199j0 c4199j0 = new C4199j0(this);
        this.f17878a = c4199j0;
        c4199j0.m17123m(attributeSet, i);
        c4199j0.m17134b();
        C4235t1 m16966u = C4235t1.m16966u(getContext(), attributeSet, f17877b, i, 0);
        setCheckMarkDrawable(m16966u.m16981f(0));
        m16966u.m16965v();
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C4199j0 c4199j0 = this.f17878a;
        if (c4199j0 != null) {
            c4199j0.m17134b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C3435g0.m18841m(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C4199j0 c4199j0 = this.f17878a;
        if (c4199j0 != null) {
            c4199j0.m17119q(context, i);
        }
    }
}
