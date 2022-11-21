package com.badlogic.gdx.scenes.scene2d;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;
import com.badlogic.gdx.math.Affine2;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.utils.Cullable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.SnapshotArray;
/* loaded from: classes.dex */
public class Group extends Actor implements Cullable {

    /* renamed from: L */
    public static final Vector2 f5648L = new Vector2();

    /* renamed from: F */
    public final SnapshotArray<Actor> f5649F = new SnapshotArray<>(true, 4, Actor.class);

    /* renamed from: G */
    public final Affine2 f5650G = new Affine2();

    /* renamed from: H */
    public final Matrix4 f5651H = new Matrix4();

    /* renamed from: I */
    public final Matrix4 f5652I = new Matrix4();

    /* renamed from: J */
    public boolean f5653J = true;
    @Null

    /* renamed from: K */
    public Rectangle f5654K;

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void clear() {
        super.clear();
        clearChildren(true);
    }

    public void clearChildren() {
        clearChildren(true);
    }

    public Group debugAll() {
        setDebug(true, true);
        return this;
    }

    public Actor getChild(int i) {
        return this.f5649F.get(i);
    }

    public SnapshotArray<Actor> getChildren() {
        return this.f5649F;
    }

    @Null
    public Rectangle getCullingArea() {
        return this.f5654K;
    }

    public boolean hasChildren() {
        return this.f5649F.size > 0;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    @Null
    public Actor hit(float f, float f2, boolean z) {
        if (!(z && getTouchable() == Touchable.disabled) && isVisible()) {
            Vector2 vector2 = f5648L;
            SnapshotArray<Actor> snapshotArray = this.f5649F;
            Actor[] actorArr = snapshotArray.items;
            for (int i = snapshotArray.size - 1; i >= 0; i--) {
                Actor actor = actorArr[i];
                actor.parentToLocalCoordinates(vector2.set(f, f2));
                Actor hit = actor.hit(vector2.f5527x, vector2.f5528y, z);
                if (hit != null) {
                    return hit;
                }
            }
            return super.hit(f, f2, z);
        }
        return null;
    }

    /* renamed from: i */
    public void mo23709i() {
    }

    public boolean isTransform() {
        return this.f5653J;
    }

    /* renamed from: m */
    public void m23860m(Batch batch) {
        batch.setTransformMatrix(this.f5652I);
    }

    /* renamed from: n */
    public void m23859n(ShapeRenderer shapeRenderer) {
        shapeRenderer.setTransformMatrix(this.f5652I);
    }

    public boolean removeActor(Actor actor) {
        return removeActor(actor, true);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.Cullable
    public void setCullingArea(@Null Rectangle rectangle) {
        this.f5654K = rectangle;
    }

    public void setTransform(boolean z) {
        this.f5653J = z;
    }

    public boolean swapActor(int i, int i2) {
        SnapshotArray<Actor> snapshotArray = this.f5649F;
        int i3 = snapshotArray.size;
        if (i < 0 || i >= i3 || i2 < 0 || i2 >= i3) {
            return false;
        }
        snapshotArray.swap(i, i2);
        return true;
    }

    public void addActor(Actor actor) {
        Group group = actor.f5626b;
        if (group != null) {
            if (group == this) {
                return;
            }
            group.removeActor(actor, false);
        }
        this.f5649F.add(actor);
        actor.m23866e(this);
        actor.mo23796f(getStage());
        mo23709i();
    }

    public void addActorAfter(Actor actor, Actor actor2) {
        Group group = actor2.f5626b;
        if (group != null) {
            if (group == this) {
                return;
            }
            group.removeActor(actor2, false);
        }
        int indexOf = this.f5649F.indexOf(actor, true);
        SnapshotArray<Actor> snapshotArray = this.f5649F;
        if (indexOf != snapshotArray.size && indexOf != -1) {
            snapshotArray.insert(indexOf + 1, actor2);
        } else {
            snapshotArray.add(actor2);
        }
        actor2.m23866e(this);
        actor2.mo23796f(getStage());
        mo23709i();
    }

    public void addActorAt(int i, Actor actor) {
        Group group = actor.f5626b;
        if (group != null) {
            if (group == this) {
                return;
            }
            group.removeActor(actor, false);
        }
        SnapshotArray<Actor> snapshotArray = this.f5649F;
        if (i >= snapshotArray.size) {
            snapshotArray.add(actor);
        } else {
            snapshotArray.insert(i, actor);
        }
        actor.m23866e(this);
        actor.mo23796f(getStage());
        mo23709i();
    }

    public void addActorBefore(Actor actor, Actor actor2) {
        Group group = actor2.f5626b;
        if (group != null) {
            if (group == this) {
                return;
            }
            group.removeActor(actor2, false);
        }
        this.f5649F.insert(this.f5649F.indexOf(actor, true), actor2);
        actor2.m23866e(this);
        actor2.mo23796f(getStage());
        mo23709i();
    }

    public void clearChildren(boolean z) {
        Stage stage;
        Actor[] begin = this.f5649F.begin();
        int i = this.f5649F.size;
        for (int i2 = 0; i2 < i; i2++) {
            Actor actor = begin[i2];
            if (z && (stage = getStage()) != null) {
                stage.unfocus(actor);
            }
            actor.mo23796f(null);
            actor.m23866e(null);
        }
        this.f5649F.end();
        this.f5649F.clear();
        mo23709i();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        if (this.f5653J) {
            m23865g(batch, m23863j());
        }
        m23862k(batch, f);
        if (this.f5653J) {
            m23860m(batch);
        }
    }

    @Null
    public <T extends Actor> T findActor(String str) {
        T t;
        SnapshotArray<Actor> snapshotArray = this.f5649F;
        int i = snapshotArray.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (str.equals(snapshotArray.get(i2).getName())) {
                return (T) snapshotArray.get(i2);
            }
        }
        int i3 = snapshotArray.size;
        for (int i4 = 0; i4 < i3; i4++) {
            Actor actor = snapshotArray.get(i4);
            if ((actor instanceof Group) && (t = (T) ((Group) actor).findActor(str)) != null) {
                return t;
            }
        }
        return null;
    }

    /* renamed from: g */
    public void m23865g(Batch batch, Matrix4 matrix4) {
        this.f5652I.set(batch.getTransformMatrix());
        batch.setTransformMatrix(matrix4);
    }

    /* renamed from: h */
    public void m23864h(ShapeRenderer shapeRenderer, Matrix4 matrix4) {
        this.f5652I.set(shapeRenderer.getTransformMatrix());
        shapeRenderer.setTransformMatrix(matrix4);
        shapeRenderer.flush();
    }

    /* renamed from: j */
    public Matrix4 m23863j() {
        Affine2 affine2 = this.f5650G;
        float f = this.f5638y;
        float f2 = this.f5639z;
        affine2.setToTrnRotScl(this.f5634u + f, this.f5635v + f2, this.f5622C, this.f5620A, this.f5621B);
        if (f != 0.0f || f2 != 0.0f) {
            affine2.translate(-f, -f2);
        }
        Group group = this.f5626b;
        while (group != null && !group.f5653J) {
            group = group.f5626b;
        }
        if (group != null) {
            affine2.preMul(group.f5650G);
        }
        this.f5651H.set(affine2);
        return this.f5651H;
    }

    /* renamed from: k */
    public void m23862k(Batch batch, float f) {
        float f2;
        float f3 = this.f5623D.f3889a * f;
        SnapshotArray<Actor> snapshotArray = this.f5649F;
        Actor[] begin = snapshotArray.begin();
        Rectangle rectangle = this.f5654K;
        int i = 0;
        if (rectangle != null) {
            float f4 = rectangle.f5523x;
            float f5 = rectangle.width + f4;
            float f6 = rectangle.f5524y;
            float f7 = rectangle.height + f6;
            if (this.f5653J) {
                int i2 = snapshotArray.size;
                while (i < i2) {
                    Actor actor = begin[i];
                    if (actor.isVisible()) {
                        float f8 = actor.f5634u;
                        float f9 = actor.f5635v;
                        if (f8 <= f5 && f9 <= f7 && f8 + actor.f5636w >= f4 && f9 + actor.f5637x >= f6) {
                            actor.draw(batch, f3);
                        }
                    }
                    i++;
                }
            } else {
                float f10 = this.f5634u;
                float f11 = this.f5635v;
                this.f5634u = 0.0f;
                this.f5635v = 0.0f;
                int i3 = snapshotArray.size;
                while (i < i3) {
                    Actor actor2 = begin[i];
                    if (actor2.isVisible()) {
                        float f12 = actor2.f5634u;
                        float f13 = actor2.f5635v;
                        if (f12 <= f5 && f13 <= f7) {
                            f2 = f7;
                            if (actor2.f5636w + f12 >= f4 && actor2.f5637x + f13 >= f6) {
                                actor2.f5634u = f12 + f10;
                                actor2.f5635v = f13 + f11;
                                actor2.draw(batch, f3);
                                actor2.f5634u = f12;
                                actor2.f5635v = f13;
                            }
                            i++;
                            f7 = f2;
                        }
                    }
                    f2 = f7;
                    i++;
                    f7 = f2;
                }
                this.f5634u = f10;
                this.f5635v = f11;
            }
        } else if (this.f5653J) {
            int i4 = snapshotArray.size;
            while (i < i4) {
                Actor actor3 = begin[i];
                if (actor3.isVisible()) {
                    actor3.draw(batch, f3);
                }
                i++;
            }
        } else {
            float f14 = this.f5634u;
            float f15 = this.f5635v;
            this.f5634u = 0.0f;
            this.f5635v = 0.0f;
            int i5 = snapshotArray.size;
            while (i < i5) {
                Actor actor4 = begin[i];
                if (actor4.isVisible()) {
                    float f16 = actor4.f5634u;
                    float f17 = actor4.f5635v;
                    actor4.f5634u = f16 + f14;
                    actor4.f5635v = f17 + f15;
                    actor4.draw(batch, f3);
                    actor4.f5634u = f16;
                    actor4.f5635v = f17;
                }
                i++;
            }
            this.f5634u = f14;
            this.f5635v = f15;
        }
        snapshotArray.end();
    }

    /* renamed from: l */
    public void m23861l(ShapeRenderer shapeRenderer) {
        SnapshotArray<Actor> snapshotArray = this.f5649F;
        Actor[] begin = snapshotArray.begin();
        int i = 0;
        if (this.f5653J) {
            int i2 = snapshotArray.size;
            while (i < i2) {
                Actor actor = begin[i];
                if (actor.isVisible() && (actor.getDebug() || (actor instanceof Group))) {
                    actor.drawDebug(shapeRenderer);
                }
                i++;
            }
            shapeRenderer.flush();
        } else {
            float f = this.f5634u;
            float f2 = this.f5635v;
            this.f5634u = 0.0f;
            this.f5635v = 0.0f;
            int i3 = snapshotArray.size;
            while (i < i3) {
                Actor actor2 = begin[i];
                if (actor2.isVisible() && (actor2.getDebug() || (actor2 instanceof Group))) {
                    float f3 = actor2.f5634u;
                    float f4 = actor2.f5635v;
                    actor2.f5634u = f3 + f;
                    actor2.f5635v = f4 + f2;
                    actor2.drawDebug(shapeRenderer);
                    actor2.f5634u = f3;
                    actor2.f5635v = f4;
                }
                i++;
            }
            this.f5634u = f;
            this.f5635v = f2;
        }
        snapshotArray.end();
    }

    public Vector2 localToDescendantCoordinates(Actor actor, Vector2 vector2) {
        Group group = actor.f5626b;
        if (group != null) {
            if (group != this) {
                localToDescendantCoordinates(group, vector2);
            }
            actor.parentToLocalCoordinates(vector2);
            return vector2;
        }
        throw new IllegalArgumentException("Actor is not a descendant: " + actor);
    }

    public boolean removeActor(Actor actor, boolean z) {
        int indexOf = this.f5649F.indexOf(actor, true);
        if (indexOf == -1) {
            return false;
        }
        removeActorAt(indexOf, z);
        return true;
    }

    public Actor removeActorAt(int i, boolean z) {
        Actor removeIndex = this.f5649F.removeIndex(i);
        Stage stage = getStage();
        if (stage != null) {
            if (z) {
                stage.unfocus(removeIndex);
            }
            stage.m23857a(removeIndex);
        }
        removeIndex.m23866e(null);
        removeIndex.mo23796f(null);
        mo23709i();
        return removeIndex;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        m23858o(sb, 1);
        sb.setLength(sb.length() - 1);
        return sb.toString();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void act(float f) {
        super.act(f);
        Actor[] begin = this.f5649F.begin();
        int i = this.f5649F.size;
        for (int i2 = 0; i2 < i; i2++) {
            begin[i2].act(f);
        }
        this.f5649F.end();
    }

    public void clear(boolean z) {
        super.clear();
        clearChildren(z);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void drawDebug(ShapeRenderer shapeRenderer) {
        mo23712a(shapeRenderer);
        if (this.f5653J) {
            m23864h(shapeRenderer, m23863j());
        }
        m23861l(shapeRenderer);
        if (this.f5653J) {
            m23859n(shapeRenderer);
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    /* renamed from: f */
    public void mo23796f(Stage stage) {
        super.mo23796f(stage);
        SnapshotArray<Actor> snapshotArray = this.f5649F;
        Actor[] actorArr = snapshotArray.items;
        int i = snapshotArray.size;
        for (int i2 = 0; i2 < i; i2++) {
            actorArr[i2].mo23796f(stage);
        }
    }

    /* renamed from: o */
    public void m23858o(StringBuilder sb, int i) {
        sb.append(super.toString());
        sb.append('\n');
        Actor[] begin = this.f5649F.begin();
        int i2 = this.f5649F.size;
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                sb.append("|  ");
            }
            Actor actor = begin[i3];
            if (actor instanceof Group) {
                ((Group) actor).m23858o(sb, i + 1);
            } else {
                sb.append(actor);
                sb.append('\n');
            }
        }
        this.f5649F.end();
    }

    public void setDebug(boolean z, boolean z2) {
        setDebug(z);
        if (z2) {
            Array.ArrayIterator<Actor> it = this.f5649F.iterator();
            while (it.hasNext()) {
                Actor next = it.next();
                if (next instanceof Group) {
                    ((Group) next).setDebug(z, z2);
                } else {
                    next.setDebug(z);
                }
            }
        }
    }

    public boolean swapActor(Actor actor, Actor actor2) {
        int indexOf = this.f5649F.indexOf(actor, true);
        int indexOf2 = this.f5649F.indexOf(actor2, true);
        if (indexOf == -1 || indexOf2 == -1) {
            return false;
        }
        this.f5649F.swap(indexOf, indexOf2);
        return true;
    }
}
