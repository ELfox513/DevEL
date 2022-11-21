package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.GlyphLayout;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.List;
import com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.utils.ArraySelection;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Disableable;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.OrderedSet;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.Pools;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.SelectBox */
/* loaded from: classes.dex */
public class SelectBox<T> extends Widget implements Disableable {

    /* renamed from: S */
    public static final Vector2 f6009S = new Vector2();

    /* renamed from: I */
    public SelectBoxStyle f6010I;

    /* renamed from: J */
    public final Array<T> f6011J;

    /* renamed from: K */
    public SelectBoxScrollPane<T> f6012K;

    /* renamed from: L */
    public float f6013L;

    /* renamed from: M */
    public float f6014M;

    /* renamed from: N */
    public ClickListener f6015N;

    /* renamed from: O */
    public boolean f6016O;

    /* renamed from: P */
    public int f6017P;

    /* renamed from: Q */
    public boolean f6018Q;

    /* renamed from: R */
    public final ArraySelection<T> f6019R;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.SelectBox$SelectBoxScrollPane */
    /* loaded from: classes.dex */
    public static class SelectBoxScrollPane<T> extends ScrollPane {

        /* renamed from: L0 */
        public final SelectBox<T> f6022L0;

        /* renamed from: M0 */
        public int f6023M0;

        /* renamed from: N0 */
        public final Vector2 f6024N0;

        /* renamed from: O0 */
        public final List<T> f6025O0;

        /* renamed from: P0 */
        public InputListener f6026P0;

        /* renamed from: Q0 */
        public Actor f6027Q0;

        /* renamed from: C */
        public List<T> m23797C() {
            return new List<T>(this.f6022L0.f6010I.listStyle) { // from class: com.badlogic.gdx.scenes.scene2d.ui.SelectBox.SelectBoxScrollPane.4
                @Override // com.badlogic.gdx.scenes.scene2d.p033ui.List
                public String toString(T t) {
                    return SelectBoxScrollPane.this.f6022L0.toString(t);
                }
            };
        }

        public List<T> getList() {
            return this.f6025O0;
        }

        public SelectBox<T> getSelectBox() {
            return this.f6022L0;
        }

        public SelectBoxScrollPane(final SelectBox<T> selectBox) {
            super((Actor) null, selectBox.f6010I.scrollStyle);
            this.f6024N0 = new Vector2();
            this.f6022L0 = selectBox;
            setOverscroll(false, false);
            setFadeScrollBars(false);
            setScrollingDisabled(true, false);
            List<T> m23797C = m23797C();
            this.f6025O0 = m23797C;
            m23797C.setTouchable(Touchable.disabled);
            m23797C.setTypeToSelect(true);
            setActor(m23797C);
            m23797C.addListener(new ClickListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.SelectBox.SelectBoxScrollPane.1
                @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
                public void clicked(InputEvent inputEvent, float f, float f2) {
                    T selected = SelectBoxScrollPane.this.f6025O0.getSelected();
                    if (selected != null) {
                        selectBox.f6019R.items().clear(51);
                    }
                    selectBox.f6019R.choose(selected);
                    SelectBoxScrollPane.this.hide();
                }

                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public boolean mouseMoved(InputEvent inputEvent, float f, float f2) {
                    int itemIndexAt = SelectBoxScrollPane.this.f6025O0.getItemIndexAt(f2);
                    if (itemIndexAt != -1) {
                        SelectBoxScrollPane.this.f6025O0.setSelectedIndex(itemIndexAt);
                        return true;
                    }
                    return true;
                }
            });
            addListener(new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.SelectBox.SelectBoxScrollPane.2
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public void exit(InputEvent inputEvent, float f, float f2, int i, @Null Actor actor) {
                    if (actor == null || !SelectBoxScrollPane.this.isAscendantOf(actor)) {
                        SelectBoxScrollPane.this.f6025O0.f5922K.set(selectBox.getSelected());
                    }
                }
            });
            this.f6026P0 = new InputListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.SelectBox.SelectBoxScrollPane.3
                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public boolean keyDown(InputEvent inputEvent, int i) {
                    if (i != 66) {
                        if (i != 111) {
                            if (i != 160) {
                                return false;
                            }
                        }
                        SelectBoxScrollPane.this.hide();
                        inputEvent.stop();
                        return true;
                    }
                    selectBox.f6019R.choose(SelectBoxScrollPane.this.f6025O0.getSelected());
                    SelectBoxScrollPane.this.hide();
                    inputEvent.stop();
                    return true;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.badlogic.gdx.scenes.scene2d.InputListener
                public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                    if (SelectBoxScrollPane.this.isAscendantOf(inputEvent.getTarget())) {
                        return false;
                    }
                    SelectBoxScrollPane.this.f6025O0.f5922K.set(selectBox.getSelected());
                    SelectBoxScrollPane.this.hide();
                    return false;
                }
            };
        }

        @Override // com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane, com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
        public void draw(Batch batch, float f) {
            SelectBox<T> selectBox = this.f6022L0;
            Vector2 vector2 = SelectBox.f6009S;
            selectBox.localToStageCoordinates(vector2.set(0.0f, 0.0f));
            if (!vector2.equals(this.f6024N0)) {
                hide();
            }
            super.draw(batch, f);
        }

        public void hide() {
            if (this.f6025O0.isTouchable() && hasParent()) {
                this.f6025O0.setTouchable(Touchable.disabled);
                Stage stage = getStage();
                if (stage != null) {
                    stage.removeCaptureListener(this.f6026P0);
                    stage.removeListener(this.f6025O0.getKeyListener());
                    Actor actor = this.f6027Q0;
                    if (actor != null && actor.getStage() == null) {
                        this.f6027Q0 = null;
                    }
                    Actor scrollFocus = stage.getScrollFocus();
                    if (scrollFocus == null || isAscendantOf(scrollFocus)) {
                        stage.setScrollFocus(this.f6027Q0);
                    }
                }
                clearActions();
                this.f6022L0.m23799k(this);
            }
        }

        public void show(Stage stage) {
            int min;
            if (this.f6025O0.isTouchable()) {
                return;
            }
            stage.addActor(this);
            stage.addCaptureListener(this.f6026P0);
            stage.addListener(this.f6025O0.getKeyListener());
            this.f6022L0.localToStageCoordinates(this.f6024N0.set(0.0f, 0.0f));
            float itemHeight = this.f6025O0.getItemHeight();
            int i = this.f6023M0;
            if (i <= 0) {
                min = this.f6022L0.f6011J.size;
            } else {
                min = Math.min(i, this.f6022L0.f6011J.size);
            }
            float f = min * itemHeight;
            Drawable drawable = getStyle().background;
            if (drawable != null) {
                f += drawable.getTopHeight() + drawable.getBottomHeight();
            }
            Drawable drawable2 = this.f6025O0.getStyle().background;
            if (drawable2 != null) {
                f += drawable2.getTopHeight() + drawable2.getBottomHeight();
            }
            float f2 = this.f6024N0.f5528y;
            float height = (stage.getHeight() - f2) - this.f6022L0.getHeight();
            boolean z = true;
            if (f > f2) {
                if (height > f2) {
                    z = false;
                    f = Math.min(f, height);
                } else {
                    f = f2;
                }
            }
            if (z) {
                setY(this.f6024N0.f5528y - f);
            } else {
                setY(this.f6024N0.f5528y + this.f6022L0.getHeight());
            }
            setX(this.f6024N0.f5527x);
            setHeight(f);
            validate();
            setWidth(Math.max(getPrefWidth(), this.f6022L0.getWidth()));
            validate();
            scrollTo(0.0f, (this.f6025O0.getHeight() - (this.f6022L0.getSelectedIndex() * itemHeight)) - (itemHeight / 2.0f), 0.0f, 0.0f, true, true);
            updateVisualScroll();
            this.f6027Q0 = null;
            Actor scrollFocus = stage.getScrollFocus();
            if (scrollFocus != null && !scrollFocus.isDescendantOf(this)) {
                this.f6027Q0 = scrollFocus;
            }
            stage.setScrollFocus(this);
            this.f6025O0.f5922K.set(this.f6022L0.getSelected());
            this.f6025O0.setTouchable(Touchable.enabled);
            clearActions();
            this.f6022L0.m23798l(this, z);
        }

        @Override // com.badlogic.gdx.scenes.scene2d.p033ui.ScrollPane, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
        public void act(float f) {
            super.act(f);
            toFront();
        }

        @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
        /* renamed from: f */
        public void mo23796f(Stage stage) {
            Stage stage2 = getStage();
            if (stage2 != null) {
                stage2.removeCaptureListener(this.f6026P0);
                stage2.removeListener(this.f6025O0.getKeyListener());
            }
            super.mo23796f(stage);
        }
    }

    public SelectBox(Skin skin) {
        this((SelectBoxStyle) skin.get(SelectBoxStyle.class));
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        float f2;
        float f3;
        validate();
        Drawable m23802h = m23802h();
        Color m23801i = m23801i();
        BitmapFont bitmapFont = this.f6010I.font;
        Color color = getColor();
        float x = getX();
        float y = getY();
        float width = getWidth();
        float height = getHeight();
        batch.setColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a * f);
        if (m23802h != null) {
            m23802h.draw(batch, x, y, width, height);
        }
        T first = this.f6019R.first();
        if (first != null) {
            if (m23802h != null) {
                width -= m23802h.getLeftWidth() + m23802h.getRightWidth();
                float bottomHeight = height - (m23802h.getBottomHeight() + m23802h.getTopHeight());
                x += m23802h.getLeftWidth();
                f2 = (bottomHeight / 2.0f) + m23802h.getBottomHeight();
                f3 = bitmapFont.getData().capHeight;
            } else {
                f2 = height / 2.0f;
                f3 = bitmapFont.getData().capHeight;
            }
            bitmapFont.setColor(m23801i.f3892r, m23801i.f3891g, m23801i.f3890b, m23801i.f3889a * f);
            m23803g(batch, bitmapFont, first, x, y + ((int) (f2 + (f3 / 2.0f))), width);
        }
    }

    /* renamed from: g */
    public GlyphLayout m23803g(Batch batch, BitmapFont bitmapFont, T t, float f, float f2, float f3) {
        String selectBox = toString(t);
        return bitmapFont.draw(batch, selectBox, f, f2, 0, selectBox.length(), f3, this.f6017P, false, "...");
    }

    public ClickListener getClickListener() {
        return this.f6015N;
    }

    public Array<T> getItems() {
        return this.f6011J;
    }

    public List<T> getList() {
        return this.f6012K.f6025O0;
    }

    public int getMaxListCount() {
        return this.f6012K.f6023M0;
    }

    public SelectBoxScrollPane getScrollPane() {
        return this.f6012K;
    }

    @Null
    public T getSelected() {
        return this.f6019R.first();
    }

    public boolean getSelectedPrefWidth() {
        return this.f6018Q;
    }

    public ArraySelection<T> getSelection() {
        return this.f6019R;
    }

    public SelectBoxStyle getStyle() {
        return this.f6010I;
    }

    @Deprecated
    public void hideList() {
        hideScrollPane();
    }

    public void hideScrollPane() {
        this.f6012K.hide();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Disableable
    public boolean isDisabled() {
        return this.f6016O;
    }

    public boolean isOver() {
        return this.f6015N.isOver();
    }

    /* renamed from: j */
    public SelectBoxScrollPane<T> m23800j() {
        return new SelectBoxScrollPane<>(this);
    }

    public void setAlignment(int i) {
        this.f6017P = i;
    }

    public void setItems(T... tArr) {
        if (tArr != null) {
            float prefWidth = getPrefWidth();
            this.f6011J.clear();
            this.f6011J.addAll(tArr);
            this.f6019R.validate();
            this.f6012K.f6025O0.setItems(this.f6011J);
            invalidate();
            if (prefWidth != getPrefWidth()) {
                invalidateHierarchy();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("newItems cannot be null.");
    }

    public void setMaxListCount(int i) {
        this.f6012K.f6023M0 = i;
    }

    public void setSelectedIndex(int i) {
        this.f6019R.set(this.f6011J.get(i));
    }

    public void setSelectedPrefWidth(boolean z) {
        this.f6018Q = z;
    }

    @Deprecated
    public void showList() {
        showScrollPane();
    }

    public String toString(T t) {
        return t.toString();
    }

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.SelectBox$SelectBoxStyle */
    /* loaded from: classes.dex */
    public static class SelectBoxStyle {
        @Null
        public Drawable background;
        @Null
        public Drawable backgroundDisabled;
        @Null
        public Drawable backgroundOpen;
        @Null
        public Drawable backgroundOver;
        @Null
        public Color disabledFontColor;
        public BitmapFont font;
        public Color fontColor;
        public List.ListStyle listStyle;
        @Null
        public Color overFontColor;
        public ScrollPane.ScrollPaneStyle scrollStyle;

        public SelectBoxStyle() {
            this.fontColor = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        }

        public SelectBoxStyle(BitmapFont bitmapFont, Color color, @Null Drawable drawable, ScrollPane.ScrollPaneStyle scrollPaneStyle, List.ListStyle listStyle) {
            Color color2 = new Color(1.0f, 1.0f, 1.0f, 1.0f);
            this.fontColor = color2;
            this.font = bitmapFont;
            color2.set(color);
            this.background = drawable;
            this.scrollStyle = scrollPaneStyle;
            this.listStyle = listStyle;
        }

        public SelectBoxStyle(SelectBoxStyle selectBoxStyle) {
            Color color = new Color(1.0f, 1.0f, 1.0f, 1.0f);
            this.fontColor = color;
            this.font = selectBoxStyle.font;
            color.set(selectBoxStyle.fontColor);
            if (selectBoxStyle.overFontColor != null) {
                this.overFontColor = new Color(selectBoxStyle.overFontColor);
            }
            if (selectBoxStyle.disabledFontColor != null) {
                this.disabledFontColor = new Color(selectBoxStyle.disabledFontColor);
            }
            this.background = selectBoxStyle.background;
            this.scrollStyle = new ScrollPane.ScrollPaneStyle(selectBoxStyle.scrollStyle);
            this.listStyle = new List.ListStyle(selectBoxStyle.listStyle);
            this.backgroundOver = selectBoxStyle.backgroundOver;
            this.backgroundOpen = selectBoxStyle.backgroundOpen;
            this.backgroundDisabled = selectBoxStyle.backgroundDisabled;
        }
    }

    public SelectBox(Skin skin, String str) {
        this((SelectBoxStyle) skin.get(str, SelectBoxStyle.class));
    }

    public void clearItems() {
        Array<T> array = this.f6011J;
        if (array.size == 0) {
            return;
        }
        array.clear();
        this.f6019R.clear();
        this.f6012K.f6025O0.clearItems();
        invalidateHierarchy();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    /* renamed from: f */
    public void mo23796f(Stage stage) {
        if (stage == null) {
            this.f6012K.hide();
        }
        super.mo23796f(stage);
    }

    public float getMaxSelectedPrefWidth() {
        GlyphLayout glyphLayout = (GlyphLayout) Pools.get(GlyphLayout.class).obtain();
        float f = 0.0f;
        int i = 0;
        while (true) {
            Array<T> array = this.f6011J;
            if (i >= array.size) {
                break;
            }
            glyphLayout.setText(this.f6010I.font, toString(array.get(i)));
            f = Math.max(glyphLayout.width, f);
            i++;
        }
        Drawable drawable = this.f6010I.background;
        if (drawable != null) {
            return Math.max(f + drawable.getLeftWidth() + drawable.getRightWidth(), drawable.getMinWidth());
        }
        return f;
    }

    public int getSelectedIndex() {
        OrderedSet<T> items = this.f6019R.items();
        if (items.size == 0) {
            return -1;
        }
        return this.f6011J.indexOf(items.first(), false);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void layout() {
        float f;
        SelectBoxStyle selectBoxStyle = this.f6010I;
        Drawable drawable = selectBoxStyle.background;
        BitmapFont bitmapFont = selectBoxStyle.font;
        if (drawable != null) {
            this.f6014M = Math.max(((drawable.getTopHeight() + drawable.getBottomHeight()) + bitmapFont.getCapHeight()) - (bitmapFont.getDescent() * 2.0f), drawable.getMinHeight());
        } else {
            this.f6014M = bitmapFont.getCapHeight() - (bitmapFont.getDescent() * 2.0f);
        }
        Pool pool = Pools.get(GlyphLayout.class);
        GlyphLayout glyphLayout = (GlyphLayout) pool.obtain();
        float f2 = 0.0f;
        if (this.f6018Q) {
            this.f6013L = 0.0f;
            if (drawable != null) {
                this.f6013L = drawable.getLeftWidth() + drawable.getRightWidth();
            }
            T selected = getSelected();
            if (selected != null) {
                glyphLayout.setText(bitmapFont, toString(selected));
                this.f6013L += glyphLayout.width;
            }
        } else {
            int i = 0;
            float f3 = 0.0f;
            while (true) {
                Array<T> array = this.f6011J;
                if (i >= array.size) {
                    break;
                }
                glyphLayout.setText(bitmapFont, toString(array.get(i)));
                f3 = Math.max(glyphLayout.width, f3);
                i++;
            }
            this.f6013L = f3;
            if (drawable != null) {
                this.f6013L = Math.max(drawable.getLeftWidth() + f3 + drawable.getRightWidth(), drawable.getMinWidth());
            }
            SelectBoxStyle selectBoxStyle2 = this.f6010I;
            List.ListStyle listStyle = selectBoxStyle2.listStyle;
            ScrollPane.ScrollPaneStyle scrollPaneStyle = selectBoxStyle2.scrollStyle;
            float leftWidth = f3 + listStyle.selection.getLeftWidth() + listStyle.selection.getRightWidth();
            Drawable drawable2 = scrollPaneStyle.background;
            if (drawable2 != null) {
                leftWidth = Math.max(leftWidth + drawable2.getLeftWidth() + drawable2.getRightWidth(), drawable2.getMinWidth());
            }
            SelectBoxScrollPane<T> selectBoxScrollPane = this.f6012K;
            if (selectBoxScrollPane == null || !selectBoxScrollPane.f5963G0) {
                Drawable drawable3 = this.f6010I.scrollStyle.vScroll;
                if (drawable3 != null) {
                    f = drawable3.getMinWidth();
                } else {
                    f = 0.0f;
                }
                Drawable drawable4 = this.f6010I.scrollStyle.vScrollKnob;
                if (drawable4 != null) {
                    f2 = drawable4.getMinWidth();
                }
                leftWidth += Math.max(f, f2);
            }
            this.f6013L = Math.max(this.f6013L, leftWidth);
        }
        pool.free(glyphLayout);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Disableable
    public void setDisabled(boolean z) {
        if (z && !this.f6016O) {
            hideScrollPane();
        }
        this.f6016O = z;
    }

    public void setScrollingDisabled(boolean z) {
        this.f6012K.setScrollingDisabled(true, z);
        invalidateHierarchy();
    }

    public void setSelected(@Null T t) {
        if (this.f6011J.contains(t, false)) {
            this.f6019R.set(t);
            return;
        }
        Array<T> array = this.f6011J;
        if (array.size > 0) {
            this.f6019R.set(array.first());
        } else {
            this.f6019R.clear();
        }
    }

    public void setStyle(SelectBoxStyle selectBoxStyle) {
        if (selectBoxStyle != null) {
            this.f6010I = selectBoxStyle;
            SelectBoxScrollPane<T> selectBoxScrollPane = this.f6012K;
            if (selectBoxScrollPane != null) {
                selectBoxScrollPane.setStyle(selectBoxStyle.scrollStyle);
                this.f6012K.f6025O0.setStyle(selectBoxStyle.listStyle);
            }
            invalidateHierarchy();
            return;
        }
        throw new IllegalArgumentException("style cannot be null.");
    }

    public void showScrollPane() {
        if (this.f6011J.size != 0 && getStage() != null) {
            this.f6012K.show(getStage());
        }
    }

    public SelectBox(SelectBoxStyle selectBoxStyle) {
        Array<T> array = new Array<>();
        this.f6011J = array;
        this.f6017P = 8;
        ArraySelection<T> arraySelection = new ArraySelection(array) { // from class: com.badlogic.gdx.scenes.scene2d.ui.SelectBox.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.Selection
            public boolean fireChangeEvent() {
                SelectBox selectBox = SelectBox.this;
                if (selectBox.f6018Q) {
                    selectBox.invalidateHierarchy();
                }
                return super.fireChangeEvent();
            }
        };
        this.f6019R = arraySelection;
        setStyle(selectBoxStyle);
        setSize(getPrefWidth(), getPrefHeight());
        arraySelection.setActor(this);
        arraySelection.setRequired(true);
        this.f6012K = m23800j();
        ClickListener clickListener = new ClickListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.SelectBox.2
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                if ((i != 0 || i2 == 0) && !SelectBox.this.isDisabled()) {
                    if (SelectBox.this.f6012K.hasParent()) {
                        SelectBox.this.hideScrollPane();
                        return true;
                    }
                    SelectBox.this.showScrollPane();
                    return true;
                }
                return false;
            }
        };
        this.f6015N = clickListener;
        addListener(clickListener);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        validate();
        return this.f6014M;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        validate();
        return this.f6013L;
    }

    @Null
    /* renamed from: h */
    public Drawable m23802h() {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        if (isDisabled() && (drawable3 = this.f6010I.backgroundDisabled) != null) {
            return drawable3;
        }
        if (this.f6012K.hasParent() && (drawable2 = this.f6010I.backgroundOpen) != null) {
            return drawable2;
        }
        if (isOver() && (drawable = this.f6010I.backgroundOver) != null) {
            return drawable;
        }
        return this.f6010I.background;
    }

    /* renamed from: i */
    public Color m23801i() {
        Color color;
        if (isDisabled() && (color = this.f6010I.disabledFontColor) != null) {
            return color;
        }
        if (this.f6010I.overFontColor != null && (isOver() || this.f6012K.hasParent())) {
            return this.f6010I.overFontColor;
        }
        return this.f6010I.fontColor;
    }

    /* renamed from: k */
    public void m23799k(Actor actor) {
        actor.getColor().f3889a = 1.0f;
        actor.addAction(Actions.sequence(Actions.fadeOut(0.15f, Interpolation.fade), Actions.removeActor()));
    }

    /* renamed from: l */
    public void m23798l(Actor actor, boolean z) {
        actor.getColor().f3889a = 0.0f;
        actor.addAction(Actions.fadeIn(0.3f, Interpolation.fade));
    }

    public void setItems(Array<T> array) {
        if (array != null) {
            float prefWidth = getPrefWidth();
            Array<T> array2 = this.f6011J;
            if (array != array2) {
                array2.clear();
                this.f6011J.addAll(array);
            }
            this.f6019R.validate();
            this.f6012K.f6025O0.setItems(this.f6011J);
            invalidate();
            if (prefWidth != getPrefWidth()) {
                invalidateHierarchy();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("newItems cannot be null.");
    }
}
