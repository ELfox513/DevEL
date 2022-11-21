package p047e0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
/* renamed from: e0.a */
/* loaded from: classes.dex */
public final class C3337a extends ClickableSpan {

    /* renamed from: a */
    public final int f15675a;

    /* renamed from: b */
    public final C3346j f15676b;

    /* renamed from: d */
    public final int f15677d;

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f15675a);
        this.f15676b.m19084F(this.f15677d, bundle);
    }

    public C3337a(int i, C3346j c3346j, int i2) {
        this.f15675a = i;
        this.f15676b = c3346j;
        this.f15677d = i2;
    }
}
