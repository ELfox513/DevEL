package com.prineside.tdi2;

import com.badlogic.gdx.graphics.g2d.Batch;
/* loaded from: classes2.dex */
public interface ProjectileTrail {
    void draw(Batch batch);

    void free();

    int getUsageId();

    boolean isFinished();

    void update(float f);
}
