package com.badlogic.gdx.p032ai.btree;
/* renamed from: com.badlogic.gdx.ai.btree.TaskCloner */
/* loaded from: classes.dex */
public interface TaskCloner {
    <T> Task<T> cloneTask(Task<T> task);

    <T> void freeTask(Task<T> task);
}
