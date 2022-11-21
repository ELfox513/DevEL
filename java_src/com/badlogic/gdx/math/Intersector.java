package com.badlogic.gdx.math;

import com.badlogic.gdx.math.Plane;
import com.badlogic.gdx.math.collision.BoundingBox;
import com.badlogic.gdx.math.collision.Ray;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.FloatArray;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public final class Intersector {

    /* renamed from: a */
    public static final Vector3 f5430a = new Vector3();

    /* renamed from: b */
    public static final Vector3 f5431b = new Vector3();

    /* renamed from: c */
    public static final Vector3 f5432c = new Vector3();

    /* renamed from: d */
    public static final FloatArray f5433d = new FloatArray();

    /* renamed from: e */
    public static final FloatArray f5434e = new FloatArray();

    /* renamed from: f */
    public static final Vector2 f5435f = new Vector2();

    /* renamed from: g */
    public static final Vector2 f5436g = new Vector2();

    /* renamed from: h */
    public static final Vector2 f5437h = new Vector2();

    /* renamed from: i */
    public static final Vector2 f5438i = new Vector2();

    /* renamed from: j */
    public static final Vector2 f5439j = new Vector2();

    /* renamed from: k */
    public static Vector2 f5440k = new Vector2();

    /* renamed from: l */
    public static Vector2 f5441l = new Vector2();

    /* renamed from: m */
    public static Vector2 f5442m = new Vector2();

    /* renamed from: n */
    public static Vector2 f5443n = new Vector2();

    /* renamed from: o */
    public static final Plane f5444o = new Plane(new Vector3(), 0.0f);

    /* renamed from: p */
    public static final Vector3 f5445p = new Vector3();

    /* renamed from: q */
    public static final Vector3 f5446q = new Vector3();

    /* renamed from: r */
    public static final Vector3 f5447r = new Vector3();

    /* renamed from: s */
    public static Vector3 f5448s = new Vector3();

    /* renamed from: t */
    public static Vector3 f5449t = new Vector3();

    /* renamed from: u */
    public static Vector3 f5450u = new Vector3();

    /* renamed from: v */
    public static Vector3 f5451v = new Vector3();

    /* renamed from: w */
    public static Vector3 f5452w = new Vector3();

    /* renamed from: x */
    public static Vector3 f5453x = new Vector3();

    /* loaded from: classes.dex */
    public static class MinimumTranslationVector {
        public Vector2 normal = new Vector2();
        public float depth = 0.0f;
    }

    /* loaded from: classes.dex */
    public static class SplitTriangle {

        /* renamed from: a */
        public float[] f5454a;
        public float[] back;
        public float[] front;
        public int numBack;
        public int numFront;
        public int total;

        /* renamed from: b */
        public boolean f5455b = false;

        /* renamed from: c */
        public int f5456c = 0;

        /* renamed from: d */
        public int f5457d = 0;

        /* renamed from: b */
        public boolean m23919b() {
            return this.f5455b;
        }

        /* renamed from: c */
        public void m23918c() {
            this.f5455b = false;
            this.f5456c = 0;
            this.f5457d = 0;
            this.numFront = 0;
            this.numBack = 0;
            this.total = 0;
        }

        /* renamed from: d */
        public void m23917d(boolean z) {
            this.f5455b = z;
        }

        public String toString() {
            return "SplitTriangle [front=" + Arrays.toString(this.front) + ", back=" + Arrays.toString(this.back) + ", numFront=" + this.numFront + ", numBack=" + this.numBack + ", total=" + this.total + "]";
        }

        /* renamed from: a */
        public void m23920a(float[] fArr, int i, int i2) {
            if (this.f5455b) {
                System.arraycopy(fArr, i, this.front, this.f5456c, i2);
                this.f5456c += i2;
                return;
            }
            System.arraycopy(fArr, i, this.back, this.f5457d, i2);
            this.f5457d += i2;
        }

        public SplitTriangle(int i) {
            int i2 = i * 3 * 2;
            this.front = new float[i2];
            this.back = new float[i2];
            this.f5454a = new float[i];
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c6, code lost:
        if (r8 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00c9, code lost:
        r3 = -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d6, code lost:
        if (r8 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00d8, code lost:
        if (r13 != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00da, code lost:
        if (r14 == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00de, code lost:
        if (r15 <= r5) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e1, code lost:
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00e2, code lost:
        if (r4 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00e5, code lost:
        r6 = -r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00e6, code lost:
        if (r4 == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00e9, code lost:
        r3 = -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ea, code lost:
        r22.normal.set(r6, r3);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m23922a(float[] r16, int r17, int r18, float[] r19, int r20, int r21, com.badlogic.gdx.math.Intersector.MinimumTranslationVector r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.math.Intersector.m23922a(float[], int, int, float[], int, int, com.badlogic.gdx.math.Intersector$MinimumTranslationVector, boolean):boolean");
    }

    public static float distanceLinePoint(float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = f3 - f;
        float f8 = f4 - f2;
        return Math.abs(((f5 - f) * f8) - ((f6 - f2) * f7)) / ((float) Math.sqrt((f7 * f7) + (f8 * f8)));
    }

    public static float distanceSegmentPoint(float f, float f2, float f3, float f4, float f5, float f6) {
        return nearestSegmentPoint(f, f2, f3, f4, f5, f6, f5440k).dst(f5, f6);
    }

    public static boolean intersectBoundsPlaneFast(BoundingBox boundingBox, Plane plane) {
        return intersectBoundsPlaneFast(boundingBox.getCenter(f5450u), boundingBox.getDimensions(f5451v).scl(0.5f), plane.normal, plane.f5487d);
    }

    public static boolean intersectLines(Vector2 vector2, Vector2 vector22, Vector2 vector23, Vector2 vector24, Vector2 vector25) {
        float f = vector2.f5527x;
        float f2 = vector2.f5528y;
        float f3 = vector22.f5527x;
        float f4 = vector22.f5528y;
        float f5 = vector23.f5527x;
        float f6 = vector23.f5528y;
        float f7 = vector24.f5527x;
        float f8 = vector24.f5528y - f6;
        float f9 = f3 - f;
        float f10 = f7 - f5;
        float f11 = f4 - f2;
        float f12 = (f8 * f9) - (f10 * f11);
        if (f12 == 0.0f) {
            return false;
        }
        if (vector25 != null) {
            float f13 = ((f10 * (f2 - f6)) - (f8 * (f - f5))) / f12;
            vector25.set(f + (f9 * f13), f2 + (f11 * f13));
            return true;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v4 */
    public static boolean intersectPolygons(Polygon polygon, Polygon polygon2, Polygon polygon3) {
        ?? r2 = 0;
        if (polygon.getVertices().length == 0 || polygon2.getVertices().length == 0) {
            return false;
        }
        Vector2 vector2 = f5435f;
        Vector2 vector22 = f5436g;
        Vector2 vector23 = f5437h;
        Vector2 vector24 = f5438i;
        Vector2 vector25 = f5439j;
        FloatArray floatArray = f5433d;
        FloatArray floatArray2 = f5434e;
        floatArray.clear();
        floatArray2.clear();
        floatArray2.addAll(polygon.getTransformedVertices());
        float[] transformedVertices = polygon2.getTransformedVertices();
        int length = transformedVertices.length - 2;
        int i = 0;
        while (i <= length) {
            vector22.set(transformedVertices[i], transformedVertices[i + 1]);
            if (i < length) {
                vector23.set(transformedVertices[i + 2], transformedVertices[i + 3]);
            } else {
                vector23.set(transformedVertices[r2], transformedVertices[1]);
            }
            int i2 = floatArray2.size;
            if (i2 == 0) {
                return r2;
            }
            vector24.set(floatArray2.get(i2 - 2), floatArray2.get(floatArray2.size - 1));
            for (int i3 = 0; i3 < floatArray2.size; i3 += 2) {
                vector25.set(floatArray2.get(i3), floatArray2.get(i3 + 1));
                boolean z = pointLineSide(vector23, vector22, vector24) > 0;
                if (pointLineSide(vector23, vector22, vector25) > 0) {
                    if (!z) {
                        intersectLines(vector24, vector25, vector22, vector23, vector2);
                        int i4 = floatArray.size;
                        if (i4 < 2 || floatArray.get(i4 - 2) != vector2.f5527x || floatArray.get(floatArray.size - 1) != vector2.f5528y) {
                            floatArray.add(vector2.f5527x);
                            floatArray.add(vector2.f5528y);
                        }
                    }
                    floatArray.add(vector25.f5527x);
                    floatArray.add(vector25.f5528y);
                } else if (z) {
                    intersectLines(vector24, vector25, vector22, vector23, vector2);
                    floatArray.add(vector2.f5527x);
                    floatArray.add(vector2.f5528y);
                }
                vector24.set(vector25.f5527x, vector25.f5528y);
            }
            floatArray2.clear();
            floatArray2.addAll(floatArray);
            floatArray.clear();
            i += 2;
            r2 = 0;
        }
        if (floatArray2.size != 0) {
            if (polygon3 != null) {
                if (polygon3.getVertices().length == floatArray2.size) {
                    System.arraycopy(floatArray2.items, 0, polygon3.getVertices(), 0, floatArray2.size);
                } else {
                    polygon3.setVertices(floatArray2.toArray());
                }
            }
            return true;
        }
        return false;
    }

    public static boolean intersectRayBoundsFast(Ray ray, BoundingBox boundingBox) {
        return intersectRayBoundsFast(ray, boundingBox.getCenter(f5450u), boundingBox.getDimensions(f5451v));
    }

    public static boolean intersectRayTriangles(Ray ray, float[] fArr, Vector3 vector3) {
        if (fArr.length % 9 == 0) {
            float f = Float.MAX_VALUE;
            boolean z = false;
            for (int i = 0; i < fArr.length; i += 9) {
                if (intersectRayTriangle(ray, f5450u.set(fArr[i], fArr[i + 1], fArr[i + 2]), f5451v.set(fArr[i + 3], fArr[i + 4], fArr[i + 5]), f5452w.set(fArr[i + 6], fArr[i + 7], fArr[i + 8]), f5449t)) {
                    float dst2 = ray.origin.dst2(f5449t);
                    if (dst2 < f) {
                        f5448s.set(f5449t);
                        f = dst2;
                        z = true;
                    }
                }
            }
            if (z) {
                if (vector3 != null) {
                    vector3.set(f5448s);
                }
                return true;
            }
            return false;
        }
        throw new RuntimeException("triangles array size is not a multiple of 9");
    }

    public static boolean intersectSegmentCircle(Vector2 vector2, Vector2 vector22, Vector2 vector23, float f) {
        f5449t.set(vector22.f5527x - vector2.f5527x, vector22.f5528y - vector2.f5528y, 0.0f);
        f5450u.set(vector23.f5527x - vector2.f5527x, vector23.f5528y - vector2.f5528y, 0.0f);
        float len = f5449t.len();
        float dot = f5450u.dot(f5449t.nor());
        if (dot <= 0.0f) {
            f5451v.set(vector2.f5527x, vector2.f5528y, 0.0f);
        } else if (dot >= len) {
            f5451v.set(vector22.f5527x, vector22.f5528y, 0.0f);
        } else {
            f5452w.set(f5449t.scl(dot));
            Vector3 vector3 = f5451v;
            Vector3 vector32 = f5452w;
            vector3.set(vector32.f5533x + vector2.f5527x, vector32.f5534y + vector2.f5528y, 0.0f);
        }
        float f2 = vector23.f5527x;
        Vector3 vector33 = f5451v;
        float f3 = f2 - vector33.f5533x;
        float f4 = vector23.f5528y - vector33.f5534y;
        return (f3 * f3) + (f4 * f4) <= f;
    }

    public static boolean intersectSegmentRectangle(float f, float f2, float f3, float f4, Rectangle rectangle) {
        float f5 = rectangle.f5523x;
        float f6 = f5 + rectangle.width;
        float f7 = rectangle.f5524y;
        float f8 = f7 + rectangle.height;
        if (intersectSegments(f, f2, f3, f4, f5, f7, f5, f8, null)) {
            return true;
        }
        float f9 = rectangle.f5523x;
        float f10 = rectangle.f5524y;
        if (intersectSegments(f, f2, f3, f4, f9, f10, f6, f10, null) || intersectSegments(f, f2, f3, f4, f6, rectangle.f5524y, f6, f8, null) || intersectSegments(f, f2, f3, f4, rectangle.f5523x, f8, f6, f8, null)) {
            return true;
        }
        return rectangle.contains(f, f2);
    }

    public static boolean intersectSegments(Vector2 vector2, Vector2 vector22, Vector2 vector23, Vector2 vector24, Vector2 vector25) {
        float f = vector2.f5527x;
        float f2 = vector2.f5528y;
        float f3 = vector22.f5527x;
        float f4 = vector22.f5528y;
        float f5 = vector23.f5527x;
        float f6 = vector23.f5528y;
        float f7 = vector24.f5527x;
        float f8 = vector24.f5528y - f6;
        float f9 = f3 - f;
        float f10 = f7 - f5;
        float f11 = f4 - f2;
        float f12 = (f8 * f9) - (f10 * f11);
        if (f12 == 0.0f) {
            return false;
        }
        float f13 = f2 - f6;
        float f14 = f - f5;
        float f15 = ((f10 * f13) - (f8 * f14)) / f12;
        if (f15 >= 0.0f && f15 <= 1.0f) {
            float f16 = ((f13 * f9) - (f14 * f11)) / f12;
            if (f16 >= 0.0f && f16 <= 1.0f) {
                if (vector25 != null) {
                    vector25.set(f + (f9 * f15), f2 + (f11 * f15));
                    return true;
                }
                return true;
            }
        }
        return false;
    }

    public static boolean isPointInPolygon(Array<Vector2> array, Vector2 vector2) {
        Vector2 peek = array.peek();
        float f = vector2.f5527x;
        float f2 = vector2.f5528y;
        int i = 0;
        boolean z = false;
        while (i < array.size) {
            Vector2 vector22 = array.get(i);
            float f3 = vector22.f5528y;
            if ((f3 < f2 && peek.f5528y >= f2) || (peek.f5528y < f2 && f3 >= f2)) {
                float f4 = vector22.f5527x;
                if (f4 + (((f2 - f3) / (peek.f5528y - f3)) * (peek.f5527x - f4)) < f) {
                    z = !z;
                }
            }
            i++;
            peek = vector22;
        }
        return z;
    }

    public static boolean isPointInTriangle(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        float f9 = f - f3;
        float f10 = f2 - f4;
        boolean z = ((f5 - f3) * f10) - ((f6 - f4) * f9) > 0.0f;
        if ((((f7 - f3) * f10) - ((f8 - f4) * f9) > 0.0f) == z) {
            return false;
        }
        return (((((f7 - f5) * (f2 - f6)) - ((f8 - f6) * (f - f5))) > 0.0f ? 1 : ((((f7 - f5) * (f2 - f6)) - ((f8 - f6) * (f - f5))) == 0.0f ? 0 : -1)) > 0) == z;
    }

    public static boolean isPointInTriangle(Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34) {
        Vector3 vector35 = f5430a;
        vector35.set(vector32).sub(vector3);
        Vector3 vector36 = f5431b;
        vector36.set(vector33).sub(vector3);
        Vector3 vector37 = f5432c;
        vector37.set(vector34).sub(vector3);
        float dot = vector35.dot(vector36);
        float dot2 = vector35.dot(vector37);
        float dot3 = vector36.dot(vector37);
        return (dot3 * dot2) - (vector37.dot(vector37) * dot) >= 0.0f && (dot * dot3) - (dot2 * vector36.dot(vector36)) >= 0.0f;
    }

    public static Vector2 nearestSegmentPoint(Vector2 vector2, Vector2 vector22, Vector2 vector23, Vector2 vector24) {
        float dst2 = vector2.dst2(vector22);
        if (dst2 == 0.0f) {
            return vector24.set(vector2);
        }
        float f = vector23.f5527x;
        float f2 = vector2.f5527x;
        float f3 = vector22.f5527x;
        float f4 = vector23.f5528y;
        float f5 = vector2.f5528y;
        float f6 = vector22.f5528y;
        float f7 = (((f - f2) * (f3 - f2)) + ((f4 - f5) * (f6 - f5))) / dst2;
        if (f7 <= 0.0f) {
            return vector24.set(vector2);
        }
        if (f7 >= 1.0f) {
            return vector24.set(vector22);
        }
        return vector24.set(f2 + ((f3 - f2) * f7), f5 + (f7 * (f6 - f5)));
    }

    public static boolean overlapConvexPolygons(Polygon polygon, Polygon polygon2) {
        return overlapConvexPolygons(polygon, polygon2, (MinimumTranslationVector) null);
    }

    public static boolean overlaps(Circle circle, Circle circle2) {
        return circle.overlaps(circle2);
    }

    public static int pointLineSide(Vector2 vector2, Vector2 vector22, Vector2 vector23) {
        float f = vector22.f5527x;
        float f2 = vector2.f5527x;
        float f3 = vector23.f5528y;
        float f4 = vector2.f5528y;
        return (int) Math.signum(((f - f2) * (f3 - f4)) - ((vector22.f5528y - f4) * (vector23.f5527x - f2)));
    }

    /* renamed from: b */
    public static void m23921b(float[] fArr, int i, int i2, int i3, Plane plane, float[] fArr2, int i4) {
        float intersectLinePlane = intersectLinePlane(fArr[i], fArr[i + 1], fArr[i + 2], fArr[i2], fArr[i2 + 1], fArr[i2 + 2], plane, f5453x);
        Vector3 vector3 = f5453x;
        fArr2[i4 + 0] = vector3.f5533x;
        fArr2[i4 + 1] = vector3.f5534y;
        fArr2[i4 + 2] = vector3.f5535z;
        for (int i5 = 3; i5 < i3; i5++) {
            float f = fArr[i + i5];
            fArr2[i4 + i5] = f + ((fArr[i2 + i5] - f) * intersectLinePlane);
        }
    }

    public static float distanceSegmentPoint(Vector2 vector2, Vector2 vector22, Vector2 vector23) {
        return nearestSegmentPoint(vector2, vector22, vector23, f5440k).dst(vector23);
    }

    public static boolean intersectBoundsPlaneFast(Vector3 vector3, Vector3 vector32, Vector3 vector33, float f) {
        return Math.abs(vector33.dot(vector3) - f) <= ((vector32.f5533x * Math.abs(vector33.f5533x)) + (vector32.f5534y * Math.abs(vector33.f5534y))) + (vector32.f5535z * Math.abs(vector33.f5535z));
    }

    public static boolean intersectFrustumBounds(Frustum frustum, BoundingBox boundingBox) {
        boolean z;
        if (!frustum.pointInFrustum(boundingBox.getCorner000(f5449t)) && !frustum.pointInFrustum(boundingBox.getCorner001(f5449t)) && !frustum.pointInFrustum(boundingBox.getCorner010(f5449t)) && !frustum.pointInFrustum(boundingBox.getCorner011(f5449t)) && !frustum.pointInFrustum(boundingBox.getCorner100(f5449t)) && !frustum.pointInFrustum(boundingBox.getCorner101(f5449t)) && !frustum.pointInFrustum(boundingBox.getCorner110(f5449t)) && !frustum.pointInFrustum(boundingBox.getCorner111(f5449t))) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            return true;
        }
        boolean z2 = false;
        for (Vector3 vector3 : frustum.planePoints) {
            z2 |= boundingBox.contains(vector3);
        }
        return z2;
    }

    public static float intersectLinePlane(float f, float f2, float f3, float f4, float f5, float f6, Plane plane, Vector3 vector3) {
        Vector3 sub = f5449t.set(f4, f5, f6).sub(f, f2, f3);
        Vector3 vector32 = f5451v.set(f, f2, f3);
        float dot = sub.dot(plane.getNormal());
        if (dot != 0.0f) {
            float f7 = (-(vector32.dot(plane.getNormal()) + plane.getD())) / dot;
            if (vector3 != null) {
                vector3.set(vector32).add(sub.scl(f7));
            }
            return f7;
        } else if (plane.testPoint(vector32) == Plane.PlaneSide.OnPlane) {
            if (vector3 != null) {
                vector3.set(vector32);
            }
            return 0.0f;
        } else {
            return -1.0f;
        }
    }

    public static boolean intersectLinePolygon(Vector2 vector2, Vector2 vector22, Polygon polygon) {
        float[] transformedVertices = polygon.getTransformedVertices();
        float f = vector2.f5527x;
        float f2 = vector2.f5528y;
        float f3 = vector22.f5527x;
        float f4 = vector22.f5528y;
        int length = transformedVertices.length;
        float f5 = transformedVertices[length - 2];
        float f6 = transformedVertices[length - 1];
        int i = 0;
        while (i < length) {
            float f7 = transformedVertices[i];
            float f8 = transformedVertices[i + 1];
            float f9 = f8 - f6;
            float f10 = f7 - f5;
            float f11 = ((f3 - f) * f9) - ((f4 - f2) * f10);
            if (f11 != 0.0f) {
                float f12 = ((f10 * (f2 - f6)) - (f9 * (f - f5))) / f11;
                if (f12 >= 0.0f && f12 <= 1.0f) {
                    return true;
                }
            }
            i += 2;
            f5 = f7;
            f6 = f8;
        }
        return false;
    }

    public static boolean intersectPlanes(Plane plane, Plane plane2, Plane plane3, Vector3 vector3) {
        f5450u.set(plane.normal).crs(plane2.normal);
        f5451v.set(plane2.normal).crs(plane3.normal);
        f5452w.set(plane3.normal).crs(plane.normal);
        float f = -plane.normal.dot(f5451v);
        if (Math.abs(f) < 1.0E-6f) {
            return false;
        }
        f5450u.scl(plane3.f5487d);
        f5451v.scl(plane.f5487d);
        f5452w.scl(plane2.f5487d);
        Vector3 vector32 = f5450u;
        float f2 = vector32.f5533x;
        Vector3 vector33 = f5451v;
        float f3 = f2 + vector33.f5533x;
        Vector3 vector34 = f5452w;
        vector3.set(f3 + vector34.f5533x, vector32.f5534y + vector33.f5534y + vector34.f5534y, vector32.f5535z + vector33.f5535z + vector34.f5535z);
        vector3.scl(1.0f / f);
        return true;
    }

    public static boolean intersectPolygonEdges(FloatArray floatArray, FloatArray floatArray2) {
        int i = floatArray.size - 2;
        int i2 = floatArray2.size - 2;
        float[] fArr = floatArray.items;
        float[] fArr2 = floatArray2.items;
        float f = fArr[i];
        float f2 = fArr[i + 1];
        int i3 = 0;
        while (i3 <= i) {
            float f3 = fArr[i3];
            float f4 = fArr[i3 + 1];
            float f5 = fArr2[i2];
            float f6 = fArr2[i2 + 1];
            int i4 = 0;
            while (i4 <= i2) {
                float f7 = fArr2[i4];
                float f8 = fArr2[i4 + 1];
                int i5 = i4;
                int i6 = i3;
                if (intersectSegments(f, f2, f3, f4, f5, f6, f7, f8, null)) {
                    return true;
                }
                i4 = i5 + 2;
                f5 = f7;
                f6 = f8;
                i3 = i6;
            }
            i3 += 2;
            f = f3;
            f2 = f4;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x01f7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean intersectRayBounds(com.badlogic.gdx.math.collision.Ray r10, com.badlogic.gdx.math.collision.BoundingBox r11, com.badlogic.gdx.math.Vector3 r12) {
        /*
            Method dump skipped, instructions count: 586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.math.Intersector.intersectRayBounds(com.badlogic.gdx.math.collision.Ray, com.badlogic.gdx.math.collision.BoundingBox, com.badlogic.gdx.math.Vector3):boolean");
    }

    public static boolean intersectRayBoundsFast(Ray ray, Vector3 vector3, Vector3 vector32) {
        Vector3 vector33 = ray.direction;
        float f = 1.0f / vector33.f5533x;
        float f2 = 1.0f / vector33.f5534y;
        float f3 = 1.0f / vector33.f5535z;
        float f4 = vector3.f5533x;
        float f5 = vector32.f5533x;
        Vector3 vector34 = ray.origin;
        float f6 = vector34.f5533x;
        float f7 = ((f4 - (f5 * 0.5f)) - f6) * f;
        float f8 = ((f4 + (f5 * 0.5f)) - f6) * f;
        if (f7 > f8) {
            f7 = f8;
            f8 = f7;
        }
        float f9 = vector3.f5534y;
        float f10 = vector32.f5534y;
        float f11 = vector34.f5534y;
        float f12 = ((f9 - (f10 * 0.5f)) - f11) * f2;
        float f13 = ((f9 + (f10 * 0.5f)) - f11) * f2;
        if (f12 > f13) {
            f12 = f13;
            f13 = f12;
        }
        float f14 = vector3.f5535z;
        float f15 = vector32.f5535z;
        float f16 = vector34.f5535z;
        float f17 = ((f14 - (f15 * 0.5f)) - f16) * f3;
        float f18 = ((f14 + (f15 * 0.5f)) - f16) * f3;
        if (f17 > f18) {
            f17 = f18;
            f18 = f17;
        }
        float max = Math.max(Math.max(f7, f12), f17);
        float min = Math.min(Math.min(f8, f13), f18);
        return min >= 0.0f && min >= max;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c5, code lost:
        if ((r1 + r14.max.f5534y) >= 0.0f) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean intersectRayOrientedBoundsFast(com.badlogic.gdx.math.collision.Ray r13, com.badlogic.gdx.math.collision.BoundingBox r14, com.badlogic.gdx.math.Matrix4 r15) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.math.Intersector.intersectRayOrientedBoundsFast(com.badlogic.gdx.math.collision.Ray, com.badlogic.gdx.math.collision.BoundingBox, com.badlogic.gdx.math.Matrix4):boolean");
    }

    public static boolean intersectRayPlane(Ray ray, Plane plane, Vector3 vector3) {
        float dot = ray.direction.dot(plane.getNormal());
        if (dot != 0.0f) {
            float f = (-(ray.origin.dot(plane.getNormal()) + plane.getD())) / dot;
            if (f < 0.0f) {
                return false;
            }
            if (vector3 != null) {
                vector3.set(ray.origin).add(f5430a.set(ray.direction).scl(f));
            }
            return true;
        } else if (plane.testPoint(ray.origin) != Plane.PlaneSide.OnPlane) {
            return false;
        } else {
            if (vector3 != null) {
                vector3.set(ray.origin);
            }
            return true;
        }
    }

    public static float intersectRayRay(Vector2 vector2, Vector2 vector22, Vector2 vector23, Vector2 vector24) {
        float f = vector23.f5527x - vector2.f5527x;
        float f2 = vector23.f5528y - vector2.f5528y;
        float f3 = vector22.f5527x;
        float f4 = vector24.f5528y;
        float f5 = vector22.f5528y;
        float f6 = vector24.f5527x;
        float f7 = (f3 * f4) - (f5 * f6);
        if (f7 == 0.0f) {
            return Float.POSITIVE_INFINITY;
        }
        return (f * (f4 / f7)) - (f2 * (f6 / f7));
    }

    public static boolean intersectRaySphere(Ray ray, Vector3 vector3, float f, Vector3 vector32) {
        Vector3 vector33 = ray.direction;
        float f2 = vector3.f5533x;
        Vector3 vector34 = ray.origin;
        float dot = vector33.dot(f2 - vector34.f5533x, vector3.f5534y - vector34.f5534y, vector3.f5535z - vector34.f5535z);
        if (dot < 0.0f) {
            return false;
        }
        Vector3 vector35 = ray.origin;
        float f3 = vector35.f5533x;
        Vector3 vector36 = ray.direction;
        float dst2 = vector3.dst2(f3 + (vector36.f5533x * dot), vector35.f5534y + (vector36.f5534y * dot), vector35.f5535z + (vector36.f5535z * dot));
        float f4 = f * f;
        if (dst2 > f4) {
            return false;
        }
        if (vector32 != null) {
            vector32.set(ray.direction).scl(dot - ((float) Math.sqrt(f4 - dst2))).add(ray.origin);
            return true;
        }
        return true;
    }

    public static boolean intersectRayTriangle(Ray ray, Vector3 vector3, Vector3 vector32, Vector3 vector33, Vector3 vector34) {
        Vector3 sub = f5430a.set(vector32).sub(vector3);
        Vector3 sub2 = f5431b.set(vector33).sub(vector3);
        Vector3 crs = f5432c.set(ray.direction).crs(sub2);
        float dot = sub.dot(crs);
        if (MathUtils.isZero(dot)) {
            Plane plane = f5444o;
            plane.set(vector3, vector32, vector33);
            if (plane.testPoint(ray.origin) != Plane.PlaneSide.OnPlane || !isPointInTriangle(ray.origin, vector3, vector32, vector33)) {
                return false;
            }
            if (vector34 != null) {
                vector34.set(ray.origin);
            }
            return true;
        }
        float f = 1.0f / dot;
        Vector3 sub3 = f5445p.set(ray.origin).sub(vector3);
        float dot2 = sub3.dot(crs) * f;
        if (dot2 >= 0.0f && dot2 <= 1.0f) {
            Vector3 crs2 = sub3.crs(sub);
            float dot3 = ray.direction.dot(crs2) * f;
            if (dot3 >= 0.0f && dot2 + dot3 <= 1.0f) {
                float dot4 = sub2.dot(crs2) * f;
                if (dot4 < 0.0f) {
                    return false;
                }
                if (vector34 != null) {
                    if (dot4 <= 1.0E-6f) {
                        vector34.set(ray.origin);
                    } else {
                        ray.getEndPoint(vector34, dot4);
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static boolean intersectSegmentPlane(Vector3 vector3, Vector3 vector32, Plane plane, Vector3 vector33) {
        Vector3 sub = f5430a.set(vector32).sub(vector3);
        float dot = sub.dot(plane.getNormal());
        if (dot == 0.0f) {
            return false;
        }
        float f = (-(vector3.dot(plane.getNormal()) + plane.getD())) / dot;
        if (f < 0.0f || f > 1.0f) {
            return false;
        }
        vector33.set(vector3).add(sub.scl(f));
        return true;
    }

    public static boolean intersectSegmentPolygon(Vector2 vector2, Vector2 vector22, Polygon polygon) {
        float[] transformedVertices = polygon.getTransformedVertices();
        float f = vector2.f5527x;
        float f2 = vector2.f5528y;
        float f3 = vector22.f5527x;
        float f4 = vector22.f5528y;
        int length = transformedVertices.length;
        float f5 = transformedVertices[length - 2];
        float f6 = transformedVertices[length - 1];
        int i = 0;
        while (i < length) {
            float f7 = transformedVertices[i];
            float f8 = transformedVertices[i + 1];
            float f9 = f8 - f6;
            float f10 = f3 - f;
            float f11 = f7 - f5;
            float f12 = f4 - f2;
            float f13 = (f9 * f10) - (f11 * f12);
            if (f13 != 0.0f) {
                float f14 = f2 - f6;
                float f15 = f - f5;
                float f16 = ((f11 * f14) - (f9 * f15)) / f13;
                if (f16 >= 0.0f && f16 <= 1.0f) {
                    float f17 = ((f10 * f14) - (f12 * f15)) / f13;
                    if (f17 >= 0.0f && f17 <= 1.0f) {
                        return true;
                    }
                }
            }
            i += 2;
            f5 = f7;
            f6 = f8;
        }
        return false;
    }

    public static boolean overlapConvexPolygons(Polygon polygon, Polygon polygon2, MinimumTranslationVector minimumTranslationVector) {
        return overlapConvexPolygons(polygon.getTransformedVertices(), polygon2.getTransformedVertices(), minimumTranslationVector);
    }

    public static boolean overlaps(Rectangle rectangle, Rectangle rectangle2) {
        return rectangle.overlaps(rectangle2);
    }

    public static int pointLineSide(float f, float f2, float f3, float f4, float f5, float f6) {
        return (int) Math.signum(((f3 - f) * (f6 - f2)) - ((f4 - f2) * (f5 - f)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void splitTriangle(float[] fArr, Plane plane, SplitTriangle splitTriangle) {
        boolean z;
        boolean z2;
        int i;
        int i2;
        int i3;
        int i4;
        int length = fArr.length / 3;
        Plane.PlaneSide testPoint = plane.testPoint(fArr[0], fArr[1], fArr[2]);
        Plane.PlaneSide planeSide = Plane.PlaneSide.Back;
        if (testPoint == planeSide) {
            z = 1;
        } else {
            z = 0;
        }
        if (plane.testPoint(fArr[length + 0], fArr[length + 1], fArr[length + 2]) == planeSide) {
            z2 = 1;
        } else {
            z2 = 0;
        }
        int i5 = length * 2;
        if (plane.testPoint(fArr[i5 + 0], fArr[i5 + 1], fArr[i5 + 2]) == planeSide) {
            i = 1;
        } else {
            i = 0;
        }
        splitTriangle.m23918c();
        if (z == z2 && z2 == i) {
            splitTriangle.total = 1;
            if (z != 0) {
                splitTriangle.numBack = 1;
                System.arraycopy(fArr, 0, splitTriangle.back, 0, fArr.length);
                return;
            }
            splitTriangle.numFront = 1;
            System.arraycopy(fArr, 0, splitTriangle.front, 0, fArr.length);
            return;
        }
        splitTriangle.total = 3;
        int i6 = (!z) + (!z2) + (i ^ 1);
        splitTriangle.numFront = i6;
        splitTriangle.numBack = 3 - i6;
        splitTriangle.m23917d(!z);
        if (z != z2) {
            i2 = i;
            i3 = i5;
            m23921b(fArr, 0, length, length, plane, splitTriangle.f5454a, 0);
            splitTriangle.m23920a(fArr, 0, length);
            splitTriangle.m23920a(splitTriangle.f5454a, 0, length);
            splitTriangle.m23917d(!splitTriangle.m23919b());
            splitTriangle.m23920a(splitTriangle.f5454a, 0, length);
        } else {
            i2 = i;
            i3 = i5;
            splitTriangle.m23920a(fArr, 0, length);
        }
        int i7 = length + length;
        if (z2 != i2) {
            i4 = i7;
            m23921b(fArr, length, i7, length, plane, splitTriangle.f5454a, 0);
            splitTriangle.m23920a(fArr, length, length);
            splitTriangle.m23920a(splitTriangle.f5454a, 0, length);
            splitTriangle.m23917d(!splitTriangle.m23919b());
            splitTriangle.m23920a(splitTriangle.f5454a, 0, length);
        } else {
            i4 = i7;
            splitTriangle.m23920a(fArr, length, length);
        }
        if (i2 != z) {
            m23921b(fArr, i4, 0, length, plane, splitTriangle.f5454a, 0);
            splitTriangle.m23920a(fArr, i4, length);
            splitTriangle.m23920a(splitTriangle.f5454a, 0, length);
            splitTriangle.m23917d(!splitTriangle.m23919b());
            splitTriangle.m23920a(splitTriangle.f5454a, 0, length);
        } else {
            splitTriangle.m23920a(fArr, i4, length);
        }
        if (splitTriangle.numFront == 2) {
            float[] fArr2 = splitTriangle.front;
            int i8 = i3;
            System.arraycopy(fArr2, i8, fArr2, length * 3, i8);
            float[] fArr3 = splitTriangle.front;
            System.arraycopy(fArr3, 0, fArr3, length * 5, length);
            return;
        }
        int i9 = i3;
        float[] fArr4 = splitTriangle.back;
        System.arraycopy(fArr4, i9, fArr4, length * 3, i9);
        float[] fArr5 = splitTriangle.back;
        System.arraycopy(fArr5, 0, fArr5, length * 5, length);
    }

    public static boolean intersectLines(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, Vector2 vector2) {
        float f9 = f8 - f6;
        float f10 = f3 - f;
        float f11 = f7 - f5;
        float f12 = f4 - f2;
        float f13 = (f9 * f10) - (f11 * f12);
        if (f13 == 0.0f) {
            return false;
        }
        if (vector2 != null) {
            float f14 = ((f11 * (f2 - f6)) - (f9 * (f - f5))) / f13;
            vector2.set(f + (f10 * f14), f2 + (f12 * f14));
            return true;
        }
        return true;
    }

    public static boolean intersectRectangles(Rectangle rectangle, Rectangle rectangle2, Rectangle rectangle3) {
        if (rectangle.overlaps(rectangle2)) {
            rectangle3.f5523x = Math.max(rectangle.f5523x, rectangle2.f5523x);
            rectangle3.width = Math.min(rectangle.f5523x + rectangle.width, rectangle2.f5523x + rectangle2.width) - rectangle3.f5523x;
            rectangle3.f5524y = Math.max(rectangle.f5524y, rectangle2.f5524y);
            rectangle3.height = Math.min(rectangle.f5524y + rectangle.height, rectangle2.f5524y + rectangle2.height) - rectangle3.f5524y;
            return true;
        }
        return false;
    }

    public static boolean intersectSegments(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, Vector2 vector2) {
        float f9 = f8 - f6;
        float f10 = f3 - f;
        float f11 = f7 - f5;
        float f12 = f4 - f2;
        float f13 = (f9 * f10) - (f11 * f12);
        if (f13 == 0.0f) {
            return false;
        }
        float f14 = f2 - f6;
        float f15 = f - f5;
        float f16 = ((f11 * f14) - (f9 * f15)) / f13;
        if (f16 >= 0.0f && f16 <= 1.0f) {
            float f17 = ((f14 * f10) - (f15 * f12)) / f13;
            if (f17 >= 0.0f && f17 <= 1.0f) {
                if (vector2 != null) {
                    vector2.set(f + (f10 * f16), f2 + (f12 * f16));
                    return true;
                }
                return true;
            }
        }
        return false;
    }

    public static boolean overlapConvexPolygons(float[] fArr, float[] fArr2, MinimumTranslationVector minimumTranslationVector) {
        return overlapConvexPolygons(fArr, 0, fArr.length, fArr2, 0, fArr2.length, minimumTranslationVector);
    }

    public static boolean overlaps(Circle circle, Rectangle rectangle) {
        float f = circle.f5379x;
        float f2 = circle.f5380y;
        float f3 = rectangle.f5523x;
        if (f >= f3) {
            float f4 = rectangle.width;
            f3 = f > f3 + f4 ? f3 + f4 : f;
        }
        float f5 = rectangle.f5524y;
        if (f2 >= f5) {
            float f6 = rectangle.height;
            f5 = f2 > f5 + f6 ? f5 + f6 : f2;
        }
        float f7 = f3 - f;
        float f8 = f5 - f2;
        float f9 = circle.radius;
        return (f7 * f7) + (f8 * f8) < f9 * f9;
    }

    public static boolean overlapConvexPolygons(float[] fArr, int i, int i2, float[] fArr2, int i3, int i4, MinimumTranslationVector minimumTranslationVector) {
        if (minimumTranslationVector != null) {
            minimumTranslationVector.depth = Float.MAX_VALUE;
            minimumTranslationVector.normal.setZero();
        }
        boolean m23922a = m23922a(fArr2, i3, i4, fArr, i, i2, minimumTranslationVector, true);
        if (m23922a) {
            m23922a = m23922a(fArr, i, i2, fArr2, i3, i4, minimumTranslationVector, false);
        }
        if (m23922a) {
            return true;
        }
        if (minimumTranslationVector != null) {
            minimumTranslationVector.depth = 0.0f;
            minimumTranslationVector.normal.setZero();
            return false;
        }
        return false;
    }

    public static boolean isPointInPolygon(float[] fArr, int i, int i2, float f, float f2) {
        float f3 = fArr[i];
        float f4 = fArr[i + 1];
        int i3 = i + 3;
        int i4 = i + i2;
        boolean z = false;
        float f5 = f4;
        while (i3 < i4) {
            float f6 = fArr[i3];
            if ((f6 < f2 && f5 >= f2) || (f5 < f2 && f6 >= f2)) {
                float f7 = fArr[i3 - 1];
                if (f7 + (((f2 - f6) / (f5 - f6)) * (fArr[i3 - 3] - f7)) < f) {
                    z = !z;
                }
            }
            i3 += 2;
            f5 = f6;
        }
        return (((f4 >= f2 || f5 < f2) && (f5 >= f2 || f4 < f2)) || f3 + (((f2 - f4) / (f5 - f4)) * (fArr[i3 + (-3)] - f3)) >= f) ? z : !z;
    }

    public static Vector2 nearestSegmentPoint(float f, float f2, float f3, float f4, float f5, float f6, Vector2 vector2) {
        float f7 = f3 - f;
        float f8 = f4 - f2;
        float f9 = (f7 * f7) + (f8 * f8);
        if (f9 == 0.0f) {
            return vector2.set(f, f2);
        }
        float f10 = (((f5 - f) * f7) + ((f6 - f2) * f8)) / f9;
        if (f10 <= 0.0f) {
            return vector2.set(f, f2);
        }
        if (f10 >= 1.0f) {
            return vector2.set(f3, f4);
        }
        return vector2.set(f + (f7 * f10), f2 + (f10 * f8));
    }

    public static boolean intersectSegmentRectangle(Vector2 vector2, Vector2 vector22, Rectangle rectangle) {
        return intersectSegmentRectangle(vector2.f5527x, vector2.f5528y, vector22.f5527x, vector22.f5528y, rectangle);
    }

    public static boolean isPointInTriangle(Vector2 vector2, Vector2 vector22, Vector2 vector23, Vector2 vector24) {
        float f = vector2.f5527x;
        float f2 = vector22.f5527x;
        float f3 = f - f2;
        float f4 = vector2.f5528y;
        float f5 = vector22.f5528y;
        float f6 = f4 - f5;
        float f7 = vector23.f5527x;
        float f8 = vector23.f5528y;
        boolean z = ((f7 - f2) * f6) - ((f8 - f5) * f3) > 0.0f;
        float f9 = vector24.f5527x;
        float f10 = vector24.f5528y;
        if ((((f9 - f2) * f6) - ((f10 - f5) * f3) > 0.0f) == z) {
            return false;
        }
        return (((((f9 - f7) * (f4 - f8)) - ((f10 - f8) * (f - f7))) > 0.0f ? 1 : ((((f9 - f7) * (f4 - f8)) - ((f10 - f8) * (f - f7))) == 0.0f ? 0 : -1)) > 0) == z;
    }

    public static boolean intersectRayTriangles(Ray ray, float[] fArr, short[] sArr, int i, Vector3 vector3) {
        if (sArr.length % 3 == 0) {
            float f = Float.MAX_VALUE;
            boolean z = false;
            for (int i2 = 0; i2 < sArr.length; i2 += 3) {
                int i3 = sArr[i2] * i;
                int i4 = sArr[i2 + 1] * i;
                int i5 = sArr[i2 + 2] * i;
                if (intersectRayTriangle(ray, f5450u.set(fArr[i3], fArr[i3 + 1], fArr[i3 + 2]), f5451v.set(fArr[i4], fArr[i4 + 1], fArr[i4 + 2]), f5452w.set(fArr[i5], fArr[i5 + 1], fArr[i5 + 2]), f5449t)) {
                    float dst2 = ray.origin.dst2(f5449t);
                    if (dst2 < f) {
                        f5448s.set(f5449t);
                        f = dst2;
                        z = true;
                    }
                }
            }
            if (z) {
                if (vector3 != null) {
                    vector3.set(f5448s);
                }
                return true;
            }
            return false;
        }
        throw new RuntimeException("triangle list size is not a multiple of 3");
    }

    public static boolean intersectSegmentCircle(Vector2 vector2, Vector2 vector22, Circle circle, MinimumTranslationVector minimumTranslationVector) {
        f5440k.set(vector22).sub(vector2);
        f5441l.set(circle.f5379x - vector2.f5527x, circle.f5380y - vector2.f5528y);
        float len = f5440k.len();
        float dot = f5441l.dot(f5440k.nor());
        if (dot <= 0.0f) {
            f5442m.set(vector2);
        } else if (dot >= len) {
            f5442m.set(vector22);
        } else {
            f5443n.set(f5440k.scl(dot));
            f5442m.set(f5443n).add(vector2);
        }
        Vector2 vector23 = f5440k;
        Vector2 vector24 = f5442m;
        vector23.set(vector24.f5527x - circle.f5379x, vector24.f5528y - circle.f5380y);
        if (minimumTranslationVector != null) {
            if (f5440k.equals(Vector2.Zero)) {
                f5443n.set(vector22.f5528y - vector2.f5528y, vector2.f5527x - vector22.f5527x);
                minimumTranslationVector.normal.set(f5443n).nor();
                minimumTranslationVector.depth = circle.radius;
            } else {
                minimumTranslationVector.normal.set(f5440k).nor();
                minimumTranslationVector.depth = circle.radius - f5440k.len();
            }
        }
        float len2 = f5440k.len2();
        float f = circle.radius;
        return len2 <= f * f;
    }

    public static boolean intersectRayTriangles(Ray ray, List<Vector3> list, Vector3 vector3) {
        if (list.size() % 3 == 0) {
            float f = Float.MAX_VALUE;
            boolean z = false;
            for (int i = 0; i < list.size(); i += 3) {
                if (intersectRayTriangle(ray, list.get(i), list.get(i + 1), list.get(i + 2), f5449t)) {
                    float dst2 = ray.origin.dst2(f5449t);
                    if (dst2 < f) {
                        f5448s.set(f5449t);
                        f = dst2;
                        z = true;
                    }
                }
            }
            if (z) {
                if (vector3 != null) {
                    vector3.set(f5448s);
                }
                return true;
            }
            return false;
        }
        throw new RuntimeException("triangle list size is not a multiple of 3");
    }

    public static boolean intersectPolygons(FloatArray floatArray, FloatArray floatArray2) {
        float[] fArr = floatArray.items;
        int i = floatArray.size;
        float[] fArr2 = floatArray2.items;
        if (isPointInPolygon(fArr, 0, i, fArr2[0], fArr2[1])) {
            return true;
        }
        float[] fArr3 = floatArray2.items;
        int i2 = floatArray2.size;
        float[] fArr4 = floatArray.items;
        if (isPointInPolygon(fArr3, 0, i2, fArr4[0], fArr4[1])) {
            return true;
        }
        return intersectPolygonEdges(floatArray, floatArray2);
    }
}
