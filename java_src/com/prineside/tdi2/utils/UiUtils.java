package com.prineside.tdi2.utils;

import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.MoveToAction;
import com.badlogic.gdx.scenes.scene2d.actions.ScaleToAction;
import com.badlogic.gdx.scenes.scene2d.actions.SequenceAction;
import com.prineside.tdi2.Game;
/* loaded from: classes2.dex */
public class UiUtils {
    public static void bouncyHideOverlay(Actor actor, Actor actor2, Group group) {
        bouncyHideOverlay(actor, actor2, group, null);
    }

    public static void bouncyShowOverlay(Actor actor, Actor actor2, Group group) {
        bouncyShowOverlay(actor, actor2, group, null);
    }

    public static void bouncyHideOverlay(Actor actor, final Actor actor2, Group group, final Runnable runnable) {
        float f = Game.f8589i.settingsManager.isUiAnimationsEnabled() ? 1.5f : 0.0f;
        if (actor != null) {
            actor.setTouchable(Touchable.disabled);
            actor.clearActions();
            actor.addAction(Actions.sequence(Actions.fadeOut(0.15f * f), Actions.hide()));
        }
        group.clearActions();
        group.setTouchable(Touchable.disabled);
        group.setTransform(true);
        SequenceAction sequence = Actions.sequence(Actions.delay(0.12f * f), Actions.moveTo(0.0f, -Game.f8589i.settingsManager.getScaledViewportHeight(), 0.16f * f, Interpolation.sineIn));
        SequenceAction sequence2 = Actions.sequence(Actions.scaleBy(-group.getScaleX(), 0.0f, 0.17f * f, Interpolation.swingIn));
        Interpolation.Pow pow = Interpolation.pow2;
        float f2 = f * 0.11f;
        group.addAction(Actions.sequence(Actions.parallel(sequence, sequence2, Actions.sequence(Actions.scaleBy(0.0f, (-group.getScaleY()) * 0.1f, 0.05f * f, pow), Actions.scaleBy(0.0f, group.getScaleY() * 0.2f, f2, pow), Actions.scaleBy(0.0f, (-group.getScaleY()) * 1.1f, f2, Interpolation.pow2In))), Actions.run(new Runnable() { // from class: com.prineside.tdi2.utils.UiUtils.2
            @Override // java.lang.Runnable
            public void run() {
                Actor actor3 = Actor.this;
                if (actor3 != null) {
                    actor3.setVisible(false);
                }
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        })));
    }

    public static void bouncyShowOverlay(Actor actor, Actor actor2, final Group group, final Runnable runnable) {
        float f = Game.f8589i.settingsManager.isUiAnimationsEnabled() ? 1.5f : 0.0f;
        if (actor != null) {
            actor.setTouchable(Touchable.enabled);
            actor.clearActions();
            actor.addAction(Actions.sequence(Actions.show(), Actions.fadeIn(f * 0.15f)));
        }
        if (actor2 != null) {
            actor2.setVisible(true);
        }
        group.clearActions();
        group.setTouchable(Touchable.enabled);
        group.setTransform(true);
        ScaleToAction scaleTo = Actions.scaleTo(0.0f, 1.1f);
        MoveToAction moveTo = Actions.moveTo(0.0f, -Game.f8589i.settingsManager.getScaledViewportHeight());
        float f2 = 0.15f * f;
        MoveToAction moveTo2 = Actions.moveTo(0.0f, Game.f8589i.settingsManager.getScaledViewportHeight() * 0.05f, f2, Interpolation.pow4Out);
        float f3 = f * 0.07f;
        Interpolation.Pow pow = Interpolation.pow2;
        SequenceAction sequence = Actions.sequence(moveTo2, Actions.moveTo(0.0f, 0.0f, f3, pow));
        Interpolation.PowOut powOut = Interpolation.pow2Out;
        group.addAction(Actions.sequence(scaleTo, moveTo, Actions.parallel(sequence, Actions.sequence(Actions.scaleBy(1.1f, 0.0f, f2, powOut), Actions.scaleBy(-0.1f, 0.0f, f3, pow)), Actions.sequence(Actions.scaleBy(0.0f, -0.2f, f2, powOut), Actions.scaleBy(0.0f, 0.1f, f3, pow))), Actions.run(new Runnable() { // from class: com.prineside.tdi2.utils.UiUtils.1
            @Override // java.lang.Runnable
            public void run() {
                Group.this.setTransform(false);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        })));
    }

    public static boolean hasParent(Actor actor, Group group) {
        if (actor != null) {
            if (group != null) {
                while (actor.hasParent()) {
                    actor = actor.getParent();
                    if (actor == group) {
                        return true;
                    }
                }
                return false;
            }
            throw new IllegalArgumentException("Patent is null");
        }
        throw new IllegalArgumentException("Actor is null");
    }
}
