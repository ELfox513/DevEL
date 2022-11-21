package com.badlogic.gdx.graphics.g3d.model;
/* loaded from: classes.dex */
public class NodeKeyframe<T> {
    public float keytime;
    public final T value;

    public NodeKeyframe(float f, T t) {
        this.keytime = f;
        this.value = t;
    }
}
