package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.scenes.scene2d.p033ui.Button;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Null;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.ButtonGroup */
/* loaded from: classes.dex */
public class ButtonGroup<T extends Button> {

    /* renamed from: a */
    public final Array<T> f5782a;

    /* renamed from: b */
    public Array<T> f5783b;

    /* renamed from: c */
    public int f5784c;

    /* renamed from: d */
    public int f5785d;

    /* renamed from: e */
    public boolean f5786e;

    /* renamed from: f */
    public T f5787f;

    public ButtonGroup() {
        this.f5782a = new Array<>();
        this.f5783b = new Array<>(1);
        this.f5785d = 1;
        this.f5786e = true;
        this.f5784c = 1;
    }

    public void add(T t) {
        if (t != null) {
            t.f5774A0 = null;
            boolean z = t.isChecked() || this.f5782a.size < this.f5784c;
            t.setChecked(false);
            t.f5774A0 = this;
            this.f5782a.add(t);
            t.setChecked(z);
            return;
        }
        throw new IllegalArgumentException("button cannot be null.");
    }

    public Array<T> getAllChecked() {
        return this.f5783b;
    }

    public Array<T> getButtons() {
        return this.f5782a;
    }

    @Null
    public T getChecked() {
        Array<T> array = this.f5783b;
        if (array.size > 0) {
            return array.get(0);
        }
        return null;
    }

    public int getCheckedIndex() {
        Array<T> array = this.f5783b;
        if (array.size > 0) {
            return this.f5782a.indexOf(array.get(0), true);
        }
        return -1;
    }

    public void remove(T t) {
        if (t != null) {
            t.f5774A0 = null;
            this.f5782a.removeValue(t, true);
            this.f5783b.removeValue(t, true);
            return;
        }
        throw new IllegalArgumentException("button cannot be null.");
    }

    public void setMaxCheckCount(int i) {
        if (i == 0) {
            i = -1;
        }
        this.f5785d = i;
    }

    public void setMinCheckCount(int i) {
        this.f5784c = i;
    }

    public void setUncheckLast(boolean z) {
        this.f5786e = z;
    }

    /* renamed from: a */
    public boolean m23843a(T t, boolean z) {
        if (t.f5778y0 == z) {
            return false;
        }
        if (!z) {
            Array<T> array = this.f5783b;
            if (array.size <= this.f5784c) {
                return false;
            }
            array.removeValue(t, true);
        } else {
            int i = this.f5785d;
            if (i != -1 && this.f5783b.size >= i) {
                if (!this.f5786e) {
                    return false;
                }
                int i2 = 0;
                while (true) {
                    int i3 = this.f5784c;
                    this.f5784c = 0;
                    this.f5787f.setChecked(false);
                    this.f5784c = i3;
                    if (t.f5778y0 == z) {
                        return false;
                    }
                    if (this.f5783b.size < this.f5785d) {
                        break;
                    }
                    int i4 = i2 + 1;
                    if (i2 > 10) {
                        return false;
                    }
                    i2 = i4;
                }
            }
            this.f5783b.add(t);
            this.f5787f = t;
        }
        return true;
    }

    public void clear() {
        this.f5782a.clear();
        this.f5783b.clear();
    }

    public void setChecked(String str) {
        if (str != null) {
            int i = this.f5782a.size;
            for (int i2 = 0; i2 < i; i2++) {
                T t = this.f5782a.get(i2);
                if ((t instanceof TextButton) && str.contentEquals(((TextButton) t).getText())) {
                    t.setChecked(true);
                    return;
                }
            }
            return;
        }
        throw new IllegalArgumentException("text cannot be null.");
    }

    public void uncheckAll() {
        int i = this.f5784c;
        this.f5784c = 0;
        int i2 = this.f5782a.size;
        for (int i3 = 0; i3 < i2; i3++) {
            this.f5782a.get(i3).setChecked(false);
        }
        this.f5784c = i;
    }

    public void remove(T... tArr) {
        if (tArr != null) {
            for (T t : tArr) {
                remove((ButtonGroup<T>) t);
            }
            return;
        }
        throw new IllegalArgumentException("buttons cannot be null.");
    }

    public ButtonGroup(T... tArr) {
        this.f5782a = new Array<>();
        this.f5783b = new Array<>(1);
        this.f5785d = 1;
        this.f5786e = true;
        this.f5784c = 0;
        add(tArr);
        this.f5784c = 1;
    }

    public void add(T... tArr) {
        if (tArr != null) {
            for (T t : tArr) {
                add((ButtonGroup<T>) t);
            }
            return;
        }
        throw new IllegalArgumentException("buttons cannot be null.");
    }
}
