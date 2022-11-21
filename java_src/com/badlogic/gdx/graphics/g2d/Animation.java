package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.reflect.ArrayReflection;
/* loaded from: classes.dex */
public class Animation<T> {

    /* renamed from: a */
    public T[] f3966a;

    /* renamed from: b */
    public float f3967b;

    /* renamed from: c */
    public float f3968c;

    /* renamed from: d */
    public int f3969d;

    /* renamed from: e */
    public float f3970e;

    /* renamed from: f */
    public PlayMode f3971f;

    /* renamed from: com.badlogic.gdx.graphics.g2d.Animation$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C11961 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3972a;

        static {
            int[] iArr = new int[PlayMode.values().length];
            f3972a = iArr;
            try {
                iArr[PlayMode.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3972a[PlayMode.LOOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3972a[PlayMode.LOOP_PINGPONG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3972a[PlayMode.LOOP_RANDOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3972a[PlayMode.REVERSED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3972a[PlayMode.LOOP_REVERSED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum PlayMode {
        NORMAL,
        REVERSED,
        LOOP,
        LOOP_REVERSED,
        LOOP_PINGPONG,
        LOOP_RANDOM
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Animation(float f, Array<? extends T> array) {
        this.f3971f = PlayMode.NORMAL;
        this.f3967b = f;
        Object[] objArr = (Object[]) ArrayReflection.newInstance(array.items.getClass().getComponentType(), array.size);
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = array.get(i2);
        }
        m24248a(objArr);
    }

    public float getAnimationDuration() {
        return this.f3968c;
    }

    public float getFrameDuration() {
        return this.f3967b;
    }

    public T getKeyFrame(float f, boolean z) {
        PlayMode playMode;
        PlayMode playMode2;
        PlayMode playMode3 = this.f3971f;
        if (z && (playMode3 == (playMode2 = PlayMode.NORMAL) || playMode3 == PlayMode.REVERSED)) {
            if (playMode3 == playMode2) {
                this.f3971f = PlayMode.LOOP;
            } else {
                this.f3971f = PlayMode.LOOP_REVERSED;
            }
        } else if (!z && playMode3 != PlayMode.NORMAL && playMode3 != (playMode = PlayMode.REVERSED)) {
            if (playMode3 == PlayMode.LOOP_REVERSED) {
                this.f3971f = playMode;
            } else {
                this.f3971f = PlayMode.LOOP;
            }
        }
        T keyFrame = getKeyFrame(f);
        this.f3971f = playMode3;
        return keyFrame;
    }

    public T[] getKeyFrames() {
        return this.f3966a;
    }

    public PlayMode getPlayMode() {
        return this.f3971f;
    }

    public void setPlayMode(PlayMode playMode) {
        this.f3971f = playMode;
    }

    /* renamed from: a */
    public void m24248a(T... tArr) {
        this.f3966a = tArr;
        this.f3968c = tArr.length * this.f3967b;
    }

    public int getKeyFrameIndex(float f) {
        if (this.f3966a.length == 1) {
            return 0;
        }
        int i = (int) (f / this.f3967b);
        switch (C11961.f3972a[this.f3971f.ordinal()]) {
            case 1:
                i = Math.min(this.f3966a.length - 1, i);
                break;
            case 2:
                i %= this.f3966a.length;
                break;
            case 3:
                T[] tArr = this.f3966a;
                i %= (tArr.length * 2) - 2;
                if (i >= tArr.length) {
                    i = (tArr.length - 2) - (i - tArr.length);
                    break;
                }
                break;
            case 4:
                if (((int) (this.f3970e / this.f3967b)) != i) {
                    i = MathUtils.random(this.f3966a.length - 1);
                    break;
                } else {
                    i = this.f3969d;
                    break;
                }
            case 5:
                i = Math.max((this.f3966a.length - i) - 1, 0);
                break;
            case 6:
                T[] tArr2 = this.f3966a;
                i = (tArr2.length - (i % tArr2.length)) - 1;
                break;
        }
        this.f3969d = i;
        this.f3970e = f;
        return i;
    }

    public boolean isAnimationFinished(float f) {
        if (this.f3966a.length - 1 < ((int) (f / this.f3967b))) {
            return true;
        }
        return false;
    }

    public void setFrameDuration(float f) {
        this.f3967b = f;
        this.f3968c = this.f3966a.length * f;
    }

    public Animation(float f, Array<? extends T> array, PlayMode playMode) {
        this(f, array);
        setPlayMode(playMode);
    }

    public Animation(float f, T... tArr) {
        this.f3971f = PlayMode.NORMAL;
        this.f3967b = f;
        m24248a(tArr);
    }

    public T getKeyFrame(float f) {
        return this.f3966a[getKeyFrameIndex(f)];
    }
}
