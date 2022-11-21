package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Value;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.Pools;
import java.util.Arrays;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Table */
/* loaded from: classes.dex */
public class Table extends WidgetGroup {

    /* renamed from: v0 */
    public static float[] f6079v0;

    /* renamed from: w0 */
    public static float[] f6080w0;

    /* renamed from: P */
    public int f6081P;

    /* renamed from: Q */
    public int f6082Q;

    /* renamed from: R */
    public boolean f6083R;

    /* renamed from: S */
    public final Array<Cell> f6084S;

    /* renamed from: T */
    public final Cell f6085T;

    /* renamed from: U */
    public final Array<Cell> f6086U;

    /* renamed from: V */
    public Cell f6087V;

    /* renamed from: W */
    public boolean f6088W;

    /* renamed from: X */
    public float[] f6089X;

    /* renamed from: Y */
    public float[] f6090Y;

    /* renamed from: Z */
    public float[] f6091Z;

    /* renamed from: a0 */
    public float[] f6092a0;

    /* renamed from: b0 */
    public float f6093b0;

    /* renamed from: c0 */
    public float f6094c0;

    /* renamed from: d0 */
    public float f6095d0;

    /* renamed from: e0 */
    public float f6096e0;

    /* renamed from: f0 */
    public float[] f6097f0;

    /* renamed from: g0 */
    public float[] f6098g0;

    /* renamed from: h0 */
    public float[] f6099h0;

    /* renamed from: i0 */
    public float[] f6100i0;

    /* renamed from: j0 */
    public Value f6101j0;

    /* renamed from: k0 */
    public Value f6102k0;

    /* renamed from: l0 */
    public Value f6103l0;

    /* renamed from: m0 */
    public Value f6104m0;

    /* renamed from: n0 */
    public int f6105n0;

    /* renamed from: o0 */
    public Debug f6106o0;

    /* renamed from: p0 */
    public Array<DebugRect> f6107p0;
    @Null

    /* renamed from: q0 */
    public Drawable f6108q0;

    /* renamed from: r0 */
    public boolean f6109r0;
    @Null

    /* renamed from: s0 */
    public Skin f6110s0;

    /* renamed from: t0 */
    public boolean f6111t0;
    public static Color debugTableColor = new Color(0.0f, 0.0f, 1.0f, 1.0f);
    public static Color debugCellColor = new Color(1.0f, 0.0f, 0.0f, 1.0f);
    public static Color debugActorColor = new Color(0.0f, 1.0f, 0.0f, 1.0f);

    /* renamed from: u0 */
    public static final Pool<Cell> f6078u0 = new Pool<Cell>() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Table.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public Cell newObject() {
            return new Cell();
        }
    };
    public static Value backgroundTop = new Value() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Table.2
        @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Value
        public float get(@Null Actor actor) {
            Drawable drawable = ((Table) actor).f6108q0;
            if (drawable == null) {
                return 0.0f;
            }
            return drawable.getTopHeight();
        }
    };
    public static Value backgroundLeft = new Value() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Table.3
        @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Value
        public float get(@Null Actor actor) {
            Drawable drawable = ((Table) actor).f6108q0;
            if (drawable == null) {
                return 0.0f;
            }
            return drawable.getLeftWidth();
        }
    };
    public static Value backgroundBottom = new Value() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Table.4
        @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Value
        public float get(@Null Actor actor) {
            Drawable drawable = ((Table) actor).f6108q0;
            if (drawable == null) {
                return 0.0f;
            }
            return drawable.getBottomHeight();
        }
    };
    public static Value backgroundRight = new Value() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Table.5
        @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Value
        public float get(@Null Actor actor) {
            Drawable drawable = ((Table) actor).f6108q0;
            if (drawable == null) {
                return 0.0f;
            }
            return drawable.getRightWidth();
        }
    };

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Table$Debug */
    /* loaded from: classes.dex */
    public enum Debug {
        none,
        all,
        table,
        cell,
        actor
    }

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Table$DebugRect */
    /* loaded from: classes.dex */
    public static class DebugRect extends Rectangle {

        /* renamed from: b */
        public static Pool<DebugRect> f6113b = Pools.get(DebugRect.class);

        /* renamed from: a */
        public Color f6114a;
    }

    public Table() {
        this(null);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    /* renamed from: a */
    public void mo23712a(ShapeRenderer shapeRenderer) {
    }

    public <T extends Actor> Cell<T> add(@Null T t) {
        Cell<T> m23774y = m23774y();
        m23774y.f5806H = t;
        if (this.f6083R) {
            this.f6083R = false;
            this.f6082Q--;
            this.f6084S.peek().f5812N = false;
        }
        Array<Cell> array = this.f6084S;
        int i = array.size;
        if (i > 0) {
            Cell peek = array.peek();
            if (!peek.f5812N) {
                m23774y.f5813O = peek.f5813O + peek.f5803E.intValue();
                m23774y.f5814P = peek.f5814P;
            } else {
                m23774y.f5813O = 0;
                m23774y.f5814P = peek.f5814P + 1;
            }
            if (m23774y.f5814P > 0) {
                Cell[] cellArr = this.f6084S.items;
                int i2 = i - 1;
                loop0: while (true) {
                    if (i2 < 0) {
                        break;
                    }
                    Cell cell = cellArr[i2];
                    int i3 = cell.f5813O;
                    int intValue = cell.f5803E.intValue() + i3;
                    while (i3 < intValue) {
                        if (i3 == m23774y.f5813O) {
                            m23774y.f5815Q = i2;
                            break loop0;
                        }
                        i3++;
                    }
                    i2--;
                }
            }
        } else {
            m23774y.f5813O = 0;
            m23774y.f5814P = 0;
        }
        this.f6084S.add(m23774y);
        m23774y.m23840c(this.f6085T);
        int i4 = m23774y.f5813O;
        Array<Cell> array2 = this.f6086U;
        if (i4 < array2.size) {
            m23774y.m23841b(array2.get(i4));
        }
        m23774y.m23841b(this.f6087V);
        if (t != null) {
            addActor(t);
        }
        return m23774y;
    }

    public Table align(int i) {
        this.f6105n0 = i;
        return this;
    }

    public Table background(@Null Drawable drawable) {
        setBackground(drawable);
        return this;
    }

    public Table center() {
        this.f6105n0 = 1;
        return this;
    }

    public Table clip() {
        setClip(true);
        return this;
    }

    public Table debugActor() {
        super.setDebug(true);
        Debug debug = this.f6106o0;
        Debug debug2 = Debug.actor;
        if (debug != debug2) {
            this.f6106o0 = debug2;
            invalidate();
        }
        return this;
    }

    public Table debugCell() {
        super.setDebug(true);
        Debug debug = this.f6106o0;
        Debug debug2 = Debug.cell;
        if (debug != debug2) {
            this.f6106o0 = debug2;
            invalidate();
        }
        return this;
    }

    public Table debugTable() {
        super.setDebug(true);
        Debug debug = this.f6106o0;
        Debug debug2 = Debug.table;
        if (debug != debug2) {
            this.f6106o0 = debug2;
            invalidate();
        }
        return this;
    }

    public Cell defaults() {
        return this.f6085T;
    }

    public int getAlign() {
        return this.f6105n0;
    }

    @Null
    public Drawable getBackground() {
        return this.f6108q0;
    }

    public Array<Cell> getCells() {
        return this.f6084S;
    }

    public boolean getClip() {
        return this.f6109r0;
    }

    public int getColumns() {
        return this.f6081P;
    }

    public float getPadBottom() {
        return this.f6103l0.get(this);
    }

    public Value getPadBottomValue() {
        return this.f6103l0;
    }

    public float getPadLeft() {
        return this.f6102k0.get(this);
    }

    public Value getPadLeftValue() {
        return this.f6102k0;
    }

    public float getPadRight() {
        return this.f6104m0.get(this);
    }

    public Value getPadRightValue() {
        return this.f6104m0;
    }

    public float getPadTop() {
        return this.f6101j0.get(this);
    }

    public Value getPadTopValue() {
        return this.f6101j0;
    }

    public float getPadX() {
        return this.f6102k0.get(this) + this.f6104m0.get(this);
    }

    public float getPadY() {
        return this.f6101j0.get(this) + this.f6103l0.get(this);
    }

    public int getRows() {
        return this.f6082Q;
    }

    @Null
    public Skin getSkin() {
        return this.f6110s0;
    }

    public Debug getTableDebug() {
        return this.f6106o0;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void invalidate() {
        this.f6088W = true;
        super.invalidate();
    }

    public Table pad(Value value) {
        if (value != null) {
            this.f6101j0 = value;
            this.f6102k0 = value;
            this.f6103l0 = value;
            this.f6104m0 = value;
            this.f6088W = true;
            return this;
        }
        throw new IllegalArgumentException("pad cannot be null.");
    }

    public Table padBottom(Value value) {
        if (value != null) {
            this.f6103l0 = value;
            this.f6088W = true;
            return this;
        }
        throw new IllegalArgumentException("padBottom cannot be null.");
    }

    public Table padLeft(Value value) {
        if (value != null) {
            this.f6102k0 = value;
            this.f6088W = true;
            return this;
        }
        throw new IllegalArgumentException("padLeft cannot be null.");
    }

    public Table padRight(Value value) {
        if (value != null) {
            this.f6104m0 = value;
            this.f6088W = true;
            return this;
        }
        throw new IllegalArgumentException("padRight cannot be null.");
    }

    public Table padTop(Value value) {
        if (value != null) {
            this.f6101j0 = value;
            this.f6088W = true;
            return this;
        }
        throw new IllegalArgumentException("padTop cannot be null.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public boolean removeActor(Actor actor) {
        return removeActor(actor, true);
    }

    public void setBackground(String str) {
        Skin skin = this.f6110s0;
        if (skin != null) {
            setBackground(skin.getDrawable(str));
            return;
        }
        throw new IllegalStateException("Table must have a skin set to use this method.");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void setDebug(boolean z) {
        debug(z ? Debug.all : Debug.none);
    }

    public void setRound(boolean z) {
        this.f6111t0 = z;
    }

    public void setSkin(@Null Skin skin) {
        this.f6110s0 = skin;
    }

    public Table(@Null Skin skin) {
        this.f6084S = new Array<>(4);
        this.f6086U = new Array<>(2);
        this.f6088W = true;
        this.f6101j0 = backgroundTop;
        this.f6102k0 = backgroundLeft;
        this.f6103l0 = backgroundBottom;
        this.f6104m0 = backgroundRight;
        this.f6105n0 = 1;
        this.f6106o0 = Debug.none;
        this.f6111t0 = true;
        this.f6110s0 = skin;
        this.f6085T = m23774y();
        setTransform(false);
        setTouchable(Touchable.childrenOnly);
    }

    public Table background(String str) {
        setBackground(str);
        return this;
    }

    public Table bottom() {
        this.f6105n0 = (this.f6105n0 | 4) & (-3);
        return this;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public void clearChildren(boolean z) {
        Array<Cell> array = this.f6084S;
        Cell[] cellArr = array.items;
        for (int i = array.size - 1; i >= 0; i--) {
            Actor actor = cellArr[i].f5806H;
            if (actor != null) {
                actor.remove();
            }
        }
        Pool<Cell> pool = f6078u0;
        pool.freeAll(this.f6084S);
        this.f6084S.clear();
        this.f6082Q = 0;
        this.f6081P = 0;
        Cell cell = this.f6087V;
        if (cell != null) {
            pool.free(cell);
        }
        this.f6087V = null;
        this.f6083R = false;
        super.clearChildren(z);
    }

    public Table clip(boolean z) {
        setClip(z);
        return this;
    }

    public Cell columnDefaults(int i) {
        Cell cell;
        Array<Cell> array = this.f6086U;
        if (array.size > i) {
            cell = array.get(i);
        } else {
            cell = null;
        }
        if (cell == null) {
            cell = m23774y();
            cell.m23842a();
            Array<Cell> array2 = this.f6086U;
            int i2 = array2.size;
            if (i >= i2) {
                while (i2 < i) {
                    this.f6086U.add(null);
                    i2++;
                }
                this.f6086U.add(cell);
            } else {
                array2.set(i, cell);
            }
        }
        return cell;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public Table debug() {
        super.debug();
        return this;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public Table debugAll() {
        super.debugAll();
        return this;
    }

    @Null
    public <T extends Actor> Cell<T> getCell(T t) {
        if (t != null) {
            Array<Cell> array = this.f6084S;
            Cell<T>[] cellArr = array.items;
            int i = array.size;
            for (int i2 = 0; i2 < i; i2++) {
                Cell<T> cell = cellArr[i2];
                if (cell.f5806H == t) {
                    return cell;
                }
            }
            return null;
        }
        throw new IllegalArgumentException("actor cannot be null.");
    }

    public float getColumnMinWidth(int i) {
        if (this.f6088W) {
            m23778t();
        }
        return this.f6089X[i];
    }

    public float getColumnPrefWidth(int i) {
        if (this.f6088W) {
            m23778t();
        }
        return this.f6091Z[i];
    }

    public float getColumnWidth(int i) {
        float[] fArr = this.f6097f0;
        if (fArr == null) {
            return 0.0f;
        }
        return fArr[i];
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMinHeight() {
        if (this.f6088W) {
            m23778t();
        }
        return this.f6094c0;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getMinWidth() {
        if (this.f6088W) {
            m23778t();
        }
        return this.f6093b0;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        if (this.f6088W) {
            m23778t();
        }
        float f = this.f6096e0;
        Drawable drawable = this.f6108q0;
        if (drawable != null) {
            return Math.max(f, drawable.getMinHeight());
        }
        return f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        if (this.f6088W) {
            m23778t();
        }
        float f = this.f6095d0;
        Drawable drawable = this.f6108q0;
        if (drawable != null) {
            return Math.max(f, drawable.getMinWidth());
        }
        return f;
    }

    public int getRow(float f) {
        int i = this.f6084S.size;
        if (i == 0) {
            return -1;
        }
        float padTop = f + getPadTop();
        Cell[] cellArr = this.f6084S.items;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int i4 = i2 + 1;
            Cell cell = cellArr[i2];
            if (cell.f5808J + cell.f5816R < padTop) {
                return i3;
            }
            if (cell.f5812N) {
                i3++;
            }
            i2 = i4;
        }
        return -1;
    }

    public float getRowHeight(int i) {
        float[] fArr = this.f6098g0;
        if (fArr == null) {
            return 0.0f;
        }
        return fArr[i];
    }

    public float getRowMinHeight(int i) {
        if (this.f6088W) {
            m23778t();
        }
        return this.f6090Y[i];
    }

    public float getRowPrefHeight(int i) {
        if (this.f6088W) {
            m23778t();
        }
        return this.f6092a0[i];
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    @Null
    public Actor hit(float f, float f2, boolean z) {
        if (this.f6109r0 && ((z && getTouchable() == Touchable.disabled) || f < 0.0f || f >= getWidth() || f2 < 0.0f || f2 >= getHeight())) {
            return null;
        }
        return super.hit(f, f2, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03f9  */
    /* JADX WARN: Removed duplicated region for block: B:202:? A[RETURN, SYNTHETIC] */
    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void layout() {
        /*
            Method dump skipped, instructions count: 1025
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.scenes.scene2d.p033ui.Table.layout():void");
    }

    public Table left() {
        this.f6105n0 = (this.f6105n0 | 8) & (-17);
        return this;
    }

    /* renamed from: q */
    public final void m23781q(float f, float f2, float f3, float f4, Color color) {
        DebugRect obtain = DebugRect.f6113b.obtain();
        obtain.f6114a = color;
        obtain.set(f, f2, f3, f4);
        this.f6107p0.add(obtain);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public boolean removeActor(Actor actor, boolean z) {
        if (super.removeActor(actor, z)) {
            Cell cell = getCell(actor);
            if (cell != null) {
                cell.f5806H = null;
                return true;
            }
            return true;
        }
        return false;
    }

    public Table right() {
        this.f6105n0 = (this.f6105n0 | 16) & (-9);
        return this;
    }

    public Cell row() {
        Array<Cell> array = this.f6084S;
        if (array.size > 0) {
            if (!this.f6083R) {
                if (array.peek().f5812N) {
                    return this.f6087V;
                }
                m23776w();
            }
            invalidate();
        }
        this.f6083R = false;
        Cell cell = this.f6087V;
        if (cell != null) {
            f6078u0.free(cell);
        }
        Cell m23774y = m23774y();
        this.f6087V = m23774y;
        m23774y.m23842a();
        return this.f6087V;
    }

    /* renamed from: s */
    public final void m23779s() {
        if (this.f6107p0 == null) {
            this.f6107p0 = new Array<>();
        }
        DebugRect.f6113b.freeAll(this.f6107p0);
        this.f6107p0.clear();
    }

    public void setClip(boolean z) {
        this.f6109r0 = z;
        setTransform(z);
        invalidate();
    }

    public Cell<Stack> stack(@Null Actor... actorArr) {
        Stack stack = new Stack();
        if (actorArr != null) {
            for (Actor actor : actorArr) {
                stack.addActor(actor);
            }
        }
        return add((Table) stack);
    }

    /* renamed from: t */
    public final void m23778t() {
        float f;
        float max;
        float f2;
        float f3;
        this.f6088W = false;
        Array<Cell> array = this.f6084S;
        Cell[] cellArr = array.items;
        int i = array.size;
        if (i > 0 && !cellArr[i - 1].f5812N) {
            m23776w();
            this.f6083R = true;
        }
        int i2 = this.f6081P;
        int i3 = this.f6082Q;
        float[] m23775x = m23775x(this.f6089X, i2);
        this.f6089X = m23775x;
        float[] m23775x2 = m23775x(this.f6090Y, i3);
        this.f6090Y = m23775x2;
        float[] m23775x3 = m23775x(this.f6091Z, i2);
        this.f6091Z = m23775x3;
        float[] m23775x4 = m23775x(this.f6092a0, i3);
        this.f6092a0 = m23775x4;
        this.f6097f0 = m23775x(this.f6097f0, i2);
        this.f6098g0 = m23775x(this.f6098g0, i3);
        float[] m23775x5 = m23775x(this.f6099h0, i2);
        this.f6099h0 = m23775x5;
        float[] m23775x6 = m23775x(this.f6100i0, i3);
        this.f6100i0 = m23775x6;
        int i4 = 0;
        float f4 = 0.0f;
        while (i4 < i) {
            Cell cell = cellArr[i4];
            int i5 = cell.f5813O;
            int i6 = cell.f5814P;
            int i7 = i;
            int intValue = cell.f5803E.intValue();
            int i8 = i4;
            Actor actor = cell.f5806H;
            float[] fArr = m23775x2;
            if (cell.f5802D.intValue() != 0 && m23775x6[i6] == 0.0f) {
                m23775x6[i6] = cell.f5802D.intValue();
            }
            if (intValue == 1 && cell.f5801C.intValue() != 0 && m23775x5[i5] == 0.0f) {
                m23775x5[i5] = cell.f5801C.intValue();
            }
            float f5 = cell.f5831w.get(actor);
            float[] fArr2 = m23775x6;
            if (i5 == 0) {
                max = 0.0f;
            } else {
                max = Math.max(0.0f, cell.f5827s.get(actor) - f4);
            }
            cell.f5817S = f5 + max;
            float f6 = cell.f5830v.get(actor);
            cell.f5816R = f6;
            int i9 = cell.f5815Q;
            if (i9 != -1) {
                cell.f5816R = f6 + Math.max(0.0f, cell.f5826r.get(actor) - cellArr[i9].f5828t.get(actor));
            }
            float f7 = cell.f5829u.get(actor);
            float f8 = cell.f5833y.get(actor);
            if (i5 + intValue == i2) {
                f2 = 0.0f;
            } else {
                f2 = f7;
            }
            cell.f5819U = f8 + f2;
            float f9 = cell.f5832x.get(actor);
            if (i6 == i3 - 1) {
                f3 = 0.0f;
            } else {
                f3 = cell.f5828t.get(actor);
            }
            cell.f5818T = f9 + f3;
            float f10 = cell.f5822d.get(actor);
            float f11 = cell.f5823k.get(actor);
            float f12 = cell.f5820a.get(actor);
            int i10 = i3;
            float f13 = cell.f5821b.get(actor);
            int i11 = i2;
            float f14 = cell.f5824p.get(actor);
            float[] fArr3 = m23775x5;
            float f15 = cell.f5825q.get(actor);
            if (f10 < f12) {
                f10 = f12;
            }
            if (f11 < f13) {
                f11 = f13;
            }
            if (f14 <= 0.0f || f10 <= f14) {
                f14 = f10;
            }
            if (f15 <= 0.0f || f11 <= f15) {
                f15 = f11;
            }
            if (this.f6111t0) {
                float ceil = (float) Math.ceil(f12);
                f13 = (float) Math.ceil(f13);
                f14 = (float) Math.ceil(f14);
                f15 = (float) Math.ceil(f15);
                f12 = ceil;
            }
            if (intValue == 1) {
                float f16 = cell.f5817S + cell.f5819U;
                m23775x3[i5] = Math.max(m23775x3[i5], f14 + f16);
                m23775x[i5] = Math.max(m23775x[i5], f12 + f16);
            }
            float f17 = cell.f5816R + cell.f5818T;
            m23775x4[i6] = Math.max(m23775x4[i6], f15 + f17);
            fArr[i6] = Math.max(fArr[i6], f13 + f17);
            i4 = i8 + 1;
            i = i7;
            m23775x2 = fArr;
            m23775x6 = fArr2;
            f4 = f7;
            i3 = i10;
            i2 = i11;
            m23775x5 = fArr3;
        }
        int i12 = i2;
        int i13 = i3;
        float[] fArr4 = m23775x2;
        float[] fArr5 = m23775x5;
        int i14 = i;
        float f18 = 0.0f;
        float f19 = 0.0f;
        float f20 = 0.0f;
        float f21 = 0.0f;
        for (int i15 = 0; i15 < i14; i15++) {
            Cell cell2 = cellArr[i15];
            int i16 = cell2.f5813O;
            int intValue2 = cell2.f5801C.intValue();
            if (intValue2 != 0) {
                int intValue3 = cell2.f5803E.intValue() + i16;
                int i17 = i16;
                while (true) {
                    if (i17 < intValue3) {
                        if (fArr5[i17] != 0.0f) {
                            break;
                        }
                        i17++;
                    } else {
                        int i18 = i16;
                        while (i18 < intValue3) {
                            fArr5[i18] = intValue2;
                            i18++;
                            intValue3 = intValue3;
                        }
                    }
                }
            }
            Boolean bool = cell2.f5804F;
            Boolean bool2 = Boolean.TRUE;
            if (bool == bool2 && cell2.f5803E.intValue() == 1) {
                float f22 = cell2.f5817S + cell2.f5819U;
                f20 = Math.max(f20, m23775x[i16] - f22);
                f18 = Math.max(f18, m23775x3[i16] - f22);
            }
            if (cell2.f5805G == bool2) {
                float f23 = cell2.f5816R + cell2.f5818T;
                f21 = Math.max(f21, fArr4[cell2.f5814P] - f23);
                f19 = Math.max(f19, m23775x4[cell2.f5814P] - f23);
            }
        }
        float f24 = 0.0f;
        if (f18 > 0.0f || f19 > 0.0f) {
            int i19 = 0;
            while (i19 < i14) {
                Cell cell3 = cellArr[i19];
                if (f18 > f24 && cell3.f5804F == Boolean.TRUE && cell3.f5803E.intValue() == 1) {
                    float f25 = cell3.f5817S + cell3.f5819U;
                    int i20 = cell3.f5813O;
                    m23775x[i20] = f20 + f25;
                    m23775x3[i20] = f25 + f18;
                }
                if (f19 > 0.0f && cell3.f5805G == Boolean.TRUE) {
                    float f26 = cell3.f5816R + cell3.f5818T;
                    int i21 = cell3.f5814P;
                    fArr4[i21] = f21 + f26;
                    m23775x4[i21] = f26 + f19;
                }
                i19++;
                f24 = 0.0f;
            }
        }
        for (int i22 = 0; i22 < i14; i22++) {
            Cell cell4 = cellArr[i22];
            int intValue4 = cell4.f5803E.intValue();
            if (intValue4 != 1) {
                int i23 = cell4.f5813O;
                Actor actor2 = cell4.f5806H;
                float f27 = cell4.f5820a.get(actor2);
                float f28 = cell4.f5822d.get(actor2);
                float f29 = cell4.f5824p.get(actor2);
                if (f28 < f27) {
                    f28 = f27;
                }
                if (f29 <= 0.0f || f28 <= f29) {
                    f29 = f28;
                }
                if (this.f6111t0) {
                    f27 = (float) Math.ceil(f27);
                    f29 = (float) Math.ceil(f29);
                }
                float f30 = -(cell4.f5817S + cell4.f5819U);
                int i24 = i23 + intValue4;
                float f31 = f30;
                float f32 = 0.0f;
                for (int i25 = i23; i25 < i24; i25++) {
                    f30 += m23775x[i25];
                    f31 += m23775x3[i25];
                    f32 += fArr5[i25];
                }
                float max2 = Math.max(0.0f, f27 - f30);
                float max3 = Math.max(0.0f, f29 - f31);
                while (i23 < i24) {
                    if (f32 == 0.0f) {
                        f = 1.0f / intValue4;
                    } else {
                        f = fArr5[i23] / f32;
                    }
                    m23775x[i23] = m23775x[i23] + (max2 * f);
                    m23775x3[i23] = m23775x3[i23] + (f * max3);
                    i23++;
                }
            }
        }
        float f33 = this.f6102k0.get(this) + this.f6104m0.get(this);
        float f34 = this.f6101j0.get(this) + this.f6103l0.get(this);
        this.f6093b0 = f33;
        this.f6095d0 = f33;
        for (int i26 = 0; i26 < i12; i26++) {
            this.f6093b0 += m23775x[i26];
            this.f6095d0 += m23775x3[i26];
        }
        this.f6094c0 = f34;
        this.f6096e0 = f34;
        for (int i27 = 0; i27 < i13; i27++) {
            float f35 = this.f6094c0;
            float f36 = fArr4[i27];
            this.f6094c0 = f35 + f36;
            this.f6096e0 += Math.max(f36, m23775x4[i27]);
        }
        this.f6095d0 = Math.max(this.f6093b0, this.f6095d0);
        this.f6096e0 = Math.max(this.f6094c0, this.f6096e0);
    }

    public Table top() {
        this.f6105n0 = (this.f6105n0 | 2) & (-5);
        return this;
    }

    /* renamed from: u */
    public void mo23706u(Batch batch, float f, float f2, float f3) {
        if (this.f6108q0 == null) {
            return;
        }
        Color color = getColor();
        batch.setColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a * f);
        this.f6108q0.draw(batch, f2, f3, getWidth(), getHeight());
    }

    /* renamed from: v */
    public final void m23777v(ShapeRenderer shapeRenderer) {
        float f;
        if (this.f6107p0 != null && getDebug()) {
            shapeRenderer.set(ShapeRenderer.ShapeType.Line);
            if (getStage() != null) {
                shapeRenderer.setColor(getStage().getDebugColor());
            }
            float f2 = 0.0f;
            if (!isTransform()) {
                f2 = getX();
                f = getY();
            } else {
                f = 0.0f;
            }
            int i = this.f6107p0.size;
            for (int i2 = 0; i2 < i; i2++) {
                DebugRect debugRect = this.f6107p0.get(i2);
                shapeRenderer.setColor(debugRect.f6114a);
                shapeRenderer.rect(debugRect.f5523x + f2, debugRect.f5524y + f, debugRect.width, debugRect.height);
            }
        }
    }

    /* renamed from: w */
    public final void m23776w() {
        Array<Cell> array = this.f6084S;
        Cell[] cellArr = array.items;
        int i = 0;
        for (int i2 = array.size - 1; i2 >= 0; i2--) {
            Cell cell = cellArr[i2];
            if (cell.f5812N) {
                break;
            }
            i += cell.f5803E.intValue();
        }
        this.f6081P = Math.max(this.f6081P, i);
        this.f6082Q++;
        this.f6084S.peek().f5812N = true;
    }

    /* renamed from: x */
    public final float[] m23775x(float[] fArr, int i) {
        if (fArr != null && fArr.length >= i) {
            Arrays.fill(fArr, 0, i, 0.0f);
            return fArr;
        }
        return new float[i];
    }

    /* renamed from: y */
    public final Cell m23774y() {
        Cell obtain = f6078u0.obtain();
        obtain.setTable(this);
        return obtain;
    }

    public Table debug(Debug debug) {
        Debug debug2 = Debug.none;
        super.setDebug(debug != debug2);
        if (this.f6106o0 != debug) {
            this.f6106o0 = debug;
            if (debug == debug2) {
                m23779s();
            } else {
                invalidate();
            }
        }
        return this;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        validate();
        if (isTransform()) {
            m23865g(batch, m23863j());
            mo23706u(batch, f, 0.0f, 0.0f);
            if (this.f6109r0) {
                batch.flush();
                float f2 = this.f6102k0.get(this);
                float f3 = this.f6103l0.get(this);
                if (clipBegin(f2, f3, (getWidth() - f2) - this.f6104m0.get(this), (getHeight() - f3) - this.f6101j0.get(this))) {
                    m23862k(batch, f);
                    batch.flush();
                    clipEnd();
                }
            } else {
                m23862k(batch, f);
            }
            m23860m(batch);
            return;
        }
        mo23706u(batch, f, getX(), getY());
        super.draw(batch, f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void drawDebug(ShapeRenderer shapeRenderer) {
        float f;
        if (isTransform()) {
            m23864h(shapeRenderer, m23863j());
            m23777v(shapeRenderer);
            if (this.f6109r0) {
                shapeRenderer.flush();
                float width = getWidth();
                float height = getHeight();
                float f2 = 0.0f;
                if (this.f6108q0 != null) {
                    f2 = this.f6102k0.get(this);
                    f = this.f6103l0.get(this);
                    width -= this.f6104m0.get(this) + f2;
                    height -= this.f6101j0.get(this) + f;
                } else {
                    f = 0.0f;
                }
                if (clipBegin(f2, f, width, height)) {
                    m23861l(shapeRenderer);
                    clipEnd();
                }
            } else {
                m23861l(shapeRenderer);
            }
            m23859n(shapeRenderer);
            return;
        }
        m23777v(shapeRenderer);
        super.drawDebug(shapeRenderer);
    }

    /* renamed from: r */
    public final void m23780r(float f, float f2, float f3, float f4) {
        m23779s();
        Debug debug = this.f6106o0;
        if (debug == Debug.table || debug == Debug.all) {
            m23781q(0.0f, 0.0f, getWidth(), getHeight(), debugTableColor);
            m23781q(f, getHeight() - f2, f3, -f4, debugTableColor);
        }
        int i = this.f6084S.size;
        float f5 = f;
        for (int i2 = 0; i2 < i; i2++) {
            Cell cell = this.f6084S.get(i2);
            Debug debug2 = this.f6106o0;
            if (debug2 == Debug.actor || debug2 == Debug.all) {
                m23781q(cell.f5807I, cell.f5808J, cell.f5809K, cell.f5810L, debugActorColor);
            }
            float f6 = 0.0f;
            int i3 = cell.f5813O;
            int intValue = cell.f5803E.intValue() + i3;
            while (i3 < intValue) {
                f6 += this.f6097f0[i3];
                i3++;
            }
            float f7 = cell.f5817S;
            float f8 = f6 - (cell.f5819U + f7);
            float f9 = f5 + f7;
            Debug debug3 = this.f6106o0;
            if (debug3 == Debug.cell || debug3 == Debug.all) {
                float f10 = this.f6098g0[cell.f5814P];
                float f11 = cell.f5816R;
                float f12 = (f10 - f11) - cell.f5818T;
                m23781q(f9, getHeight() - (f11 + f2), f8, -f12, debugCellColor);
            }
            if (cell.f5812N) {
                f2 += this.f6098g0[cell.f5814P];
                f5 = f;
            } else {
                f5 = f9 + f8 + cell.f5819U;
            }
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public Actor removeActorAt(int i, boolean z) {
        Actor removeActorAt = super.removeActorAt(i, z);
        Cell cell = getCell(removeActorAt);
        if (cell != null) {
            cell.f5806H = null;
        }
        return removeActorAt;
    }

    public void reset() {
        clearChildren();
        this.f6101j0 = backgroundTop;
        this.f6102k0 = backgroundLeft;
        this.f6103l0 = backgroundBottom;
        this.f6104m0 = backgroundRight;
        this.f6105n0 = 1;
        debug(Debug.none);
        this.f6085T.reset();
        int i = this.f6086U.size;
        for (int i2 = 0; i2 < i; i2++) {
            Cell cell = this.f6086U.get(i2);
            if (cell != null) {
                f6078u0.free(cell);
            }
        }
        this.f6086U.clear();
    }

    public Table padBottom(float f) {
        this.f6103l0 = Value.Fixed.valueOf(f);
        this.f6088W = true;
        return this;
    }

    public Table padLeft(float f) {
        this.f6102k0 = Value.Fixed.valueOf(f);
        this.f6088W = true;
        return this;
    }

    public Table padRight(float f) {
        this.f6104m0 = Value.Fixed.valueOf(f);
        this.f6088W = true;
        return this;
    }

    public Table padTop(float f) {
        this.f6101j0 = Value.Fixed.valueOf(f);
        this.f6088W = true;
        return this;
    }

    public void setBackground(@Null Drawable drawable) {
        if (this.f6108q0 == drawable) {
            return;
        }
        float padTop = getPadTop();
        float padLeft = getPadLeft();
        float padBottom = getPadBottom();
        float padRight = getPadRight();
        this.f6108q0 = drawable;
        float padTop2 = getPadTop();
        float padLeft2 = getPadLeft();
        float padBottom2 = getPadBottom();
        float padRight2 = getPadRight();
        if (padTop + padBottom != padTop2 + padBottom2 || padLeft + padRight != padLeft2 + padRight2) {
            invalidateHierarchy();
        } else if (padTop == padTop2 && padLeft == padLeft2 && padBottom == padBottom2 && padRight == padRight2) {
        } else {
            invalidate();
        }
    }

    public Table pad(Value value, Value value2, Value value3, Value value4) {
        if (value != null) {
            if (value2 != null) {
                if (value3 != null) {
                    if (value4 != null) {
                        this.f6101j0 = value;
                        this.f6102k0 = value2;
                        this.f6103l0 = value3;
                        this.f6104m0 = value4;
                        this.f6088W = true;
                        return this;
                    }
                    throw new IllegalArgumentException("right cannot be null.");
                }
                throw new IllegalArgumentException("bottom cannot be null.");
            }
            throw new IllegalArgumentException("left cannot be null.");
        }
        throw new IllegalArgumentException("top cannot be null.");
    }

    public Table pad(float f) {
        pad(Value.Fixed.valueOf(f));
        return this;
    }

    public Table pad(float f, float f2, float f3, float f4) {
        this.f6101j0 = Value.Fixed.valueOf(f);
        this.f6102k0 = Value.Fixed.valueOf(f2);
        this.f6103l0 = Value.Fixed.valueOf(f3);
        this.f6104m0 = Value.Fixed.valueOf(f4);
        this.f6088W = true;
        return this;
    }

    public Table add(Actor... actorArr) {
        for (Actor actor : actorArr) {
            add((Table) actor);
        }
        return this;
    }

    public Cell<Label> add(@Null CharSequence charSequence) {
        if (this.f6110s0 != null) {
            return add((Table) new Label(charSequence, this.f6110s0));
        }
        throw new IllegalStateException("Table must have a skin set to use this method.");
    }

    public Cell<Label> add(@Null CharSequence charSequence, String str) {
        if (this.f6110s0 != null) {
            return add((Table) new Label(charSequence, (Label.LabelStyle) this.f6110s0.get(str, Label.LabelStyle.class)));
        }
        throw new IllegalStateException("Table must have a skin set to use this method.");
    }

    public Cell<Label> add(@Null CharSequence charSequence, String str, @Null Color color) {
        if (this.f6110s0 != null) {
            return add((Table) new Label(charSequence, new Label.LabelStyle(this.f6110s0.getFont(str), color)));
        }
        throw new IllegalStateException("Table must have a skin set to use this method.");
    }

    public Cell<Label> add(@Null CharSequence charSequence, String str, String str2) {
        if (this.f6110s0 != null) {
            return add((Table) new Label(charSequence, new Label.LabelStyle(this.f6110s0.getFont(str), this.f6110s0.getColor(str2))));
        }
        throw new IllegalStateException("Table must have a skin set to use this method.");
    }

    public Cell add() {
        return add((Table) null);
    }
}
