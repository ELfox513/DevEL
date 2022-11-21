package com.prineside.tdi2.p036ui.shared;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.DelayAction;
import com.badlogic.gdx.scenes.scene2d.actions.SequenceAction;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.SnapshotArray;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.QuadActor;
import com.prineside.tdi2.utils.MaterialColor;
/* renamed from: com.prineside.tdi2.ui.shared.Notifications */
/* loaded from: classes2.dex */
public class Notifications extends Group {
    public static final float DEFAULT_SHOW_DURATION = 5.0f;

    /* renamed from: P */
    public static float[] f14798P = new float[8];

    /* renamed from: Q */
    public static Color f14799Q = new Color();

    /* renamed from: M */
    public final UiManager.UiLayer f14800M;

    /* renamed from: N */
    public final Label.LabelStyle f14801N;

    /* renamed from: O */
    public final Group f14802O;

    /* renamed from: com.prineside.tdi2.ui.shared.Notifications$Notification */
    /* loaded from: classes2.dex */
    public class Notification extends Group {

        /* renamed from: M */
        public Image f14808M;
        public final float notificationHeight;
        public float showDuration;

        public void showProgress(float f, Color color) {
            if (f <= 0.0f) {
                this.f14808M.setVisible(false);
                return;
            }
            this.f14808M.setColor(color);
            this.f14808M.setSize(f * 451.0f, 6.0f);
            this.f14808M.setVisible(true);
        }

        public Notification(CharSequence charSequence, Drawable drawable, Color color) {
            this.showDuration = 5.0f;
            setTransform(false);
            setWidth(460.0f);
            Label label = new Label(charSequence, Notifications.this.f14801N);
            label.setWrap(true);
            label.setWidth(340.0f);
            label.setAlignment(10);
            label.layout();
            label.pack();
            label.setWidth(340.0f);
            label.setPosition(106.0f, 20.0f);
            if (label.getHeight() < 48.0f) {
                label.setHeight(48.0f);
                label.setAlignment(8);
            }
            float height = label.getHeight() + 40.0f;
            Actor image = new Image(drawable);
            image.setSize(48.0f, 48.0f);
            image.setPosition(40.0f, (label.getHeight() - 48.0f) + 20.0f);
            Actor quadActor = new QuadActor(color, new float[]{0.0f, 0.0f, 0.0f, height, 460.0f, height, 451.0f, 0.0f});
            float f = height + 2.0f;
            this.notificationHeight = f;
            setHeight(f);
            addActor(quadActor);
            addActor(image);
            addActor(label);
            Image image2 = new Image(Game.f8589i.assetManager.getDrawable("blank"));
            this.f14808M = image2;
            addActor(image2);
            this.f14808M.setVisible(false);
            setVisible(false);
        }

        public void hide(float f) {
            Array<Action> actions = getActions();
            if (actions.size != 0) {
                Array.ArrayIterator<Action> it = ((SequenceAction) actions.first()).getActions().iterator();
                while (it.hasNext()) {
                    Action next = it.next();
                    if (next instanceof DelayAction) {
                        DelayAction delayAction = (DelayAction) next;
                        delayAction.setDuration(f);
                        delayAction.setTime(0.0f);
                    }
                }
            }
        }
    }

    public Notification add(CharSequence charSequence, Drawable drawable, Color color, StaticSoundType staticSoundType) {
        if (color == null) {
            color = MaterialColor.BLUE_GREY.P800;
        }
        f14799Q.set(color);
        Color color2 = f14799Q;
        if (color2.f3889a > 0.85f) {
            color2.f3889a = 0.85f;
        }
        if (drawable == null) {
            drawable = Game.f8589i.assetManager.getDrawable("icon-info");
        }
        Notification notification = new Notification(charSequence, drawable, f14799Q);
        this.f14802O.addActor(notification);
        if (staticSoundType != null) {
            Game.f8589i.soundManager.playStatic(staticSoundType);
        }
        return notification;
    }

    public Notifications() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.OVERLAY, 300, "Notifications");
        this.f14800M = addLayer;
        this.f14801N = new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), Color.WHITE);
        Table table = addLayer.getTable();
        table.setTouchable(Touchable.disabled);
        Group group = new Group() { // from class: com.prineside.tdi2.ui.shared.Notifications.1

            /* renamed from: M */
            public boolean f14803M = false;

            @Override // com.badlogic.gdx.scenes.scene2d.Group, com.badlogic.gdx.scenes.scene2d.Actor
            public void act(float f) {
                SnapshotArray<Actor> children = getChildren();
                int i = 0;
                while (true) {
                    if (i >= children.size || i == 7) {
                        break;
                    }
                    final Notification notification = (Notification) children.get(i);
                    if (!notification.isVisible() && !this.f14803M) {
                        this.f14803M = true;
                        notification.setPosition(0.0f, getHeight());
                        notification.setVisible(true);
                        notification.addAction(Actions.sequence(Actions.alpha(0.0f), Actions.parallel(Actions.alpha(1.0f, 0.3f), Actions.sizeTo(notification.getWidth(), notification.notificationHeight, 0.3f), Actions.moveBy(0.0f, -notification.notificationHeight, 0.3f)), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.Notifications.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                C29171.this.f14803M = false;
                            }
                        }), Actions.delay(notification.showDuration), Actions.alpha(0.0f, 0.75f), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.shared.Notifications.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                Notifications.this.f14802O.removeActor(notification, true);
                            }
                        })));
                        for (int i2 = 0; i2 < i; i2++) {
                            ((Notification) children.get(i2)).addAction(Actions.moveBy(0.0f, -notification.notificationHeight, 0.3f));
                        }
                    } else {
                        i++;
                    }
                }
                super.act(f);
            }
        };
        this.f14802O = group;
        group.setTransform(false);
        table.add((Table) group).expand().top().left().padTop(160.0f).width(460.0f);
    }
}
