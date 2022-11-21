package com.badlogic.gdx.math;

import com.badlogic.gdx.math.Plane;
import com.badlogic.gdx.math.collision.BoundingBox;
/* loaded from: classes.dex */
public class Frustum {

    /* renamed from: b */
    public static final Vector3[] f5404b;

    /* renamed from: c */
    public static final float[] f5405c;

    /* renamed from: d */
    public static final Vector3 f5406d;
    public final Plane[] planes = new Plane[6];
    public final Vector3[] planePoints = {new Vector3(), new Vector3(), new Vector3(), new Vector3(), new Vector3(), new Vector3(), new Vector3(), new Vector3()};

    /* renamed from: a */
    public final float[] f5407a = new float[24];

    public boolean boundsInFrustum(BoundingBox boundingBox) {
        int length = this.planes.length;
        for (int i = 0; i < length; i++) {
            Plane plane = this.planes[i];
            Vector3 vector3 = f5406d;
            Plane.PlaneSide testPoint = plane.testPoint(boundingBox.getCorner000(vector3));
            Plane.PlaneSide planeSide = Plane.PlaneSide.Back;
            if (testPoint == planeSide && this.planes[i].testPoint(boundingBox.getCorner001(vector3)) == planeSide && this.planes[i].testPoint(boundingBox.getCorner010(vector3)) == planeSide && this.planes[i].testPoint(boundingBox.getCorner011(vector3)) == planeSide && this.planes[i].testPoint(boundingBox.getCorner100(vector3)) == planeSide && this.planes[i].testPoint(boundingBox.getCorner101(vector3)) == planeSide && this.planes[i].testPoint(boundingBox.getCorner110(vector3)) == planeSide && this.planes[i].testPoint(boundingBox.getCorner111(vector3)) == planeSide) {
                return false;
            }
        }
        return true;
    }

    public boolean pointInFrustum(Vector3 vector3) {
        int i = 0;
        while (true) {
            Plane[] planeArr = this.planes;
            if (i >= planeArr.length) {
                return true;
            }
            if (planeArr[i].testPoint(vector3) == Plane.PlaneSide.Back) {
                return false;
            }
            i++;
        }
    }

    public boolean sphereInFrustum(Vector3 vector3, float f) {
        for (int i = 0; i < 6; i++) {
            Plane plane = this.planes[i];
            Vector3 vector32 = plane.normal;
            if ((vector32.f5533x * vector3.f5533x) + (vector32.f5534y * vector3.f5534y) + (vector32.f5535z * vector3.f5535z) < (-f) - plane.f5487d) {
                return false;
            }
        }
        return true;
    }

    public boolean sphereInFrustumWithoutNearFar(Vector3 vector3, float f) {
        for (int i = 2; i < 6; i++) {
            Plane plane = this.planes[i];
            Vector3 vector32 = plane.normal;
            if ((vector32.f5533x * vector3.f5533x) + (vector32.f5534y * vector3.f5534y) + (vector32.f5535z * vector3.f5535z) < (-f) - plane.f5487d) {
                return false;
            }
        }
        return true;
    }

    static {
        int i = 0;
        Vector3[] vector3Arr = {new Vector3(-1.0f, -1.0f, -1.0f), new Vector3(1.0f, -1.0f, -1.0f), new Vector3(1.0f, 1.0f, -1.0f), new Vector3(-1.0f, 1.0f, -1.0f), new Vector3(-1.0f, -1.0f, 1.0f), new Vector3(1.0f, -1.0f, 1.0f), new Vector3(1.0f, 1.0f, 1.0f), new Vector3(-1.0f, 1.0f, 1.0f)};
        f5404b = vector3Arr;
        f5405c = new float[24];
        int length = vector3Arr.length;
        int i2 = 0;
        while (i < length) {
            Vector3 vector3 = vector3Arr[i];
            float[] fArr = f5405c;
            int i3 = i2 + 1;
            fArr[i2] = vector3.f5533x;
            int i4 = i3 + 1;
            fArr[i3] = vector3.f5534y;
            fArr[i4] = vector3.f5535z;
            i++;
            i2 = i4 + 1;
        }
        f5406d = new Vector3();
    }

    public boolean sphereInFrustum(float f, float f2, float f3, float f4) {
        for (int i = 0; i < 6; i++) {
            Plane plane = this.planes[i];
            Vector3 vector3 = plane.normal;
            if ((vector3.f5533x * f) + (vector3.f5534y * f2) + (vector3.f5535z * f3) < (-f4) - plane.f5487d) {
                return false;
            }
        }
        return true;
    }

    public boolean sphereInFrustumWithoutNearFar(float f, float f2, float f3, float f4) {
        for (int i = 2; i < 6; i++) {
            Plane plane = this.planes[i];
            Vector3 vector3 = plane.normal;
            if ((vector3.f5533x * f) + (vector3.f5534y * f2) + (vector3.f5535z * f3) < (-f4) - plane.f5487d) {
                return false;
            }
        }
        return true;
    }

    public void update(Matrix4 matrix4) {
        float[] fArr = f5405c;
        System.arraycopy(fArr, 0, this.f5407a, 0, fArr.length);
        Matrix4.prj(matrix4.val, this.f5407a, 0, 8, 3);
        int i = 0;
        int i2 = 0;
        while (i < 8) {
            Vector3 vector3 = this.planePoints[i];
            float[] fArr2 = this.f5407a;
            int i3 = i2 + 1;
            vector3.f5533x = fArr2[i2];
            int i4 = i3 + 1;
            vector3.f5534y = fArr2[i3];
            vector3.f5535z = fArr2[i4];
            i++;
            i2 = i4 + 1;
        }
        Plane plane = this.planes[0];
        Vector3[] vector3Arr = this.planePoints;
        plane.set(vector3Arr[1], vector3Arr[0], vector3Arr[2]);
        Plane plane2 = this.planes[1];
        Vector3[] vector3Arr2 = this.planePoints;
        plane2.set(vector3Arr2[4], vector3Arr2[5], vector3Arr2[7]);
        Plane plane3 = this.planes[2];
        Vector3[] vector3Arr3 = this.planePoints;
        plane3.set(vector3Arr3[0], vector3Arr3[4], vector3Arr3[3]);
        Plane plane4 = this.planes[3];
        Vector3[] vector3Arr4 = this.planePoints;
        plane4.set(vector3Arr4[5], vector3Arr4[1], vector3Arr4[6]);
        Plane plane5 = this.planes[4];
        Vector3[] vector3Arr5 = this.planePoints;
        plane5.set(vector3Arr5[2], vector3Arr5[3], vector3Arr5[6]);
        Plane plane6 = this.planes[5];
        Vector3[] vector3Arr6 = this.planePoints;
        plane6.set(vector3Arr6[4], vector3Arr6[0], vector3Arr6[1]);
    }

    public Frustum() {
        for (int i = 0; i < 6; i++) {
            this.planes[i] = new Plane(new Vector3(), 0.0f);
        }
    }

    public boolean pointInFrustum(float f, float f2, float f3) {
        int i = 0;
        while (true) {
            Plane[] planeArr = this.planes;
            if (i >= planeArr.length) {
                return true;
            }
            if (planeArr[i].testPoint(f, f2, f3) == Plane.PlaneSide.Back) {
                return false;
            }
            i++;
        }
    }

    public boolean boundsInFrustum(Vector3 vector3, Vector3 vector32) {
        return boundsInFrustum(vector3.f5533x, vector3.f5534y, vector3.f5535z, vector32.f5533x / 2.0f, vector32.f5534y / 2.0f, vector32.f5535z / 2.0f);
    }

    public boolean boundsInFrustum(float f, float f2, float f3, float f4, float f5, float f6) {
        int length = this.planes.length;
        for (int i = 0; i < length; i++) {
            float f7 = f + f4;
            float f8 = f2 + f5;
            float f9 = f3 + f6;
            Plane.PlaneSide testPoint = this.planes[i].testPoint(f7, f8, f9);
            Plane.PlaneSide planeSide = Plane.PlaneSide.Back;
            if (testPoint == planeSide) {
                float f10 = f3 - f6;
                if (this.planes[i].testPoint(f7, f8, f10) != planeSide) {
                    continue;
                } else {
                    float f11 = f2 - f5;
                    if (this.planes[i].testPoint(f7, f11, f9) == planeSide && this.planes[i].testPoint(f7, f11, f10) == planeSide) {
                        float f12 = f - f4;
                        if (this.planes[i].testPoint(f12, f8, f9) == planeSide && this.planes[i].testPoint(f12, f8, f10) == planeSide && this.planes[i].testPoint(f12, f11, f9) == planeSide && this.planes[i].testPoint(f12, f11, f10) == planeSide) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }
}
