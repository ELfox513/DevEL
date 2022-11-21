package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.utils.InputVoid;
/* renamed from: com.prineside.tdi2.ui.components.UiElementsEmphasizer */
/* loaded from: classes2.dex */
public class UiElementsEmphasizer implements Disposable {

    /* renamed from: B */
    public static final Vector2 f13821B = new Vector2();

    /* renamed from: A */
    public final GameSystemProvider f13822A;

    /* renamed from: a */
    public final UiManager.UiLayer f13823a;

    /* renamed from: b */
    public final UiManager.UiLayer f13824b;

    /* renamed from: d */
    public Group f13825d;

    /* renamed from: k */
    public Label f13826k;

    /* renamed from: p */
    public Label f13827p;

    /* renamed from: q */
    public boolean f13828q;

    /* renamed from: r */
    public Actor f13829r;

    /* renamed from: s */
    public Rectangle f13830s;

    /* renamed from: t */
    public float f13831t;

    /* renamed from: u */
    public float f13832u;

    /* renamed from: v */
    public boolean f13833v;

    /* renamed from: w */
    public Touchable f13834w;

    /* renamed from: x */
    public Group f13835x;

    /* renamed from: y */
    public Runnable f13836y;

    /* renamed from: z */
    public float f13837z;

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f13824b);
        Game.f8589i.uiManager.removeLayer(this.f13823a);
    }

    public void hide(boolean z) {
        if (!this.f13828q) {
            return;
        }
        this.f13822A.gameState.setGameSpeed(this.f13837z);
        this.f13828q = false;
        this.f13823a.getTable().clearActions();
        this.f13823a.getTable().addAction(Actions.sequence(Actions.alpha(0.0f, 0.5f), Actions.hide()));
        this.f13829r.clearActions();
        if (z) {
            this.f13825d.removeActor(this.f13829r);
            Group group = this.f13835x;
            if (group != null) {
                group.addActor(this.f13829r);
            }
            this.f13829r.setScale(1.0f);
            Actor actor = this.f13829r;
            Rectangle rectangle = this.f13830s;
            actor.setPosition(rectangle.f5523x, rectangle.f5524y);
            Actor actor2 = this.f13829r;
            if (actor2 instanceof Group) {
                ((Group) actor2).setTransform(this.f13833v);
            }
            this.f13829r.setTouchable(this.f13834w);
            this.f13829r = null;
            this.f13835x = null;
            this.f13824b.getTable().setVisible(false);
            Runnable runnable = this.f13836y;
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        this.f13829r.addAction(Actions.sequence(Actions.parallel(Actions.scaleTo(1.0f, 1.0f, 0.5f), Actions.moveTo(this.f13831t, this.f13832u, 0.5f, Interpolation.pow2)), Actions.run(new Runnable() { // from class: com.prineside.tdi2.ui.components.UiElementsEmphasizer.2
            @Override // java.lang.Runnable
            public void run() {
                UiElementsEmphasizer.this.f13825d.removeActor(UiElementsEmphasizer.this.f13829r);
                if (UiElementsEmphasizer.this.f13835x != null) {
                    UiElementsEmphasizer.this.f13835x.addActor(UiElementsEmphasizer.this.f13829r);
                }
                UiElementsEmphasizer.this.f13829r.setPosition(UiElementsEmphasizer.this.f13830s.f5523x, UiElementsEmphasizer.this.f13830s.f5524y);
                if (UiElementsEmphasizer.this.f13829r instanceof Group) {
                    ((Group) UiElementsEmphasizer.this.f13829r).setTransform(UiElementsEmphasizer.this.f13833v);
                }
                UiElementsEmphasizer.this.f13829r.setTouchable(UiElementsEmphasizer.this.f13834w);
                UiElementsEmphasizer.this.f13829r = null;
                UiElementsEmphasizer.this.f13835x = null;
                UiElementsEmphasizer.this.f13824b.getTable().setVisible(false);
                if (UiElementsEmphasizer.this.f13836y != null) {
                    UiElementsEmphasizer.this.f13836y.run();
                }
            }
        })));
    }

    public void show(Actor actor, Rectangle rectangle, String str, String str2, Runnable runnable) {
        if (this.f13828q) {
            hide(true);
        }
        this.f13837z = this.f13822A.gameState.getGameSpeed();
        this.f13822A.gameState.setGameSpeed(0.0f);
        this.f13823a.getTable().setVisible(true);
        this.f13823a.getTable().clearActions();
        this.f13823a.getTable().addAction(Actions.alpha(1.0f, 0.3f));
        this.f13824b.getTable().setVisible(true);
        this.f13826k.setText(str);
        this.f13827p.setText(str2);
        this.f13828q = true;
        this.f13829r = actor;
        this.f13830s = rectangle;
        this.f13836y = runnable;
        float width = Game.f8589i.uiManager.stage.getWidth() / 2.0f;
        float height = Game.f8589i.uiManager.stage.getHeight() / 2.0f;
        if (actor.getParent() != null) {
            Vector2 vector2 = f13821B;
            vector2.set(rectangle.f5523x, rectangle.f5524y);
            actor.getParent().localToStageCoordinates(vector2);
            this.f13831t = vector2.f5527x - width;
            this.f13832u = vector2.f5528y - height;
            Group parent = actor.getParent();
            this.f13835x = parent;
            parent.removeActor(actor);
        } else {
            this.f13831t = 0.0f;
            this.f13832u = 0.0f;
            this.f13835x = null;
        }
        this.f13825d.addActor(actor);
        actor.setVisible(true);
        actor.setScale(0.0f);
        actor.setPosition((-rectangle.width) * 0.5f, (-rectangle.height) * 0.5f);
        this.f13833v = false;
        if (actor instanceof Group) {
            Group group = (Group) actor;
            this.f13833v = group.isTransform();
            group.setTransform(true);
        }
        this.f13834w = actor.getTouchable();
        actor.setTouchable(Touchable.disabled);
        actor.addAction(Actions.scaleTo(1.5f, 1.5f, 0.75f, Interpolation.swingOut));
    }

    public UiElementsEmphasizer(GameSystemProvider gameSystemProvider) {
        UiManager uiManager = Game.f8589i.uiManager;
        UiManager.MainUiLayer mainUiLayer = UiManager.MainUiLayer.SCREEN;
        UiManager.UiLayer addLayer = uiManager.addLayer(mainUiLayer, 120, "UiElementsEmphasizer background and labels");
        this.f13823a = addLayer;
        UiManager.UiLayer addLayer2 = Game.f8589i.uiManager.addLayer(mainUiLayer, 121, "UiElementsEmphasizer element");
        this.f13824b = addLayer2;
        this.f13822A = gameSystemProvider;
        addLayer.getTable().setBackground(Game.f8589i.assetManager.getOverlayBackground());
        ResourcePack.ResourcePackBitmapFont font = Game.f8589i.assetManager.getFont(36);
        Color color = Color.WHITE;
        Label label = new Label("", new Label.LabelStyle(font, color));
        this.f13826k = label;
        label.setAlignment(1);
        addLayer.getTable().add((Table) this.f13826k).size(100.0f, 40.0f).padTop(700.0f).row();
        Label label2 = new Label("", new Label.LabelStyle(Game.f8589i.assetManager.getFont(30), color));
        this.f13827p = label2;
        label2.setAlignment(1);
        this.f13827p.setWrap(true);
        addLayer.getTable().add((Table) this.f13827p).width(1200.0f).row();
        Label label3 = new Label(Game.f8589i.localeManager.i18n.get("tap_screen_to_continue"), new Label.LabelStyle(Game.f8589i.assetManager.getFont(24), color));
        label3.setAlignment(1);
        label3.setColor(1.0f, 1.0f, 1.0f, 0.56f);
        addLayer.getTable().add((Table) label3).size(100.0f, 40.0f).padTop(160.0f).row();
        addLayer2.getTable().setTouchable(Touchable.enabled);
        addLayer2.getTable().addListener(new InputVoid());
        addLayer2.getTable().addListener(new InputListener() { // from class: com.prineside.tdi2.ui.components.UiElementsEmphasizer.1
            @Override // com.badlogic.gdx.scenes.scene2d.InputListener
            public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
                UiElementsEmphasizer.this.hide(false);
                return true;
            }
        });
        this.f13825d = new Group();
        addLayer2.getTable().add((Table) this.f13825d).size(1.0f);
        addLayer.getTable().addAction(Actions.alpha(0.0f));
        addLayer.getTable().setVisible(false);
        addLayer2.getTable().setVisible(false);
    }
}
