package com.badlogic.gdx.input;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.TimeUtils;
import com.badlogic.gdx.utils.Timer;
/* loaded from: classes.dex */
public class GestureDetector extends InputAdapter {

    /* renamed from: A */
    public boolean f5171A;

    /* renamed from: B */
    public final VelocityTracker f5172B;

    /* renamed from: C */
    public float f5173C;

    /* renamed from: D */
    public float f5174D;

    /* renamed from: E */
    public long f5175E;

    /* renamed from: F */
    public Vector2 f5176F;

    /* renamed from: G */
    public final Vector2 f5177G;

    /* renamed from: H */
    public final Vector2 f5178H;

    /* renamed from: I */
    public final Vector2 f5179I;

    /* renamed from: J */
    public final Timer.Task f5180J;

    /* renamed from: a */
    public final GestureListener f5181a;

    /* renamed from: b */
    public float f5182b;

    /* renamed from: d */
    public float f5183d;

    /* renamed from: k */
    public long f5184k;

    /* renamed from: p */
    public float f5185p;

    /* renamed from: q */
    public long f5186q;

    /* renamed from: r */
    public boolean f5187r;

    /* renamed from: s */
    public int f5188s;

    /* renamed from: t */
    public long f5189t;

    /* renamed from: u */
    public float f5190u;

    /* renamed from: v */
    public float f5191v;

    /* renamed from: w */
    public int f5192w;

    /* renamed from: x */
    public int f5193x;

    /* renamed from: y */
    public boolean f5194y;

    /* renamed from: z */
    public boolean f5195z;

    /* loaded from: classes.dex */
    public static class GestureAdapter implements GestureListener {
        @Override // com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean fling(float f, float f2, int i) {
            return false;
        }

        @Override // com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean longPress(float f, float f2) {
            return false;
        }

        @Override // com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean pan(float f, float f2, float f3, float f4) {
            return false;
        }

        @Override // com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean panStop(float f, float f2, int i, int i2) {
            return false;
        }

        @Override // com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean pinch(Vector2 vector2, Vector2 vector22, Vector2 vector23, Vector2 vector24) {
            return false;
        }

        @Override // com.badlogic.gdx.input.GestureDetector.GestureListener
        public void pinchStop() {
        }

        @Override // com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean tap(float f, float f2, int i, int i2) {
            return false;
        }

        @Override // com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean touchDown(float f, float f2, int i, int i2) {
            return false;
        }

        @Override // com.badlogic.gdx.input.GestureDetector.GestureListener
        public boolean zoom(float f, float f2) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public interface GestureListener {
        boolean fling(float f, float f2, int i);

        boolean longPress(float f, float f2);

        boolean pan(float f, float f2, float f3, float f4);

        boolean panStop(float f, float f2, int i, int i2);

        boolean pinch(Vector2 vector2, Vector2 vector22, Vector2 vector23, Vector2 vector24);

        void pinchStop();

        boolean tap(float f, float f2, int i, int i2);

        boolean touchDown(float f, float f2, int i, int i2);

        boolean zoom(float f, float f2);
    }

    /* loaded from: classes.dex */
    public static class VelocityTracker {

        /* renamed from: b */
        public float f5198b;

        /* renamed from: c */
        public float f5199c;

        /* renamed from: d */
        public float f5200d;

        /* renamed from: e */
        public float f5201e;

        /* renamed from: f */
        public long f5202f;

        /* renamed from: g */
        public int f5203g;

        /* renamed from: a */
        public int f5197a = 10;

        /* renamed from: h */
        public float[] f5204h = new float[10];

        /* renamed from: i */
        public float[] f5205i = new float[10];

        /* renamed from: j */
        public long[] f5206j = new long[10];

        /* renamed from: a */
        public final float m23980a(float[] fArr, int i) {
            int min = Math.min(this.f5197a, i);
            float f = 0.0f;
            for (int i2 = 0; i2 < min; i2++) {
                f += fArr[i2];
            }
            return f / min;
        }

        /* renamed from: b */
        public final long m23979b(long[] jArr, int i) {
            int min = Math.min(this.f5197a, i);
            long j = 0;
            for (int i2 = 0; i2 < min; i2++) {
                j += jArr[i2];
            }
            if (min == 0) {
                return 0L;
            }
            return j / min;
        }

        public float getVelocityX() {
            float m23980a = m23980a(this.f5204h, this.f5203g);
            float m23979b = ((float) m23979b(this.f5206j, this.f5203g)) / 1.0E9f;
            if (m23979b == 0.0f) {
                return 0.0f;
            }
            return m23980a / m23979b;
        }

        public float getVelocityY() {
            float m23980a = m23980a(this.f5205i, this.f5203g);
            float m23979b = ((float) m23979b(this.f5206j, this.f5203g)) / 1.0E9f;
            if (m23979b == 0.0f) {
                return 0.0f;
            }
            return m23980a / m23979b;
        }

        public void start(float f, float f2, long j) {
            this.f5198b = f;
            this.f5199c = f2;
            this.f5200d = 0.0f;
            this.f5201e = 0.0f;
            this.f5203g = 0;
            for (int i = 0; i < this.f5197a; i++) {
                this.f5204h[i] = 0.0f;
                this.f5205i[i] = 0.0f;
                this.f5206j[i] = 0;
            }
            this.f5202f = j;
        }

        public void update(float f, float f2, long j) {
            float f3 = f - this.f5198b;
            this.f5200d = f3;
            float f4 = f2 - this.f5199c;
            this.f5201e = f4;
            this.f5198b = f;
            this.f5199c = f2;
            long j2 = j - this.f5202f;
            this.f5202f = j;
            int i = this.f5203g;
            int i2 = i % this.f5197a;
            this.f5204h[i2] = f3;
            this.f5205i[i2] = f4;
            this.f5206j[i2] = j2;
            this.f5203g = i + 1;
        }
    }

    public GestureDetector(GestureListener gestureListener) {
        this(20.0f, 0.4f, 1.1f, 2.14748365E9f, gestureListener);
    }

    /* renamed from: a */
    public final boolean m23981a(float f, float f2, float f3, float f4) {
        return Math.abs(f - f3) < this.f5182b && Math.abs(f2 - f4) < this.f5183d;
    }

    public void invalidateTapSquare() {
        this.f5187r = false;
    }

    public boolean isLongPressed() {
        return isLongPressed(this.f5185p);
    }

    public boolean isPanning() {
        return this.f5171A;
    }

    public void setLongPressSeconds(float f) {
        this.f5185p = f;
    }

    public void setMaxFlingDelay(long j) {
        this.f5186q = j;
    }

    public void setTapCountInterval(float f) {
        this.f5184k = f * 1.0E9f;
    }

    public void setTapSquareSize(float f) {
        setTapRectangleSize(f, f);
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean touchDown(int i, int i2, int i3, int i4) {
        return touchDown(i, i2, i3, i4);
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean touchDragged(int i, int i2, int i3) {
        return touchDragged(i, i2, i3);
    }

    @Override // com.badlogic.gdx.InputAdapter, com.badlogic.gdx.InputProcessor
    public boolean touchUp(int i, int i2, int i3, int i4) {
        return touchUp(i, i2, i3, i4);
    }

    public GestureDetector(float f, float f2, float f3, float f4, GestureListener gestureListener) {
        this(f, f, f2, f3, f4, gestureListener);
    }

    public void cancel() {
        this.f5180J.cancel();
        this.f5194y = true;
    }

    public boolean isLongPressed(float f) {
        return this.f5175E != 0 && TimeUtils.nanoTime() - this.f5175E > ((long) (f * 1.0E9f));
    }

    public void reset() {
        this.f5175E = 0L;
        this.f5171A = false;
        this.f5187r = false;
        this.f5172B.f5202f = 0L;
    }

    public void setTapRectangleSize(float f, float f2) {
        this.f5182b = f;
        this.f5183d = f2;
    }

    public boolean touchDown(float f, float f2, int i, int i2) {
        if (i > 1) {
            return false;
        }
        if (i == 0) {
            this.f5176F.set(f, f2);
            long currentEventTime = Gdx.input.getCurrentEventTime();
            this.f5175E = currentEventTime;
            this.f5172B.start(f, f2, currentEventTime);
            if (Gdx.input.isTouched(1)) {
                this.f5187r = false;
                this.f5195z = true;
                this.f5178H.set(this.f5176F);
                this.f5179I.set(this.f5177G);
                this.f5180J.cancel();
            } else {
                this.f5187r = true;
                this.f5195z = false;
                this.f5194y = false;
                this.f5173C = f;
                this.f5174D = f2;
                if (!this.f5180J.isScheduled()) {
                    Timer.schedule(this.f5180J, this.f5185p);
                }
            }
        } else {
            this.f5177G.set(f, f2);
            this.f5187r = false;
            this.f5195z = true;
            this.f5178H.set(this.f5176F);
            this.f5179I.set(this.f5177G);
            this.f5180J.cancel();
        }
        return this.f5181a.touchDown(f, f2, i, i2);
    }

    public boolean touchDragged(float f, float f2, int i) {
        if (i <= 1 && !this.f5194y) {
            if (i == 0) {
                this.f5176F.set(f, f2);
            } else {
                this.f5177G.set(f, f2);
            }
            if (this.f5195z) {
                GestureListener gestureListener = this.f5181a;
                if (gestureListener != null) {
                    return this.f5181a.zoom(this.f5178H.dst(this.f5179I), this.f5176F.dst(this.f5177G)) || gestureListener.pinch(this.f5178H, this.f5179I, this.f5176F, this.f5177G);
                }
                return false;
            }
            this.f5172B.update(f, f2, Gdx.input.getCurrentEventTime());
            if (this.f5187r && !m23981a(f, f2, this.f5173C, this.f5174D)) {
                this.f5180J.cancel();
                this.f5187r = false;
            }
            if (this.f5187r) {
                return false;
            }
            this.f5171A = true;
            GestureListener gestureListener2 = this.f5181a;
            VelocityTracker velocityTracker = this.f5172B;
            return gestureListener2.pan(f, f2, velocityTracker.f5200d, velocityTracker.f5201e);
        }
        return false;
    }

    public boolean touchUp(float f, float f2, int i, int i2) {
        boolean z = true;
        if (i > 1) {
            return false;
        }
        if (this.f5187r && !m23981a(f, f2, this.f5173C, this.f5174D)) {
            this.f5187r = false;
        }
        boolean z2 = this.f5171A;
        this.f5171A = false;
        this.f5180J.cancel();
        if (this.f5194y) {
            return false;
        }
        if (this.f5187r) {
            if (this.f5192w != i2 || this.f5193x != i || TimeUtils.nanoTime() - this.f5189t > this.f5184k || !m23981a(f, f2, this.f5190u, this.f5191v)) {
                this.f5188s = 0;
            }
            this.f5188s++;
            this.f5189t = TimeUtils.nanoTime();
            this.f5190u = f;
            this.f5191v = f2;
            this.f5192w = i2;
            this.f5193x = i;
            this.f5175E = 0L;
            return this.f5181a.tap(f, f2, this.f5188s, i2);
        } else if (this.f5195z) {
            this.f5195z = false;
            this.f5181a.pinchStop();
            this.f5171A = true;
            if (i == 0) {
                VelocityTracker velocityTracker = this.f5172B;
                Vector2 vector2 = this.f5177G;
                velocityTracker.start(vector2.f5527x, vector2.f5528y, Gdx.input.getCurrentEventTime());
            } else {
                VelocityTracker velocityTracker2 = this.f5172B;
                Vector2 vector22 = this.f5176F;
                velocityTracker2.start(vector22.f5527x, vector22.f5528y, Gdx.input.getCurrentEventTime());
            }
            return false;
        } else {
            boolean panStop = (!z2 || this.f5171A) ? false : this.f5181a.panStop(f, f2, i, i2);
            long currentEventTime = Gdx.input.getCurrentEventTime();
            if (currentEventTime - this.f5175E <= this.f5186q) {
                this.f5172B.update(f, f2, currentEventTime);
                if (!this.f5181a.fling(this.f5172B.getVelocityX(), this.f5172B.getVelocityY(), i2) && !panStop) {
                    z = false;
                }
                panStop = z;
            }
            this.f5175E = 0L;
            return panStop;
        }
    }

    public GestureDetector(float f, float f2, float f3, float f4, float f5, GestureListener gestureListener) {
        this.f5172B = new VelocityTracker();
        this.f5176F = new Vector2();
        this.f5177G = new Vector2();
        this.f5178H = new Vector2();
        this.f5179I = new Vector2();
        this.f5180J = new Timer.Task() { // from class: com.badlogic.gdx.input.GestureDetector.1
            @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
            public void run() {
                GestureDetector gestureDetector = GestureDetector.this;
                if (gestureDetector.f5194y) {
                    return;
                }
                GestureListener gestureListener2 = gestureDetector.f5181a;
                Vector2 vector2 = gestureDetector.f5176F;
                gestureDetector.f5194y = gestureListener2.longPress(vector2.f5527x, vector2.f5528y);
            }
        };
        if (gestureListener != null) {
            this.f5182b = f;
            this.f5183d = f2;
            this.f5184k = f3 * 1.0E9f;
            this.f5185p = f4;
            this.f5186q = f5 * 1.0E9f;
            this.f5181a = gestureListener;
            return;
        }
        throw new IllegalArgumentException("listener cannot be null.");
    }
}
