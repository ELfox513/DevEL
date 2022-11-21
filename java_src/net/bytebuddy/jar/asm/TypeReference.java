package net.bytebuddy.jar.asm;

import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
/* loaded from: classes.dex */
public class TypeReference {
    public static final int CAST = 71;
    public static final int CLASS_EXTENDS = 16;
    public static final int CLASS_TYPE_PARAMETER = 0;
    public static final int CLASS_TYPE_PARAMETER_BOUND = 17;
    public static final int CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT = 72;
    public static final int CONSTRUCTOR_REFERENCE = 69;
    public static final int CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT = 74;
    public static final int EXCEPTION_PARAMETER = 66;
    public static final int FIELD = 19;
    public static final int INSTANCEOF = 67;
    public static final int LOCAL_VARIABLE = 64;
    public static final int METHOD_FORMAL_PARAMETER = 22;
    public static final int METHOD_INVOCATION_TYPE_ARGUMENT = 73;
    public static final int METHOD_RECEIVER = 21;
    public static final int METHOD_REFERENCE = 70;
    public static final int METHOD_REFERENCE_TYPE_ARGUMENT = 75;
    public static final int METHOD_RETURN = 20;
    public static final int METHOD_TYPE_PARAMETER = 1;
    public static final int METHOD_TYPE_PARAMETER_BOUND = 18;
    public static final int NEW = 68;
    public static final int RESOURCE_VARIABLE = 65;
    public static final int THROWS = 23;
    private final int targetTypeAndInfo;

    public static TypeReference newExceptionReference(int i) {
        return new TypeReference((i << 8) | 385875968);
    }

    public static TypeReference newFormalParameterReference(int i) {
        return new TypeReference((i << 16) | 369098752);
    }

    public static TypeReference newSuperTypeReference(int i) {
        return new TypeReference(((i & MeshBuilder.MAX_INDEX) << 8) | 268435456);
    }

    public static TypeReference newTryCatchReference(int i) {
        return new TypeReference((i << 8) | 1107296256);
    }

    public static TypeReference newTypeArgumentReference(int i, int i2) {
        return new TypeReference((i << 24) | i2);
    }

    public static TypeReference newTypeParameterBoundReference(int i, int i2, int i3) {
        return new TypeReference((i << 24) | (i2 << 16) | (i3 << 8));
    }

    public static TypeReference newTypeParameterReference(int i, int i2) {
        return new TypeReference((i << 24) | (i2 << 16));
    }

    public static TypeReference newTypeReference(int i) {
        return new TypeReference(i << 24);
    }

    public int getExceptionIndex() {
        return (this.targetTypeAndInfo & 16776960) >> 8;
    }

    public int getFormalParameterIndex() {
        return (this.targetTypeAndInfo & 16711680) >> 16;
    }

    public int getSort() {
        return this.targetTypeAndInfo >>> 24;
    }

    public int getSuperTypeIndex() {
        return (short) ((this.targetTypeAndInfo & 16776960) >> 8);
    }

    public int getTryCatchBlockIndex() {
        return (this.targetTypeAndInfo & 16776960) >> 8;
    }

    public int getTypeArgumentIndex() {
        return this.targetTypeAndInfo & 255;
    }

    public int getTypeParameterBoundIndex() {
        return (this.targetTypeAndInfo & 65280) >> 8;
    }

    public int getTypeParameterIndex() {
        return (this.targetTypeAndInfo & 16711680) >> 16;
    }

    public int getValue() {
        return this.targetTypeAndInfo;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* renamed from: a */
    public static void m14833a(int r2, net.bytebuddy.jar.asm.ByteVector r3) {
        /*
            int r0 = r2 >>> 24
            if (r0 == 0) goto L25
            r1 = 1
            if (r0 == r1) goto L25
            switch(r0) {
                case 16: goto L1b;
                case 17: goto L1b;
                case 18: goto L1b;
                case 19: goto L17;
                case 20: goto L17;
                case 21: goto L17;
                case 22: goto L25;
                case 23: goto L1b;
                default: goto La;
            }
        La:
            switch(r0) {
                case 66: goto L1b;
                case 67: goto L1b;
                case 68: goto L1b;
                case 69: goto L1b;
                case 70: goto L1b;
                case 71: goto L13;
                case 72: goto L13;
                case 73: goto L13;
                case 74: goto L13;
                case 75: goto L13;
                default: goto Ld;
            }
        Ld:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            r2.<init>()
            throw r2
        L13:
            r3.putInt(r2)
            goto L2a
        L17:
            r3.putByte(r0)
            goto L2a
        L1b:
            r1 = 16776960(0xffff00, float:2.3509528E-38)
            r2 = r2 & r1
            int r2 = r2 >> 8
            r3.m14915d(r0, r2)
            goto L2a
        L25:
            int r2 = r2 >>> 16
            r3.putShort(r2)
        L2a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.jar.asm.TypeReference.m14833a(int, net.bytebuddy.jar.asm.ByteVector):void");
    }

    public TypeReference(int i) {
        this.targetTypeAndInfo = i;
    }
}
