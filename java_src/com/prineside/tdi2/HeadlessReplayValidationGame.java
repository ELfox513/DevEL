package com.prineside.tdi2;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.pay.Transaction;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.prineside.tdi2.managers.DailyQuestManager;
import com.prineside.tdi2.managers.ReplayManager;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.StringFormatter;
import java.io.PrintStream;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class HeadlessReplayValidationGame extends Game {
    public String currentReplay;
    public String instanceName;

    /* renamed from: l */
    public FileHandle f8698l;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m21967i() {
        writeServerStatus("noReplay");
        Logger.log("HeadlessReplayValidationGame", "...");
        try {
            Thread.sleep(5000L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        m21968h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m21966j(ReplayManager.ReplayRecord replayRecord, final GameStateSystem.ReplayValidationResult replayValidationResult) {
        String str;
        writeServerStatus("finishedValidation");
        Logger.log("HeadlessReplayValidationGame", "End of game validation (" + replayValidationResult.replayRecord.f10052id + " " + replayValidationResult.replayRecord.gameMode.name() + " " + replayValidationResult.replayRecord.difficultyMode + " " + replayValidationResult.replayRecord.modeDifficultyMultiplier + " " + String.valueOf(replayValidationResult.replayRecord.levelName) + ", status: " + replayValidationResult.result.name() + " (" + replayValidationResult.updates + " updates), time elapsed: " + replayValidationResult.timeSpent + "s. (" + ((Object) StringFormatter.commaSeparatedNumber(replayValidationResult.updatesPerSecond)) + " u/s), real waves: " + replayValidationResult.realWaves + ", score: " + replayValidationResult.realScore);
        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
        httpRequest.setUrl(Config.SITE_URL + "/?m=api&a=submitReplayValidation" + Config.SITE_SHARED_GET_PART);
        HashMap hashMap = new HashMap();
        hashMap.put("id", replayValidationResult.replayRecord.f10052id);
        String str2 = "r:" + replayValidationResult.result.name() + ",u:" + replayValidationResult.updates + ",ts:" + replayValidationResult.timeSpent + ",ups:" + replayValidationResult.updatesPerSecond + ",rw:" + replayValidationResult.realWaves + ",rs:" + replayValidationResult.realScore + ",i:" + this.instanceName + ",sw:" + replayRecord.defeatedWaves + ",ss:" + replayRecord.score;
        if (replayValidationResult.result == GameStateSystem.ReplayValidationResult.Result.MODIFIED_GAME) {
            str2 = str2 + ",chr:" + replayValidationResult.cheatingReason;
        }
        hashMap.put("log", str2);
        if (replayValidationResult.result == GameStateSystem.ReplayValidationResult.Result.VALID) {
            str = "true";
        } else {
            str = "false";
        }
        hashMap.put("valid", str);
        hashMap.put("xp", replayValidationResult.f11496xp + "");
        hashMap.put("enemiesKilled", replayValidationResult.enemiesKilled + "");
        hashMap.put("resourcesMined", replayValidationResult.resourcesMined + "");
        try {
            hashMap.put("gameMode", replayValidationResult.f11495S.gameState.gameMode.name());
            hashMap.put("difficultyMode", replayValidationResult.f11495S.gameState.difficultyMode.name());
            hashMap.put("modeDifficultyMultiplier", replayValidationResult.f11495S.gameState.modeDifficultyMultiplier + "");
            String str3 = replayValidationResult.f11495S.gameState.basicLevelName;
            if (str3 != null) {
                hashMap.put("basicLevelName", str3);
            }
        } catch (Exception unused) {
        }
        String stop = HeadlessReplayReportGenerator.stop(replayValidationResult.f11495S);
        if (stop != null) {
            hashMap.put("report", stop);
        }
        httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
        Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.HeadlessReplayValidationGame.1
            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void cancelled() {
                Logger.error("HeadlessReplayValidationGame", "Failed to send validation result for record " + replayValidationResult.replayRecord.f10052id + " - request cancelled");
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void failed(Throwable th) {
                Logger.error("HeadlessReplayValidationGame", "Failed to send validation result for record " + replayValidationResult.replayRecord.f10052id, th);
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void handleHttpResponse(Net.HttpResponse httpResponse) {
                Logger.log("HeadlessReplayValidationGame", "Validation result for record " + replayValidationResult.replayRecord.f10052id + " sent " + httpResponse.getResultAsString());
            }
        });
        this.screenManager.setNoScreen();
        m21968h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ void m21965k(final ReplayManager.ReplayRecord replayRecord) {
        writeServerStatus("startingValidation");
        GameStateSystem.headlessValidateGame(replayRecord, new ObjectRetriever() { // from class: com.prineside.tdi2.u1
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                HeadlessReplayValidationGame.this.m21966j(replayRecord, (GameStateSystem.ReplayValidationResult) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m21964l(String str) {
        try {
            final ReplayManager.ReplayRecord fromCompactString = ReplayManager.ReplayRecord.fromCompactString(str, true);
            Logger.log("HeadlessReplayValidationGame", "");
            final Runnable runnable = new Runnable() { // from class: com.prineside.tdi2.t1
                @Override // java.lang.Runnable
                public final void run() {
                    HeadlessReplayValidationGame.this.m21965k(fromCompactString);
                }
            };
            if (fromCompactString.gameMode == GameStateSystem.GameMode.BASIC_LEVELS && fromCompactString.levelName.startsWith(DailyQuestManager.LEVEL_NAME_PREFIX)) {
                final int parseInt = Integer.parseInt(fromCompactString.levelName.substring(2));
                Game.f8589i.dailyQuestManager.getDailyQuestHashFromServer(parseInt, new ObjectRetriever<String>() { // from class: com.prineside.tdi2.HeadlessReplayValidationGame.2
                    @Override // com.prineside.tdi2.utils.ObjectRetriever
                    public void retrieved(String str2) {
                        if (str2 != null) {
                            Game.f8589i.dailyQuestManager.removeLoadedDailyQuestMapIfMd5HashDiffers(parseInt, str2);
                        }
                        if (Game.f8589i.basicLevelManager.getLevel(fromCompactString.levelName) == null) {
                            Game.f8589i.dailyQuestManager.loadAndStoreDailyQuestFromServer(parseInt, new ObjectRetriever<BasicLevel>() { // from class: com.prineside.tdi2.HeadlessReplayValidationGame.2.1
                                @Override // com.prineside.tdi2.utils.ObjectRetriever
                                public void retrieved(BasicLevel basicLevel) {
                                    Logger.log("HeadlessReplayValidationGame", "loaded " + fromCompactString.levelName + " from server");
                                    runnable.run();
                                }
                            });
                        } else {
                            runnable.run();
                        }
                    }
                });
                return;
            }
            runnable.run();
        } catch (Exception e) {
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.SITE_URL + "/?m=api&a=submitReplayValidation" + Config.SITE_SHARED_GET_PART);
            HashMap hashMap = new HashMap();
            hashMap.put("id", this.currentReplay);
            hashMap.put("log", "r:" + GameStateSystem.ReplayValidationResult.Result.INVALID_RECORD.name() + ",u:0,ts:0,ups:0,rw:0,rs:0,i:" + this.instanceName + ",failed to parse json");
            hashMap.put("valid", "false");
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            Gdx.f38302net.sendHttpRequest(httpRequest, null);
            Logger.error("HeadlessReplayValidationGame", "failed to parse record json for " + this.currentReplay + ":" + e.getMessage(), e);
            m21968h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m21963m(final String str) {
        if (str != null && str.length() != 0) {
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.s1
                @Override // java.lang.Runnable
                public final void run() {
                    HeadlessReplayValidationGame.this.m21964l(str);
                }
            });
        } else {
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.r1
                @Override // java.lang.Runnable
                public final void run() {
                    HeadlessReplayValidationGame.this.m21967i();
                }
            });
        }
    }

    public boolean checkServerHalted() {
        if (Gdx.files.external("halt.txt").exists()) {
            Logger.log("HeadlessReplayValidationGame", "halt.txt found, exiting");
            writeServerStatus("halted");
            Gdx.app.exit();
            System.exit(1);
            return true;
        }
        return false;
    }

    public void writeServerStatus(String str) {
        if (this.f8698l == null) {
            Files files = Gdx.files;
            this.f8698l = files.local("status-" + this.instanceName + ".txt");
        }
        int maxMemory = (int) ((((float) Runtime.getRuntime().maxMemory()) / 1024.0f) / 1024.0f);
        FileHandle fileHandle = this.f8698l;
        fileHandle.writeString(Game.getTimestampSeconds() + "|" + ((int) ((((float) Runtime.getRuntime().totalMemory()) / 1024.0f) / 1024.0f)) + "," + ((int) ((((float) Runtime.getRuntime().freeMemory()) / 1024.0f) / 1024.0f)) + "," + maxMemory + "|" + str, false, "UTF-8");
    }

    public HeadlessReplayValidationGame(ActionResolver actionResolver, String str) {
        super(actionResolver);
        PrintStream printStream = System.out;
        printStream.println("instance: " + str);
        this.instanceName = str;
    }

    @Override // com.prineside.tdi2.Game, com.badlogic.gdx.ApplicationListener
    public void create() {
        super.create();
        Logger.initHeadless();
        Logger.log("HeadlessReplayValidationGame", "started loading...");
        while (this.gameSyncLoader.iterate()) {
            Logger.log("HeadlessReplayValidationGame", "loading: " + (this.gameSyncLoader.getProgress() * 100.0f) + "%");
            try {
                Thread.sleep(50L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        Logger.log("HeadlessReplayValidationGame", "fully loaded!");
        writeServerStatus("loaded");
        m21968h();
    }

    /* renamed from: h */
    public final void m21968h() {
        if (checkServerHalted()) {
            return;
        }
        m21962n(new ObjectRetriever() { // from class: com.prineside.tdi2.q1
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                HeadlessReplayValidationGame.this.m21963m((String) obj);
            }
        });
    }

    /* renamed from: n */
    public final void m21962n(final ObjectRetriever<String> objectRetriever) {
        final long timestampMillis = Game.getTimestampMillis();
        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
        String str = Config.SITE_URL + "/?m=api&a=getReplayForValidation" + Config.SITE_SHARED_GET_PART;
        if (Gdx.files.external("endless.txt").exists()) {
            str = str + "&e=1";
        }
        httpRequest.setUrl(str);
        Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.HeadlessReplayValidationGame.3
            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void cancelled() {
                Logger.error("HeadlessReplayValidationGame", Transaction.REVERSAL_TEXT_CANCELLED);
                objectRetriever.retrieved(null);
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void failed(Throwable th) {
                Logger.error("HeadlessReplayValidationGame", "Failed", th);
                objectRetriever.retrieved(null);
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void handleHttpResponse(Net.HttpResponse httpResponse) {
                String resultAsString = httpResponse.getResultAsString();
                Logger.log("HeadlessReplayValidationGame", "got from server in: " + ((Object) StringFormatter.compactNumber(((float) (Game.getTimestampMillis() - timestampMillis)) * 0.001f, true)) + "s, " + resultAsString.length() + " chars");
                try {
                    JsonValue parse = new JsonReader().parse(resultAsString);
                    if (parse.getString("status").equals("success")) {
                        HeadlessReplayValidationGame.this.currentReplay = parse.getString("id");
                        Logger.log("HeadlessReplayValidationGame", "---- starting replay " + HeadlessReplayValidationGame.this.currentReplay);
                        objectRetriever.retrieved(parse.getString("replay"));
                        return;
                    }
                    throw new IllegalStateException("Status is not success: " + parse.getString("status"));
                } catch (Exception unused) {
                    objectRetriever.retrieved(null);
                }
            }
        });
    }
}
