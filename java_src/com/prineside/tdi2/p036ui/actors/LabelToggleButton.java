package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.ObjectRetriever;
/* renamed from: com.prineside.tdi2.ui.actors.LabelToggleButton */
/* loaded from: classes2.dex */
public class LabelToggleButton extends Table {
    public Label label;
    public ObjectRetriever<Boolean> onToggle;
    public Image toggleImage;

    /* renamed from: x0 */
    public boolean f12600x0;

    public LabelToggleButton() {
    }

    public boolean isEnabled() {
        return this.f12600x0;
    }

    public void setText(CharSequence charSequence) {
        this.label.setText(charSequence);
    }

    public LabelToggleButton(String str, boolean z, int i, float f, boolean z2, ObjectRetriever<Boolean> objectRetriever) {
        setup(str, z, i, f, z2, objectRetriever);
    }

    public void setEnabled(boolean z) {
        this.f12600x0 = z;
        if (z) {
            this.toggleImage.setDrawable(Game.f8589i.assetManager.getDrawable("settings-toggle-on"));
        } else {
            this.toggleImage.setDrawable(Game.f8589i.assetManager.getDrawable("settings-toggle-off"));
        }
    }

    public void setup(String str, boolean z, int i, float f, boolean z2, ObjectRetriever<Boolean> objectRetriever) {
        this.onToggle = objectRetriever;
        setTouchable(Touchable.enabled);
        Label label = new Label(str, Game.f8589i.assetManager.getLabelStyle(i));
        this.label = label;
        label.setColor(MaterialColor.LIGHT_BLUE.P300);
        this.label.setAlignment(8);
        this.toggleImage = new Image();
        if (z2) {
            add((LabelToggleButton) this.label).left().padRight(32.0f);
            add((LabelToggleButton) this.toggleImage).size(2.0f * f, f);
            add().height(1.0f).expandX().fillX();
        } else {
            add((LabelToggleButton) this.label).left().padRight(16.0f).expand();
            add((LabelToggleButton) this.toggleImage).right().size(2.0f * f, f);
        }
        addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.actors.LabelToggleButton.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f2, float f3) {
                LabelToggleButton labelToggleButton = LabelToggleButton.this;
                labelToggleButton.setEnabled(!labelToggleButton.f12600x0);
                LabelToggleButton labelToggleButton2 = LabelToggleButton.this;
                labelToggleButton2.onToggle.retrieved(Boolean.valueOf(labelToggleButton2.f12600x0));
                Game.f8589i.soundManager.playStatic(StaticSoundType.BUTTON);
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void enter(InputEvent inputEvent, float f2, float f3, int i2, Actor actor) {
                super.enter(inputEvent, f2, f3, i2, actor);
                if (i2 == -1) {
                    LabelToggleButton.this.label.setColor(Color.WHITE);
                }
            }

            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener, com.badlogic.gdx.scenes.scene2d.InputListener
            public void exit(InputEvent inputEvent, float f2, float f3, int i2, Actor actor) {
                super.exit(inputEvent, f2, f3, i2, actor);
                if (i2 == -1) {
                    LabelToggleButton.this.label.setColor(MaterialColor.LIGHT_BLUE.P300);
                }
            }
        });
        setEnabled(z);
    }

    public LabelToggleButton(String str, boolean z, int i, float f, ObjectRetriever<Boolean> objectRetriever) {
        this(str, z, i, f, false, objectRetriever);
    }

    public LabelToggleButton(String str, boolean z, ObjectRetriever<Boolean> objectRetriever) {
        this(str, z, 30, 48.0f, objectRetriever);
    }
}
