package com.badlogic.gdx.p032ai.steer.utils.paths;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.utils.Path;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.steer.utils.paths.LinePath */
/* loaded from: classes.dex */
public class LinePath<T extends Vector<T>> implements Path<T, LinePathParam> {

    /* renamed from: a */
    public Array<Segment<T>> f3460a;

    /* renamed from: b */
    public boolean f3461b;

    /* renamed from: c */
    public float f3462c;

    /* renamed from: d */
    public T f3463d;

    /* renamed from: e */
    public T f3464e;

    /* renamed from: f */
    public T f3465f;

    /* renamed from: g */
    public T f3466g;

    /* renamed from: com.badlogic.gdx.ai.steer.utils.paths.LinePath$LinePathParam */
    /* loaded from: classes.dex */
    public static class LinePathParam implements Path.PathParam {

        /* renamed from: a */
        public int f3467a;

        /* renamed from: b */
        public float f3468b;

        @Override // com.badlogic.gdx.p032ai.steer.utils.Path.PathParam
        public float getDistance() {
            return this.f3468b;
        }

        public int getSegmentIndex() {
            return this.f3467a;
        }

        @Override // com.badlogic.gdx.p032ai.steer.utils.Path.PathParam
        public void setDistance(float f) {
            this.f3468b = f;
        }
    }

    public LinePath(Array<T> array) {
        this(array, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.p032ai.steer.utils.Path
    public /* bridge */ /* synthetic */ float calculateDistance(Vector vector, LinePathParam linePathParam) {
        return calculateDistance2((LinePath<T>) vector, linePathParam);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.p032ai.steer.utils.Path
    public /* bridge */ /* synthetic */ void calculateTargetPosition(Vector vector, LinePathParam linePathParam, float f) {
        calculateTargetPosition2((LinePath<T>) vector, linePathParam, f);
    }

    @Override // com.badlogic.gdx.p032ai.steer.utils.Path
    public T getEndPoint() {
        return this.f3460a.peek().f3470b;
    }

    @Override // com.badlogic.gdx.p032ai.steer.utils.Path
    public float getLength() {
        return this.f3462c;
    }

    public Array<Segment<T>> getSegments() {
        return this.f3460a;
    }

    @Override // com.badlogic.gdx.p032ai.steer.utils.Path
    public T getStartPoint() {
        return this.f3460a.first().f3469a;
    }

    @Override // com.badlogic.gdx.p032ai.steer.utils.Path
    public boolean isOpen() {
        return this.f3461b;
    }

    /* renamed from: com.badlogic.gdx.ai.steer.utils.paths.LinePath$Segment */
    /* loaded from: classes.dex */
    public static class Segment<T extends Vector<T>> {

        /* renamed from: a */
        public T f3469a;

        /* renamed from: b */
        public T f3470b;

        /* renamed from: c */
        public float f3471c;

        /* renamed from: d */
        public float f3472d;

        public T getBegin() {
            return this.f3469a;
        }

        public float getCumulativeLength() {
            return this.f3472d;
        }

        public T getEnd() {
            return this.f3470b;
        }

        public float getLength() {
            return this.f3471c;
        }

        public Segment(T t, T t2) {
            this.f3469a = t;
            this.f3470b = t2;
            this.f3471c = t.dst(t2);
        }
    }

    public LinePath(Array<T> array, boolean z) {
        this.f3461b = z;
        createPath(array);
        this.f3463d = (T) array.first().cpy();
        this.f3464e = (T) array.first().cpy();
        this.f3465f = (T) array.first().cpy();
        this.f3466g = (T) array.first().cpy();
    }

    /* renamed from: calculateDistance  reason: avoid collision after fix types in other method */
    public float calculateDistance2(T t, LinePathParam linePathParam) {
        float f = Float.POSITIVE_INFINITY;
        Segment<T> segment = null;
        int i = 0;
        while (true) {
            Array<Segment<T>> array = this.f3460a;
            if (i < array.size) {
                Segment<T> segment2 = array.get(i);
                float calculatePointSegmentSquareDistance = calculatePointSegmentSquareDistance(this.f3463d, segment2.f3469a, segment2.f3470b, t);
                if (calculatePointSegmentSquareDistance < f) {
                    this.f3464e.set(this.f3463d);
                    linePathParam.f3467a = i;
                    segment = segment2;
                    f = calculatePointSegmentSquareDistance;
                }
                i++;
            } else {
                float dst = segment.f3472d - this.f3464e.dst(segment.f3470b);
                linePathParam.setDistance(dst);
                return dst;
            }
        }
    }

    /* renamed from: calculateTargetPosition  reason: avoid collision after fix types in other method */
    public void calculateTargetPosition2(T t, LinePathParam linePathParam, float f) {
        if (this.f3461b) {
            if (f < 0.0f) {
                f = 0.0f;
            } else {
                float f2 = this.f3462c;
                if (f > f2) {
                    f = f2;
                }
            }
        } else if (f < 0.0f) {
            float f3 = this.f3462c;
            f = (f % f3) + f3;
        } else {
            float f4 = this.f3462c;
            if (f > f4) {
                f %= f4;
            }
        }
        Segment<T> segment = null;
        int i = 0;
        while (true) {
            Array<Segment<T>> array = this.f3460a;
            if (i >= array.size) {
                break;
            }
            Segment<T> segment2 = array.get(i);
            if (segment2.f3472d >= f) {
                segment = segment2;
                break;
            }
            i++;
        }
        t.set(segment.f3469a).sub(segment.f3470b).scl((segment.f3472d - f) / segment.f3471c).add(segment.f3470b);
    }

    @Override // com.badlogic.gdx.p032ai.steer.utils.Path
    public LinePathParam createParam() {
        return new LinePathParam();
    }

    public void createPath(Array<T> array) {
        int i;
        T first;
        if (array != null && (i = array.size) >= 2) {
            this.f3460a = new Array<>(i);
            this.f3462c = 0.0f;
            T first2 = array.first();
            int i2 = 1;
            while (true) {
                int i3 = array.size;
                if (i2 <= i3) {
                    if (i2 < i3) {
                        first = array.get(i2);
                    } else if (!this.f3461b) {
                        first = array.first();
                    } else {
                        return;
                    }
                    T t = first;
                    Segment<T> segment = new Segment<>(first2, t);
                    float f = this.f3462c + segment.f3471c;
                    this.f3462c = f;
                    segment.f3472d = f;
                    this.f3460a.add(segment);
                    i2++;
                    first2 = t;
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("waypoints cannot be null and must contain at least two (2) waypoints");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public float calculatePointSegmentSquareDistance(T t, T t2, T t3, T t4) {
        t.set(t2);
        this.f3465f.set(t3);
        this.f3466g.set(t4);
        Vector sub = this.f3465f.sub(t2);
        float len2 = sub.len2();
        if (len2 != 0.0f) {
            t.mulAdd(sub, MathUtils.clamp(this.f3466g.sub(t2).dot(sub) / len2, 0.0f, 1.0f));
        }
        return t.dst2(t4);
    }
}
