package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.glutils.HdpiUtils;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Null;
/* loaded from: classes.dex */
public class ScissorStack {

    /* renamed from: a */
    public static Array<Rectangle> f6376a = new Array<>();

    /* renamed from: b */
    public static Vector3 f6377b = new Vector3();

    /* renamed from: c */
    public static final Rectangle f6378c = new Rectangle();

    public static void calculateScissors(Camera camera, Matrix4 matrix4, Rectangle rectangle, Rectangle rectangle2) {
        calculateScissors(camera, 0.0f, 0.0f, Gdx.graphics.getWidth(), Gdx.graphics.getHeight(), matrix4, rectangle, rectangle2);
    }

    /* renamed from: a */
    public static void m23698a(Rectangle rectangle) {
        rectangle.f5523x = Math.round(rectangle.f5523x);
        rectangle.f5524y = Math.round(rectangle.f5524y);
        rectangle.width = Math.round(rectangle.width);
        float round = Math.round(rectangle.height);
        rectangle.height = round;
        float f = rectangle.width;
        if (f < 0.0f) {
            float f2 = -f;
            rectangle.width = f2;
            rectangle.f5523x -= f2;
        }
        if (round < 0.0f) {
            float f3 = -round;
            rectangle.height = f3;
            rectangle.f5524y -= f3;
        }
    }

    public static void calculateScissors(Camera camera, float f, float f2, float f3, float f4, Matrix4 matrix4, Rectangle rectangle, Rectangle rectangle2) {
        f6377b.set(rectangle.f5523x, rectangle.f5524y, 0.0f);
        f6377b.mul(matrix4);
        camera.project(f6377b, f, f2, f3, f4);
        Vector3 vector3 = f6377b;
        rectangle2.f5523x = vector3.f5533x;
        rectangle2.f5524y = vector3.f5534y;
        vector3.set(rectangle.f5523x + rectangle.width, rectangle.f5524y + rectangle.height, 0.0f);
        f6377b.mul(matrix4);
        camera.project(f6377b, f, f2, f3, f4);
        Vector3 vector32 = f6377b;
        rectangle2.width = vector32.f5533x - rectangle2.f5523x;
        rectangle2.height = vector32.f5534y - rectangle2.f5524y;
    }

    public static Rectangle getViewport() {
        Array<Rectangle> array = f6376a;
        if (array.size == 0) {
            Rectangle rectangle = f6378c;
            rectangle.set(0.0f, 0.0f, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
            return rectangle;
        }
        Rectangle rectangle2 = f6378c;
        rectangle2.set(array.peek());
        return rectangle2;
    }

    @Null
    public static Rectangle peekScissors() {
        Array<Rectangle> array = f6376a;
        if (array.size == 0) {
            return null;
        }
        return array.peek();
    }

    public static Rectangle popScissors() {
        Rectangle pop = f6376a.pop();
        Array<Rectangle> array = f6376a;
        if (array.size == 0) {
            Gdx.f3119gl.glDisable(GL20.GL_SCISSOR_TEST);
        } else {
            Rectangle peek = array.peek();
            HdpiUtils.glScissor((int) peek.f5523x, (int) peek.f5524y, (int) peek.width, (int) peek.height);
        }
        return pop;
    }

    public static boolean pushScissors(Rectangle rectangle) {
        m23698a(rectangle);
        Array<Rectangle> array = f6376a;
        int i = array.size;
        if (i == 0) {
            if (rectangle.width < 1.0f || rectangle.height < 1.0f) {
                return false;
            }
            Gdx.f3119gl.glEnable(GL20.GL_SCISSOR_TEST);
        } else {
            Rectangle rectangle2 = array.get(i - 1);
            float max = Math.max(rectangle2.f5523x, rectangle.f5523x);
            float min = Math.min(rectangle2.f5523x + rectangle2.width, rectangle.f5523x + rectangle.width) - max;
            if (min < 1.0f) {
                return false;
            }
            float max2 = Math.max(rectangle2.f5524y, rectangle.f5524y);
            float min2 = Math.min(rectangle2.f5524y + rectangle2.height, rectangle.f5524y + rectangle.height) - max2;
            if (min2 < 1.0f) {
                return false;
            }
            rectangle.f5523x = max;
            rectangle.f5524y = max2;
            rectangle.width = min;
            rectangle.height = Math.max(1.0f, min2);
        }
        f6376a.add(rectangle);
        HdpiUtils.glScissor((int) rectangle.f5523x, (int) rectangle.f5524y, (int) rectangle.width, (int) rectangle.height);
        return true;
    }
}
