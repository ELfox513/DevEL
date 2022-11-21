package com.badlogic.gdx.p032ai.sched;
/* renamed from: com.badlogic.gdx.ai.sched.Scheduler */
/* loaded from: classes.dex */
public interface Scheduler extends Schedulable {
    void add(Schedulable schedulable, int i, int i2);

    void addWithAutomaticPhasing(Schedulable schedulable, int i);
}
