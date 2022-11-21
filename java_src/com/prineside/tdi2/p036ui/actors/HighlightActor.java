package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.p033ui.Widget;
import com.prineside.tdi2.Game;
/* renamed from: com.prineside.tdi2.ui.actors.HighlightActor */
/* loaded from: classes2.dex */
public class HighlightActor extends Widget {

    /* renamed from: U */
    public static final Vector2 f12521U = new Vector2();

    /* renamed from: S */
    public float f12532S;

    /* renamed from: T */
    public Actor f12533T;

    /* renamed from: I */
    public TextureRegion f12522I = Game.f8589i.assetManager.getTextureRegion("blank");

    /* renamed from: J */
    public TextureRegion f12523J = Game.f8589i.assetManager.getTextureRegion("gradient-corner-bottom-left");

    /* renamed from: K */
    public TextureRegion f12524K = Game.f8589i.assetManager.getTextureRegion("gradient-corner-bottom-right");

    /* renamed from: L */
    public TextureRegion f12525L = Game.f8589i.assetManager.getTextureRegion("gradient-corner-top-right");

    /* renamed from: M */
    public TextureRegion f12526M = Game.f8589i.assetManager.getTextureRegion("gradient-corner-top-left");

    /* renamed from: P */
    public TextureRegion f12529P = Game.f8589i.assetManager.getTextureRegion("gradient-top");

    /* renamed from: N */
    public TextureRegion f12527N = Game.f8589i.assetManager.getTextureRegion("gradient-left");

    /* renamed from: O */
    public TextureRegion f12528O = Game.f8589i.assetManager.getTextureRegion("gradient-right");

    /* renamed from: Q */
    public TextureRegion f12530Q = Game.f8589i.assetManager.getTextureRegion("gradient-bottom");

    /* renamed from: R */
    public long f12531R = Game.getRealTickCount();

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        boolean z;
        validate();
        Actor actor = this.f12533T;
        while (true) {
            if (actor != null) {
                if (!actor.isVisible()) {
                    z = false;
                    break;
                } else if (actor.hasParent()) {
                    actor = actor.getParent();
                } else {
                    actor = null;
                }
            } else {
                z = true;
                break;
            }
        }
        if (z) {
            Vector2 vector2 = f12521U;
            vector2.setZero();
            this.f12533T.localToStageCoordinates(vector2);
            float f2 = vector2.f5527x;
            float f3 = vector2.f5528y;
            float width = this.f12533T.getWidth();
            float height = this.f12533T.getHeight();
            this.f12532S += ((float) (Game.getRealTickCount() - this.f12531R)) / 1000000.0f;
            this.f12531R = Game.getRealTickCount();
            float apply = Interpolation.sineOut.apply(((this.f12532S * 3.0f) % 3.0f) / 3.0f);
            Color color = getColor();
            batch.setColor(0.0f, 0.0f, 0.0f, color.f3889a * 0.28f * f);
            float f4 = (f2 - 256.0f) - 4.0f;
            float f5 = f3 - 4.0f;
            float f6 = height + 8.0f;
            batch.draw(this.f12528O, f4, f5, 256.0f, f6);
            float f7 = f2 + width + 4.0f;
            batch.draw(this.f12527N, f7, f5, 256.0f, f6);
            float f8 = f2 - 4.0f;
            float f9 = (f3 - 256.0f) - 4.0f;
            float f10 = width + 8.0f;
            batch.draw(this.f12529P, f8, f9, f10, 256.0f);
            float f11 = height + f3 + 4.0f;
            batch.draw(this.f12530Q, f8, f11, f10, 256.0f);
            batch.draw(this.f12526M, f4, f11, 256.0f, 256.0f);
            batch.draw(this.f12525L, f7, f11, 256.0f, 256.0f);
            batch.draw(this.f12523J, f4, f9, 256.0f, 256.0f);
            batch.draw(this.f12524K, f7, f9, 256.0f, 256.0f);
            batch.setColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a * f * 0.5f * (1.0f - apply));
            float f12 = apply * 18.0f;
            float f13 = (f2 - f12) - 4.0f;
            batch.draw(this.f12522I, f13, f5, f12, f6);
            batch.draw(this.f12522I, f7, f5, f12, f6);
            float f14 = (f12 * 2.0f) + width + 8.0f;
            batch.draw(this.f12522I, f13, (f3 - f12) - 4.0f, f14, f12);
            batch.draw(this.f12522I, f13, f11, f14, f12);
            float f15 = apply * 40.0f;
            float f16 = (f2 - f15) - 4.0f;
            batch.draw(this.f12522I, f16, f5, f15, f6);
            batch.draw(this.f12522I, f7, f5, f15, f6);
            float f17 = (f3 - f15) - 4.0f;
            float f18 = width + (2.0f * f15) + 8.0f;
            batch.draw(this.f12522I, f16, f17, f18, f15);
            batch.draw(this.f12522I, f16, f11, f18, f15);
            batch.setColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a * f);
            float f19 = f8 - 4.0f;
            batch.draw(this.f12522I, f19, f5, 4.0f, f6);
            batch.draw(this.f12522I, f7, f5, 4.0f, f6);
            float f20 = f10 + 8.0f;
            batch.draw(this.f12522I, f19, f5 - 4.0f, f20, 4.0f);
            batch.draw(this.f12522I, f19, f11, f20, 4.0f);
        }
    }

    public HighlightActor(Actor actor) {
        this.f12533T = actor;
        setColor(new Color(1338242986));
    }
}
