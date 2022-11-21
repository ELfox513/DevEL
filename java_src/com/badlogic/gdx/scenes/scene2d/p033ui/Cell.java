package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.p033ui.Value;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Pool;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Cell */
/* loaded from: classes.dex */
public class Cell<T extends Actor> implements Pool.Poolable {

    /* renamed from: V */
    public static final Float f5788V = Float.valueOf(0.0f);

    /* renamed from: W */
    public static final Float f5789W = Float.valueOf(1.0f);

    /* renamed from: X */
    public static final Integer f5790X = 0;

    /* renamed from: Y */
    public static final Integer f5791Y = 1;

    /* renamed from: Z */
    public static final Integer f5792Z = 1;

    /* renamed from: a0 */
    public static final Integer f5793a0 = 2;

    /* renamed from: b0 */
    public static final Integer f5794b0 = 4;

    /* renamed from: c0 */
    public static final Integer f5795c0 = 8;

    /* renamed from: d0 */
    public static final Integer f5796d0 = 16;

    /* renamed from: e0 */
    public static Files f5797e0;

    /* renamed from: f0 */
    public static Cell f5798f0;

    /* renamed from: A */
    public Float f5799A;

    /* renamed from: B */
    public Integer f5800B;

    /* renamed from: C */
    public Integer f5801C;

    /* renamed from: D */
    public Integer f5802D;

    /* renamed from: E */
    public Integer f5803E;

    /* renamed from: F */
    public Boolean f5804F;

    /* renamed from: G */
    public Boolean f5805G;
    @Null

    /* renamed from: H */
    public Actor f5806H;

    /* renamed from: I */
    public float f5807I;

    /* renamed from: J */
    public float f5808J;

    /* renamed from: K */
    public float f5809K;

    /* renamed from: L */
    public float f5810L;

    /* renamed from: M */
    public Table f5811M;

    /* renamed from: N */
    public boolean f5812N;

    /* renamed from: O */
    public int f5813O;

    /* renamed from: P */
    public int f5814P;

    /* renamed from: Q */
    public int f5815Q = -1;

    /* renamed from: R */
    public float f5816R;

    /* renamed from: S */
    public float f5817S;

    /* renamed from: T */
    public float f5818T;

    /* renamed from: U */
    public float f5819U;

    /* renamed from: a */
    public Value f5820a;

    /* renamed from: b */
    public Value f5821b;

    /* renamed from: d */
    public Value f5822d;

    /* renamed from: k */
    public Value f5823k;

    /* renamed from: p */
    public Value f5824p;

    /* renamed from: q */
    public Value f5825q;

    /* renamed from: r */
    public Value f5826r;

    /* renamed from: s */
    public Value f5827s;

    /* renamed from: t */
    public Value f5828t;

    /* renamed from: u */
    public Value f5829u;

    /* renamed from: v */
    public Value f5830v;

    /* renamed from: w */
    public Value f5831w;

    /* renamed from: x */
    public Value f5832x;

    /* renamed from: y */
    public Value f5833y;

    /* renamed from: z */
    public Float f5834z;

    /* renamed from: a */
    public void m23842a() {
        this.f5820a = null;
        this.f5821b = null;
        this.f5822d = null;
        this.f5823k = null;
        this.f5824p = null;
        this.f5825q = null;
        this.f5826r = null;
        this.f5827s = null;
        this.f5828t = null;
        this.f5829u = null;
        this.f5830v = null;
        this.f5831w = null;
        this.f5832x = null;
        this.f5833y = null;
        this.f5834z = null;
        this.f5799A = null;
        this.f5800B = null;
        this.f5801C = null;
        this.f5802D = null;
        this.f5803E = null;
        this.f5804F = null;
        this.f5805G = null;
    }

    public Cell<T> align(int i) {
        this.f5800B = Integer.valueOf(i);
        return this;
    }

    public Cell<T> center() {
        this.f5800B = f5792Z;
        return this;
    }

    public Cell<T> clearActor() {
        setActor(null);
        return this;
    }

    public Cell<T> colspan(int i) {
        this.f5803E = Integer.valueOf(i);
        return this;
    }

    public Cell<T> expand() {
        Integer num = f5791Y;
        this.f5801C = num;
        this.f5802D = num;
        return this;
    }

    public Cell<T> expandX() {
        this.f5801C = f5791Y;
        return this;
    }

    public Cell<T> expandY() {
        this.f5802D = f5791Y;
        return this;
    }

    public Cell<T> fill() {
        Float f = f5789W;
        this.f5834z = f;
        this.f5799A = f;
        return this;
    }

    public Cell<T> fillX() {
        this.f5834z = f5789W;
        return this;
    }

    public Cell<T> fillY() {
        this.f5799A = f5789W;
        return this;
    }

    @Null
    public T getActor() {
        return (T) this.f5806H;
    }

    public float getActorHeight() {
        return this.f5810L;
    }

    public float getActorWidth() {
        return this.f5809K;
    }

    public float getActorX() {
        return this.f5807I;
    }

    public float getActorY() {
        return this.f5808J;
    }

    public int getAlign() {
        return this.f5800B.intValue();
    }

    public int getColspan() {
        return this.f5803E.intValue();
    }

    public int getColumn() {
        return this.f5813O;
    }

    public float getComputedPadBottom() {
        return this.f5818T;
    }

    public float getComputedPadLeft() {
        return this.f5817S;
    }

    public float getComputedPadRight() {
        return this.f5819U;
    }

    public float getComputedPadTop() {
        return this.f5816R;
    }

    public int getExpandX() {
        return this.f5801C.intValue();
    }

    public int getExpandY() {
        return this.f5802D.intValue();
    }

    public float getFillX() {
        return this.f5834z.floatValue();
    }

    public float getFillY() {
        return this.f5799A.floatValue();
    }

    public float getMaxHeight() {
        return this.f5825q.get(this.f5806H);
    }

    @Null
    public Value getMaxHeightValue() {
        return this.f5825q;
    }

    public float getMaxWidth() {
        return this.f5824p.get(this.f5806H);
    }

    @Null
    public Value getMaxWidthValue() {
        return this.f5824p;
    }

    public float getMinHeight() {
        return this.f5821b.get(this.f5806H);
    }

    @Null
    public Value getMinHeightValue() {
        return this.f5821b;
    }

    public float getMinWidth() {
        return this.f5820a.get(this.f5806H);
    }

    @Null
    public Value getMinWidthValue() {
        return this.f5820a;
    }

    public float getPadBottom() {
        return this.f5832x.get(this.f5806H);
    }

    @Null
    public Value getPadBottomValue() {
        return this.f5832x;
    }

    public float getPadLeft() {
        return this.f5831w.get(this.f5806H);
    }

    @Null
    public Value getPadLeftValue() {
        return this.f5831w;
    }

    public float getPadRight() {
        return this.f5833y.get(this.f5806H);
    }

    @Null
    public Value getPadRightValue() {
        return this.f5833y;
    }

    public float getPadTop() {
        return this.f5830v.get(this.f5806H);
    }

    @Null
    public Value getPadTopValue() {
        return this.f5830v;
    }

    public float getPadX() {
        return this.f5831w.get(this.f5806H) + this.f5833y.get(this.f5806H);
    }

    public float getPadY() {
        return this.f5830v.get(this.f5806H) + this.f5832x.get(this.f5806H);
    }

    public float getPrefHeight() {
        return this.f5823k.get(this.f5806H);
    }

    @Null
    public Value getPrefHeightValue() {
        return this.f5823k;
    }

    public float getPrefWidth() {
        return this.f5822d.get(this.f5806H);
    }

    @Null
    public Value getPrefWidthValue() {
        return this.f5822d;
    }

    public int getRow() {
        return this.f5814P;
    }

    public float getSpaceBottom() {
        return this.f5828t.get(this.f5806H);
    }

    @Null
    public Value getSpaceBottomValue() {
        return this.f5828t;
    }

    public float getSpaceLeft() {
        return this.f5827s.get(this.f5806H);
    }

    @Null
    public Value getSpaceLeftValue() {
        return this.f5827s;
    }

    public float getSpaceRight() {
        return this.f5829u.get(this.f5806H);
    }

    @Null
    public Value getSpaceRightValue() {
        return this.f5829u;
    }

    public float getSpaceTop() {
        return this.f5826r.get(this.f5806H);
    }

    @Null
    public Value getSpaceTopValue() {
        return this.f5826r;
    }

    public Table getTable() {
        return this.f5811M;
    }

    public boolean getUniformX() {
        return this.f5804F.booleanValue();
    }

    public boolean getUniformY() {
        return this.f5805G.booleanValue();
    }

    public boolean hasActor() {
        return this.f5806H != null;
    }

    public Cell<T> height(Value value) {
        if (value != null) {
            this.f5821b = value;
            this.f5823k = value;
            this.f5825q = value;
            return this;
        }
        throw new IllegalArgumentException("height cannot be null.");
    }

    public boolean isEndRow() {
        return this.f5812N;
    }

    public Cell<T> maxHeight(Value value) {
        if (value != null) {
            this.f5825q = value;
            return this;
        }
        throw new IllegalArgumentException("maxHeight cannot be null.");
    }

    public Cell<T> maxSize(Value value) {
        if (value != null) {
            this.f5824p = value;
            this.f5825q = value;
            return this;
        }
        throw new IllegalArgumentException("size cannot be null.");
    }

    public Cell<T> maxWidth(Value value) {
        if (value != null) {
            this.f5824p = value;
            return this;
        }
        throw new IllegalArgumentException("maxWidth cannot be null.");
    }

    public Cell<T> minHeight(Value value) {
        if (value != null) {
            this.f5821b = value;
            return this;
        }
        throw new IllegalArgumentException("minHeight cannot be null.");
    }

    public Cell<T> minSize(Value value) {
        if (value != null) {
            this.f5820a = value;
            this.f5821b = value;
            return this;
        }
        throw new IllegalArgumentException("size cannot be null.");
    }

    public Cell<T> minWidth(Value value) {
        if (value != null) {
            this.f5820a = value;
            return this;
        }
        throw new IllegalArgumentException("minWidth cannot be null.");
    }

    public Cell<T> pad(Value value) {
        if (value != null) {
            this.f5830v = value;
            this.f5831w = value;
            this.f5832x = value;
            this.f5833y = value;
            return this;
        }
        throw new IllegalArgumentException("pad cannot be null.");
    }

    public Cell<T> padBottom(Value value) {
        if (value != null) {
            this.f5832x = value;
            return this;
        }
        throw new IllegalArgumentException("padBottom cannot be null.");
    }

    public Cell<T> padLeft(Value value) {
        if (value != null) {
            this.f5831w = value;
            return this;
        }
        throw new IllegalArgumentException("padLeft cannot be null.");
    }

    public Cell<T> padRight(Value value) {
        if (value != null) {
            this.f5833y = value;
            return this;
        }
        throw new IllegalArgumentException("padRight cannot be null.");
    }

    public Cell<T> padTop(Value value) {
        if (value != null) {
            this.f5830v = value;
            return this;
        }
        throw new IllegalArgumentException("padTop cannot be null.");
    }

    public Cell<T> prefHeight(Value value) {
        if (value != null) {
            this.f5823k = value;
            return this;
        }
        throw new IllegalArgumentException("prefHeight cannot be null.");
    }

    public Cell<T> prefSize(Value value) {
        if (value != null) {
            this.f5822d = value;
            this.f5823k = value;
            return this;
        }
        throw new IllegalArgumentException("size cannot be null.");
    }

    public Cell<T> prefWidth(Value value) {
        if (value != null) {
            this.f5822d = value;
            return this;
        }
        throw new IllegalArgumentException("prefWidth cannot be null.");
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f5806H = null;
        this.f5811M = null;
        this.f5812N = false;
        this.f5815Q = -1;
        m23840c(defaults());
    }

    public void row() {
        this.f5811M.row();
    }

    public void setActorHeight(float f) {
        this.f5810L = f;
    }

    public void setActorWidth(float f) {
        this.f5809K = f;
    }

    public void setActorX(float f) {
        this.f5807I = f;
    }

    public void setActorY(float f) {
        this.f5808J = f;
    }

    public void setTable(Table table) {
        this.f5811M = table;
    }

    public Cell<T> size(Value value) {
        if (value != null) {
            this.f5820a = value;
            this.f5821b = value;
            this.f5822d = value;
            this.f5823k = value;
            this.f5824p = value;
            this.f5825q = value;
            return this;
        }
        throw new IllegalArgumentException("size cannot be null.");
    }

    public Cell<T> space(Value value) {
        if (value != null) {
            this.f5826r = value;
            this.f5827s = value;
            this.f5828t = value;
            this.f5829u = value;
            return this;
        }
        throw new IllegalArgumentException("space cannot be null.");
    }

    public Cell<T> spaceBottom(Value value) {
        if (value != null) {
            this.f5828t = value;
            return this;
        }
        throw new IllegalArgumentException("spaceBottom cannot be null.");
    }

    public Cell<T> spaceLeft(Value value) {
        if (value != null) {
            this.f5827s = value;
            return this;
        }
        throw new IllegalArgumentException("spaceLeft cannot be null.");
    }

    public Cell<T> spaceRight(Value value) {
        if (value != null) {
            this.f5829u = value;
            return this;
        }
        throw new IllegalArgumentException("spaceRight cannot be null.");
    }

    public Cell<T> spaceTop(Value value) {
        if (value != null) {
            this.f5826r = value;
            return this;
        }
        throw new IllegalArgumentException("spaceTop cannot be null.");
    }

    public String toString() {
        Actor actor = this.f5806H;
        return actor != null ? actor.toString() : super.toString();
    }

    public Cell<T> uniform() {
        Boolean bool = Boolean.TRUE;
        this.f5804F = bool;
        this.f5805G = bool;
        return this;
    }

    public Cell<T> uniformX() {
        this.f5804F = Boolean.TRUE;
        return this;
    }

    public Cell<T> uniformY() {
        this.f5805G = Boolean.TRUE;
        return this;
    }

    public Cell<T> width(Value value) {
        if (value != null) {
            this.f5820a = value;
            this.f5822d = value;
            this.f5824p = value;
            return this;
        }
        throw new IllegalArgumentException("width cannot be null.");
    }

    public static Cell defaults() {
        Files files = f5797e0;
        if (files == null || files != Gdx.files) {
            f5797e0 = Gdx.files;
            Cell cell = new Cell();
            f5798f0 = cell;
            cell.f5820a = Value.minWidth;
            f5798f0.f5821b = Value.minHeight;
            f5798f0.f5822d = Value.prefWidth;
            f5798f0.f5823k = Value.prefHeight;
            f5798f0.f5824p = Value.maxWidth;
            f5798f0.f5825q = Value.maxHeight;
            Cell cell2 = f5798f0;
            Value.Fixed fixed = Value.zero;
            cell2.f5826r = fixed;
            Cell cell3 = f5798f0;
            cell3.f5827s = fixed;
            cell3.f5828t = fixed;
            cell3.f5829u = fixed;
            cell3.f5830v = fixed;
            cell3.f5831w = fixed;
            cell3.f5832x = fixed;
            cell3.f5833y = fixed;
            Float f = f5788V;
            cell3.f5834z = f;
            cell3.f5799A = f;
            cell3.f5800B = f5792Z;
            Integer num = f5790X;
            cell3.f5801C = num;
            cell3.f5802D = num;
            cell3.f5803E = f5791Y;
            cell3.f5804F = null;
            cell3.f5805G = null;
        }
        return f5798f0;
    }

    /* renamed from: b */
    public void m23841b(@Null Cell cell) {
        if (cell == null) {
            return;
        }
        Value value = cell.f5820a;
        if (value != null) {
            this.f5820a = value;
        }
        Value value2 = cell.f5821b;
        if (value2 != null) {
            this.f5821b = value2;
        }
        Value value3 = cell.f5822d;
        if (value3 != null) {
            this.f5822d = value3;
        }
        Value value4 = cell.f5823k;
        if (value4 != null) {
            this.f5823k = value4;
        }
        Value value5 = cell.f5824p;
        if (value5 != null) {
            this.f5824p = value5;
        }
        Value value6 = cell.f5825q;
        if (value6 != null) {
            this.f5825q = value6;
        }
        Value value7 = cell.f5826r;
        if (value7 != null) {
            this.f5826r = value7;
        }
        Value value8 = cell.f5827s;
        if (value8 != null) {
            this.f5827s = value8;
        }
        Value value9 = cell.f5828t;
        if (value9 != null) {
            this.f5828t = value9;
        }
        Value value10 = cell.f5829u;
        if (value10 != null) {
            this.f5829u = value10;
        }
        Value value11 = cell.f5830v;
        if (value11 != null) {
            this.f5830v = value11;
        }
        Value value12 = cell.f5831w;
        if (value12 != null) {
            this.f5831w = value12;
        }
        Value value13 = cell.f5832x;
        if (value13 != null) {
            this.f5832x = value13;
        }
        Value value14 = cell.f5833y;
        if (value14 != null) {
            this.f5833y = value14;
        }
        Float f = cell.f5834z;
        if (f != null) {
            this.f5834z = f;
        }
        Float f2 = cell.f5799A;
        if (f2 != null) {
            this.f5799A = f2;
        }
        Integer num = cell.f5800B;
        if (num != null) {
            this.f5800B = num;
        }
        Integer num2 = cell.f5801C;
        if (num2 != null) {
            this.f5801C = num2;
        }
        Integer num3 = cell.f5802D;
        if (num3 != null) {
            this.f5802D = num3;
        }
        Integer num4 = cell.f5803E;
        if (num4 != null) {
            this.f5803E = num4;
        }
        Boolean bool = cell.f5804F;
        if (bool != null) {
            this.f5804F = bool;
        }
        Boolean bool2 = cell.f5805G;
        if (bool2 != null) {
            this.f5805G = bool2;
        }
    }

    public Cell<T> bottom() {
        Integer num = this.f5800B;
        if (num == null) {
            this.f5800B = f5794b0;
        } else {
            this.f5800B = Integer.valueOf((num.intValue() | 4) & (-3));
        }
        return this;
    }

    /* renamed from: c */
    public void m23840c(Cell cell) {
        this.f5820a = cell.f5820a;
        this.f5821b = cell.f5821b;
        this.f5822d = cell.f5822d;
        this.f5823k = cell.f5823k;
        this.f5824p = cell.f5824p;
        this.f5825q = cell.f5825q;
        this.f5826r = cell.f5826r;
        this.f5827s = cell.f5827s;
        this.f5828t = cell.f5828t;
        this.f5829u = cell.f5829u;
        this.f5830v = cell.f5830v;
        this.f5831w = cell.f5831w;
        this.f5832x = cell.f5832x;
        this.f5833y = cell.f5833y;
        this.f5834z = cell.f5834z;
        this.f5799A = cell.f5799A;
        this.f5800B = cell.f5800B;
        this.f5801C = cell.f5801C;
        this.f5802D = cell.f5802D;
        this.f5803E = cell.f5803E;
        this.f5804F = cell.f5804F;
        this.f5805G = cell.f5805G;
    }

    public Cell<T> grow() {
        Integer num = f5791Y;
        this.f5801C = num;
        this.f5802D = num;
        Float f = f5789W;
        this.f5834z = f;
        this.f5799A = f;
        return this;
    }

    public Cell<T> growX() {
        this.f5801C = f5791Y;
        this.f5834z = f5789W;
        return this;
    }

    public Cell<T> growY() {
        this.f5802D = f5791Y;
        this.f5799A = f5789W;
        return this;
    }

    public Cell<T> left() {
        Integer num = this.f5800B;
        if (num == null) {
            this.f5800B = f5795c0;
        } else {
            this.f5800B = Integer.valueOf((num.intValue() | 8) & (-17));
        }
        return this;
    }

    public Cell<T> right() {
        Integer num = this.f5800B;
        if (num == null) {
            this.f5800B = f5796d0;
        } else {
            this.f5800B = Integer.valueOf((num.intValue() | 16) & (-9));
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <A extends Actor> Cell<A> setActor(@Null A a) {
        Actor actor = this.f5806H;
        if (actor != a) {
            if (actor != null && actor.getParent() == this.f5811M) {
                this.f5806H.remove();
            }
            this.f5806H = a;
            if (a != null) {
                this.f5811M.addActor(a);
            }
        }
        return this;
    }

    public void setActorBounds(float f, float f2, float f3, float f4) {
        this.f5807I = f;
        this.f5808J = f2;
        this.f5809K = f3;
        this.f5810L = f4;
    }

    public Cell<T> top() {
        Integer num = this.f5800B;
        if (num == null) {
            this.f5800B = f5793a0;
        } else {
            this.f5800B = Integer.valueOf((num.intValue() | 2) & (-5));
        }
        return this;
    }

    public Cell() {
        Cell defaults = defaults();
        if (defaults != null) {
            m23840c(defaults);
        }
    }

    public Cell<T> expand(int i, int i2) {
        this.f5801C = Integer.valueOf(i);
        this.f5802D = Integer.valueOf(i2);
        return this;
    }

    public Cell<T> fill(float f, float f2) {
        this.f5834z = Float.valueOf(f);
        this.f5799A = Float.valueOf(f2);
        return this;
    }

    public Cell<T> maxHeight(float f) {
        this.f5825q = Value.Fixed.valueOf(f);
        return this;
    }

    public Cell<T> maxWidth(float f) {
        this.f5824p = Value.Fixed.valueOf(f);
        return this;
    }

    public Cell<T> minHeight(float f) {
        this.f5821b = Value.Fixed.valueOf(f);
        return this;
    }

    public Cell<T> minWidth(float f) {
        this.f5820a = Value.Fixed.valueOf(f);
        return this;
    }

    public Cell<T> padBottom(float f) {
        this.f5832x = Value.Fixed.valueOf(f);
        return this;
    }

    public Cell<T> padLeft(float f) {
        this.f5831w = Value.Fixed.valueOf(f);
        return this;
    }

    public Cell<T> padRight(float f) {
        this.f5833y = Value.Fixed.valueOf(f);
        return this;
    }

    public Cell<T> padTop(float f) {
        this.f5830v = Value.Fixed.valueOf(f);
        return this;
    }

    public Cell<T> prefHeight(float f) {
        this.f5823k = Value.Fixed.valueOf(f);
        return this;
    }

    public Cell<T> prefWidth(float f) {
        this.f5822d = Value.Fixed.valueOf(f);
        return this;
    }

    public Cell<T> spaceBottom(float f) {
        if (f >= 0.0f) {
            this.f5828t = Value.Fixed.valueOf(f);
            return this;
        }
        throw new IllegalArgumentException("spaceBottom cannot be < 0: " + f);
    }

    public Cell<T> spaceLeft(float f) {
        if (f >= 0.0f) {
            this.f5827s = Value.Fixed.valueOf(f);
            return this;
        }
        throw new IllegalArgumentException("spaceLeft cannot be < 0: " + f);
    }

    public Cell<T> spaceRight(float f) {
        if (f >= 0.0f) {
            this.f5829u = Value.Fixed.valueOf(f);
            return this;
        }
        throw new IllegalArgumentException("spaceRight cannot be < 0: " + f);
    }

    public Cell<T> spaceTop(float f) {
        if (f >= 0.0f) {
            this.f5826r = Value.Fixed.valueOf(f);
            return this;
        }
        throw new IllegalArgumentException("spaceTop cannot be < 0: " + f);
    }

    public Cell<T> uniform(boolean z) {
        this.f5804F = Boolean.valueOf(z);
        this.f5805G = Boolean.valueOf(z);
        return this;
    }

    public Cell<T> maxSize(Value value, Value value2) {
        if (value != null) {
            if (value2 != null) {
                this.f5824p = value;
                this.f5825q = value2;
                return this;
            }
            throw new IllegalArgumentException("height cannot be null.");
        }
        throw new IllegalArgumentException("width cannot be null.");
    }

    public Cell<T> minSize(Value value, Value value2) {
        if (value != null) {
            if (value2 != null) {
                this.f5820a = value;
                this.f5821b = value2;
                return this;
            }
            throw new IllegalArgumentException("height cannot be null.");
        }
        throw new IllegalArgumentException("width cannot be null.");
    }

    public Cell<T> prefSize(Value value, Value value2) {
        if (value != null) {
            if (value2 != null) {
                this.f5822d = value;
                this.f5823k = value2;
                return this;
            }
            throw new IllegalArgumentException("height cannot be null.");
        }
        throw new IllegalArgumentException("width cannot be null.");
    }

    public Cell<T> expand(boolean z, boolean z2) {
        this.f5801C = z ? f5791Y : f5790X;
        this.f5802D = z2 ? f5791Y : f5790X;
        return this;
    }

    public Cell<T> fill(boolean z, boolean z2) {
        this.f5834z = z ? f5789W : f5788V;
        this.f5799A = z2 ? f5789W : f5788V;
        return this;
    }

    public Cell<T> height(float f) {
        height(Value.Fixed.valueOf(f));
        return this;
    }

    public Cell<T> uniform(boolean z, boolean z2) {
        this.f5804F = Boolean.valueOf(z);
        this.f5805G = Boolean.valueOf(z2);
        return this;
    }

    public Cell<T> width(float f) {
        width(Value.Fixed.valueOf(f));
        return this;
    }

    public Cell<T> pad(Value value, Value value2, Value value3, Value value4) {
        if (value != null) {
            if (value2 != null) {
                if (value3 != null) {
                    if (value4 != null) {
                        this.f5830v = value;
                        this.f5831w = value2;
                        this.f5832x = value3;
                        this.f5833y = value4;
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

    public Cell<T> space(Value value, Value value2, Value value3, Value value4) {
        if (value != null) {
            if (value2 != null) {
                if (value3 != null) {
                    if (value4 != null) {
                        this.f5826r = value;
                        this.f5827s = value2;
                        this.f5828t = value3;
                        this.f5829u = value4;
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

    public Cell<T> fill(boolean z) {
        this.f5834z = z ? f5789W : f5788V;
        this.f5799A = z ? f5789W : f5788V;
        return this;
    }

    public Cell<T> maxSize(float f) {
        maxSize(Value.Fixed.valueOf(f));
        return this;
    }

    public Cell<T> minSize(float f) {
        minSize(Value.Fixed.valueOf(f));
        return this;
    }

    public Cell<T> prefSize(float f, float f2) {
        prefSize(Value.Fixed.valueOf(f), Value.Fixed.valueOf(f2));
        return this;
    }

    public Cell<T> size(Value value, Value value2) {
        if (value != null) {
            if (value2 != null) {
                this.f5820a = value;
                this.f5821b = value2;
                this.f5822d = value;
                this.f5823k = value2;
                this.f5824p = value;
                this.f5825q = value2;
                return this;
            }
            throw new IllegalArgumentException("height cannot be null.");
        }
        throw new IllegalArgumentException("width cannot be null.");
    }

    public Cell<T> maxSize(float f, float f2) {
        maxSize(Value.Fixed.valueOf(f), Value.Fixed.valueOf(f2));
        return this;
    }

    public Cell<T> minSize(float f, float f2) {
        minSize(Value.Fixed.valueOf(f), Value.Fixed.valueOf(f2));
        return this;
    }

    public Cell<T> prefSize(float f) {
        prefSize(Value.Fixed.valueOf(f));
        return this;
    }

    public Cell<T> pad(float f) {
        pad(Value.Fixed.valueOf(f));
        return this;
    }

    public Cell<T> space(float f) {
        if (f >= 0.0f) {
            space(Value.Fixed.valueOf(f));
            return this;
        }
        throw new IllegalArgumentException("space cannot be < 0: " + f);
    }

    public Cell<T> pad(float f, float f2, float f3, float f4) {
        pad(Value.Fixed.valueOf(f), Value.Fixed.valueOf(f2), Value.Fixed.valueOf(f3), Value.Fixed.valueOf(f4));
        return this;
    }

    public Cell<T> size(float f) {
        size(Value.Fixed.valueOf(f));
        return this;
    }

    public Cell<T> space(float f, float f2, float f3, float f4) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("top cannot be < 0: " + f);
        } else if (f2 < 0.0f) {
            throw new IllegalArgumentException("left cannot be < 0: " + f2);
        } else if (f3 < 0.0f) {
            throw new IllegalArgumentException("bottom cannot be < 0: " + f3);
        } else if (f4 >= 0.0f) {
            space(Value.Fixed.valueOf(f), Value.Fixed.valueOf(f2), Value.Fixed.valueOf(f3), Value.Fixed.valueOf(f4));
            return this;
        } else {
            throw new IllegalArgumentException("right cannot be < 0: " + f4);
        }
    }

    public Cell<T> size(float f, float f2) {
        size(Value.Fixed.valueOf(f), Value.Fixed.valueOf(f2));
        return this;
    }
}
