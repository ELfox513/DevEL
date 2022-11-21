package p091j;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import p022c0.C1024g;
/* renamed from: j.y */
/* loaded from: classes.dex */
public final class C4265y {

    /* renamed from: a */
    public TextView f18106a;

    /* renamed from: b */
    public TextClassifier f18107b;

    /* renamed from: b */
    public void m16891b(TextClassifier textClassifier) {
        this.f18107b = textClassifier;
    }

    /* renamed from: a */
    public TextClassifier m16892a() {
        Object systemService;
        TextClassifier textClassifier = this.f18107b;
        if (textClassifier == null) {
            systemService = this.f18106a.getContext().getSystemService(TextClassificationManager.class);
            TextClassificationManager textClassificationManager = (TextClassificationManager) systemService;
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            return TextClassifier.NO_OP;
        }
        return textClassifier;
    }

    public C4265y(TextView textView) {
        this.f18106a = (TextView) C1024g.m24809b(textView);
    }
}
