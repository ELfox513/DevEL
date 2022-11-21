package com.badlogic.gdx.graphics.g3d.model.data;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.ArrayMap;
/* loaded from: classes.dex */
public class ModelNodePart {
    public ArrayMap<String, Matrix4> bones;
    public String materialId;
    public String meshPartId;
    public int[][] uvMapping;
}
