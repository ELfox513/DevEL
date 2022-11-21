package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.g2d.Animation;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
/* renamed from: com.prineside.tdi2.ui.actors.AnimatedImage */
/* loaded from: classes2.dex */
public class AnimatedImage extends Image {

    /* renamed from: P */
    public Animation<? extends TextureRegion> f12480P;

    /* renamed from: Q */
    public float f12481Q;

    public AnimatedImage(Animation<? extends TextureRegion> animation) {
        super(animation.getKeyFrame(0.0f));
        this.f12481Q = 0.0f;
        this.f12480P = animation;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void act(float f) {
        boolean z;
        if (isVisible()) {
            TextureRegionDrawable textureRegionDrawable = (TextureRegionDrawable) getDrawable();
            Animation<? extends TextureRegion> animation = this.f12480P;
            float f2 = this.f12481Q + f;
            this.f12481Q = f2;
            if (animation.getPlayMode() != Animation.PlayMode.NORMAL) {
                z = true;
            } else {
                z = false;
            }
            textureRegionDrawable.setRegion(animation.getKeyFrame(f2, z));
        }
        super.act(f);
    }
}
