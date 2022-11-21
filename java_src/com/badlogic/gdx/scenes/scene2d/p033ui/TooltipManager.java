package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Timer;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.TooltipManager */
/* loaded from: classes.dex */
public class TooltipManager {

    /* renamed from: f */
    public static TooltipManager f6179f;

    /* renamed from: g */
    public static Files f6180g;

    /* renamed from: d */
    public Tooltip f6184d;
    public float initialTime = 2.0f;
    public float subsequentTime = 0.0f;
    public float resetTime = 1.5f;
    public boolean enabled = true;
    public boolean animations = true;
    public float maxWidth = 2.14748365E9f;
    public float offsetX = 15.0f;
    public float offsetY = 19.0f;
    public float edgeDistance = 7.0f;

    /* renamed from: a */
    public final Array<Tooltip> f6181a = new Array<>();

    /* renamed from: b */
    public float f6182b = this.initialTime;

    /* renamed from: c */
    public final Timer.Task f6183c = new Timer.Task() { // from class: com.badlogic.gdx.scenes.scene2d.ui.TooltipManager.1
        @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
        public void run() {
            TooltipManager tooltipManager = TooltipManager.this;
            tooltipManager.f6182b = tooltipManager.initialTime;
        }
    };

    /* renamed from: e */
    public final Timer.Task f6185e = new Timer.Task() { // from class: com.badlogic.gdx.scenes.scene2d.ui.TooltipManager.2
        @Override // com.badlogic.gdx.utils.Timer.Task, java.lang.Runnable
        public void run() {
            Actor actor;
            Stage stage;
            Tooltip tooltip = TooltipManager.this.f6184d;
            if (tooltip == null || (actor = tooltip.f6177g) == null || (stage = actor.getStage()) == null) {
                return;
            }
            stage.addActor(TooltipManager.this.f6184d.f6173c);
            TooltipManager.this.f6184d.f6173c.toFront();
            TooltipManager tooltipManager = TooltipManager.this;
            tooltipManager.f6181a.add(tooltipManager.f6184d);
            TooltipManager.this.f6184d.f6173c.clearActions();
            TooltipManager tooltipManager2 = TooltipManager.this;
            tooltipManager2.m23735b(tooltipManager2.f6184d);
            TooltipManager tooltipManager3 = TooltipManager.this;
            if (!tooltipManager3.f6184d.f6174d) {
                tooltipManager3.f6182b = tooltipManager3.subsequentTime;
                tooltipManager3.f6183c.cancel();
            }
        }
    };

    public void hide(Tooltip tooltip) {
        this.f6184d = null;
        this.f6185e.cancel();
        if (tooltip.f6173c.hasParent()) {
            this.f6181a.removeValue(tooltip, true);
            m23736a(tooltip);
            this.f6183c.cancel();
            Timer.schedule(this.f6183c, this.resetTime);
        }
    }

    public void instant() {
        this.f6182b = 0.0f;
        this.f6185e.run();
        this.f6185e.cancel();
    }

    public static TooltipManager getInstance() {
        Files files = f6180g;
        if (files == null || files != Gdx.files) {
            f6180g = Gdx.files;
            f6179f = new TooltipManager();
        }
        return f6179f;
    }

    /* renamed from: a */
    public void m23736a(Tooltip tooltip) {
        Group group = tooltip.f6173c;
        Interpolation interpolation = Interpolation.fade;
        group.addAction(Actions.sequence(Actions.parallel(Actions.alpha(0.2f, 0.2f, interpolation), Actions.scaleTo(0.05f, 0.05f, 0.2f, interpolation)), Actions.removeActor()));
    }

    /* renamed from: b */
    public void m23735b(Tooltip tooltip) {
        float f;
        if (this.animations) {
            if (this.f6182b > 0.0f) {
                f = 0.5f;
            } else {
                f = 0.15f;
            }
        } else {
            f = 0.1f;
        }
        tooltip.f6173c.setTransform(true);
        tooltip.f6173c.getColor().f3889a = 0.2f;
        tooltip.f6173c.setScale(0.05f);
        Group group = tooltip.f6173c;
        Interpolation interpolation = Interpolation.fade;
        group.addAction(Actions.parallel(Actions.fadeIn(f, interpolation), Actions.scaleTo(1.0f, 1.0f, f, interpolation)));
    }

    public void enter(Tooltip tooltip) {
        this.f6184d = tooltip;
        this.f6185e.cancel();
        if (this.enabled || tooltip.f6175e) {
            float f = this.f6182b;
            if (f != 0.0f && !tooltip.f6174d) {
                Timer.schedule(this.f6185e, f);
            } else {
                this.f6185e.run();
            }
        }
    }

    public void hideAll() {
        this.f6183c.cancel();
        this.f6185e.cancel();
        this.f6182b = this.initialTime;
        this.f6184d = null;
        Array.ArrayIterator<Tooltip> it = this.f6181a.iterator();
        while (it.hasNext()) {
            it.next().hide();
        }
        this.f6181a.clear();
    }

    public void touchDown(Tooltip tooltip) {
        this.f6185e.cancel();
        if (tooltip.f6173c.remove()) {
            this.f6183c.cancel();
        }
        this.f6183c.run();
        if (this.enabled || tooltip.f6175e) {
            this.f6184d = tooltip;
            Timer.schedule(this.f6185e, this.f6182b);
        }
    }
}
