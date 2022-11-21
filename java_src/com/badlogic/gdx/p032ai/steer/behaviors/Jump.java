package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.GdxAI;
import com.badlogic.gdx.p032ai.Logger;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteerableAdapter;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.Jump */
/* loaded from: classes.dex */
public class Jump<T extends Vector<T>> extends MatchVelocity<T> {
    public static boolean DEBUG_ENABLED = false;

    /* renamed from: f */
    public JumpDescriptor<T> f3396f;

    /* renamed from: g */
    public T f3397g;

    /* renamed from: h */
    public GravityComponentHandler<T> f3398h;

    /* renamed from: i */
    public JumpCallback f3399i;

    /* renamed from: j */
    public float f3400j;

    /* renamed from: k */
    public float f3401k;

    /* renamed from: l */
    public float f3402l;

    /* renamed from: m */
    public boolean f3403m;

    /* renamed from: n */
    public float f3404n;

    /* renamed from: o */
    public JumpTarget<T> f3405o;

    /* renamed from: p */
    public T f3406p;

    /* renamed from: com.badlogic.gdx.ai.steer.behaviors.Jump$GravityComponentHandler */
    /* loaded from: classes.dex */
    public interface GravityComponentHandler<T extends Vector<T>> {
        float getComponent(T t);

        void setComponent(T t, float f);
    }

    /* renamed from: com.badlogic.gdx.ai.steer.behaviors.Jump$JumpCallback */
    /* loaded from: classes.dex */
    public interface JumpCallback {
        void reportAchievability(boolean z);

        void takeoff(float f, float f2);
    }

    /* renamed from: com.badlogic.gdx.ai.steer.behaviors.Jump$JumpDescriptor */
    /* loaded from: classes.dex */
    public static class JumpDescriptor<T extends Vector<T>> {
        public T delta;
        public T landingPosition;
        public T takeoffPosition;

        public void set(T t, T t2) {
            this.takeoffPosition.set(t);
            this.landingPosition.set(t2);
            this.delta.set(t2).sub(t);
        }

        public JumpDescriptor(T t, T t2) {
            this.takeoffPosition = t;
            this.landingPosition = t2;
            this.delta = (T) t2.cpy();
            set(t, t2);
        }
    }

    public T getGravity() {
        return this.f3397g;
    }

    public JumpDescriptor<T> getJumpDescriptor() {
        return this.f3396f;
    }

    public float getMaxVerticalVelocity() {
        return this.f3402l;
    }

    public float getTakeoffPositionTolerance() {
        return this.f3400j;
    }

    public float getTakeoffVelocityTolerance() {
        return this.f3401k;
    }

    public Jump<T> setGravity(T t) {
        this.f3397g = t;
        return this;
    }

    public Jump<T> setMaxVerticalVelocity(float f) {
        this.f3402l = f;
        return this;
    }

    public Jump<T> setTakeoffPositionTolerance(float f) {
        this.f3400j = f;
        return this;
    }

    public Jump<T> setTakeoffVelocityTolerance(float f) {
        this.f3401k = f;
        return this;
    }

    /* renamed from: com.badlogic.gdx.ai.steer.behaviors.Jump$JumpTarget */
    /* loaded from: classes.dex */
    public static class JumpTarget<T extends Vector<T>> extends SteerableAdapter<T> {

        /* renamed from: a */
        public T f3407a = null;

        /* renamed from: b */
        public T f3408b;

        @Override // com.badlogic.gdx.p032ai.steer.SteerableAdapter, com.badlogic.gdx.p032ai.steer.Steerable
        public T getLinearVelocity() {
            return this.f3408b;
        }

        @Override // com.badlogic.gdx.p032ai.steer.SteerableAdapter, com.badlogic.gdx.p032ai.utils.Location
        public T getPosition() {
            return this.f3407a;
        }

        public JumpTarget(Steerable<T> steerable) {
            this.f3408b = (T) steerable.getPosition().cpy().setZero();
        }
    }

    /* renamed from: c */
    public final Steerable<T> m24371c() {
        boolean z;
        JumpTarget<T> jumpTarget = this.f3405o;
        JumpDescriptor<T> jumpDescriptor = this.f3396f;
        jumpTarget.f3407a = jumpDescriptor.takeoffPosition;
        float calculateAirborneTimeAndVelocity = calculateAirborneTimeAndVelocity(jumpTarget.f3408b, jumpDescriptor, m24376a().getMaxLinearSpeed());
        this.f3404n = calculateAirborneTimeAndVelocity;
        if (calculateAirborneTimeAndVelocity >= 0.0f) {
            z = true;
        } else {
            z = false;
        }
        this.f3403m = z;
        return this.f3405o;
    }

    public float calculateAirborneTimeAndVelocity(T t, JumpDescriptor<T> jumpDescriptor, float f) {
        float component = this.f3398h.getComponent(this.f3397g);
        float component2 = 2.0f * component * this.f3398h.getComponent(jumpDescriptor.delta);
        float f2 = this.f3402l;
        float sqrt = (float) Math.sqrt(component2 + (f2 * f2));
        float f3 = ((-this.f3402l) + sqrt) / component;
        if (DEBUG_ENABLED) {
            Logger logger = GdxAI.getLogger();
            logger.info("Jump", "1st jump time = " + f3);
        }
        if (!m24370d(t, f3, jumpDescriptor, f)) {
            f3 = ((-this.f3402l) - sqrt) / component;
            if (DEBUG_ENABLED) {
                Logger logger2 = GdxAI.getLogger();
                logger2.info("Jump", "2nd jump time = " + f3);
            }
            if (!m24370d(t, f3, jumpDescriptor, f)) {
                return -1.0f;
            }
        }
        return f3;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.MatchVelocity, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        if (this.f3409d == null) {
            this.f3409d = m24371c();
            this.f3399i.reportAchievability(this.f3403m);
        }
        if (!this.f3403m) {
            return steeringAcceleration.setZero();
        }
        if (this.f3358a.getPosition().epsilonEquals(this.f3409d.getPosition(), this.f3400j)) {
            if (DEBUG_ENABLED) {
                GdxAI.getLogger().info("Jump", "Good position!!!");
            }
            if (this.f3358a.getLinearVelocity().epsilonEquals(this.f3409d.getLinearVelocity(), this.f3401k)) {
                if (DEBUG_ENABLED) {
                    GdxAI.getLogger().info("Jump", "Good Velocity!!!");
                }
                this.f3403m = false;
                this.f3399i.takeoff(this.f3402l, this.f3404n);
                return steeringAcceleration.setZero();
            } else if (DEBUG_ENABLED) {
                Logger logger = GdxAI.getLogger();
                logger.info("Jump", "Bad Velocity: Speed diff. = " + this.f3406p.set(this.f3409d.getLinearVelocity()).sub(this.f3358a.getLinearVelocity()).len() + ", diff = (" + this.f3406p + ")");
            }
        }
        return super.calculateRealSteering(steeringAcceleration);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final boolean m24370d(T t, float f, JumpDescriptor<T> jumpDescriptor, float f2) {
        this.f3406p.set(jumpDescriptor.delta).scl(1.0f / f);
        this.f3398h.setComponent(this.f3406p, 0.0f);
        if (this.f3406p.len2() < f2 * f2) {
            this.f3398h.setComponent(t.set(this.f3406p), this.f3398h.getComponent(t));
            if (DEBUG_ENABLED) {
                Logger logger = GdxAI.getLogger();
                logger.info("Jump", "targetLinearVelocity = " + t + "; targetLinearSpeed = " + t.len());
                return true;
            }
            return true;
        }
        return false;
    }

    public Jump<T> setJumpDescriptor(JumpDescriptor<T> jumpDescriptor) {
        this.f3396f = jumpDescriptor;
        this.f3409d = null;
        this.f3403m = false;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.MatchVelocity
    public Jump<T> setTarget(Steerable<T> steerable) {
        this.f3409d = steerable;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.MatchVelocity
    public Jump<T> setTimeToTarget(float f) {
        this.f3410e = f;
        return this;
    }

    public Jump(Steerable<T> steerable, JumpDescriptor<T> jumpDescriptor, T t, GravityComponentHandler<T> gravityComponentHandler, JumpCallback jumpCallback) {
        super(steerable);
        this.f3404n = 0.0f;
        this.f3397g = t;
        this.f3398h = gravityComponentHandler;
        setJumpDescriptor(jumpDescriptor);
        this.f3399i = jumpCallback;
        this.f3405o = new JumpTarget<>(steerable);
        this.f3406p = m24375b(steerable);
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.MatchVelocity, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Jump<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.MatchVelocity, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Jump<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.MatchVelocity, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Jump<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }

    public Jump<T> setTakeoffTolerance(float f) {
        setTakeoffPositionTolerance(f);
        setTakeoffVelocityTolerance(f);
        return this;
    }
}
