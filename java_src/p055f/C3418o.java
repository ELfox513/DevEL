package p055f;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import p055f.C3409i;
@SuppressLint({"RestrictedAPI"})
/* renamed from: f.o */
/* loaded from: classes.dex */
public class C3418o extends C3409i {

    /* renamed from: x */
    public C3419a f15841x;

    /* renamed from: y */
    public boolean f15842y;

    /* renamed from: f.o$a */
    /* loaded from: classes.dex */
    public static class C3419a extends C3409i.AbstractC3412c {

        /* renamed from: J */
        public int[][] f15843J;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C3418o(this, null);
        }

        /* renamed from: A */
        public int m18902A(int[] iArr) {
            int[][] iArr2 = this.f15843J;
            int m18928h = m18928h();
            for (int i = 0; i < m18928h; i++) {
                if (StateSet.stateSetMatches(iArr2[i], iArr)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C3418o(this, resources);
        }

        @Override // p055f.C3409i.AbstractC3412c
        /* renamed from: r */
        public void mo18900r() {
            int[] iArr;
            int[][] iArr2 = this.f15843J;
            int[][] iArr3 = new int[iArr2.length];
            for (int length = iArr2.length - 1; length >= 0; length--) {
                int[] iArr4 = this.f15843J[length];
                if (iArr4 != null) {
                    iArr = (int[]) iArr4.clone();
                } else {
                    iArr = null;
                }
                iArr3[length] = iArr;
            }
            this.f15843J = iArr3;
        }

        public C3419a(C3419a c3419a, C3418o c3418o, Resources resources) {
            super(c3419a, c3418o, resources);
            if (c3419a != null) {
                this.f15843J = c3419a.f15843J;
            } else {
                this.f15843J = new int[m18930f()];
            }
        }

        @Override // p055f.C3409i.AbstractC3412c
        /* renamed from: o */
        public void mo18901o(int i, int i2) {
            super.mo18901o(i, i2);
            int[][] iArr = new int[i2];
            System.arraycopy(this.f15843J, 0, iArr, 0, i);
            this.f15843J = iArr;
        }

        /* renamed from: z */
        public int m18899z(int[] iArr, Drawable drawable) {
            int m18935a = m18935a(drawable);
            this.f15843J[m18935a] = iArr;
            return m18935a;
        }
    }

    public C3418o(C3419a c3419a, Resources resources) {
        mo18905h(new C3419a(c3419a, this, resources));
        onStateChange(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // p055f.C3409i
    /* renamed from: j */
    public C3419a mo18906b() {
        return new C3419a(this.f15841x, this, null);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f15842y && super.mutate() == this) {
            this.f15841x.mo18900r();
            this.f15842y = true;
        }
        return this;
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // p055f.C3409i
    /* renamed from: h */
    public void mo18905h(C3409i.AbstractC3412c abstractC3412c) {
        super.mo18905h(abstractC3412c);
        if (abstractC3412c instanceof C3419a) {
            this.f15841x = (C3419a) abstractC3412c;
        }
    }

    /* renamed from: k */
    public int[] m18903k(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i = 0;
        for (int i2 = 0; i2 < attributeCount; i2++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
            if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                int i3 = i + 1;
                if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                    attributeNameResource = -attributeNameResource;
                }
                iArr[i] = attributeNameResource;
                i = i3;
            }
        }
        return StateSet.trimStateSet(iArr, i);
    }

    @Override // p055f.C3409i, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int m18902A = this.f15841x.m18902A(iArr);
        if (m18902A < 0) {
            m18902A = this.f15841x.m18902A(StateSet.WILD_CARD);
        }
        if (!m18939g(m18902A) && !onStateChange) {
            return false;
        }
        return true;
    }

    public C3418o(C3419a c3419a) {
        if (c3419a != null) {
            mo18905h(c3419a);
        }
    }
}
