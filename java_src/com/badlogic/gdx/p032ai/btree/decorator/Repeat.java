package com.badlogic.gdx.p032ai.btree.decorator;

import com.badlogic.gdx.p032ai.btree.LoopDecorator;
import com.badlogic.gdx.p032ai.btree.Task;
import com.badlogic.gdx.p032ai.btree.annotation.TaskAttribute;
import com.badlogic.gdx.p032ai.utils.random.ConstantIntegerDistribution;
import com.badlogic.gdx.p032ai.utils.random.IntegerDistribution;
/* renamed from: com.badlogic.gdx.ai.btree.decorator.Repeat */
/* loaded from: classes.dex */
public class Repeat<E> extends LoopDecorator<E> {

    /* renamed from: r */
    public int f3215r;
    @TaskAttribute
    public IntegerDistribution times;

    public Repeat() {
        this(null);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    /* renamed from: c */
    public Task<E> mo24450c(Task<E> task) {
        ((Repeat) task).times = this.times;
        return super.mo24450c(task);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void childFail(Task<E> task) {
        childSuccess(task);
    }

    @Override // com.badlogic.gdx.p032ai.btree.LoopDecorator
    public boolean condition() {
        return this.f3196q && this.f3215r != 0;
    }

    @Override // com.badlogic.gdx.p032ai.btree.LoopDecorator, com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f3215r = 0;
        this.times = null;
        super.reset();
    }

    @Override // com.badlogic.gdx.p032ai.btree.Task
    public void start() {
        this.f3215r = this.times.nextInt();
    }

    public Repeat(Task<E> task) {
        this(ConstantIntegerDistribution.NEGATIVE_ONE, task);
    }

    @Override // com.badlogic.gdx.p032ai.btree.Decorator, com.badlogic.gdx.p032ai.btree.Task
    public void childSuccess(Task<E> task) {
        int i = this.f3215r;
        if (i > 0) {
            this.f3215r = i - 1;
        }
        if (this.f3215r == 0) {
            super.childSuccess(task);
            this.f3196q = false;
            return;
        }
        this.f3196q = true;
    }

    public Repeat(IntegerDistribution integerDistribution, Task<E> task) {
        super(task);
        this.times = integerDistribution;
    }
}
