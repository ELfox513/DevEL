package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
/* renamed from: com.prineside.tdi2.ui.actors.ImageWithParentColor */
/* loaded from: classes2.dex */
public class ImageWithParentColor extends Image {

    /* renamed from: P */
    public Color f12560P;

    public ImageWithParentColor() {
        this((Drawable) null);
    }

    public ImageWithParentColor(Drawable drawable) {
        super(drawable);
        this.f12560P = new Color();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Image, com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        this.f12560P.set(getColor());
        Color color = getColor();
        Color color2 = getParent().getColor();
        setColor(color.f3892r * color2.f3892r, color.f3891g * color2.f3891g, color.f3890b * color2.f3890b, color.f3889a);
        super.draw(batch, f);
        setColor(this.f12560P);
    }

    public ImageWithParentColor(TextureRegion textureRegion) {
        super(textureRegion);
        this.f12560P = new Color();
    }
}
