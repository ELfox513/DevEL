package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.utils.FloatArray;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.InterpolationType;
import com.prineside.tdi2.enums.ShapeType;
import com.prineside.tdi2.shapes.MultiLine;
/* renamed from: com.prineside.tdi2.ui.actors.LinearChartActor */
/* loaded from: classes2.dex */
public class LinearChartActor extends Actor {

    /* renamed from: O */
    public static Vector2 f12607O = new Vector2();

    /* renamed from: F */
    public MultiLine f12608F;

    /* renamed from: G */
    public float f12609G = Color.WHITE.toFloatBits();

    /* renamed from: H */
    public Color f12610H = new Color(0.0f, 0.0f, 0.0f, 0.0f);

    /* renamed from: I */
    public FloatArray f12611I = new FloatArray();

    /* renamed from: J */
    public float f12612J = Float.NaN;

    /* renamed from: K */
    public float f12613K;

    /* renamed from: L */
    public float f12614L;

    /* renamed from: M */
    public float f12615M;

    /* renamed from: N */
    public TextureRegion f12616N;

    public void setChart(FloatArray floatArray) {
        this.f12611I.clear();
        this.f12611I.addAll(floatArray);
        this.f12612J = Float.NaN;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        if (this.f12616N == null) {
            return;
        }
        batch.setColor(this.f12610H);
        batch.draw(this.f12616N, getX(), getY(), getWidth(), getHeight());
        Color color = Color.WHITE;
        batch.setColor(color);
        MultiLine multiLine = this.f12608F;
        if (multiLine != null) {
            multiLine.draw(batch);
        }
        batch.setColor(color);
    }

    public void setColor(Color color, Color color2) {
        this.f12612J = Float.NaN;
        this.f12609G = color.toFloatBits();
        this.f12610H.set(color2);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void act(float f) {
        super.act(f);
        if (isVisible() && this.f12611I.size >= 2) {
            if (this.f12616N == null) {
                this.f12616N = Game.f8589i.assetManager.getTextureRegion("blank");
            }
            float width = getWidth();
            float height = getHeight();
            f12607O.setZero();
            localToStageCoordinates(f12607O);
            Vector2 vector2 = f12607O;
            if (vector2.f5527x != this.f12612J || vector2.f5528y != this.f12613K || width != this.f12614L || height != this.f12615M || this.f12608F == null) {
                if (this.f12608F == null) {
                    this.f12608F = (MultiLine) Game.f8589i.shapeManager.getFactory(ShapeType.MULTI_LINE).obtain();
                }
                this.f12608F.reset();
                int i = 0;
                this.f12608F.setTextureRegion(this.f12616N, false, false);
                float f2 = width / (this.f12611I.size - 1);
                while (true) {
                    FloatArray floatArray = this.f12611I;
                    if (i < floatArray.size) {
                        float f3 = floatArray.items[i];
                        Vector2 vector22 = f12607O;
                        this.f12608F.appendNode(vector22.f5527x + (i * f2), vector22.f5528y + (f3 * height), 2.0f, this.f12609G, false);
                        i++;
                    } else {
                        this.f12608F.updateAllNodes();
                        Vector2 vector23 = f12607O;
                        this.f12612J = vector23.f5527x;
                        this.f12613K = vector23.f5528y;
                        this.f12614L = width;
                        this.f12615M = height;
                        return;
                    }
                }
            }
        }
    }

    public void setChart(InterpolationType interpolationType) {
        this.f12611I.clear();
        Interpolation object = InterpolationType.getObject(interpolationType);
        for (double d = 0.0d; d <= 1.0d; d += 0.05d) {
            this.f12611I.add(object.apply((float) d));
        }
        this.f12612J = Float.NaN;
    }
}
