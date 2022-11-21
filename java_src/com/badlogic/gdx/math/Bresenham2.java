package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public class Bresenham2 {

    /* renamed from: a */
    public final Array<GridPoint2> f5373a = new Array<>();

    /* renamed from: b */
    public final Pool<GridPoint2> f5374b = new Pool<GridPoint2>() { // from class: com.badlogic.gdx.math.Bresenham2.1
        @Override // com.badlogic.gdx.utils.Pool
        /* renamed from: c */
        public GridPoint2 newObject() {
            return new GridPoint2();
        }
    };

    public Array<GridPoint2> line(GridPoint2 gridPoint2, GridPoint2 gridPoint22) {
        return line(gridPoint2.f5411x, gridPoint2.f5412y, gridPoint22.f5411x, gridPoint22.f5412y);
    }

    public Array<GridPoint2> line(int i, int i2, int i3, int i4) {
        this.f5374b.freeAll(this.f5373a);
        this.f5373a.clear();
        return line(i, i2, i3, i4, this.f5374b, this.f5373a);
    }

    public Array<GridPoint2> line(int i, int i2, int i3, int i4, Pool<GridPoint2> pool, Array<GridPoint2> array) {
        int i5;
        int i6;
        int i7;
        int i8 = i3 - i;
        int i9 = i4 - i2;
        if (i8 < 0) {
            i5 = -1;
            i6 = -1;
        } else if (i8 > 0) {
            i5 = 1;
            i6 = 1;
        } else {
            i5 = 0;
            i6 = 0;
        }
        int i10 = i9 < 0 ? -1 : i9 > 0 ? 1 : 0;
        int abs = Math.abs(i8);
        int abs2 = Math.abs(i9);
        if (abs < abs2) {
            abs = Math.abs(i9);
            abs2 = Math.abs(i8);
            i7 = i9 >= 0 ? i9 > 0 ? 1 : 0 : -1;
            i6 = 0;
        } else {
            i7 = 0;
        }
        int i11 = abs2 << 1;
        int i12 = abs << 1;
        int i13 = 0;
        for (int i14 = 0; i14 <= abs; i14++) {
            GridPoint2 obtain = pool.obtain();
            obtain.set(i, i2);
            array.add(obtain);
            i13 += i11;
            if (i13 > abs) {
                i13 -= i12;
                i += i5;
                i2 += i10;
            } else {
                i += i6;
                i2 += i7;
            }
        }
        return array;
    }
}
