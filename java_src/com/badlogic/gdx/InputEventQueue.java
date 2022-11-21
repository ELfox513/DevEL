package com.badlogic.gdx;

import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.NumberUtils;
/* loaded from: classes.dex */
public class InputEventQueue {

    /* renamed from: a */
    public final IntArray f3167a = new IntArray();

    /* renamed from: b */
    public final IntArray f3168b = new IntArray();

    /* renamed from: c */
    public long f3169c;

    /* renamed from: a */
    public final synchronized int m24476a(int i, int i2) {
        IntArray intArray = this.f3167a;
        int[] iArr = intArray.items;
        int i3 = intArray.size;
        while (i2 < i3) {
            int i4 = iArr[i2];
            if (i4 == i) {
                return i2;
            }
            int i5 = i2 + 3;
            switch (i4) {
                case -1:
                    i2 = i5 + iArr[i5];
                    break;
                case 0:
                case 1:
                case 2:
                    i2 = i5 + 1;
                    break;
                case 3:
                case 4:
                    i2 = i5 + 4;
                    break;
                case 5:
                    i2 = i5 + 3;
                    break;
                case 6:
                case 7:
                    i2 = i5 + 2;
                    break;
                default:
                    throw new RuntimeException();
            }
        }
        return -1;
    }

    public void drain(@Null InputProcessor inputProcessor) {
        int i;
        int i2;
        synchronized (this) {
            if (inputProcessor == null) {
                this.f3167a.clear();
                return;
            }
            this.f3168b.addAll(this.f3167a);
            this.f3167a.clear();
            IntArray intArray = this.f3168b;
            int[] iArr = intArray.items;
            int i3 = 0;
            int i4 = intArray.size;
            while (i3 < i4) {
                int i5 = i3 + 1;
                int i6 = iArr[i3];
                int i7 = i5 + 1;
                int i8 = i7 + 1;
                this.f3169c = (iArr[i5] << 32) | (iArr[i7] & 4294967295L);
                switch (i6) {
                    case -1:
                        i3 = i8 + iArr[i8];
                        break;
                    case 0:
                        i3 = i8 + 1;
                        inputProcessor.keyDown(iArr[i8]);
                        break;
                    case 1:
                        i3 = i8 + 1;
                        inputProcessor.keyUp(iArr[i8]);
                        break;
                    case 2:
                        i3 = i8 + 1;
                        inputProcessor.keyTyped((char) iArr[i8]);
                        break;
                    case 3:
                        int i9 = i8 + 1;
                        int i10 = i9 + 1;
                        int i11 = i10 + 1;
                        i2 = i11 + 1;
                        inputProcessor.touchDown(iArr[i8], iArr[i9], iArr[i10], iArr[i11]);
                        i3 = i2;
                        break;
                    case 4:
                        int i12 = i8 + 1;
                        int i13 = i12 + 1;
                        int i14 = i13 + 1;
                        i2 = i14 + 1;
                        inputProcessor.touchUp(iArr[i8], iArr[i12], iArr[i13], iArr[i14]);
                        i3 = i2;
                        break;
                    case 5:
                        int i15 = i8 + 1;
                        int i16 = i15 + 1;
                        inputProcessor.touchDragged(iArr[i8], iArr[i15], iArr[i16]);
                        i3 = i16 + 1;
                        break;
                    case 6:
                        int i17 = i8 + 1;
                        i = i17 + 1;
                        inputProcessor.mouseMoved(iArr[i8], iArr[i17]);
                        i3 = i;
                        break;
                    case 7:
                        int i18 = i8 + 1;
                        i = i18 + 1;
                        inputProcessor.scrolled(NumberUtils.intBitsToFloat(iArr[i8]), NumberUtils.intBitsToFloat(iArr[i18]));
                        i3 = i;
                        break;
                    default:
                        throw new RuntimeException();
                }
            }
            this.f3168b.clear();
        }
    }

    public long getCurrentEventTime() {
        return this.f3169c;
    }

    public synchronized boolean keyDown(int i, long j) {
        this.f3167a.add(0);
        m24475b(j);
        this.f3167a.add(i);
        return false;
    }

    public synchronized boolean keyTyped(char c, long j) {
        this.f3167a.add(2);
        m24475b(j);
        this.f3167a.add(c);
        return false;
    }

    public synchronized boolean keyUp(int i, long j) {
        this.f3167a.add(1);
        m24475b(j);
        this.f3167a.add(i);
        return false;
    }

    public synchronized boolean mouseMoved(int i, int i2, long j) {
        int m24476a = m24476a(6, 0);
        while (m24476a >= 0) {
            this.f3167a.set(m24476a, -1);
            this.f3167a.set(m24476a + 3, 2);
            m24476a = m24476a(6, m24476a + 5);
        }
        this.f3167a.add(6);
        m24475b(j);
        this.f3167a.add(i);
        this.f3167a.add(i2);
        return false;
    }

    public synchronized boolean scrolled(float f, float f2, long j) {
        this.f3167a.add(7);
        m24475b(j);
        this.f3167a.add(NumberUtils.floatToIntBits(f));
        this.f3167a.add(NumberUtils.floatToIntBits(f2));
        return false;
    }

    public synchronized boolean touchDown(int i, int i2, int i3, int i4, long j) {
        this.f3167a.add(3);
        m24475b(j);
        this.f3167a.add(i);
        this.f3167a.add(i2);
        this.f3167a.add(i3);
        this.f3167a.add(i4);
        return false;
    }

    public synchronized boolean touchDragged(int i, int i2, int i3, long j) {
        int m24476a = m24476a(5, 0);
        while (m24476a >= 0) {
            if (this.f3167a.get(m24476a + 5) == i3) {
                this.f3167a.set(m24476a, -1);
                this.f3167a.set(m24476a + 3, 3);
            }
            m24476a = m24476a(5, m24476a + 6);
        }
        this.f3167a.add(5);
        m24475b(j);
        this.f3167a.add(i);
        this.f3167a.add(i2);
        this.f3167a.add(i3);
        return false;
    }

    public synchronized boolean touchUp(int i, int i2, int i3, int i4, long j) {
        this.f3167a.add(4);
        m24475b(j);
        this.f3167a.add(i);
        this.f3167a.add(i2);
        this.f3167a.add(i3);
        this.f3167a.add(i4);
        return false;
    }

    /* renamed from: b */
    public final void m24475b(long j) {
        this.f3167a.add((int) (j >> 32));
        this.f3167a.add((int) j);
    }
}
