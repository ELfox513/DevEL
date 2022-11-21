package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.actions.AlphaAction;
import com.badlogic.gdx.scenes.scene2d.actions.DelayAction;
import com.badlogic.gdx.scenes.scene2d.actions.MoveToAction;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.SnapshotArray;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.p036ui.actors.HotKeyHintLabel;
/* renamed from: com.prineside.tdi2.ui.components.QuestList */
/* loaded from: classes2.dex */
public class QuestList implements Disposable {
    public static final float LIST_ITEM_HEIGHT = 44.0f;
    public static final float LIST_ITEM_HEIGHT_COMPACT = 40.0f;

    /* renamed from: s */
    public static final StringBuilder f13493s = new StringBuilder();

    /* renamed from: a */
    public final UiManager.UiLayer f13494a;

    /* renamed from: b */
    public Image f13495b;

    /* renamed from: d */
    public Image f13496d;

    /* renamed from: k */
    public Group f13497k;

    /* renamed from: p */
    public Label f13498p;

    /* renamed from: q */
    public boolean f13499q;

    /* renamed from: r */
    public Array<QuestListItem> f13500r;

    /* renamed from: com.prineside.tdi2.ui.components.QuestList$QuestListItem */
    /* loaded from: classes2.dex */
    public class QuestListItem extends Group {

        /* renamed from: M */
        public Label f13506M;

        /* renamed from: N */
        public Image f13507N;

        /* renamed from: O */
        public boolean f13508O;

        /* renamed from: P */
        public StringBuilder f13509P;

        /* renamed from: Q */
        public StringBuilder f13510Q;

        public boolean isCompleted() {
            return this.f13508O;
        }

        public QuestListItem() {
            this.f13509P = new StringBuilder();
            this.f13510Q = new StringBuilder();
            setHeight(44.0f);
            Image image = new Image(Game.f8589i.assetManager.getDrawable("checkbox"));
            this.f13507N = image;
            image.setPosition(40.0f, 2.0f);
            this.f13507N.setSize(44.0f, 44.0f);
            addActor(this.f13507N);
            Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
            this.f13506M = label;
            label.setSize(100.0f, 44.0f);
            this.f13506M.setPosition(106.0f, 0.0f);
            addActor(this.f13506M);
        }

        public void setCompleted(boolean z) {
            float f;
            if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            if (z) {
                this.f13507N.setDrawable(Game.f8589i.assetManager.getDrawable("checkbox-checked"));
                setTransform(true);
                float f2 = f * 0.2f;
                addAction(Actions.sequence(Actions.scaleTo(1.25f, 1.25f, f2), Actions.scaleTo(1.0f, 1.0f, f2), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.components.QuestList.QuestListItem.1
                    @Override // java.lang.Runnable
                    public void run() {
                        QuestListItem.this.setTransform(false);
                    }
                })));
            } else {
                this.f13507N.setDrawable(Game.f8589i.assetManager.getDrawable("checkbox"));
            }
            this.f13508O = z;
            QuestList.this.m20415k();
            QuestList.this.m20416j();
        }

        public void setText(CharSequence charSequence) {
            this.f13510Q.setLength(0);
            this.f13510Q.append(charSequence);
            QuestList.f13493s.setLength(0);
            QuestList.f13493s.append(this.f13509P).append(charSequence);
            this.f13506M.setText(QuestList.f13493s);
        }

        public void setTitlePrefix(CharSequence charSequence) {
            this.f13509P.setLength(0);
            this.f13509P.append(charSequence);
            setText(this.f13510Q);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m20418h() {
        this.f13497k.setTransform(false);
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f13494a);
    }

    public boolean isVisible() {
        return this.f13499q;
    }

    public QuestListItem addQuestListItem() {
        float f;
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        final QuestListItem questListItem = new QuestListItem();
        this.f13497k.addActorAt(0, questListItem);
        questListItem.setPosition(0.0f, 162.0f);
        questListItem.setOrigin(8);
        questListItem.setTransform(true);
        float f2 = f * 0.2f;
        questListItem.addAction(Actions.sequence(Actions.scaleTo(0.5f, 0.5f), Actions.scaleTo(1.25f, 1.25f, f2), Actions.scaleTo(1.0f, 1.0f, f2), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.components.QuestList.2
            @Override // java.lang.Runnable
            public void run() {
                questListItem.setTransform(false);
            }
        })));
        this.f13500r.add(questListItem);
        m20417i();
        return questListItem;
    }

    public void finalFadeOut() {
        float f;
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        this.f13494a.getTable().setTouchable(Touchable.disabled);
        this.f13494a.getTable().clearActions();
        this.f13494a.getTable().addAction(Actions.alpha(0.0f, f * 1.0f));
    }

    /* renamed from: i */
    public final void m20417i() {
        float f;
        float f2;
        SnapshotArray<Actor> children = this.f13497k.getChildren();
        int i = children.size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Actor actor = children.get(i3);
            for (int i4 = actor.getActions().size - 1; i4 >= 0; i4--) {
                Action action = actor.getActions().get(i4);
                if ((action instanceof AlphaAction) || (action instanceof MoveToAction) || (action instanceof DelayAction)) {
                    actor.removeAction(action);
                }
            }
        }
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        if (this.f13499q) {
            float f3 = 162.0f;
            int i5 = children.size;
            while (i2 < i5) {
                QuestListItem questListItem = (QuestListItem) children.get(i2);
                questListItem.setVisible(true);
                float f4 = f * 0.2f;
                questListItem.addAction(Actions.parallel(Actions.alpha(1.0f, f4), Actions.moveTo(0.0f, f3, f4)));
                if (children.size <= 4) {
                    f2 = 44.0f;
                } else {
                    f2 = 40.0f;
                }
                f3 -= f2;
                i2++;
            }
            this.f13495b.clearActions();
            this.f13495b.addAction(Actions.moveTo(-120.0f, 22.0f, 0.2f * f));
            this.f13497k.clearActions();
            if (children.size <= 4) {
                float f5 = f * 0.3f;
                this.f13497k.addAction(Actions.sequence(Actions.parallel(Actions.scaleTo(1.0f, 1.0f, f5), Actions.moveTo(0.0f, 0.0f, f5)), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.components.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        QuestList.this.m20418h();
                    }
                })));
            } else {
                this.f13497k.setTransform(true);
                float f6 = f * 0.3f;
                this.f13497k.addAction(Actions.parallel(Actions.scaleTo(0.87f, 0.87f, f6), Actions.moveTo(5.0f, 10.0f, f6)));
            }
            this.f13496d.setDrawable(Game.f8589i.assetManager.getDrawable("icon-triangle-bottom"));
        } else {
            int i6 = children.size;
            while (i2 < i6) {
                Actor actor2 = children.get(i2);
                actor2.setVisible(true);
                float f7 = f * 0.2f;
                actor2.addAction(Actions.parallel(Actions.alpha(0.0f, f7), Actions.moveTo(0.0f, 232.0f, f7), Actions.delay(f7, Actions.hide())));
                i2++;
            }
            this.f13495b.clearActions();
            this.f13495b.addAction(Actions.moveTo(-683.0f, 22.0f, f * 0.2f));
            this.f13496d.setDrawable(Game.f8589i.assetManager.getDrawable("icon-triangle-right"));
        }
        m20415k();
        m20416j();
    }

    /* renamed from: j */
    public final void m20416j() {
        float f;
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        if (this.f13500r.size != 0) {
            this.f13494a.getTable().clearActions();
            this.f13494a.getTable().addAction(Actions.sequence(Actions.show(), Actions.alpha(1.0f, f * 0.3f)));
            return;
        }
        this.f13494a.getTable().clearActions();
        this.f13494a.getTable().addAction(Actions.sequence(Actions.alpha(0.0f, f * 0.3f), Actions.hide()));
    }

    /* renamed from: k */
    public final void m20415k() {
        if (this.f13500r.size != 0) {
            int i = 0;
            int i2 = 0;
            while (true) {
                Array<QuestListItem> array = this.f13500r;
                if (i < array.size) {
                    if (array.get(i).isCompleted()) {
                        i2++;
                    }
                    i++;
                } else {
                    Label label = this.f13498p;
                    label.setText(i2 + "/" + this.f13500r.size);
                    return;
                }
            }
        } else {
            this.f13498p.setText("");
        }
    }

    public void removeQuestListItem(final QuestListItem questListItem) {
        float f;
        if (Game.f8589i.settingsManager.isUiAnimationsEnabled()) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        questListItem.addAction(Actions.sequence(Actions.parallel(Actions.moveBy(-300.0f, 0.0f, 0.3f * f, Interpolation.circleIn), Actions.alpha(0.0f, f * 0.25f)), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.components.QuestList.3
            @Override // java.lang.Runnable
            public void run() {
                QuestList.this.f13497k.removeActor(questListItem);
                QuestList.this.m20417i();
            }
        })));
        this.f13500r.removeValue(questListItem, true);
    }

    public void setVisible(boolean z) {
        double d;
        this.f13499q = z;
        SettingsManager settingsManager = Game.f8589i.settingsManager;
        SettingsManager.CustomValueType customValueType = SettingsManager.CustomValueType.UI_QUEST_LIST_VISIBLE;
        if (z) {
            d = 1.0d;
        } else {
            d = 0.0d;
        }
        settingsManager.setCustomValue(customValueType, d);
        m20417i();
    }

    public QuestList() {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 101, "QuestList");
        this.f13494a = addLayer;
        this.f13500r = new Array<>();
        Group group = new Group();
        group.setTransform(false);
        addLayer.getTable().add((Table) group).expand().top().left().padTop(175.0f).size(563.0f, 280.0f);
        Image image = new Image(Game.f8589i.assetManager.getDrawable("ui-quest-list-background"));
        this.f13495b = image;
        image.setSize(683.0f, 258.0f);
        this.f13495b.setPosition(-120.0f, 22.0f);
        Image image2 = this.f13495b;
        Touchable touchable = Touchable.disabled;
        image2.setTouchable(touchable);
        group.addActor(this.f13495b);
        Group group2 = new Group();
        this.f13497k = group2;
        group2.setTransform(false);
        this.f13497k.setTouchable(touchable);
        this.f13497k.setSize(563.0f, 280.0f);
        this.f13497k.setOrigin(0.0f, 140.0f);
        group.addActor(this.f13497k);
        Image image3 = new Image(Game.f8589i.assetManager.getDrawable("ui-quest-list-title-background"));
        image3.setSize(488.0f, 64.0f);
        image3.setPosition(-120.0f, 216.0f);
        image3.setTouchable(Touchable.enabled);
        image3.addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.QuestList.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                QuestList questList = QuestList.this;
                questList.setVisible(!questList.f13499q);
            }
        });
        group.addActor(image3);
        Image image4 = new Image(Game.f8589i.assetManager.getDrawable("icon-triangle-bottom"));
        this.f13496d = image4;
        image4.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f13496d.setSize(32.0f, 32.0f);
        this.f13496d.setPosition(48.0f, 232.0f);
        this.f13496d.setTouchable(touchable);
        group.addActor(this.f13496d);
        String upperCase = Game.f8589i.localeManager.i18n.get("quests").toUpperCase();
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(30);
        Color color = Color.WHITE;
        Label label = new Label(upperCase, new Label.LabelStyle(font, color));
        label.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        label.setSize(368.0f, 64.0f);
        label.setAlignment(8);
        label.setPosition(106.0f, 216.0f);
        label.setTouchable(touchable);
        group.addActor(label);
        Label label2 = new Label("1/3", new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color));
        this.f13498p = label2;
        label2.setAlignment(16);
        this.f13498p.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        this.f13498p.setSize(320.0f, 64.0f);
        this.f13498p.setPosition(0.0f, 216.0f);
        this.f13498p.setTouchable(touchable);
        group.addActor(this.f13498p);
        if (HotKeyHintLabel.isEnabled()) {
            group.addActor(new HotKeyHintLabel(Game.f8589i.settingsManager.getHotKey(SettingsManager.HotkeyAction.TOGGLE_QUEST_LIST), 32.0f, 240.0f));
        }
        if (Game.f8589i.settingsManager.getCustomValue(SettingsManager.CustomValueType.UI_QUEST_LIST_VISIBLE) == 1.0d) {
            this.f13499q = false;
            setVisible(true);
            return;
        }
        this.f13499q = true;
        setVisible(false);
    }
}
