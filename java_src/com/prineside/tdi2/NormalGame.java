package com.prineside.tdi2;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class NormalGame extends Game {
    public NormalGame(ActionResolver actionResolver) {
        super(actionResolver);
    }

    @Override // com.prineside.tdi2.Game, com.badlogic.gdx.ApplicationListener
    public void create() {
        super.create();
        FileHandle local = Gdx.files.local("cache/crash-report.json");
        if (local.exists()) {
            JsonValue parse = new JsonReader().parse(local.readString("UTF-8"));
            this.screenManager.goToCrashReportScreen(parse.getString("type", ""), parse.getString("thread", ""), parse.getString("message", ""), parse.getString("stacktrace", ""), parse.getString("stderr", ""));
            return;
        }
        FileHandle local2 = Gdx.files.local("cache/space.bin");
        if (!local2.exists()) {
            byte[] bArr = new byte[1024];
            Arrays.fill(bArr, (byte) -1);
            for (int i = 0; i < 32; i++) {
                local2.writeBytes(bArr, true);
            }
        }
        Logger.log("NormalGame", "set up sync loader, going to loading screen");
        this.screenManager.goToLoadingScreen(this.gameSyncLoader);
    }
}
