package com.prineside.tdi2;
/* loaded from: classes2.dex */
public abstract class Screen implements com.badlogic.gdx.Screen {
    @Override // com.badlogic.gdx.Screen
    public void dispose() {
    }

    public abstract void draw(float f);

    @Override // com.badlogic.gdx.Screen
    public void hide() {
    }

    @Override // com.badlogic.gdx.Screen
    public void pause() {
    }

    @Override // com.badlogic.gdx.Screen
    public void render(float f) {
        draw(f);
    }

    @Override // com.badlogic.gdx.Screen
    public void resize(int i, int i2) {
    }

    @Override // com.badlogic.gdx.Screen
    public void resume() {
    }

    @Override // com.badlogic.gdx.Screen
    public void show() {
    }
}
