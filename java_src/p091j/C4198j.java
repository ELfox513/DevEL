package p091j;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import p021c.C1008a;
import p038d0.InterfaceC3265z;
import p056f0.C3435g0;
/* renamed from: j.j */
/* loaded from: classes.dex */
public class C4198j extends EditText implements InterfaceC3265z {

    /* renamed from: a */
    public final C4172d f17910a;

    /* renamed from: b */
    public final C4199j0 f17911b;

    /* renamed from: d */
    public final C4265y f17912d;

    public C4198j(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1008a.f2493A);
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C4202k.m17108a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    public C4198j(Context context, AttributeSet attributeSet, int i) {
        super(C4226q1.m17018b(context), attributeSet, i);
        C4220o1.m17033a(this, getContext());
        C4172d c4172d = new C4172d(this);
        this.f17910a = c4172d;
        c4172d.m17218e(attributeSet, i);
        C4199j0 c4199j0 = new C4199j0(this);
        this.f17911b = c4199j0;
        c4199j0.m17123m(attributeSet, i);
        c4199j0.m17134b();
        this.f17912d = new C4265y(this);
    }

    @Override // p038d0.InterfaceC3265z
    public ColorStateList getSupportBackgroundTintList() {
        C4172d c4172d = this.f17910a;
        if (c4172d != null) {
            return c4172d.m17220c();
        }
        return null;
    }

    @Override // p038d0.InterfaceC3265z
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C4172d c4172d = this.f17910a;
        if (c4172d != null) {
            return c4172d.m17219d();
        }
        return null;
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        if (Build.VERSION.SDK_INT >= 28) {
            return super.getText();
        }
        return super.getEditableText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C4265y c4265y;
        if (Build.VERSION.SDK_INT < 28 && (c4265y = this.f17912d) != null) {
            return c4265y.m16892a();
        }
        return super.getTextClassifier();
    }

    @Override // p038d0.InterfaceC3265z
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C4172d c4172d = this.f17910a;
        if (c4172d != null) {
            c4172d.m17214i(colorStateList);
        }
    }

    @Override // p038d0.InterfaceC3265z
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C4172d c4172d = this.f17910a;
        if (c4172d != null) {
            c4172d.m17213j(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C4265y c4265y;
        if (Build.VERSION.SDK_INT < 28 && (c4265y = this.f17912d) != null) {
            c4265y.m16891b(textClassifier);
        } else {
            super.setTextClassifier(textClassifier);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C4172d c4172d = this.f17910a;
        if (c4172d != null) {
            c4172d.m17221b();
        }
        C4199j0 c4199j0 = this.f17911b;
        if (c4199j0 != null) {
            c4199j0.m17134b();
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C4172d c4172d = this.f17910a;
        if (c4172d != null) {
            c4172d.m17217f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C4172d c4172d = this.f17910a;
        if (c4172d != null) {
            c4172d.m17216g(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C3435g0.m18841m(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C4199j0 c4199j0 = this.f17911b;
        if (c4199j0 != null) {
            c4199j0.m17119q(context, i);
        }
    }
}
