package com.badlogic.gdx.graphics.g3d.particles.renderers;

import com.badlogic.gdx.graphics.g3d.ModelInstance;
import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
/* loaded from: classes.dex */
public class ModelInstanceControllerRenderData extends ParticleControllerRenderData {
    public ParallelArray.FloatChannel colorChannel;
    public ParallelArray.ObjectChannel<ModelInstance> modelInstanceChannel;
    public ParallelArray.FloatChannel rotationChannel;
    public ParallelArray.FloatChannel scaleChannel;
}
