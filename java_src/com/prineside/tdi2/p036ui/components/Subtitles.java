package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.managers.UiManager;
/* renamed from: com.prineside.tdi2.ui.components.Subtitles */
/* loaded from: classes2.dex */
public class Subtitles implements Disposable {

    /* renamed from: a */
    public final UiManager.UiLayer f13676a;

    /* renamed from: b */
    public Drawable f13677b;

    /* renamed from: d */
    public Table f13678d;

    /* renamed from: k */
    public DelayedRemovalArray<ScheduledMessage> f13679k;

    /* renamed from: com.prineside.tdi2.ui.components.Subtitles$ScheduledMessage */
    /* loaded from: classes2.dex */
    public class ScheduledMessage {

        /* renamed from: a */
        public CharSequence f13680a;

        /* renamed from: b */
        public float f13681b;

        public ScheduledMessage() {
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f13676a);
    }

    public void schedule(CharSequence[] charSequenceArr, float f, float f2) {
        for (int i = 0; i < charSequenceArr.length; i++) {
            ScheduledMessage scheduledMessage = new ScheduledMessage();
            scheduledMessage.f13680a = charSequenceArr[i];
            scheduledMessage.f13681b = (i * f2) + f;
            this.f13679k.add(scheduledMessage);
        }
    }

    public void add(CharSequence charSequence) {
        Table table = new Table();
        table.setBackground(this.f13677b);
        this.f13678d.add(table).fillX().expandX().padTop(4.0f).row();
        Label label = new Label(charSequence, Game.f8589i.assetManager.getLabelStyle(30));
        label.setAlignment(8);
        label.setWrap(true);
        table.add((Table) label).pad(4.0f).padRight(120.0f).expand().fill();
        table.addAction(Actions.sequence(Actions.alpha(0.0f), Actions.fadeIn(0.3f), Actions.delay(7.0f), Actions.fadeOut(2.0f), Actions.removeActor()));
    }

    public void draw(float f) {
        this.f13679k.begin();
        int i = 0;
        while (true) {
            DelayedRemovalArray<ScheduledMessage> delayedRemovalArray = this.f13679k;
            if (i < delayedRemovalArray.size) {
                ScheduledMessage scheduledMessage = delayedRemovalArray.items[i];
                float f2 = scheduledMessage.f13681b - f;
                scheduledMessage.f13681b = f2;
                if (f2 <= 0.0f) {
                    add(scheduledMessage.f13680a);
                    this.f13679k.removeIndex(i);
                }
                i++;
            } else {
                delayedRemovalArray.end();
                return;
            }
        }
    }

    public void finalFadeOut() {
        float f;
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        this.f13676a.getTable().setTouchable(Touchable.disabled);
        this.f13676a.getTable().clearActions();
        this.f13676a.getTable().addAction(Actions.alpha(0.0f, f * 1.0f));
    }

    public Subtitles() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 104, "Subtitles main");
        this.f13676a = addLayer;
        this.f13679k = new DelayedRemovalArray<>(ScheduledMessage.class);
        this.f13677b = Game.f8589i.assetManager.getDrawable("blank").tint(new Color(0.0f, 0.0f, 0.0f, 0.56f));
        this.f13678d = new Table();
        addLayer.getTable().add(this.f13678d).fillX().expandX().expandY().bottom().right().padLeft(288.0f).padBottom(144.0f);
    }
}
