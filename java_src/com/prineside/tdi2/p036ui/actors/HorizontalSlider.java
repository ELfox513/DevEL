package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
/* renamed from: com.prineside.tdi2.ui.actors.HorizontalSlider */
/* loaded from: classes2.dex */
public class HorizontalSlider extends Group {
    public static final float HANDLE_WIDTH = 56.0f;
    public static final float HEIGHT = 48.0f;

    /* renamed from: M */
    public ObjectRetriever<Double> f12534M;

    /* renamed from: N */
    public Group f12535N;

    /* renamed from: O */
    public Image f12536O;

    /* renamed from: P */
    public double f12537P;

    /* renamed from: Q */
    public double f12538Q;

    /* renamed from: R */
    public double f12539R;

    /* renamed from: S */
    public boolean f12540S;

    public double getValue() {
        return this.f12537P;
    }

    public void setNotifyOnDrag(boolean z) {
        this.f12540S = z;
    }

    public HorizontalSlider(float f, double d, final double d2, final double d3, ObjectRetriever<Double> objectRetriever) {
        setTransform(false);
        setSize(f, 48.0f);
        this.f12534M = objectRetriever;
        this.f12537P = d;
        this.f12538Q = d2;
        this.f12539R = d3;
        Image image = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        image.setSize(f - 16.0f, 10.0f);
        image.setColor(1.0f, 1.0f, 1.0f, 0.14f);
        image.setPosition(8.0f, 19.0f);
        addActor(image);
        Group group = new Group();
        this.f12535N = group;
        group.setTransform(false);
        this.f12535N.setSize(56.0f, 64.0f);
        this.f12535N.addListener(new InputListener(f, d3, d2) { // from class: com.prineside.tdi2.ui.actors.HorizontalSlider.1

            /* renamed from: b */
            public float f12541b;

            /* renamed from: c */
            public double f12542c;

            /* renamed from: d */
            public double f12543d;

            /* renamed from: e */
            public float f12544e;

            /* renamed from: f */
            public final /* synthetic */ float f12545f;

            /* renamed from: g */
            public final /* synthetic */ double f12546g;

            /* renamed from: h */
            public final /* synthetic */ double f12547h;

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchDragged(InputEvent inputEvent, float f2, float f3, int i) {
                HorizontalSlider.this.setValue(m20708a(inputEvent.getStageX()), HorizontalSlider.this.f12540S);
            }

            {
                this.f12545f = f;
                this.f12546g = d3;
                this.f12547h = d2;
                float f2 = f - 56.0f;
                this.f12541b = f2;
                double d4 = f2;
                Double.isNaN(d4);
                this.f12542c = (d3 - d2) / d4;
            }

            /* renamed from: a */
            public final double m20708a(float f2) {
                double d4 = f2 - this.f12544e;
                double d5 = this.f12542c;
                Double.isNaN(d4);
                double d6 = this.f12543d + (d4 * d5);
                double d7 = this.f12547h;
                if (d6 >= d7) {
                    d7 = this.f12546g;
                    if (d6 <= d7) {
                        return d6;
                    }
                }
                return d7;
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public void touchUp(InputEvent inputEvent, float f2, float f3, int i, int i2) {
                HorizontalSlider.this.setValue(m20708a(inputEvent.getStageX()), true);
                HorizontalSlider.this.f12536O.setColor(MaterialColor.LIGHT_BLUE.P600);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f2, float f3, int i, int i2) {
                inputEvent.cancel();
                this.f12544e = inputEvent.getStageX();
                this.f12543d = HorizontalSlider.this.f12537P;
                HorizontalSlider.this.f12536O.setColor(MaterialColor.LIGHT_BLUE.P700);
                return true;
            }
        });
        addActor(this.f12535N);
        Image image2 = new Image(Game.f8589i.assetManager.getDrawable("ui-horizontal-slider-handle"));
        this.f12536O = image2;
        image2.setSize(32.0f, 48.0f);
        this.f12536O.setPosition(12.0f, 8.0f);
        this.f12536O.setColor(MaterialColor.LIGHT_BLUE.P600);
        this.f12535N.addActor(this.f12536O);
        addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.actors.HorizontalSlider.2
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f2, float f3) {
                double width = f2 / HorizontalSlider.this.getWidth();
                if (width < 0.0d) {
                    width = 0.0d;
                } else if (width > 1.0d) {
                    width = 1.0d;
                }
                HorizontalSlider horizontalSlider = HorizontalSlider.this;
                double d4 = d2;
                horizontalSlider.setValue(d4 + ((d3 - d4) * width), true);
            }
        });
        setValue(d, false);
    }

    public void setValue(double d, boolean z) {
        double d2 = this.f12538Q;
        if (d < d2) {
            d = d2;
        }
        double d3 = this.f12539R;
        if (d > d3) {
            d = d3;
        }
        this.f12537P = d;
        this.f12535N.setPosition(((float) ((d - d2) / (d3 - d2))) * (getWidth() - 56.0f), -8.0f);
        ObjectRetriever<Double> objectRetriever = this.f12534M;
        if (objectRetriever != null && z) {
            objectRetriever.retrieved(Double.valueOf(d));
        }
    }
}
