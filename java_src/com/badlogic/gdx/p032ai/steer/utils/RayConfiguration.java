package com.badlogic.gdx.p032ai.steer.utils;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.utils.Ray;
/* renamed from: com.badlogic.gdx.ai.steer.utils.RayConfiguration */
/* loaded from: classes.dex */
public interface RayConfiguration<T extends Vector<T>> {
    Ray<T>[] updateRays();
}
