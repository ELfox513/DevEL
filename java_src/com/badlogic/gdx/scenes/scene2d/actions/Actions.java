package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.EventListener;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.Pools;
/* loaded from: classes.dex */
public class Actions {
    public static AddAction addAction(Action action) {
        AddAction addAction = (AddAction) action(AddAction.class);
        addAction.setAction(action);
        return addAction;
    }

    public static AddListenerAction addListener(EventListener eventListener, boolean z) {
        AddListenerAction addListenerAction = (AddListenerAction) action(AddListenerAction.class);
        addListenerAction.setListener(eventListener);
        addListenerAction.setCapture(z);
        return addListenerAction;
    }

    public static AlphaAction alpha(float f) {
        return alpha(f, 0.0f, null);
    }

    public static ColorAction color(Color color) {
        return color(color, 0.0f, null);
    }

    public static DelayAction delay(float f) {
        DelayAction delayAction = (DelayAction) action(DelayAction.class);
        delayAction.setDuration(f);
        return delayAction;
    }

    public static AlphaAction fadeIn(float f) {
        return alpha(1.0f, f, null);
    }

    public static AlphaAction fadeOut(float f) {
        return alpha(0.0f, f, null);
    }

    public static VisibleAction hide() {
        return visible(false);
    }

    public static MoveByAction moveBy(float f, float f2) {
        return moveBy(f, f2, 0.0f, null);
    }

    public static MoveToAction moveTo(float f, float f2) {
        return moveTo(f, f2, 0.0f, null);
    }

    public static MoveToAction moveToAligned(float f, float f2, int i) {
        return moveToAligned(f, f2, i, 0.0f, null);
    }

    public static ParallelAction parallel(Action action) {
        ParallelAction parallelAction = (ParallelAction) action(ParallelAction.class);
        parallelAction.addAction(action);
        return parallelAction;
    }

    public static RemoveAction removeAction(Action action) {
        RemoveAction removeAction = (RemoveAction) action(RemoveAction.class);
        removeAction.setAction(action);
        return removeAction;
    }

    public static RemoveActorAction removeActor() {
        return (RemoveActorAction) action(RemoveActorAction.class);
    }

    public static RemoveListenerAction removeListener(EventListener eventListener, boolean z) {
        RemoveListenerAction removeListenerAction = (RemoveListenerAction) action(RemoveListenerAction.class);
        removeListenerAction.setListener(eventListener);
        removeListenerAction.setCapture(z);
        return removeListenerAction;
    }

    public static RotateByAction rotateBy(float f) {
        return rotateBy(f, 0.0f, null);
    }

    public static RotateToAction rotateTo(float f) {
        return rotateTo(f, 0.0f, null);
    }

    public static ScaleByAction scaleBy(float f, float f2) {
        return scaleBy(f, f2, 0.0f, null);
    }

    public static ScaleToAction scaleTo(float f, float f2) {
        return scaleTo(f, f2, 0.0f, null);
    }

    public static SequenceAction sequence(Action action) {
        SequenceAction sequenceAction = (SequenceAction) action(SequenceAction.class);
        sequenceAction.addAction(action);
        return sequenceAction;
    }

    public static VisibleAction show() {
        return visible(true);
    }

    public static SizeByAction sizeBy(float f, float f2) {
        return sizeBy(f, f2, 0.0f, null);
    }

    public static SizeToAction sizeTo(float f, float f2) {
        return sizeTo(f, f2, 0.0f, null);
    }

    public static Action targeting(Actor actor, Action action) {
        action.setTarget(actor);
        return action;
    }

    public static AfterAction after(Action action) {
        AfterAction afterAction = (AfterAction) action(AfterAction.class);
        afterAction.setAction(action);
        return afterAction;
    }

    public static AlphaAction alpha(float f, float f2) {
        return alpha(f, f2, null);
    }

    public static ColorAction color(Color color, float f) {
        return color(color, f, null);
    }

    public static AlphaAction fadeIn(float f, @Null Interpolation interpolation) {
        AlphaAction alphaAction = (AlphaAction) action(AlphaAction.class);
        alphaAction.setAlpha(1.0f);
        alphaAction.setDuration(f);
        alphaAction.setInterpolation(interpolation);
        return alphaAction;
    }

    public static AlphaAction fadeOut(float f, @Null Interpolation interpolation) {
        AlphaAction alphaAction = (AlphaAction) action(AlphaAction.class);
        alphaAction.setAlpha(0.0f);
        alphaAction.setDuration(f);
        alphaAction.setInterpolation(interpolation);
        return alphaAction;
    }

    public static RepeatAction forever(Action action) {
        RepeatAction repeatAction = (RepeatAction) action(RepeatAction.class);
        repeatAction.setCount(-1);
        repeatAction.setAction(action);
        return repeatAction;
    }

    public static LayoutAction layout(boolean z) {
        LayoutAction layoutAction = (LayoutAction) action(LayoutAction.class);
        layoutAction.setLayoutEnabled(z);
        return layoutAction;
    }

    public static MoveByAction moveBy(float f, float f2, float f3) {
        return moveBy(f, f2, f3, null);
    }

    public static MoveToAction moveTo(float f, float f2, float f3) {
        return moveTo(f, f2, f3, null);
    }

    public static MoveToAction moveToAligned(float f, float f2, int i, float f3) {
        return moveToAligned(f, f2, i, f3, null);
    }

    public static RemoveActorAction removeActor(Actor actor) {
        RemoveActorAction removeActorAction = (RemoveActorAction) action(RemoveActorAction.class);
        removeActorAction.setTarget(actor);
        return removeActorAction;
    }

    public static RepeatAction repeat(int i, Action action) {
        RepeatAction repeatAction = (RepeatAction) action(RepeatAction.class);
        repeatAction.setCount(i);
        repeatAction.setAction(action);
        return repeatAction;
    }

    public static RotateByAction rotateBy(float f, float f2) {
        return rotateBy(f, f2, null);
    }

    public static RotateToAction rotateTo(float f, float f2) {
        return rotateTo(f, f2, null);
    }

    public static RunnableAction run(Runnable runnable) {
        RunnableAction runnableAction = (RunnableAction) action(RunnableAction.class);
        runnableAction.setRunnable(runnable);
        return runnableAction;
    }

    public static ScaleByAction scaleBy(float f, float f2, float f3) {
        return scaleBy(f, f2, f3, null);
    }

    public static ScaleToAction scaleTo(float f, float f2, float f3) {
        return scaleTo(f, f2, f3, null);
    }

    public static SizeByAction sizeBy(float f, float f2, float f3) {
        return sizeBy(f, f2, f3, null);
    }

    public static SizeToAction sizeTo(float f, float f2, float f3) {
        return sizeTo(f, f2, f3, null);
    }

    public static TimeScaleAction timeScale(float f, Action action) {
        TimeScaleAction timeScaleAction = (TimeScaleAction) action(TimeScaleAction.class);
        timeScaleAction.setScale(f);
        timeScaleAction.setAction(action);
        return timeScaleAction;
    }

    public static TouchableAction touchable(Touchable touchable) {
        TouchableAction touchableAction = (TouchableAction) action(TouchableAction.class);
        touchableAction.setTouchable(touchable);
        return touchableAction;
    }

    public static VisibleAction visible(boolean z) {
        VisibleAction visibleAction = (VisibleAction) action(VisibleAction.class);
        visibleAction.setVisible(z);
        return visibleAction;
    }

    public static <T extends Action> T action(Class<T> cls) {
        Pool pool = Pools.get(cls);
        T t = (T) pool.obtain();
        t.setPool(pool);
        return t;
    }

    public static AddAction addAction(Action action, Actor actor) {
        AddAction addAction = (AddAction) action(AddAction.class);
        addAction.setTarget(actor);
        addAction.setAction(action);
        return addAction;
    }

    public static AlphaAction alpha(float f, float f2, @Null Interpolation interpolation) {
        AlphaAction alphaAction = (AlphaAction) action(AlphaAction.class);
        alphaAction.setAlpha(f);
        alphaAction.setDuration(f2);
        alphaAction.setInterpolation(interpolation);
        return alphaAction;
    }

    public static ColorAction color(Color color, float f, @Null Interpolation interpolation) {
        ColorAction colorAction = (ColorAction) action(ColorAction.class);
        colorAction.setEndColor(color);
        colorAction.setDuration(f);
        colorAction.setInterpolation(interpolation);
        return colorAction;
    }

    public static DelayAction delay(float f, Action action) {
        DelayAction delayAction = (DelayAction) action(DelayAction.class);
        delayAction.setDuration(f);
        delayAction.setAction(action);
        return delayAction;
    }

    public static MoveByAction moveBy(float f, float f2, float f3, @Null Interpolation interpolation) {
        MoveByAction moveByAction = (MoveByAction) action(MoveByAction.class);
        moveByAction.setAmount(f, f2);
        moveByAction.setDuration(f3);
        moveByAction.setInterpolation(interpolation);
        return moveByAction;
    }

    public static MoveToAction moveTo(float f, float f2, float f3, @Null Interpolation interpolation) {
        MoveToAction moveToAction = (MoveToAction) action(MoveToAction.class);
        moveToAction.setPosition(f, f2);
        moveToAction.setDuration(f3);
        moveToAction.setInterpolation(interpolation);
        return moveToAction;
    }

    public static MoveToAction moveToAligned(float f, float f2, int i, float f3, @Null Interpolation interpolation) {
        MoveToAction moveToAction = (MoveToAction) action(MoveToAction.class);
        moveToAction.setPosition(f, f2, i);
        moveToAction.setDuration(f3);
        moveToAction.setInterpolation(interpolation);
        return moveToAction;
    }

    public static ParallelAction parallel(Action action, Action action2) {
        ParallelAction parallelAction = (ParallelAction) action(ParallelAction.class);
        parallelAction.addAction(action);
        parallelAction.addAction(action2);
        return parallelAction;
    }

    public static RemoveAction removeAction(Action action, Actor actor) {
        RemoveAction removeAction = (RemoveAction) action(RemoveAction.class);
        removeAction.setTarget(actor);
        removeAction.setAction(action);
        return removeAction;
    }

    public static RotateByAction rotateBy(float f, float f2, @Null Interpolation interpolation) {
        RotateByAction rotateByAction = (RotateByAction) action(RotateByAction.class);
        rotateByAction.setAmount(f);
        rotateByAction.setDuration(f2);
        rotateByAction.setInterpolation(interpolation);
        return rotateByAction;
    }

    public static RotateToAction rotateTo(float f, float f2, @Null Interpolation interpolation) {
        RotateToAction rotateToAction = (RotateToAction) action(RotateToAction.class);
        rotateToAction.setRotation(f);
        rotateToAction.setDuration(f2);
        rotateToAction.setInterpolation(interpolation);
        return rotateToAction;
    }

    public static ScaleByAction scaleBy(float f, float f2, float f3, @Null Interpolation interpolation) {
        ScaleByAction scaleByAction = (ScaleByAction) action(ScaleByAction.class);
        scaleByAction.setAmount(f, f2);
        scaleByAction.setDuration(f3);
        scaleByAction.setInterpolation(interpolation);
        return scaleByAction;
    }

    public static ScaleToAction scaleTo(float f, float f2, float f3, @Null Interpolation interpolation) {
        ScaleToAction scaleToAction = (ScaleToAction) action(ScaleToAction.class);
        scaleToAction.setScale(f, f2);
        scaleToAction.setDuration(f3);
        scaleToAction.setInterpolation(interpolation);
        return scaleToAction;
    }

    public static SequenceAction sequence(Action action, Action action2) {
        SequenceAction sequenceAction = (SequenceAction) action(SequenceAction.class);
        sequenceAction.addAction(action);
        sequenceAction.addAction(action2);
        return sequenceAction;
    }

    public static SizeByAction sizeBy(float f, float f2, float f3, @Null Interpolation interpolation) {
        SizeByAction sizeByAction = (SizeByAction) action(SizeByAction.class);
        sizeByAction.setAmount(f, f2);
        sizeByAction.setDuration(f3);
        sizeByAction.setInterpolation(interpolation);
        return sizeByAction;
    }

    public static SizeToAction sizeTo(float f, float f2, float f3, @Null Interpolation interpolation) {
        SizeToAction sizeToAction = (SizeToAction) action(SizeToAction.class);
        sizeToAction.setSize(f, f2);
        sizeToAction.setDuration(f3);
        sizeToAction.setInterpolation(interpolation);
        return sizeToAction;
    }

    public static AddListenerAction addListener(EventListener eventListener, boolean z, Actor actor) {
        AddListenerAction addListenerAction = (AddListenerAction) action(AddListenerAction.class);
        addListenerAction.setTarget(actor);
        addListenerAction.setListener(eventListener);
        addListenerAction.setCapture(z);
        return addListenerAction;
    }

    public static RemoveListenerAction removeListener(EventListener eventListener, boolean z, Actor actor) {
        RemoveListenerAction removeListenerAction = (RemoveListenerAction) action(RemoveListenerAction.class);
        removeListenerAction.setTarget(actor);
        removeListenerAction.setListener(eventListener);
        removeListenerAction.setCapture(z);
        return removeListenerAction;
    }

    public static ParallelAction parallel(Action action, Action action2, Action action3) {
        ParallelAction parallelAction = (ParallelAction) action(ParallelAction.class);
        parallelAction.addAction(action);
        parallelAction.addAction(action2);
        parallelAction.addAction(action3);
        return parallelAction;
    }

    public static SequenceAction sequence(Action action, Action action2, Action action3) {
        SequenceAction sequenceAction = (SequenceAction) action(SequenceAction.class);
        sequenceAction.addAction(action);
        sequenceAction.addAction(action2);
        sequenceAction.addAction(action3);
        return sequenceAction;
    }

    public static ParallelAction parallel(Action action, Action action2, Action action3, Action action4) {
        ParallelAction parallelAction = (ParallelAction) action(ParallelAction.class);
        parallelAction.addAction(action);
        parallelAction.addAction(action2);
        parallelAction.addAction(action3);
        parallelAction.addAction(action4);
        return parallelAction;
    }

    public static SequenceAction sequence(Action action, Action action2, Action action3, Action action4) {
        SequenceAction sequenceAction = (SequenceAction) action(SequenceAction.class);
        sequenceAction.addAction(action);
        sequenceAction.addAction(action2);
        sequenceAction.addAction(action3);
        sequenceAction.addAction(action4);
        return sequenceAction;
    }

    public static ParallelAction parallel(Action action, Action action2, Action action3, Action action4, Action action5) {
        ParallelAction parallelAction = (ParallelAction) action(ParallelAction.class);
        parallelAction.addAction(action);
        parallelAction.addAction(action2);
        parallelAction.addAction(action3);
        parallelAction.addAction(action4);
        parallelAction.addAction(action5);
        return parallelAction;
    }

    public static SequenceAction sequence(Action action, Action action2, Action action3, Action action4, Action action5) {
        SequenceAction sequenceAction = (SequenceAction) action(SequenceAction.class);
        sequenceAction.addAction(action);
        sequenceAction.addAction(action2);
        sequenceAction.addAction(action3);
        sequenceAction.addAction(action4);
        sequenceAction.addAction(action5);
        return sequenceAction;
    }

    public static ParallelAction parallel(Action... actionArr) {
        ParallelAction parallelAction = (ParallelAction) action(ParallelAction.class);
        for (Action action : actionArr) {
            parallelAction.addAction(action);
        }
        return parallelAction;
    }

    public static SequenceAction sequence(Action... actionArr) {
        SequenceAction sequenceAction = (SequenceAction) action(SequenceAction.class);
        for (Action action : actionArr) {
            sequenceAction.addAction(action);
        }
        return sequenceAction;
    }

    public static ParallelAction parallel() {
        return (ParallelAction) action(ParallelAction.class);
    }

    public static SequenceAction sequence() {
        return (SequenceAction) action(SequenceAction.class);
    }
}
