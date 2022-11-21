package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.GlyphLayout;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.utils.ArraySelection;
import com.badlogic.gdx.scenes.scene2d.utils.Cullable;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.UIUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.OrderedSet;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.Pools;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.List */
/* loaded from: classes.dex */
public class List<T> extends Widget implements Cullable {

    /* renamed from: I */
    public ListStyle f5920I;

    /* renamed from: J */
    public final Array<T> f5921J;

    /* renamed from: K */
    public ArraySelection<T> f5922K;

    /* renamed from: L */
    public Rectangle f5923L;

    /* renamed from: M */
    public float f5924M;

    /* renamed from: N */
    public float f5925N;

    /* renamed from: O */
    public float f5926O;

    /* renamed from: P */
    public int f5927P;

    /* renamed from: Q */
    public int f5928Q;

    /* renamed from: R */
    public int f5929R;

    /* renamed from: S */
    public InputListener f5930S;

    /* renamed from: T */
    public boolean f5931T;

    public List(Skin skin) {
        this((ListStyle) skin.get(ListStyle.class));
    }

    public int getAlignment() {
        return this.f5927P;
    }

    public Rectangle getCullingArea() {
        return this.f5923L;
    }

    public float getItemHeight() {
        return this.f5926O;
    }

    public Array<T> getItems() {
        return this.f5921J;
    }

    public InputListener getKeyListener() {
        return this.f5930S;
    }

    public T getOverItem() {
        int i = this.f5929R;
        if (i == -1) {
            return null;
        }
        return this.f5921J.get(i);
    }

    public T getPressedItem() {
        int i = this.f5928Q;
        if (i == -1) {
            return null;
        }
        return this.f5921J.get(i);
    }

    @Null
    public T getSelected() {
        return this.f5922K.first();
    }

    public ArraySelection<T> getSelection() {
        return this.f5922K;
    }

    public ListStyle getStyle() {
        return this.f5920I;
    }

    /* renamed from: h */
    public GlyphLayout m23821h(Batch batch, BitmapFont bitmapFont, int i, T t, float f, float f2, float f3) {
        String list = toString(t);
        return bitmapFont.draw(batch, list, f, f2, 0, list.length(), f3, this.f5927P, false, "...");
    }

    /* renamed from: i */
    public void m23820i(Batch batch, @Null Drawable drawable, float f, float f2, float f3, float f4) {
        if (drawable != null) {
            drawable.draw(batch, f, f2, f3, f4);
        }
    }

    public void setAlignment(int i) {
        this.f5927P = i;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Cullable
    public void setCullingArea(@Null Rectangle rectangle) {
        this.f5923L = rectangle;
    }

    public void setItems(T... tArr) {
        if (tArr != null) {
            float prefWidth = getPrefWidth();
            float prefHeight = getPrefHeight();
            this.f5921J.clear();
            this.f5921J.addAll(tArr);
            this.f5929R = -1;
            this.f5928Q = -1;
            this.f5922K.validate();
            invalidate();
            if (prefWidth == getPrefWidth() && prefHeight == getPrefHeight()) {
                return;
            }
            invalidateHierarchy();
            return;
        }
        throw new IllegalArgumentException("newItems cannot be null.");
    }

    public void setSelectedIndex(int i) {
        if (i >= -1) {
            Array<T> array = this.f5921J;
            if (i < array.size) {
                if (i == -1) {
                    this.f5922K.clear();
                    return;
                } else {
                    this.f5922K.set(array.get(i));
                    return;
                }
            }
        }
        throw new IllegalArgumentException("index must be >= -1 and < " + this.f5921J.size + ": " + i);
    }

    public void setSelection(ArraySelection<T> arraySelection) {
        this.f5922K = arraySelection;
    }

    public void setTypeToSelect(boolean z) {
        this.f5931T = z;
    }

    public String toString(T t) {
        return t.toString();
    }

    public List(Skin skin, String str) {
        this((ListStyle) skin.get(str, ListStyle.class));
    }

    public void clearItems() {
        Array<T> array = this.f5921J;
        if (array.size == 0) {
            return;
        }
        array.clear();
        this.f5929R = -1;
        this.f5928Q = -1;
        this.f5922K.clear();
        invalidateHierarchy();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0103 A[SYNTHETIC] */
    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(com.badlogic.gdx.graphics.g2d.Batch r26, float r27) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.p033ui.List.draw(com.badlogic.gdx.graphics.g2d.Batch, float):void");
    }

    /* renamed from: g */
    public void m23822g(Batch batch, float f) {
        if (this.f5920I.background != null) {
            Color color = getColor();
            batch.setColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a * f);
            this.f5920I.background.draw(batch, getX(), getY(), getWidth(), getHeight());
        }
    }

    public int getSelectedIndex() {
        OrderedSet<T> items = this.f5922K.items();
        if (items.size == 0) {
            return -1;
        }
        return this.f5921J.indexOf(items.first(), false);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void layout() {
        ListStyle listStyle = this.f5920I;
        BitmapFont bitmapFont = listStyle.font;
        Drawable drawable = listStyle.selection;
        float capHeight = bitmapFont.getCapHeight() - (bitmapFont.getDescent() * 2.0f);
        this.f5926O = capHeight;
        this.f5926O = capHeight + drawable.getTopHeight() + drawable.getBottomHeight();
        this.f5924M = 0.0f;
        Pool pool = Pools.get(GlyphLayout.class);
        GlyphLayout glyphLayout = (GlyphLayout) pool.obtain();
        int i = 0;
        while (true) {
            Array<T> array = this.f5921J;
            if (i >= array.size) {
                break;
            }
            glyphLayout.setText(bitmapFont, toString(array.get(i)));
            this.f5924M = Math.max(glyphLayout.width, this.f5924M);
            i++;
        }
        pool.free(glyphLayout);
        float leftWidth = this.f5924M + drawable.getLeftWidth() + drawable.getRightWidth();
        this.f5924M = leftWidth;
        this.f5925N = this.f5921J.size * this.f5926O;
        Drawable drawable2 = this.f5920I.background;
        if (drawable2 != null) {
            this.f5924M = Math.max(leftWidth + drawable2.getLeftWidth() + drawable2.getRightWidth(), drawable2.getMinWidth());
            this.f5925N = Math.max(this.f5925N + drawable2.getTopHeight() + drawable2.getBottomHeight(), drawable2.getMinHeight());
        }
    }

    public void setSelected(@Null T t) {
        if (this.f5921J.contains(t, false)) {
            this.f5922K.set(t);
            return;
        }
        if (this.f5922K.getRequired()) {
            Array<T> array = this.f5921J;
            if (array.size > 0) {
                this.f5922K.set(array.first());
                return;
            }
        }
        this.f5922K.clear();
    }

    public void setStyle(ListStyle listStyle) {
        if (listStyle != null) {
            this.f5920I = listStyle;
            invalidateHierarchy();
            return;
        }
        throw new IllegalArgumentException("style cannot be null.");
    }

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.List$ListStyle */
    /* loaded from: classes.dex */
    public static class ListStyle {
        @Null
        public Drawable background;
        @Null
        public Drawable down;
        public BitmapFont font;
        public Color fontColorSelected = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        public Color fontColorUnselected = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        @Null
        public Drawable over;
        public Drawable selection;

        public ListStyle() {
        }

        public ListStyle(BitmapFont bitmapFont, Color color, Color color2, Drawable drawable) {
            this.font = bitmapFont;
            this.fontColorSelected.set(color);
            this.fontColorUnselected.set(color2);
            this.selection = drawable;
        }

        public ListStyle(ListStyle listStyle) {
            this.font = listStyle.font;
            this.fontColorSelected.set(listStyle.fontColorSelected);
            this.fontColorUnselected.set(listStyle.fontColorUnselected);
            this.selection = listStyle.selection;
            this.down = listStyle.down;
            this.over = listStyle.over;
            this.background = listStyle.background;
        }
    }

    public List(ListStyle listStyle) {
        Array<T> array = new Array<>();
        this.f5921J = array;
        ArraySelection<T> arraySelection = new ArraySelection<>(array);
        this.f5922K = arraySelection;
        this.f5927P = 8;
        this.f5928Q = -1;
        this.f5929R = -1;
        arraySelection.setActor(this);
        this.f5922K.setRequired(true);
        setStyle(listStyle);
        setSize(getPrefWidth(), getPrefHeight());
        InputListener inputListener = new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.List.1

            /* renamed from: b */
            public long f5932b;

            /* renamed from: c */
            public String f5933c;

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean keyDown(InputEvent inputEvent, int i) {
                int i2 = 0;
                if (List.this.f5921J.isEmpty()) {
                    return false;
                }
                if (i != 3) {
                    if (i != 29) {
                        if (i != 111) {
                            if (i != 123) {
                                if (i != 19) {
                                    if (i == 20) {
                                        List list = List.this;
                                        int indexOf = list.f5921J.indexOf(list.getSelected(), false) + 1;
                                        List list2 = List.this;
                                        if (indexOf < list2.f5921J.size) {
                                            i2 = indexOf;
                                        }
                                        list2.setSelectedIndex(i2);
                                        return true;
                                    }
                                } else {
                                    List list3 = List.this;
                                    int indexOf2 = list3.f5921J.indexOf(list3.getSelected(), false) - 1;
                                    if (indexOf2 < 0) {
                                        indexOf2 = List.this.f5921J.size - 1;
                                    }
                                    List.this.setSelectedIndex(indexOf2);
                                    return true;
                                }
                            } else {
                                List list4 = List.this;
                                list4.setSelectedIndex(list4.f5921J.size - 1);
                                return true;
                            }
                        } else {
                            if (List.this.getStage() != null) {
                                List.this.getStage().setKeyboardFocus(null);
                            }
                            return true;
                        }
                    } else if (UIUtils.ctrl() && List.this.f5922K.getMultiple()) {
                        List.this.f5922K.clear();
                        List list5 = List.this;
                        list5.f5922K.addAll(list5.f5921J);
                        return true;
                    }
                    return false;
                }
                List.this.setSelectedIndex(0);
                return true;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean keyTyped(InputEvent inputEvent, char c) {
                if (!List.this.f5931T) {
                    return false;
                }
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis > this.f5932b) {
                    this.f5933c = "";
                }
                this.f5932b = currentTimeMillis + 300;
                this.f5933c += Character.toLowerCase(c);
                int i = List.this.f5921J.size;
                int i2 = 0;
                while (true) {
                    if (i2 >= i) {
                        break;
                    }
                    List list = List.this;
                    if (list.toString(list.f5921J.get(i2)).toLowerCase().startsWith(this.f5933c)) {
                        List.this.setSelectedIndex(i2);
                        break;
                    }
                    i2++;
                }
                return false;
            }
        };
        this.f5930S = inputListener;
        addListener(inputListener);
        addListener(new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.List.2
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                if (i == 0) {
                    List.this.f5928Q = -1;
                }
                if (i == -1) {
                    List.this.f5929R = -1;
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean mouseMoved(InputEvent inputEvent, float f, float f2) {
                List list = List.this;
                list.f5929R = list.getItemIndexAt(f2);
                return false;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                int itemIndexAt;
                if (i == 0 && i2 == 0 && !List.this.f5922K.isDisabled()) {
                    if (List.this.getStage() != null) {
                        List.this.getStage().setKeyboardFocus(List.this);
                    }
                    List list = List.this;
                    if (list.f5921J.size == 0 || (itemIndexAt = list.getItemIndexAt(f2)) == -1) {
                        return true;
                    }
                    List list2 = List.this;
                    list2.f5922K.choose(list2.f5921J.get(itemIndexAt));
                    List.this.f5928Q = itemIndexAt;
                    return true;
                }
                return true;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchDragged(InputEvent inputEvent, float f, float f2, int i) {
                List list = List.this;
                list.f5929R = list.getItemIndexAt(f2);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f, float f2, int i, int i2) {
                if (i == 0 && i2 == 0) {
                    List.this.f5928Q = -1;
                }
            }
        });
    }

    @Null
    public T getItemAt(float f) {
        int itemIndexAt = getItemIndexAt(f);
        if (itemIndexAt == -1) {
            return null;
        }
        return this.f5921J.get(itemIndexAt);
    }

    public int getItemIndexAt(float f) {
        float height = getHeight();
        Drawable drawable = this.f5920I.background;
        if (drawable != null) {
            height -= drawable.getTopHeight() + drawable.getBottomHeight();
            f -= drawable.getBottomHeight();
        }
        int i = (int) ((height - f) / this.f5926O);
        if (i >= 0 && i < this.f5921J.size) {
            return i;
        }
        return -1;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        validate();
        return this.f5925N;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        validate();
        return this.f5924M;
    }

    public void setItems(Array array) {
        if (array != null) {
            float prefWidth = getPrefWidth();
            float prefHeight = getPrefHeight();
            Array<T> array2 = this.f5921J;
            if (array != array2) {
                array2.clear();
                this.f5921J.addAll(array);
            }
            this.f5929R = -1;
            this.f5928Q = -1;
            this.f5922K.validate();
            invalidate();
            if (prefWidth == getPrefWidth() && prefHeight == getPrefHeight()) {
                return;
            }
            invalidateHierarchy();
            return;
        }
        throw new IllegalArgumentException("newItems cannot be null.");
    }
}
