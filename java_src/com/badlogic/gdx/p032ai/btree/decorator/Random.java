package com.badlogic.gdx.p032ai.btree.decorator;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.p032ai.btree.Decorator;
import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.p032ai.btree.annotation.TaskAttribute;
import com.badlogic.gdx.p032ai.btree.annotation.TaskConstraint;
import com.badlogic.gdx.p032ai.utils.random.ConstantFloatDistribution;
import com.badlogic.gdx.p032ai.utils.random.FloatDistribution;
@TaskConstraint(maxChildren = 1, minChildren = 0)
/* renamed from: com.badlogic.gdx.ai.btree.decorator.Random */
/* loaded from: classes.dex */
public class Random<E> extends Decorator<E> {

    /* renamed from: q */
    public float f3214q;
    @TaskAttribute
    public FloatDistribution success;

    public Random() {
        this(ConstantFloatDistribution.ZERO_POINT_FIVE);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: c */
    public Task<E> mo24450c(Task<E> task) {
        ((Random) task).success = this.success;
        return super.mo24450c(task);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void childFail(Task<E> task) {
        m24451d();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void childSuccess(Task<E> task) {
        m24451d();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f3214q = 0.0f;
        this.success = ConstantFloatDistribution.ZERO_POINT_FIVE;
        super.reset();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void start() {
        this.f3214q = this.success.nextFloat();
    }

    public Random(Task<E> task) {
        this(ConstantFloatDistribution.ZERO_POINT_FIVE, task);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void run() {
        if (this.f3194p != null) {
            super.run();
        } else {
            m24451d();
        }
    }

    public Random(FloatDistribution floatDistribution) {
        this.success = floatDistribution;
    }

    /* renamed from: d */
    public final void m24451d() {
        if (MathUtils.random() <= this.f3214q) {
            success();
        } else {
            fail();
        }
    }

    public Random(FloatDistribution floatDistribution, Task<E> task) {
        super(task);
        this.success = floatDistribution;
    }
}
