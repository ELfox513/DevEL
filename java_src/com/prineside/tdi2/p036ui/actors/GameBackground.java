package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.managers.UiManager;
/* renamed from: com.prineside.tdi2.ui.actors.GameBackground */
/* loaded from: classes2.dex */
public class GameBackground implements Disposable {

    /* renamed from: a */
    public final UiManager.UiLayer f12520a = Game.f8589i.uiManager.addLayer(UiManager.MainUiLayer.SCREEN, 90, "GameBackground");

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Game.f8589i.uiManager.removeLayer(this.f12520a);
    }

    public void draw(SpriteBatch spriteBatch, float f) {
    }

    public GameBackground(GameSystemProvider gameSystemProvider) {
    }
}
