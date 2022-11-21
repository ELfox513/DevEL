package com.badlogic.gdx.graphics.g3d.particles;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.g3d.particles.ParallelArray;
import com.badlogic.gdx.graphics.g3d.particles.renderers.ParticleControllerRenderData;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public abstract class ParticleSorter {

    /* renamed from: b */
    public static final Vector3 f4546b = new Vector3();

    /* renamed from: a */
    public Camera f4547a;

    /* loaded from: classes.dex */
    public static class Distance extends ParticleSorter {

        /* renamed from: c */
        public float[] f4548c;

        /* renamed from: d */
        public int[] f4549d;

        /* renamed from: e */
        public int[] f4550e;

        /* renamed from: f */
        public int f4551f = 0;

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleSorter
        public void ensureCapacity(int i) {
            if (this.f4551f < i) {
                this.f4548c = new float[i];
                this.f4549d = new int[i];
                this.f4550e = new int[i];
                this.f4551f = i;
            }
        }

        public void qsort(int i, int i2) {
            if (i < i2) {
                if (i2 - i <= 8) {
                    for (int i3 = i; i3 <= i2; i3++) {
                        for (int i4 = i3; i4 > i; i4--) {
                            float[] fArr = this.f4548c;
                            int i5 = i4 - 1;
                            float f = fArr[i5];
                            float f2 = fArr[i4];
                            if (f > f2) {
                                fArr[i4] = f;
                                fArr[i5] = f2;
                                int[] iArr = this.f4549d;
                                int i6 = iArr[i4];
                                iArr[i4] = iArr[i5];
                                iArr[i5] = i6;
                            }
                        }
                    }
                    return;
                }
                float f3 = this.f4548c[i];
                int i7 = i + 1;
                int i8 = this.f4549d[i];
                int i9 = i7;
                while (i7 <= i2) {
                    float[] fArr2 = this.f4548c;
                    float f4 = fArr2[i7];
                    if (f3 > f4) {
                        if (i7 > i9) {
                            fArr2[i7] = fArr2[i9];
                            fArr2[i9] = f4;
                            int[] iArr2 = this.f4549d;
                            int i10 = iArr2[i7];
                            iArr2[i7] = iArr2[i9];
                            iArr2[i9] = i10;
                        }
                        i9++;
                    }
                    i7++;
                }
                float[] fArr3 = this.f4548c;
                int i11 = i9 - 1;
                fArr3[i] = fArr3[i11];
                fArr3[i11] = f3;
                int[] iArr3 = this.f4549d;
                iArr3[i] = iArr3[i11];
                iArr3[i11] = i8;
                qsort(i, i9 - 2);
                qsort(i9, i2);
            }
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleSorter
        public <T extends ParticleControllerRenderData> int[] sort(Array<T> array) {
            float[] fArr = this.f4547a.view.val;
            float f = fArr[2];
            float f2 = fArr[6];
            float f3 = fArr[10];
            Array.ArrayIterator<T> it = array.iterator();
            int i = 0;
            int i2 = 0;
            while (it.hasNext()) {
                T next = it.next();
                int i3 = next.controller.particles.size + i2;
                int i4 = 0;
                while (i2 < i3) {
                    float[] fArr2 = this.f4548c;
                    ParallelArray.FloatChannel floatChannel = next.positionChannel;
                    float[] fArr3 = floatChannel.data;
                    fArr2[i2] = (fArr3[i4 + 0] * f) + (fArr3[i4 + 1] * f2) + (fArr3[i4 + 2] * f3);
                    this.f4549d[i2] = i2;
                    i2++;
                    i4 += floatChannel.strideSize;
                }
                i += next.controller.particles.size;
            }
            qsort(0, i - 1);
            for (int i5 = 0; i5 < i; i5++) {
                this.f4550e[this.f4549d[i5]] = i5;
            }
            return this.f4550e;
        }
    }

    /* loaded from: classes.dex */
    public static class None extends ParticleSorter {

        /* renamed from: c */
        public int f4552c = 0;

        /* renamed from: d */
        public int[] f4553d;

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleSorter
        public <T extends ParticleControllerRenderData> int[] sort(Array<T> array) {
            return this.f4553d;
        }

        @Override // com.badlogic.gdx.graphics.g3d.particles.ParticleSorter
        public void ensureCapacity(int i) {
            if (this.f4552c < i) {
                this.f4553d = new int[i];
                for (int i2 = 0; i2 < i; i2++) {
                    this.f4553d[i2] = i2;
                }
                this.f4552c = i;
            }
        }
    }

    public void ensureCapacity(int i) {
    }

    public void setCamera(Camera camera) {
        this.f4547a = camera;
    }

    public abstract <T extends ParticleControllerRenderData> int[] sort(Array<T> array);
}
