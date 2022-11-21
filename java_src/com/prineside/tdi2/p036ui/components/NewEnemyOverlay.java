package com.prineside.tdi2.p036ui.components;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.p033ui.Image;
import com.badlogic.gdx.scenes.scene2d.p033ui.Label;
import com.badlogic.gdx.scenes.scene2d.p033ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.managers.UiManager;
import com.prineside.tdi2.systems.MapSystem;
import com.prineside.tdi2.utils.InputVoid;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
/* renamed from: com.prineside.tdi2.ui.components.NewEnemyOverlay */
/* loaded from: classes2.dex */
public class NewEnemyOverlay implements Disposable {

    /* renamed from: t */
    public static final Vector2 f13447t = new Vector2();

    /* renamed from: a */
    public final UiManager.UiLayer f13448a;

    /* renamed from: b */
    public boolean f13449b;

    /* renamed from: d */
    public Image f13450d;

    /* renamed from: k */
    public Label f13451k;

    /* renamed from: p */
    public Label f13452p;

    /* renamed from: q */
    public float f13453q;

    /* renamed from: r */
    public final GameSystemProvider f13454r;

    /* renamed from: s */
    public final _MapSystemListener f13455s;

    @NAGS
    /* renamed from: com.prineside.tdi2.ui.components.NewEnemyOverlay$_MapSystemListener */
    /* loaded from: classes2.dex */
    public class _MapSystemListener extends MapSystem.MapSystemListener.MapSystemListenerAdapter {
        public _MapSystemListener() {
        }

        @Override // com.prineside.tdi2.systems.MapSystem.MapSystemListener.MapSystemListenerAdapter, com.prineside.tdi2.systems.MapSystem.MapSystemListener
        public void enemySpawnedOnMap(Enemy enemy) {
            EnemyType enemyType;
            if (!NewEnemyOverlay.this.f13454r.gameState.isFastForwarding() && Game.f8589i.enemyManager.isEnemyTypeNewForPlayer(enemy.type) && (enemyType = enemy.type) != EnemyType.GENERIC) {
                Game.f8589i.enemyManager.markEnemyTypeAsNotNewForPlayer(enemyType);
                NewEnemyOverlay.this.show(enemy.type);
            }
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f13448a);
        this.f13454r.map.listeners.remove(this.f13455s);
    }

    public void hide() {
        if (!this.f13449b) {
            return;
        }
        this.f13454r.gameState.setGameSpeed(this.f13453q);
        this.f13449b = false;
        this.f13448a.getTable().clearActions();
        this.f13448a.getTable().addAction(Actions.sequence(Actions.alpha(0.0f, 0.5f), Actions.hide()));
    }

    public void show(EnemyType enemyType) {
        if (this.f13449b) {
            hide();
        }
        String title = Game.f8589i.enemyManager.getFactory(enemyType).getTitle();
        if (title.equals("-")) {
            return;
        }
        this.f13449b = true;
        this.f13453q = this.f13454r.gameState.getGameSpeed();
        this.f13454r.gameState.setGameSpeed(0.0f);
        this.f13450d.setDrawable(new TextureRegionDrawable(Game.f8589i.enemyManager.getFactory(enemyType).getTexture()));
        this.f13451k.setText(title);
        this.f13452p.setText(Game.f8589i.enemyManager.getFactory(enemyType).getDescription());
        this.f13448a.getTable().setVisible(true);
        this.f13448a.getTable().clearActions();
        this.f13448a.getTable().addAction(Actions.alpha(1.0f, 0.3f));
    }

    public NewEnemyOverlay(GameSystemProvider gameSystemProvider) {
        UiManager.UiLayer addLayer = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 120, "NewEnemyOverlay");
        this.f13448a = addLayer;
        _MapSystemListener _mapsystemlistener = new _MapSystemListener();
        this.f13455s = _mapsystemlistener;
        this.f13454r = gameSystemProvider;
        addLayer.getTable().setBackground(Game.f8589i.assetManager.getOverlayBackground());
        addLayer.getTable().setTouchable(Touchable.enabled);
        addLayer.getTable().addListener(new InputVoid());
        addLayer.getTable().addListener(new ClickListener() { // from class: com.prineside.tdi2.ui.components.NewEnemyOverlay.1
            @Override // com.badlogic.gdx.scenes.scene2d.utils.ClickListener
            public void clicked(InputEvent inputEvent, float f, float f2) {
                NewEnemyOverlay.this.hide();
            }
        });
        this.f13450d = new Image(Game.f8589i.assetManager.getDrawable("blank"));
        addLayer.getTable().add((Table) this.f13450d).size(96.0f).padBottom(32.0f).row();
        this.f13451k = new Label("", Game.f8589i.assetManager.getLabelStyle(36));
        addLayer.getTable().add((Table) this.f13451k).row();
        Label label = new Label("", Game.f8589i.assetManager.getLabelStyle(30));
        this.f13452p = label;
        label.setWrap(true);
        this.f13452p.setAlignment(1);
        addLayer.getTable().add((Table) this.f13452p).width(1000.0f).padTop(32.0f).row();
        Label label2 = new Label(Game.f8589i.localeManager.i18n.get("tap_screen_to_continue"), Game.f8589i.assetManager.getLabelStyle(24));
        label2.setColor(MaterialColor.GREY.P500);
        label2.addAction(Actions.forever(Actions.sequence(Actions.alpha(1.0f, 0.5f), Actions.alpha(0.5f, 0.5f))));
        addLayer.getTable().add((Table) label2).padTop(32.0f);
        addLayer.getTable().addAction(Actions.alpha(0.0f));
        addLayer.getTable().setVisible(false);
        gameSystemProvider.map.listeners.add(_mapsystemlistener);
    }
}
