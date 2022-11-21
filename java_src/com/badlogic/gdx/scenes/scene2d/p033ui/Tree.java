package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.p033ui.Tree.Node;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.scenes.scene2d.utils.Selection;
import com.badlogic.gdx.scenes.scene2d.utils.UIUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Null;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Tree */
/* loaded from: classes.dex */
public class Tree<N extends Node, V> extends WidgetGroup {

    /* renamed from: f0 */
    public static final Vector2 f6198f0 = new Vector2();

    /* renamed from: P */
    public TreeStyle f6199P;

    /* renamed from: Q */
    public final Array<N> f6200Q;

    /* renamed from: R */
    public final Selection<N> f6201R;

    /* renamed from: S */
    public float f6202S;

    /* renamed from: T */
    public float f6203T;

    /* renamed from: U */
    public float f6204U;

    /* renamed from: V */
    public float f6205V;

    /* renamed from: W */
    public float f6206W;

    /* renamed from: X */
    public float f6207X;

    /* renamed from: Y */
    public float f6208Y;

    /* renamed from: Z */
    public float f6209Z;

    /* renamed from: a0 */
    public boolean f6210a0;

    /* renamed from: b0 */
    public N f6211b0;

    /* renamed from: c0 */
    public N f6212c0;

    /* renamed from: d0 */
    public N f6213d0;

    /* renamed from: e0 */
    public ClickListener f6214e0;

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Tree$Node */
    /* loaded from: classes.dex */
    public static abstract class Node<N extends Node, V, A extends Actor> {

        /* renamed from: a */
        public A f6217a;

        /* renamed from: b */
        public N f6218b;

        /* renamed from: c */
        public final Array<N> f6219c = new Array<>(0);

        /* renamed from: d */
        public boolean f6220d = true;

        /* renamed from: e */
        public boolean f6221e;

        /* renamed from: f */
        public Drawable f6222f;

        /* renamed from: g */
        public float f6223g;

        /* renamed from: h */
        public V f6224h;

        public Node(A a) {
            if (a != null) {
                this.f6217a = a;
                return;
            }
            throw new IllegalArgumentException("actor cannot be null.");
        }

        public void add(N n) {
            insert(this.f6219c.size, n);
        }

        /* renamed from: c */
        public void m23713c(Tree<N, V> tree, int i) {
            tree.removeActorAt(i, true);
            if (!this.f6221e) {
                return;
            }
            Array<N> array = this.f6219c;
            N[] nArr = array.items;
            int i2 = array.size;
            for (int i3 = 0; i3 < i2; i3++) {
                nArr[i3].m23713c(tree, i);
            }
        }

        public void collapseAll() {
            setExpanded(false);
            Tree.m23725q(this.f6219c);
        }

        public void expandAll() {
            setExpanded(true);
            Array<N> array = this.f6219c;
            if (array.size > 0) {
                Tree.m23716z(array);
            }
        }

        public void findExpandedValues(Array<V> array) {
            if (!this.f6221e || Tree.m23733A(this.f6219c, array)) {
                return;
            }
            array.add(this.f6224h);
        }

        public A getActor() {
            return this.f6217a;
        }

        public Array<N> getChildren() {
            return this.f6219c;
        }

        public float getHeight() {
            return this.f6223g;
        }

        @Null
        public Drawable getIcon() {
            return this.f6222f;
        }

        public int getLevel() {
            int i = 0;
            Node<N, V, A> node = this;
            do {
                i++;
                node = node.getParent();
            } while (node != null);
            return i;
        }

        @Null
        public N getParent() {
            return this.f6218b;
        }

        @Null
        public V getValue() {
            return this.f6224h;
        }

        public boolean hasChildren() {
            return this.f6219c.size > 0;
        }

        public boolean isExpanded() {
            return this.f6221e;
        }

        public boolean isSelectable() {
            return this.f6220d;
        }

        public void remove() {
            Tree<N, V> tree = getTree();
            if (tree != null) {
                tree.remove(this);
                return;
            }
            N n = this.f6218b;
            if (n != null) {
                n.remove(this);
            }
        }

        public void setIcon(@Null Drawable drawable) {
            this.f6222f = drawable;
        }

        public void setSelectable(boolean z) {
            this.f6220d = z;
        }

        public void setValue(@Null V v) {
            this.f6224h = v;
        }

        /* renamed from: a */
        public int m23715a(Tree<N, V> tree, int i) {
            tree.addActorAt(i, this.f6217a);
            if (!this.f6221e) {
                return 1;
            }
            int i2 = i + 1;
            Array<N> array = this.f6219c;
            N[] nArr = array.items;
            int i3 = array.size;
            for (int i4 = 0; i4 < i3; i4++) {
                i2 += nArr[i4].m23715a(tree, i2);
            }
            return i2 - i;
        }

        public void addAll(Array<N> array) {
            int i = array.size;
            for (int i2 = 0; i2 < i; i2++) {
                insert(this.f6219c.size, array.get(i2));
            }
        }

        /* renamed from: b */
        public int m23714b() {
            int i = 1;
            if (!this.f6221e) {
                return 1;
            }
            Array<N> array = this.f6219c;
            N[] nArr = array.items;
            int i2 = array.size;
            for (int i3 = 0; i3 < i2; i3++) {
                i += nArr[i3].m23714b();
            }
            return i;
        }

        public void clearChildren() {
            Tree<N, V> tree;
            if (this.f6221e && (tree = getTree()) != null) {
                int zIndex = this.f6217a.getZIndex() + 1;
                Array<N> array = this.f6219c;
                N[] nArr = array.items;
                int i = array.size;
                for (int i2 = 0; i2 < i; i2++) {
                    nArr[i2].m23713c(tree, zIndex);
                }
            }
            this.f6219c.clear();
        }

        public void expandTo() {
            for (N n = this.f6218b; n != null; n = n.f6218b) {
                n.setExpanded(true);
            }
        }

        @Null
        public N findNode(V v) {
            if (v != null) {
                if (v.equals(this.f6224h)) {
                    return this;
                }
                return (N) Tree.m23732B(this.f6219c, v);
            }
            throw new IllegalArgumentException("value cannot be null.");
        }

        @Null
        public Tree<N, V> getTree() {
            Group parent = this.f6217a.getParent();
            if (parent instanceof Tree) {
                return (Tree) parent;
            }
            return null;
        }

        public void insert(int i, N n) {
            Tree<N, V> tree;
            int m23714b;
            n.f6218b = this;
            this.f6219c.insert(i, n);
            if (this.f6221e && (tree = getTree()) != null) {
                if (i == 0) {
                    m23714b = this.f6217a.getZIndex() + 1;
                } else {
                    Array<N> array = this.f6219c;
                    if (i < array.size - 1) {
                        m23714b = array.get(i + 1).f6217a.getZIndex();
                    } else {
                        N n2 = array.get(i - 1);
                        m23714b = n2.m23714b() + n2.f6217a.getZIndex();
                    }
                }
                n.m23715a(tree, m23714b);
            }
        }

        public boolean isAscendantOf(N n) {
            if (n != null) {
                while (n != this) {
                    n = n.f6218b;
                    if (n == null) {
                        return false;
                    }
                }
                return true;
            }
            throw new IllegalArgumentException("node cannot be null.");
        }

        public boolean isDescendantOf(N n) {
            if (n != null) {
                N n2 = this;
                while (n2 != n) {
                    n2 = n2.f6218b;
                    if (n2 == null) {
                        return false;
                    }
                }
                return true;
            }
            throw new IllegalArgumentException("node cannot be null.");
        }

        public void restoreExpandedValues(Array<V> array) {
            int i = array.size;
            for (int i2 = 0; i2 < i; i2++) {
                N findNode = findNode(array.get(i2));
                if (findNode != null) {
                    findNode.setExpanded(true);
                    findNode.expandTo();
                }
            }
        }

        public void setActor(A a) {
            Tree<N, V> tree;
            if (this.f6217a != null && (tree = getTree()) != null) {
                int zIndex = this.f6217a.getZIndex();
                tree.removeActorAt(zIndex, true);
                tree.addActorAt(zIndex, a);
            }
            this.f6217a = a;
        }

        public void setExpanded(boolean z) {
            Tree<N, V> tree;
            if (z == this.f6221e) {
                return;
            }
            this.f6221e = z;
            if (this.f6219c.size == 0 || (tree = getTree()) == null) {
                return;
            }
            N[] nArr = this.f6219c.items;
            int zIndex = this.f6217a.getZIndex() + 1;
            int i = 0;
            if (z) {
                int i2 = this.f6219c.size;
                while (i < i2) {
                    zIndex += nArr[i].m23715a(tree, zIndex);
                    i++;
                }
                return;
            }
            int i3 = this.f6219c.size;
            while (i < i3) {
                nArr[i].m23713c(tree, zIndex);
                i++;
            }
        }

        public void updateChildren() {
            Tree<N, V> tree;
            if (!this.f6221e || (tree = getTree()) == null) {
                return;
            }
            Array<N> array = this.f6219c;
            N[] nArr = array.items;
            int i = array.size;
            int zIndex = this.f6217a.getZIndex() + 1;
            for (int i2 = 0; i2 < i; i2++) {
                nArr[i2].m23713c(tree, zIndex);
            }
            for (int i3 = 0; i3 < i; i3++) {
                zIndex += nArr[i3].m23715a(tree, zIndex);
            }
        }

        public void remove(N n) {
            Tree<N, V> tree;
            if (this.f6219c.removeValue(n, true) && this.f6221e && (tree = getTree()) != null) {
                n.m23713c(tree, n.f6217a.getZIndex());
            }
        }

        public Node() {
        }
    }

    /* renamed from: com.badlogic.gdx.scenes.scene2d.ui.Tree$TreeStyle */
    /* loaded from: classes.dex */
    public static class TreeStyle {
        @Null
        public Drawable background;
        public Drawable minus;
        @Null
        public Drawable minusOver;
        @Null
        public Drawable over;
        public Drawable plus;
        @Null
        public Drawable plusOver;
        @Null
        public Drawable selection;

        public TreeStyle() {
        }

        public TreeStyle(Drawable drawable, Drawable drawable2, @Null Drawable drawable3) {
            this.plus = drawable;
            this.minus = drawable2;
            this.selection = drawable3;
        }

        public TreeStyle(TreeStyle treeStyle) {
            this.plus = treeStyle.plus;
            this.minus = treeStyle.minus;
            this.plusOver = treeStyle.plusOver;
            this.minusOver = treeStyle.minusOver;
            this.over = treeStyle.over;
            this.selection = treeStyle.selection;
            this.background = treeStyle.background;
        }
    }

    public Tree(Skin skin) {
        this((TreeStyle) skin.get(TreeStyle.class));
    }

    /* renamed from: E */
    public final void m23729E() {
        ClickListener clickListener = new ClickListener() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Tree.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean mouseMoved(InputEvent inputEvent, float f, float f2) {
                Tree tree = Tree.this;
                tree.setOverNode(tree.getNodeAt(f2));
                return false;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                N n = (N) Tree.this.getNodeAt(f2);
                if (n == null || n != Tree.this.getNodeAt(getTouchDownY())) {
                    return;
                }
                if (Tree.this.f6201R.getMultiple() && Tree.this.f6201R.notEmpty() && UIUtils.shift()) {
                    Tree tree = Tree.this;
                    if (tree.f6213d0 == null) {
                        tree.f6213d0 = n;
                    }
                    N n2 = tree.f6213d0;
                    if (!UIUtils.ctrl()) {
                        Tree.this.f6201R.clear();
                    }
                    float y = n2.f6217a.getY();
                    float y2 = n.f6217a.getY();
                    if (y > y2) {
                        Tree tree2 = Tree.this;
                        tree2.m23726H(tree2.f6200Q, y2, y);
                    } else {
                        Tree tree3 = Tree.this;
                        tree3.m23726H(tree3.f6200Q, y, y2);
                        Tree.this.f6201R.items().orderedItems().reverse();
                    }
                    Tree.this.f6201R.fireChangeEvent();
                    Tree.this.f6213d0 = n2;
                    return;
                }
                if (n.f6219c.size > 0 && (!Tree.this.f6201R.getMultiple() || !UIUtils.ctrl())) {
                    float x = n.f6217a.getX();
                    Drawable drawable = n.f6222f;
                    if (drawable != null) {
                        x -= Tree.this.f6204U + drawable.getMinWidth();
                    }
                    if (f < x) {
                        n.setExpanded(!n.f6221e);
                        return;
                    }
                }
                if (!n.isSelectable()) {
                    return;
                }
                Tree.this.f6201R.choose(n);
                if (!Tree.this.f6201R.isEmpty()) {
                    Tree.this.f6213d0 = n;
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f, float f2, int i, Actor actor) {
                super.enter(inputEvent, f, f2, i, actor);
                Tree tree = Tree.this;
                tree.setOverNode(tree.getNodeAt(f2));
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f, float f2, int i, @Null Actor actor) {
                super.exit(inputEvent, f, f2, i, actor);
                if (actor == null || !actor.isDescendantOf(Tree.this)) {
                    Tree.this.setOverNode(null);
                }
            }
        };
        this.f6214e0 = clickListener;
        addListener(clickListener);
    }

    public void add(N n) {
        insert(this.f6200Q.size, n);
    }

    public void collapseAll() {
        m23725q(this.f6200Q);
    }

    public void expandAll() {
        m23716z(this.f6200Q);
    }

    public void findExpandedValues(Array<V> array) {
        m23733A(this.f6200Q, array);
    }

    public ClickListener getClickListener() {
        return this.f6214e0;
    }

    public float getIndentSpacing() {
        return this.f6207X;
    }

    @Null
    public N getNodeAt(float f) {
        this.f6211b0 = null;
        m23730D(this.f6200Q, f, getHeight());
        try {
            return this.f6211b0;
        } finally {
            this.f6211b0 = null;
        }
    }

    @Deprecated
    public Array<N> getNodes() {
        return this.f6200Q;
    }

    @Null
    public N getOverNode() {
        return this.f6212c0;
    }

    public Array<N> getRootNodes() {
        return this.f6200Q;
    }

    @Null
    public N getSelectedNode() {
        return this.f6201R.first();
    }

    public Selection<N> getSelection() {
        return this.f6201R;
    }

    public TreeStyle getStyle() {
        return this.f6199P;
    }

    public float getYSpacing() {
        return this.f6202S;
    }

    /* renamed from: r */
    public final void m23724r() {
        this.f6210a0 = false;
        float m23727G = m23727G();
        this.f6208Y = m23727G;
        this.f6209Z = 0.0f;
        m23723s(this.f6200Q, 0.0f, m23727G);
        this.f6208Y += this.f6205V + this.f6206W;
    }

    public void setIndentSpacing(float f) {
        this.f6207X = f;
    }

    public void setOverNode(@Null N n) {
        this.f6212c0 = n;
    }

    public void setPadding(float f) {
        this.f6205V = f;
        this.f6206W = f;
    }

    public void setYSpacing(float f) {
        this.f6202S = f;
    }

    /* renamed from: u */
    public void m23721u(N n, Drawable drawable, Batch batch, float f, float f2) {
        drawable.draw(batch, f, f2, drawable.getMinWidth(), drawable.getMinHeight());
    }

    /* renamed from: v */
    public void m23720v(N n, Drawable drawable, Batch batch, float f, float f2) {
        drawable.draw(batch, f, f2, drawable.getMinWidth(), drawable.getMinHeight());
    }

    /* renamed from: w */
    public float m23719w(Batch batch, float f, float f2, float f3, float f4, @Null N n, Array<N> array, float f5, float f6) {
        float f7;
        float f8;
        float f9;
        Actor actor;
        int i;
        int i2;
        N n2;
        Drawable drawable;
        Drawable drawable2;
        float f10;
        Rectangle cullingArea = getCullingArea();
        float f11 = 0.0f;
        if (cullingArea != null) {
            float f12 = cullingArea.f5524y;
            f7 = f12;
            f8 = cullingArea.height + f12;
        } else {
            f7 = 0.0f;
            f8 = 0.0f;
        }
        TreeStyle treeStyle = this.f6199P;
        float x = getX();
        float y = getY();
        float f13 = x + f5;
        float f14 = f13 + f6 + this.f6203T;
        int i3 = 0;
        for (int i4 = array.size; i3 < i4; i4 = i2) {
            N n3 = array.get(i3);
            Actor actor2 = n3.f6217a;
            float y2 = actor2.getY();
            float f15 = n3.f6223g;
            if (cullingArea == null || (y2 + f15 >= f7 && y2 <= f8)) {
                if (this.f6201R.contains(n3) && (drawable2 = treeStyle.selection) != null) {
                    f9 = f15;
                    actor = actor2;
                    i2 = i4;
                    n2 = n3;
                    i = i3;
                    m23717y(n3, drawable2, batch, x, (y + y2) - (this.f6202S / 2.0f), getWidth(), f15 + this.f6202S);
                } else {
                    f9 = f15;
                    actor = actor2;
                    i = i3;
                    i2 = i4;
                    n2 = n3;
                    if (n2 == this.f6212c0 && (drawable = treeStyle.over) != null) {
                        m23718x(n2, drawable, batch, x, (y + y2) - (this.f6202S / 2.0f), getWidth(), f9 + this.f6202S);
                    }
                }
                Drawable drawable3 = n2.f6222f;
                if (drawable3 != null) {
                    float round = y + y2 + Math.round((f9 - drawable3.getMinHeight()) / 2.0f);
                    Color color = actor.getColor();
                    batch.setColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a * f4);
                    m23720v(n2, n2.f6222f, batch, f14, round);
                    batch.setColor(f, f2, f3, f4);
                }
                if (n2.f6219c.size > 0) {
                    Drawable m23731C = m23731C(n2, f14);
                    m23721u(n2, m23731C, batch, f13, y + y2 + Math.round((f9 - m23731C.getMinHeight()) / 2.0f));
                }
            } else if (y2 < f7) {
                return y2;
            } else {
                i = i3;
                i2 = i4;
                n2 = n3;
            }
            if (n2.f6221e) {
                Array<N> array2 = n2.f6219c;
                if (array2.size > 0) {
                    f10 = f14;
                    m23719w(batch, f, f2, f3, f4, n2, array2, f5 + this.f6207X, f6);
                    i3 = i + 1;
                    f11 = y2;
                    f14 = f10;
                }
            }
            f10 = f14;
            i3 = i + 1;
            f11 = y2;
            f14 = f10;
        }
        return f11;
    }

    /* renamed from: x */
    public void m23718x(N n, Drawable drawable, Batch batch, float f, float f2, float f3, float f4) {
        drawable.draw(batch, f, f2, f3, f4);
    }

    /* renamed from: y */
    public void m23717y(N n, Drawable drawable, Batch batch, float f, float f2, float f3, float f4) {
        drawable.draw(batch, f, f2, f3, f4);
    }

    public Tree(Skin skin, String str) {
        this((TreeStyle) skin.get(str, TreeStyle.class));
    }

    /* renamed from: A */
    public static boolean m23733A(Array<? extends Node> array, Array array2) {
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            Node node = array.get(i2);
            if (node.f6221e && !m23733A(node.f6219c, array2)) {
                array2.add(node.f6224h);
            }
        }
        return false;
    }

    @Null
    /* renamed from: B */
    public static Node m23732B(Array<? extends Node> array, Object obj) {
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            Node node = array.get(i2);
            if (obj.equals(node.f6224h)) {
                return node;
            }
        }
        int i3 = array.size;
        for (int i4 = 0; i4 < i3; i4++) {
            Node m23732B = m23732B(array.get(i4).f6219c, obj);
            if (m23732B != null) {
                return m23732B;
            }
        }
        return null;
    }

    /* renamed from: q */
    public static void m23725q(Array<? extends Node> array) {
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            Node node = array.get(i2);
            node.setExpanded(false);
            m23725q(node.f6219c);
        }
    }

    /* renamed from: z */
    public static void m23716z(Array<? extends Node> array) {
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            array.get(i2).expandAll();
        }
    }

    /* renamed from: C */
    public Drawable m23731C(N n, float f) {
        Drawable drawable;
        if (n == this.f6212c0 && Gdx.app.getType() == Application.ApplicationType.Desktop && (!this.f6201R.getMultiple() || (!UIUtils.ctrl() && !UIUtils.shift()))) {
            float x = screenToLocalCoordinates(f6198f0.set(Gdx.input.getX(), 0.0f)).f5527x + getX();
            if (x >= 0.0f && x < f) {
                if (n.f6221e) {
                    drawable = this.f6199P.minusOver;
                } else {
                    drawable = this.f6199P.plusOver;
                }
                if (drawable != null) {
                    return drawable;
                }
            }
        }
        if (n.f6221e) {
            return this.f6199P.minus;
        }
        return this.f6199P.plus;
    }

    /* renamed from: D */
    public final float m23730D(Array<N> array, float f, float f2) {
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            N n = array.get(i2);
            float f3 = n.f6223g;
            float height = f2 - (n.getHeight() - f3);
            float f4 = this.f6202S;
            if (f >= (height - f3) - f4 && f < height) {
                this.f6211b0 = n;
                return -1.0f;
            }
            f2 = height - (f3 + f4);
            if (n.f6221e) {
                f2 = m23730D(n.f6219c, f, f2);
                if (f2 == -1.0f) {
                    return -1.0f;
                }
            }
        }
        return f2;
    }

    /* renamed from: F */
    public final float m23728F(Array<N> array, float f, float f2, float f3) {
        float f4;
        float f5 = this.f6202S;
        float f6 = this.f6203T;
        float f7 = this.f6204U + f6;
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            N n = array.get(i2);
            float f8 = f + f3;
            Drawable drawable = n.f6222f;
            if (drawable != null) {
                f4 = f8 + drawable.getMinWidth() + f7;
            } else {
                f4 = f8 + f6;
            }
            A a = n.f6217a;
            if (a instanceof Layout) {
                ((Layout) a).pack();
            }
            float height = f2 - n.getHeight();
            n.f6217a.setPosition(f4, height);
            f2 = height - f5;
            if (n.f6221e) {
                f2 = m23728F(n.f6219c, this.f6207X + f, f2, f3);
            }
        }
        return f2;
    }

    /* renamed from: G */
    public final float m23727G() {
        float max = Math.max(this.f6199P.plus.getMinWidth(), this.f6199P.minus.getMinWidth());
        Drawable drawable = this.f6199P.plusOver;
        if (drawable != null) {
            max = Math.max(max, drawable.getMinWidth());
        }
        Drawable drawable2 = this.f6199P.minusOver;
        if (drawable2 != null) {
            return Math.max(max, drawable2.getMinWidth());
        }
        return max;
    }

    /* renamed from: H */
    public void m23726H(Array<N> array, float f, float f2) {
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            N n = array.get(i2);
            if (n.f6217a.getY() >= f) {
                if (n.isSelectable()) {
                    if (n.f6217a.getY() <= f2) {
                        this.f6201R.add(n);
                    }
                    if (n.f6221e) {
                        m23726H(n.f6219c, f, f2);
                    }
                }
            } else {
                return;
            }
        }
    }

    @Null
    public N findNode(V v) {
        if (v != null) {
            return (N) m23732B(this.f6200Q, v);
        }
        throw new IllegalArgumentException("value cannot be null.");
    }

    @Null
    public V getOverValue() {
        N n = this.f6212c0;
        if (n == null) {
            return null;
        }
        return (V) n.getValue();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefHeight() {
        if (this.f6210a0) {
            m23724r();
        }
        return this.f6209Z;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public float getPrefWidth() {
        if (this.f6210a0) {
            m23724r();
        }
        return this.f6208Y;
    }

    @Null
    public V getSelectedValue() {
        N first = this.f6201R.first();
        if (first == null) {
            return null;
        }
        return (V) first.getValue();
    }

    public void insert(int i, N n) {
        int m23714b;
        N n2 = n.f6218b;
        if (n2 != null) {
            n2.remove(n);
            n.f6218b = null;
        } else {
            int indexOf = this.f6200Q.indexOf(n, true);
            if (indexOf != -1) {
                if (indexOf == i) {
                    return;
                }
                if (indexOf < i) {
                    i--;
                }
                this.f6200Q.removeIndex(indexOf);
                int zIndex = n.f6217a.getZIndex();
                if (zIndex != -1) {
                    n.m23713c(this, zIndex);
                }
            }
        }
        this.f6200Q.insert(i, n);
        if (i == 0) {
            m23714b = 0;
        } else {
            Array<N> array = this.f6200Q;
            if (i < array.size - 1) {
                m23714b = array.get(i + 1).f6217a.getZIndex();
            } else {
                N n3 = array.get(i - 1);
                m23714b = n3.m23714b() + n3.f6217a.getZIndex();
            }
        }
        n.m23715a(this, m23714b);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void layout() {
        if (this.f6210a0) {
            m23724r();
        }
        m23728F(this.f6200Q, this.f6205V, getHeight() - (this.f6202S / 2.0f), m23727G());
    }

    public void remove(N n) {
        int zIndex;
        N n2 = n.f6218b;
        if (n2 != null) {
            n2.remove(n);
        } else if (this.f6200Q.removeValue(n, true) && (zIndex = n.f6217a.getZIndex()) != -1) {
            n.m23713c(this, zIndex);
        }
    }

    public void restoreExpandedValues(Array<V> array) {
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            N findNode = findNode(array.get(i2));
            if (findNode != null) {
                findNode.setExpanded(true);
                findNode.expandTo();
            }
        }
    }

    /* renamed from: s */
    public final void m23723s(Array<N> array, float f, float f2) {
        float width;
        float f3 = this.f6202S;
        float f4 = this.f6203T + this.f6204U;
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            N n = array.get(i2);
            float f5 = f + f2;
            A a = n.f6217a;
            if (a instanceof Layout) {
                Layout layout = (Layout) a;
                width = f5 + layout.getPrefWidth();
                n.f6223g = layout.getPrefHeight();
            } else {
                width = f5 + a.getWidth();
                n.f6223g = a.getHeight();
            }
            Drawable drawable = n.f6222f;
            if (drawable != null) {
                width += drawable.getMinWidth() + f4;
                n.f6223g = Math.max(n.f6223g, n.f6222f.getMinHeight());
            }
            this.f6208Y = Math.max(this.f6208Y, width);
            this.f6209Z += n.f6223g + f3;
            if (n.f6221e) {
                m23723s(n.f6219c, this.f6207X + f, f2);
            }
        }
    }

    public void setIconSpacing(float f, float f2) {
        this.f6203T = f;
        this.f6204U = f2;
    }

    public void setStyle(TreeStyle treeStyle) {
        this.f6199P = treeStyle;
        if (this.f6207X == 0.0f) {
            this.f6207X = m23727G();
        }
    }

    /* renamed from: t */
    public void m23722t(Batch batch, float f) {
        if (this.f6199P.background != null) {
            Color color = getColor();
            batch.setColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a * f);
            this.f6199P.background.draw(batch, getX(), getY(), getWidth(), getHeight());
        }
    }

    public void updateRootNodes() {
        int i = this.f6200Q.size;
        for (int i2 = 0; i2 < i; i2++) {
            N n = this.f6200Q.get(i2);
            int zIndex = n.f6217a.getZIndex();
            if (zIndex != -1) {
                n.m23713c(this, zIndex);
            }
        }
        int i3 = this.f6200Q.size;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            i4 += this.f6200Q.get(i5).m23715a(this, i4);
        }
    }

    public Tree(TreeStyle treeStyle) {
        this.f6200Q = new Array<>();
        this.f6202S = 4.0f;
        this.f6203T = 2.0f;
        this.f6204U = 2.0f;
        this.f6210a0 = true;
        Selection<N> selection = (Selection<N>) new Selection<N>() { // from class: com.badlogic.gdx.scenes.scene2d.ui.Tree.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.Selection
            /* renamed from: d */
            public void mo23697d() {
                int size = size();
                if (size != 0) {
                    if (size == 1) {
                        Tree.this.f6213d0 = (N) first();
                        return;
                    }
                    return;
                }
                Tree.this.f6213d0 = null;
            }
        };
        this.f6201R = selection;
        selection.setActor(this);
        selection.setMultiple(true);
        setStyle(treeStyle);
        m23729E();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Group
    public void clearChildren(boolean z) {
        super.clearChildren(z);
        setOverNode(null);
        this.f6200Q.clear();
        this.f6201R.clear();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        m23722t(batch, f);
        Color color = getColor();
        float f2 = color.f3889a * f;
        batch.setColor(color.f3892r, color.f3891g, color.f3890b, f2);
        m23719w(batch, color.f3892r, color.f3891g, color.f3890b, f2, null, this.f6200Q, this.f6205V, m23727G());
        super.draw(batch, f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.WidgetGroup, com.badlogic.gdx.scenes.scene2d.utils.Layout
    public void invalidate() {
        super.invalidate();
        this.f6210a0 = true;
    }

    public void setPadding(float f, float f2) {
        this.f6205V = f;
        this.f6206W = f2;
    }
}
