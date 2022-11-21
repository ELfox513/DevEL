package com.prineside.tdi2;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.pay.Transaction;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.prineside.tdi2.managers.ReplayManager;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.ObjectRetriever;
import com.prineside.tdi2.utils.StringFormatter;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class HeadlessReplayCleanupGame extends Game {

    /* renamed from: l */
    public FileHandle f8671l;

    /* renamed from: m */
    public int f8672m;

    /* loaded from: classes2.dex */
    public static class CleanupResponse {
        public String cleanedUpData;
        public String newFileStatus;
        public String replayId;
        public boolean success;

        public CleanupResponse() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m21999g() {
        writeServerStatus("noResponse");
        Logger.log("HeadlessReplayCleanupGame", "...");
        try {
            Thread.sleep(getRequestInterval() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        m22000f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m21998h(JsonValue jsonValue) {
        Array array = new Array(true, 1, CleanupResponse.class);
        Iterator<JsonValue> iterator2 = jsonValue.iterator2();
        int i = 0;
        int i2 = 0;
        while (iterator2.hasNext()) {
            JsonValue next = iterator2.next();
            String string = next.getString("id");
            String string2 = next.getString("type");
            CleanupResponse cleanupResponse = new CleanupResponse();
            cleanupResponse.replayId = string;
            cleanupResponse.success = false;
            Logger.log("HeadlessReplayCleanupGame", "Cleaning " + string + " to state " + string2);
            try {
                String string3 = next.getString("replay");
                i += string3.length();
                ReplayManager.ReplayRecord fromCompactString = ReplayManager.ReplayRecord.fromCompactString(string3, true);
                if (string2.equals("VALIDATED")) {
                    if (fromCompactString.hasPreferences) {
                        fromCompactString.hasPreferences = false;
                    }
                } else if (string2.equals("CLEANED")) {
                    if (fromCompactString.hasPreferences) {
                        fromCompactString.hasPreferences = false;
                    }
                    if (fromCompactString.hasState) {
                        fromCompactString.hasState = false;
                    }
                }
                String compactString = fromCompactString.toCompactString();
                if (compactString != null) {
                    cleanupResponse.success = true;
                    cleanupResponse.cleanedUpData = compactString;
                    i2 += compactString.length();
                    cleanupResponse.newFileStatus = string2;
                }
            } catch (Exception e) {
                Logger.error("HeadlessReplayCleanupGame", "failed to parse", e);
            }
            array.add(cleanupResponse);
        }
        Logger.log("HeadlessReplayCleanupGame", "cleaned up " + i + " => " + i2 + " (-" + ((Object) StringFormatter.compactNumber((1.0f - (i2 / i)) * 100.0f, 1)) + "%)");
        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
        StringBuilder sb = new StringBuilder();
        sb.append(Config.SITE_URL);
        sb.append("/?m=api&a=submitReplayCleanup");
        sb.append(Config.SITE_SHARED_GET_PART);
        httpRequest.setUrl(sb.toString());
        HashMap hashMap = new HashMap();
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeArrayStart();
        Array.ArrayIterator it = array.iterator();
        while (it.hasNext()) {
            CleanupResponse cleanupResponse2 = (CleanupResponse) it.next();
            json.writeObjectStart();
            json.writeValue("id", cleanupResponse2.replayId);
            json.writeValue("success", Boolean.valueOf(cleanupResponse2.success));
            if (cleanupResponse2.success) {
                json.writeValue("data", cleanupResponse2.cleanedUpData);
                json.writeValue("newStatus", cleanupResponse2.newFileStatus);
            }
            json.writeObjectEnd();
        }
        json.writeArrayEnd();
        hashMap.put("result", stringWriter.toString());
        hashMap.put("hash", "091u8ptF");
        httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
        Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.HeadlessReplayCleanupGame.1
            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void cancelled() {
                Logger.error("HeadlessReplayCleanupGame", "canceled");
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void failed(Throwable th) {
                Logger.error("HeadlessReplayCleanupGame", "failed", th);
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void handleHttpResponse(Net.HttpResponse httpResponse) {
                Logger.log("HeadlessReplayCleanupGame", httpResponse.getResultAsString() + "");
            }
        });
        try {
            Thread.sleep(getRequestInterval() * CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        m22000f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m21997i(final JsonValue jsonValue) {
        if (jsonValue != null && jsonValue.size != 0) {
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.p1
                @Override // java.lang.Runnable
                public final void run() {
                    HeadlessReplayCleanupGame.this.m21998h(jsonValue);
                }
            });
        } else {
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.o1
                @Override // java.lang.Runnable
                public final void run() {
                    HeadlessReplayCleanupGame.this.m21999g();
                }
            });
        }
    }

    public boolean checkServerHalted() {
        if (Gdx.files.local("halt.txt").exists()) {
            Logger.log("HeadlessReplayCleanupGame", "halt.txt found, exiting");
            writeServerStatus("halted");
            Gdx.app.exit();
            System.exit(1);
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getRequestInterval() {
        /*
            r3 = this;
            com.badlogic.gdx.Files r0 = com.badlogic.gdx.Gdx.files
            java.lang.String r1 = "interval.txt"
            com.badlogic.gdx.files.FileHandle r0 = r0.local(r1)
            boolean r1 = r0.exists()
            if (r1 == 0) goto L1b
            java.lang.String r0 = r0.readString()     // Catch: java.lang.Exception -> L1b
            java.lang.String r0 = r0.trim()     // Catch: java.lang.Exception -> L1b
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Exception -> L1b
            goto L1d
        L1b:
            r0 = 60
        L1d:
            int r1 = r3.f8672m
            if (r1 == r0) goto L3e
            r3.f8672m = r0
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "got new request interval: "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r2 = "s"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "HeadlessReplayCleanupGame"
            com.prineside.tdi2.Logger.log(r2, r1)
        L3e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.HeadlessReplayCleanupGame.getRequestInterval():int");
    }

    public void writeServerStatus(String str) {
        if (this.f8671l == null) {
            this.f8671l = Gdx.files.local("status.txt");
        }
        int maxMemory = (int) ((((float) Runtime.getRuntime().maxMemory()) / 1024.0f) / 1024.0f);
        FileHandle fileHandle = this.f8671l;
        fileHandle.writeString(Game.getTimestampSeconds() + "|" + ((int) ((((float) Runtime.getRuntime().totalMemory()) / 1024.0f) / 1024.0f)) + "," + ((int) ((((float) Runtime.getRuntime().freeMemory()) / 1024.0f) / 1024.0f)) + "," + maxMemory + "|" + str, false, "UTF-8");
    }

    public HeadlessReplayCleanupGame(ActionResolver actionResolver) {
        super(actionResolver);
        this.f8672m = 0;
    }

    @Override // com.prineside.tdi2.Game, com.badlogic.gdx.ApplicationListener
    public void create() {
        super.create();
        Logger.initHeadless();
        Logger.log("HeadlessReplayCleanupGame", "started loading...");
        while (this.gameSyncLoader.iterate()) {
            Logger.log("HeadlessReplayCleanupGame", "loading: " + (this.gameSyncLoader.getProgress() * 100.0f) + "%");
            try {
                Thread.sleep(50L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        Logger.log("HeadlessReplayCleanupGame", "fully loaded!");
        writeServerStatus("loaded");
        m22000f();
    }

    /* renamed from: f */
    public final void m22000f() {
        if (checkServerHalted()) {
            return;
        }
        m21996j(new ObjectRetriever() { // from class: com.prineside.tdi2.n1
            @Override // com.prineside.tdi2.utils.ObjectRetriever
            public final void retrieved(Object obj) {
                HeadlessReplayCleanupGame.this.m21997i((JsonValue) obj);
            }
        });
    }

    /* renamed from: j */
    public final void m21996j(final ObjectRetriever<JsonValue> objectRetriever) {
        final long timestampMillis = Game.getTimestampMillis();
        Logger.log("HeadlessReplayCleanupGame", "requesting...");
        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
        httpRequest.setUrl(Config.SITE_URL + "/?m=api&a=getReplaysForCleanup" + Config.SITE_SHARED_GET_PART);
        Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.HeadlessReplayCleanupGame.2
            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void cancelled() {
                Logger.error("HeadlessReplayCleanupGame", Transaction.REVERSAL_TEXT_CANCELLED);
                objectRetriever.retrieved(null);
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void failed(Throwable th) {
                Logger.error("HeadlessReplayCleanupGame", "Failed", th);
                objectRetriever.retrieved(null);
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void handleHttpResponse(Net.HttpResponse httpResponse) {
                String str;
                String resultAsString = httpResponse.getResultAsString();
                Logger.log("HeadlessReplayCleanupGame", "got from server in: " + ((Object) StringFormatter.compactNumber(((float) (Game.getTimestampMillis() - timestampMillis)) * 0.001f, true)) + "s, " + resultAsString.length() + " chars");
                StringBuilder sb = new StringBuilder();
                sb.append("  ");
                if (resultAsString.length() <= 64) {
                    str = resultAsString;
                } else {
                    str = resultAsString.substring(0, 64) + "...";
                }
                sb.append(str.replaceAll("\n", ""));
                Logger.log("HeadlessReplayCleanupGame", sb.toString());
                try {
                    JsonValue parse = new JsonReader().parse(resultAsString);
                    if (parse.getString("status").equals("success")) {
                        objectRetriever.retrieved(parse.get("data"));
                        return;
                    }
                    throw new IllegalStateException("Status is not success: " + parse.getString("status"));
                } catch (Exception unused) {
                    Logger.error("HeadlessReplayCleanupGame", "Invalid response: " + resultAsString);
                    objectRetriever.retrieved(null);
                }
            }
        });
    }
}
