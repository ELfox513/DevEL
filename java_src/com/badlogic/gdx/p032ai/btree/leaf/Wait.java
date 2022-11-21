package com.badlogic.gdx.p032ai.btree.leaf;

import com.badlogic.gdx.p032ai.GdxAI;
import com.badlogic.gdx.p032ai.btree.LeafTask;
import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.p032ai.btree.annotation.TaskAttribute;
import com.badlogic.gdx.p032ai.utils.random.ConstantFloatDistribution;
import com.badlogic.gdx.p032ai.utils.random.FloatDistribution;
/* renamed from: com.badlogic.gdx.ai.btree.leaf.Wait */
/* loaded from: classes.dex */
public class Wait<E> extends LeafTask<E> {

    /* renamed from: p */
    public float f3218p;

    /* renamed from: q */
    public float f3219q;
    @TaskAttribute(required = true)
    public FloatDistribution seconds;

    public Wait() {
        this(ConstantFloatDistribution.ZERO);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: c */
    public Task<E> mo24450c(Task<E> task) {
        ((Wait) task).seconds = this.seconds;
        return task;
    }

    @Override // com.badlogic.gdx.p032ai.btree.LeafTask
    public Task.Status execute() {
        return GdxAI.getTimepiece().getTime() - this.f3218p < this.f3219q ? Task.Status.RUNNING : Task.Status.SUCCEEDED;
    }

    public Wait(float f) {
        this(new ConstantFloatDistribution(f));
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.seconds = ConstantFloatDistribution.ZERO;
        this.f3218p = 0.0f;
        this.f3219q = 0.0f;
        super.reset();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void start() {
        this.f3219q = this.seconds.nextFloat();
        this.f3218p = GdxAI.getTimepiece().getTime();
    }

    public Wait(FloatDistribution floatDistribution) {
        this.seconds = floatDistribution;
    }
}
