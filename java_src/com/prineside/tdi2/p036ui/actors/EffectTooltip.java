package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ResourcePack;
/* renamed from: com.prineside.tdi2.ui.actors.EffectTooltip */
/* loaded from: classes2.dex */
public class EffectTooltip extends Table {

    /* renamed from: x0 */
    public final Image f12515x0;

    /* renamed from: y0 */
    public final Label f12516y0;

    /* renamed from: z0 */
    public final Label f12517z0;

    public EffectTooltip setIcon(Drawable drawable) {
        this.f12515x0.setDrawable(drawable);
        return this;
    }

    public EffectTooltip setTitle(CharSequence charSequence) {
        this.f12516y0.setText(charSequence);
        return this;
    }

    public EffectTooltip setHint(CharSequence charSequence) {
        if (charSequence == null) {
            this.f12517z0.setVisible(false);
        } else {
            this.f12517z0.setText(charSequence);
            this.f12517z0.setVisible(true);
        }
        return this;
    }

    public EffectTooltip(Drawable drawable, CharSequence charSequence) {
        Image image = new Image();
        this.f12515x0 = image;
        add((EffectTooltip) image).size(64.0f, 64.0f);
        Table table = new Table();
        add((EffectTooltip) table).padLeft(8.0f);
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(24);
        Color color = Color.WHITE;
        Label label = new Label("Title", new Label.LabelStyle(font, color));
        this.f12516y0 = label;
        label.setAlignment(8);
        table.add((Table) label).fillX().row();
        Label label2 = new Label("Hint", new Label.LabelStyle(Game.f8589i.assetManager.getFont(21), color));
        this.f12517z0 = label2;
        label2.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label2.setVisible(false);
        label2.setAlignment(8);
        table.add((Table) label2).fillX();
        setIcon(drawable);
        setTitle(charSequence);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void setColor(Color color) {
        super.setColor(color);
        this.f12515x0.setColor(color);
        this.f12516y0.setColor(color);
        this.f12517z0.setColor(color.f3892r, color.f3891g, color.f3890b, color.f3889a * 0.56f);
    }
}
