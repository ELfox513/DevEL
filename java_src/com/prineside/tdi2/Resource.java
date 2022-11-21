package com.prineside.tdi2;

import com.prineside.tdi2.enums.ResourceType;
/* loaded from: classes2.dex */
public class Resource {
    public static final String[] NAMES;
    public static final String[] TEXTURE_REGION_NAMES;

    static {
        ResourceType[] resourceTypeArr = ResourceType.values;
        String[] strArr = new String[resourceTypeArr.length];
        NAMES = strArr;
        ResourceType resourceType = ResourceType.SCALAR;
        strArr[resourceType.ordinal()] = "Scalar";
        ResourceType resourceType2 = ResourceType.VECTOR;
        strArr[resourceType2.ordinal()] = "Vector";
        ResourceType resourceType3 = ResourceType.MATRIX;
        strArr[resourceType3.ordinal()] = "Matrix";
        ResourceType resourceType4 = ResourceType.TENSOR;
        strArr[resourceType4.ordinal()] = "Tensor";
        ResourceType resourceType5 = ResourceType.INFIAR;
        strArr[resourceType5.ordinal()] = "Infiar";
        String[] strArr2 = new String[resourceTypeArr.length];
        TEXTURE_REGION_NAMES = strArr2;
        strArr2[resourceType.ordinal()] = "resource-scalar";
        strArr2[resourceType2.ordinal()] = "resource-vector";
        strArr2[resourceType3.ordinal()] = "resource-matrix";
        strArr2[resourceType4.ordinal()] = "resource-tensor";
        strArr2[resourceType5.ordinal()] = "resource-infiar";
    }
}
