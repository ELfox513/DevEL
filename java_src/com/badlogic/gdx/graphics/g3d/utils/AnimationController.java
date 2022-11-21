package com.badlogic.gdx.graphics.g3d.utils;

import com.badlogic.gdx.graphics.g3d.ModelInstance;
import com.badlogic.gdx.graphics.g3d.model.Animation;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public class AnimationController extends BaseAnimationController {
    public boolean allowSameAnimation;
    public AnimationDesc current;

    /* renamed from: e */
    public final Pool<AnimationDesc> f4807e;

    /* renamed from: f */
    public boolean f4808f;
    public boolean inAction;
    public boolean paused;
    public AnimationDesc previous;
    public AnimationDesc queued;
    public float queuedTransitionTime;
    public float transitionCurrentTime;
    public float transitionTargetTime;

    /* loaded from: classes.dex */
    public static class AnimationDesc {
        public Animation animation;
        public float duration;
        public AnimationListener listener;
        public int loopCount;
        public float offset;
        public float speed;
        public float time;

        /* renamed from: a */
        public float m24080a(float f) {
            int i;
            float f2;
            AnimationListener animationListener;
            if (this.loopCount != 0 && this.animation != null) {
                float f3 = this.speed * f;
                float f4 = 0.0f;
                if (!MathUtils.isZero(this.duration)) {
                    float f5 = this.time + f3;
                    this.time = f5;
                    if (this.speed < 0.0f) {
                        float f6 = this.duration;
                        float f7 = f6 - f5;
                        i = (int) Math.abs(f7 / f6);
                        this.time = this.duration - Math.abs(f7 % this.duration);
                    } else {
                        i = (int) Math.abs(f5 / this.duration);
                        this.time = Math.abs(this.time % this.duration);
                    }
                } else {
                    i = 1;
                }
                for (int i2 = 0; i2 < i; i2++) {
                    int i3 = this.loopCount;
                    if (i3 > 0) {
                        this.loopCount = i3 - 1;
                    }
                    if (this.loopCount != 0 && (animationListener = this.listener) != null) {
                        animationListener.onLoop(this);
                    }
                    if (this.loopCount == 0) {
                        float f8 = this.duration;
                        float f9 = ((i - 1) - i2) * f8;
                        if (f3 < 0.0f) {
                            f2 = f8 - this.time;
                        } else {
                            f2 = this.time;
                        }
                        float f10 = f9 + f2;
                        if (f3 >= 0.0f) {
                            f4 = f8;
                        }
                        this.time = f4;
                        AnimationListener animationListener2 = this.listener;
                        if (animationListener2 != null) {
                            animationListener2.onEnd(this);
                        }
                        return f10;
                    }
                }
                return -1.0f;
            }
            return f;
        }
    }

    /* loaded from: classes.dex */
    public interface AnimationListener {
        void onEnd(AnimationDesc animationDesc);

        void onLoop(AnimationDesc animationDesc);
    }

    public AnimationDesc action(String str, int i, float f, AnimationListener animationListener, float f2) {
        return action(str, 0.0f, -1.0f, i, f, animationListener, f2);
    }

    public AnimationDesc animate(String str, float f) {
        return animate(str, 1, 1.0f, null, f);
    }

    public AnimationDesc queue(String str, int i, float f, AnimationListener animationListener, float f2) {
        return queue(str, 0.0f, -1.0f, i, f, animationListener, f2);
    }

    /* renamed from: r */
    public final AnimationDesc m24085r(AnimationDesc animationDesc) {
        return m24086q(animationDesc.animation, animationDesc.offset, animationDesc.duration, animationDesc.loopCount, animationDesc.speed, animationDesc.listener);
    }

    public AnimationDesc setAnimation(String str) {
        return setAnimation(str, 1, 1.0f, null);
    }

    public AnimationDesc action(String str, float f, float f2, int i, float f3, AnimationListener animationListener, float f4) {
        return m24088o(m24084s(str, f, f2, i, f3, animationListener), f4);
    }

    public AnimationDesc animate(String str, AnimationListener animationListener, float f) {
        return animate(str, 1, 1.0f, animationListener, f);
    }

    /* renamed from: o */
    public AnimationDesc m24088o(AnimationDesc animationDesc, float f) {
        AnimationDesc m24085r;
        if (animationDesc.loopCount >= 0) {
            AnimationDesc animationDesc2 = this.current;
            if (animationDesc2 != null && animationDesc2.loopCount != 0) {
                if (this.inAction) {
                    m24085r = null;
                } else {
                    m24085r = m24085r(animationDesc2);
                }
                this.inAction = false;
                m24087p(animationDesc, f);
                this.inAction = true;
                if (m24085r != null) {
                    m24083t(m24085r, f);
                }
            } else {
                m24087p(animationDesc, f);
            }
            return animationDesc;
        }
        throw new GdxRuntimeException("An action cannot be continuous");
    }

    /* renamed from: p */
    public AnimationDesc m24087p(AnimationDesc animationDesc, float f) {
        AnimationDesc animationDesc2 = this.current;
        if (animationDesc2 != null && animationDesc2.loopCount != 0) {
            if (this.inAction) {
                m24083t(animationDesc, f);
            } else if (!this.allowSameAnimation && animationDesc != null && animationDesc2.animation == animationDesc.animation) {
                animationDesc.time = animationDesc2.time;
                this.f4807e.free(animationDesc2);
                this.current = animationDesc;
            } else {
                AnimationDesc animationDesc3 = this.previous;
                if (animationDesc3 != null) {
                    m24066n(animationDesc3.animation);
                    this.f4807e.free(this.previous);
                }
                this.previous = this.current;
                this.current = animationDesc;
                this.transitionCurrentTime = 0.0f;
                this.transitionTargetTime = f;
            }
        } else {
            this.current = animationDesc;
        }
        return animationDesc;
    }

    /* renamed from: q */
    public final AnimationDesc m24086q(Animation animation, float f, float f2, int i, float f3, AnimationListener animationListener) {
        if (animation == null) {
            return null;
        }
        AnimationDesc obtain = this.f4807e.obtain();
        obtain.animation = animation;
        obtain.listener = animationListener;
        obtain.loopCount = i;
        obtain.speed = f3;
        obtain.offset = f;
        float f4 = 0.0f;
        if (f2 < 0.0f) {
            f2 = animation.duration - f;
        }
        obtain.duration = f2;
        if (f3 < 0.0f) {
            f4 = f2;
        }
        obtain.time = f4;
        return obtain;
    }

    public AnimationDesc queue(String str, float f, float f2, int i, float f3, AnimationListener animationListener, float f4) {
        return m24083t(m24084s(str, f, f2, i, f3, animationListener), f4);
    }

    /* renamed from: s */
    public final AnimationDesc m24084s(String str, float f, float f2, int i, float f3, AnimationListener animationListener) {
        if (str == null) {
            return null;
        }
        Animation animation = this.target.getAnimation(str);
        if (animation != null) {
            return m24086q(animation, f, f2, i, f3, animationListener);
        }
        throw new GdxRuntimeException("Unknown animation: " + str);
    }

    public AnimationDesc setAnimation(String str, int i) {
        return setAnimation(str, i, 1.0f, null);
    }

    /* renamed from: t */
    public AnimationDesc m24083t(AnimationDesc animationDesc, float f) {
        AnimationDesc animationDesc2 = this.current;
        if (animationDesc2 != null && animationDesc2.loopCount != 0) {
            AnimationDesc animationDesc3 = this.queued;
            if (animationDesc3 != null) {
                this.f4807e.free(animationDesc3);
            }
            this.queued = animationDesc;
            this.queuedTransitionTime = f;
            AnimationDesc animationDesc4 = this.current;
            if (animationDesc4.loopCount < 0) {
                animationDesc4.loopCount = 1;
            }
        } else {
            m24087p(animationDesc, f);
        }
        return animationDesc;
    }

    /* renamed from: u */
    public AnimationDesc m24082u(AnimationDesc animationDesc) {
        AnimationDesc animationDesc2 = this.current;
        if (animationDesc2 == null) {
            this.current = animationDesc;
        } else {
            if (!this.allowSameAnimation && animationDesc != null && animationDesc2.animation == animationDesc.animation) {
                animationDesc.time = animationDesc2.time;
            } else {
                m24066n(animationDesc2.animation);
            }
            this.f4807e.free(this.current);
            this.current = animationDesc;
        }
        this.f4808f = true;
        return animationDesc;
    }

    public void update(float f) {
        AnimationDesc animationDesc;
        if (this.paused) {
            return;
        }
        AnimationDesc animationDesc2 = this.previous;
        if (animationDesc2 != null) {
            float f2 = this.transitionCurrentTime + f;
            this.transitionCurrentTime = f2;
            if (f2 >= this.transitionTargetTime) {
                m24066n(animationDesc2.animation);
                this.f4808f = true;
                this.f4807e.free(this.previous);
                this.previous = null;
            }
        }
        if (this.f4808f) {
            this.target.calculateTransforms();
            this.f4808f = false;
        }
        AnimationDesc animationDesc3 = this.current;
        if (animationDesc3 != null && animationDesc3.loopCount != 0 && animationDesc3.animation != null) {
            float m24080a = animationDesc3.m24080a(f);
            if (m24080a >= 0.0f && (animationDesc = this.queued) != null) {
                this.inAction = false;
                m24087p(animationDesc, this.queuedTransitionTime);
                this.queued = null;
                if (m24080a > 0.0f) {
                    update(m24080a);
                    return;
                }
                return;
            }
            AnimationDesc animationDesc4 = this.previous;
            if (animationDesc4 != null) {
                Animation animation = animationDesc4.animation;
                float f3 = animationDesc4.offset + animationDesc4.time;
                AnimationDesc animationDesc5 = this.current;
                m24076d(animation, f3, animationDesc5.animation, animationDesc5.offset + animationDesc5.time, this.transitionCurrentTime / this.transitionTargetTime);
                return;
            }
            AnimationDesc animationDesc6 = this.current;
            m24078b(animationDesc6.animation, animationDesc6.offset + animationDesc6.time);
        }
    }

    public AnimationController(ModelInstance modelInstance) {
        super(modelInstance);
        this.f4807e = new Pool<AnimationDesc>() { // from class: com.badlogic.gdx.graphics.g3d.utils.AnimationController.1
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public AnimationDesc newObject() {
                return new AnimationDesc();
            }
        };
        this.f4808f = false;
    }

    public AnimationDesc animate(String str, int i, AnimationListener animationListener, float f) {
        return animate(str, i, 1.0f, animationListener, f);
    }

    public AnimationDesc setAnimation(String str, AnimationListener animationListener) {
        return setAnimation(str, 1, 1.0f, animationListener);
    }

    public AnimationDesc animate(String str, int i, float f, AnimationListener animationListener, float f2) {
        return animate(str, 0.0f, -1.0f, i, f, animationListener, f2);
    }

    public AnimationDesc setAnimation(String str, int i, AnimationListener animationListener) {
        return setAnimation(str, i, 1.0f, animationListener);
    }

    public AnimationDesc animate(String str, float f, float f2, int i, float f3, AnimationListener animationListener, float f4) {
        return m24087p(m24084s(str, f, f2, i, f3, animationListener), f4);
    }

    public AnimationDesc setAnimation(String str, int i, float f, AnimationListener animationListener) {
        return setAnimation(str, 0.0f, -1.0f, i, f, animationListener);
    }

    public AnimationDesc setAnimation(String str, float f, float f2, int i, float f3, AnimationListener animationListener) {
        return m24082u(m24084s(str, f, f2, i, f3, animationListener));
    }
}
