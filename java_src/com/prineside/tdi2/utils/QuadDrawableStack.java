package com.prineside.tdi2.utils;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.scenes.scene2d.utils.BaseDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.TransformDrawable;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.p036ui.actors.QuadActor;
/* loaded from: classes2.dex */
public class QuadDrawableStack extends BaseDrawable implements TransformDrawable {

    /* renamed from: h */
    public Array<QuadActorConfig> f15136h;

    /* renamed from: i */
    public float f15137i;

    /* renamed from: j */
    public float f15138j;

    public QuadDrawableStack() {
        this.f15136h = new Array<>(QuadActorConfig.class);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.BaseDrawable, com.badlogic.gdx.scenes.scene2d.utils.Drawable
    public void draw(Batch batch, float f, float f2, float f3, float f4) {
        float f5 = f3 / this.f15137i;
        float f6 = f4 / this.f15138j;
        int i = 0;
        while (true) {
            Array<QuadActorConfig> array = this.f15136h;
            if (i >= array.size) {
                return;
            }
            QuadActorConfig quadActorConfig = array.items[i];
            quadActorConfig.actor.setPosition((quadActorConfig.f15139x * f5) + f, (quadActorConfig.f15140y * f6) + f2);
            quadActorConfig.actor.setSize(quadActorConfig.width * f5, quadActorConfig.height * f6);
            quadActorConfig.actor.setColor(batch.getColor());
            quadActorConfig.actor.draw(batch, 1.0f);
            i++;
        }
    }

    /* loaded from: classes2.dex */
    public static class QuadActorConfig {
        public QuadActor actor;
        public float height;
        public float width;

        /* renamed from: x */
        public float f15139x;

        /* renamed from: y */
        public float f15140y;

        public QuadActorConfig(QuadActor quadActor, float f, float f2, float f3, float f4) {
            this.actor = quadActor;
            this.f15139x = f;
            this.f15140y = f2;
            this.width = f3;
            this.height = f4;
        }
    }

    public void setQuadActors(Array<QuadActorConfig> array) {
        this.f15136h.clear();
        this.f15136h.addAll(array);
        float f = 0.0f;
        float f2 = 0.0f;
        int i = 0;
        while (true) {
            Array<QuadActorConfig> array2 = this.f15136h;
            if (i < array2.size) {
                QuadActorConfig quadActorConfig = array2.items[i];
                float f3 = quadActorConfig.width + quadActorConfig.f15139x;
                float f4 = quadActorConfig.height + quadActorConfig.f15140y;
                if (f3 > f) {
                    f = f3;
                }
                if (f4 > f2) {
                    f2 = f4;
                }
                i++;
            } else {
                setMinWidth(f);
                setMinHeight(f2);
                this.f15137i = f;
                this.f15138j = f2;
                return;
            }
        }
    }

    public QuadDrawableStack(Array<QuadActorConfig> array) {
        this.f15136h = new Array<>(QuadActorConfig.class);
        setQuadActors(array);
    }

    public QuadDrawableStack(QuadDrawableStack quadDrawableStack) {
        super(quadDrawableStack);
        this.f15136h = new Array<>(QuadActorConfig.class);
        setQuadActors(quadDrawableStack.f15136h);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.utils.TransformDrawable
    public void draw(Batch batch, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        draw(batch, f, f2, f5, f6);
    }
}
