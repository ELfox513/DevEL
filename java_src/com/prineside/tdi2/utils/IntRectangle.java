package com.prineside.tdi2.utils;
/* loaded from: classes2.dex */
public class IntRectangle {
    public int maxX;
    public int maxY;
    public int minX;
    public int minY;

    public IntRectangle() {
    }

    public boolean contains(int i, int i2) {
        return this.minX <= i && this.maxX >= i && this.minY <= i2 && this.maxY >= i2;
    }

    public void extendToContain(int i, int i2) {
        if (i < this.minX) {
            this.minX = i;
        }
        if (i2 < this.minY) {
            this.minY = i2;
        }
        if (i > this.maxX) {
            this.maxX = i;
        }
        if (i2 > this.maxY) {
            this.maxY = i2;
        }
    }

    public boolean overlaps(IntRectangle intRectangle) {
        return this.minX < intRectangle.maxX && this.maxX > intRectangle.minX && this.minY < intRectangle.maxY && this.maxY > intRectangle.minY;
    }

    public void set(int i, int i2, int i3, int i4) {
        this.minX = i;
        this.maxX = i2;
        this.minY = i3;
        this.maxY = i4;
    }

    public IntRectangle(int i, int i2, int i3, int i4) {
        this.minX = i;
        this.maxX = i2;
        this.minY = i3;
        this.maxY = i4;
    }

    public boolean overlaps(int i, int i2, int i3, int i4) {
        return this.minX < i3 && this.maxX > i && this.minY < i4 && this.maxY > i2;
    }

    public void extendToContain(IntRectangle intRectangle) {
        int i = intRectangle.minX;
        if (i < this.minX) {
            this.minX = i;
        }
        int i2 = intRectangle.minY;
        if (i2 < this.minY) {
            this.minY = i2;
        }
        int i3 = intRectangle.maxX;
        if (i3 > this.maxX) {
            this.maxX = i3;
        }
        int i4 = intRectangle.maxY;
        if (i4 > this.maxY) {
            this.maxY = i4;
        }
    }

    public void set(IntRectangle intRectangle) {
        this.minX = intRectangle.minX;
        this.maxX = intRectangle.maxX;
        this.minY = intRectangle.minY;
        this.maxY = intRectangle.maxY;
    }
}
