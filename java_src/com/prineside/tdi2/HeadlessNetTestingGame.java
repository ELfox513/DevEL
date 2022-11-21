package com.prineside.tdi2;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.esotericsoftware.kryonet.Connection;
import com.esotericsoftware.kryonet.FrameworkMessage;
import com.esotericsoftware.kryonet.Listener;
import com.esotericsoftware.kryonet.Server;
import com.prineside.tdi2.managers.NetworkManager;
import java.io.IOException;
/* loaded from: classes2.dex */
public class HeadlessNetTestingGame extends Game {
    public String currentReplay;

    /* renamed from: l */
    public FileHandle f8663l;

    /* renamed from: m */
    public final int f8664m;

    /* renamed from: n */
    public final int f8665n;

    /* renamed from: o */
    public long f8666o;

    /* renamed from: p */
    public long f8667p;

    /* renamed from: q */
    public int f8668q;

    /* renamed from: s */
    public int f8669s;

    public boolean checkServerHalted() {
        if (Gdx.files.local("halt-net.txt").exists()) {
            Logger.log("HeadlessReplayValidationGame", "halt-net.txt found, exiting");
            writeServerStatus("halted");
            Gdx.app.exit();
            System.exit(1);
            return true;
        }
        return false;
    }

    public void writeServerStatus(String str) {
        if (this.f8663l == null) {
            this.f8663l = Gdx.files.local("status-net-test.txt");
        }
        int maxMemory = (int) ((((float) Runtime.getRuntime().maxMemory()) / 1024.0f) / 1024.0f);
        FileHandle fileHandle = this.f8663l;
        fileHandle.writeString(Game.getTimestampSeconds() + "|" + ((int) ((((float) Runtime.getRuntime().totalMemory()) / 1024.0f) / 1024.0f)) + "," + ((int) ((((float) Runtime.getRuntime().freeMemory()) / 1024.0f) / 1024.0f)) + "," + maxMemory + "|" + str, false, "UTF-8");
    }

    public HeadlessNetTestingGame(ActionResolver actionResolver, int i, int i2) {
        super(actionResolver);
        this.f8666o = 0L;
        this.f8667p = 0L;
        this.f8668q = 0;
        this.f8669s = 0;
        this.f8664m = i;
        this.f8665n = i2;
    }

    @Override // com.prineside.tdi2.Game, com.badlogic.gdx.ApplicationListener
    public void create() {
        super.create();
        Logger.log("HeadlessReplayValidationGame", "started loading...");
        while (this.gameSyncLoader.iterate()) {
            Logger.log("HeadlessReplayValidationGame", "loading: " + (this.gameSyncLoader.getProgress() * 100.0f) + "%");
        }
        Logger.log("HeadlessReplayValidationGame", "fully loaded!");
        writeServerStatus("loaded");
        Logger.log("HeadlessReplayValidationGame", "trying to start the server...");
        Server server = new Server();
        server.start();
        try {
            server.bind(this.f8664m, this.f8665n);
        } catch (IOException e) {
            Logger.error("HeadlessReplayValidationGame", "failed to bind to the socket", e);
            System.exit(-1);
        }
        Game.f8589i.networkManager.prepareMultiplayerKryo(server.getKryo());
        server.addListener(new Listener() { // from class: com.prineside.tdi2.HeadlessNetTestingGame.1
            @Override // com.esotericsoftware.kryonet.Listener
            public void connected(Connection connection) {
                Logger.log("HeadlessReplayValidationGame", "connected " + connection);
                HeadlessNetTestingGame headlessNetTestingGame = HeadlessNetTestingGame.this;
                headlessNetTestingGame.f8666o = headlessNetTestingGame.f8666o + 1;
                int i = headlessNetTestingGame.f8668q + 1;
                headlessNetTestingGame.f8668q = i;
                if (i > headlessNetTestingGame.f8669s) {
                    headlessNetTestingGame.f8669s = i;
                }
            }

            @Override // com.esotericsoftware.kryonet.Listener
            public void disconnected(Connection connection) {
                Logger.log("HeadlessReplayValidationGame", "disconnected " + connection);
                HeadlessNetTestingGame headlessNetTestingGame = HeadlessNetTestingGame.this;
                headlessNetTestingGame.f8668q = headlessNetTestingGame.f8668q + (-1);
            }

            @Override // com.esotericsoftware.kryonet.Listener
            public void received(Connection connection, Object obj) {
                if (obj instanceof NetworkManager.NetReqConnect) {
                    Logger.log("HeadlessReplayValidationGame", "received connection request: " + ((NetworkManager.NetReqConnect) obj) + ", sending response");
                    NetworkManager.NetRespConnect netRespConnect = new NetworkManager.NetRespConnect();
                    netRespConnect.text = "Hi!";
                    connection.sendTCP(netRespConnect);
                    HeadlessNetTestingGame.this.f8667p++;
                } else if (!(obj instanceof FrameworkMessage.KeepAlive)) {
                    Logger.log("HeadlessReplayValidationGame", "received " + connection + " " + obj);
                }
            }
        });
        Logger.log("HeadlessReplayValidationGame", "server started, listening on ports " + this.f8664m + ", " + this.f8665n);
        boolean z = true;
        while (z) {
            Logger.log("HeadlessReplayValidationGame", "c:" + this.f8668q + " / tce:" + this.f8666o + " / tcrr:" + this.f8667p + " / mc:" + this.f8669s);
            writeServerStatus("running|" + this.f8668q + "|" + this.f8666o + "|" + this.f8667p + "|" + this.f8669s);
            try {
                Thread.sleep(10000L);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
                z = false;
            }
        }
        Logger.log("HeadlessReplayValidationGame", "server shut down");
        writeServerStatus("shutdown");
    }
}
