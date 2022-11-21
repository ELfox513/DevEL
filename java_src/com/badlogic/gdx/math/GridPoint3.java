package com.badlogic.gdx.math;

import java.io.Serializable;
/* loaded from: classes.dex */
public class GridPoint3 implements Serializable {

    /* renamed from: x */
    public int f5413x;

    /* renamed from: y */
    public int f5414y;

    /* renamed from: z */
    public int f5415z;

    public GridPoint3() {
    }

    public GridPoint3 add(GridPoint3 gridPoint3) {
        this.f5413x += gridPoint3.f5413x;
        this.f5414y += gridPoint3.f5414y;
        this.f5415z += gridPoint3.f5415z;
        return this;
    }

    public GridPoint3 cpy() {
        return new GridPoint3(this);
    }

    public float dst(GridPoint3 gridPoint3) {
        int i = gridPoint3.f5413x - this.f5413x;
        int i2 = gridPoint3.f5414y - this.f5414y;
        int i3 = gridPoint3.f5415z - this.f5415z;
        return (float) Math.sqrt((i * i) + (i2 * i2) + (i3 * i3));
    }

    public float dst2(GridPoint3 gridPoint3) {
        int i = gridPoint3.f5413x - this.f5413x;
        int i2 = gridPoint3.f5414y - this.f5414y;
        int i3 = gridPoint3.f5415z - this.f5415z;
        return (i * i) + (i2 * i2) + (i3 * i3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        GridPoint3 gridPoint3 = (GridPoint3) obj;
        return this.f5413x == gridPoint3.f5413x && this.f5414y == gridPoint3.f5414y && this.f5415z == gridPoint3.f5415z;
    }

    public GridPoint3 set(GridPoint3 gridPoint3) {
        this.f5413x = gridPoint3.f5413x;
        this.f5414y = gridPoint3.f5414y;
        this.f5415z = gridPoint3.f5415z;
        return this;
    }

    public GridPoint3 sub(GridPoint3 gridPoint3) {
        this.f5413x -= gridPoint3.f5413x;
        this.f5414y -= gridPoint3.f5414y;
        this.f5415z -= gridPoint3.f5415z;
        return this;
    }

    public String toString() {
        return "(" + this.f5413x + ", " + this.f5414y + ", " + this.f5415z + ")";
    }

    public GridPoint3(int i, int i2, int i3) {
        this.f5413x = i;
        this.f5414y = i2;
        this.f5415z = i3;
    }

    public int hashCode() {
        return ((((this.f5413x + 17) * 17) + this.f5414y) * 17) + this.f5415z;
    }

    public GridPoint3 add(int i, int i2, int i3) {
        this.f5413x += i;
        this.f5414y += i2;
        this.f5415z += i3;
        return this;
    }

    public float dst2(int i, int i2, int i3) {
        int i4 = i - this.f5413x;
        int i5 = i2 - this.f5414y;
        int i6 = i3 - this.f5415z;
        return (i4 * i4) + (i5 * i5) + (i6 * i6);
    }

    public GridPoint3 set(int i, int i2, int i3) {
        this.f5413x = i;
        this.f5414y = i2;
        this.f5415z = i3;
        return this;
    }

    public GridPoint3 sub(int i, int i2, int i3) {
        this.f5413x -= i;
        this.f5414y -= i2;
        this.f5415z -= i3;
        return this;
    }

    public float dst(int i, int i2, int i3) {
        int i4 = i - this.f5413x;
        int i5 = i2 - this.f5414y;
        int i6 = i3 - this.f5415z;
        return (float) Math.sqrt((i4 * i4) + (i5 * i5) + (i6 * i6));
    }

    public GridPoint3(GridPoint3 gridPoint3) {
        this.f5413x = gridPoint3.f5413x;
        this.f5414y = gridPoint3.f5414y;
        this.f5415z = gridPoint3.f5415z;
    }
}
