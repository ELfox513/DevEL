package com.badlogic.gdx.math;

import java.io.Serializable;
/* loaded from: classes.dex */
public class GridPoint2 implements Serializable {

    /* renamed from: x */
    public int f5411x;

    /* renamed from: y */
    public int f5412y;

    public GridPoint2() {
    }

    public GridPoint2 add(GridPoint2 gridPoint2) {
        this.f5411x += gridPoint2.f5411x;
        this.f5412y += gridPoint2.f5412y;
        return this;
    }

    public GridPoint2 cpy() {
        return new GridPoint2(this);
    }

    public float dst(GridPoint2 gridPoint2) {
        int i = gridPoint2.f5411x - this.f5411x;
        int i2 = gridPoint2.f5412y - this.f5412y;
        return (float) Math.sqrt((i * i) + (i2 * i2));
    }

    public float dst2(GridPoint2 gridPoint2) {
        int i = gridPoint2.f5411x - this.f5411x;
        int i2 = gridPoint2.f5412y - this.f5412y;
        return (i * i) + (i2 * i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        GridPoint2 gridPoint2 = (GridPoint2) obj;
        return this.f5411x == gridPoint2.f5411x && this.f5412y == gridPoint2.f5412y;
    }

    public GridPoint2 set(GridPoint2 gridPoint2) {
        this.f5411x = gridPoint2.f5411x;
        this.f5412y = gridPoint2.f5412y;
        return this;
    }

    public GridPoint2 sub(GridPoint2 gridPoint2) {
        this.f5411x -= gridPoint2.f5411x;
        this.f5412y -= gridPoint2.f5412y;
        return this;
    }

    public String toString() {
        return "(" + this.f5411x + ", " + this.f5412y + ")";
    }

    public GridPoint2(int i, int i2) {
        this.f5411x = i;
        this.f5412y = i2;
    }

    public int hashCode() {
        return ((this.f5411x + 53) * 53) + this.f5412y;
    }

    public GridPoint2 add(int i, int i2) {
        this.f5411x += i;
        this.f5412y += i2;
        return this;
    }

    public float dst2(int i, int i2) {
        int i3 = i - this.f5411x;
        int i4 = i2 - this.f5412y;
        return (i3 * i3) + (i4 * i4);
    }

    public GridPoint2 set(int i, int i2) {
        this.f5411x = i;
        this.f5412y = i2;
        return this;
    }

    public GridPoint2 sub(int i, int i2) {
        this.f5411x -= i;
        this.f5412y -= i2;
        return this;
    }

    public float dst(int i, int i2) {
        int i3 = i - this.f5411x;
        int i4 = i2 - this.f5412y;
        return (float) Math.sqrt((i3 * i3) + (i4 * i4));
    }

    public GridPoint2(GridPoint2 gridPoint2) {
        this.f5411x = gridPoint2.f5411x;
        this.f5412y = gridPoint2.f5412y;
    }
}
