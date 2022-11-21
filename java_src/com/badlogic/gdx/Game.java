package com.badlogic.gdx;
/* loaded from: classes.dex */
public abstract class Game implements ApplicationListener {

    /* renamed from: a */
    public Screen f3118a;

    @Override // com.badlogic.gdx.ApplicationListener
    public void dispose() {
        Screen screen = this.f3118a;
        if (screen != null) {
            screen.hide();
        }
    }

    public Screen getScreen() {
        return this.f3118a;
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void pause() {
        Screen screen = this.f3118a;
        if (screen != null) {
            screen.pause();
        }
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void render() {
        Screen screen = this.f3118a;
        if (screen != null) {
            screen.render(Gdx.graphics.getDeltaTime());
        }
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void resize(int i, int i2) {
        Screen screen = this.f3118a;
        if (screen != null) {
            screen.resize(i, i2);
        }
    }

    @Override // com.badlogic.gdx.ApplicationListener
    public void resume() {
        Screen screen = this.f3118a;
        if (screen != null) {
            screen.resume();
        }
    }

    public void setScreen(Screen screen) {
        Screen screen2 = this.f3118a;
        if (screen2 != null) {
            screen2.hide();
        }
        this.f3118a = screen;
        if (screen != null) {
            screen.show();
            this.f3118a.resize(Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
        }
    }
}
