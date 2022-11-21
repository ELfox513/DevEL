package com.prineside.tdi2.systems;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.lib.jse.CoerceJavaToLua;
import com.prineside.luaj.lib.jse.JavaInstance;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Tile;
import com.prineside.tdi2.actions.ScriptAction;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.enums.TileType;
import com.prineside.tdi2.managers.AssetManager;
import com.prineside.tdi2.managers.ScriptManager;
import com.prineside.tdi2.systems.StateSystem;
import com.prineside.tdi2.tiles.ScriptTile;
import com.prineside.tdi2.utils.I18NBundle;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import net.bytebuddy.utility.JavaConstant;
@REGS
/* loaded from: classes2.dex */
public class ScriptSystem extends GameSystem {
    public static PMath.ClassComparator<ScriptSystem> CLASS_COMPARATOR = new PMath.ClassComparator<ScriptSystem>() { // from class: com.prineside.tdi2.systems.ScriptSystem.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(ScriptSystem scriptSystem, ScriptSystem scriptSystem2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(scriptSystem, scriptSystem2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<ScriptSystem> forClass() {
            return ScriptSystem.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(ScriptSystem scriptSystem, ScriptSystem scriptSystem2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            if (scriptSystem.f11767a && scriptSystem2.f11767a) {
                return;
            }
            array.add(".scriptEnvironment");
            PMath.compareObjects(scriptSystem.scriptEnvironment, scriptSystem2.scriptEnvironment, stringBuilder, array, i - 1, intIntMap, z);
            array.pop();
        }
    };

    /* renamed from: a */
    public boolean f11767a;

    /* renamed from: b */
    public Array<String> f11768b = new Array<>(String.class);
    @NAGS

    /* renamed from: d */
    public LuaValue f11769d;
    public ScriptManager.ScriptEnvironment scriptEnvironment;

    public ScriptSystem() {
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Script";
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postSetup() {
        this.scriptEnvironment.triggerEvent("SystemPostSetup");
    }

    public void disableScriptsSerialization() {
        Logger.log("ScriptSystem", "scripts serialization disabled");
        this.f11767a = true;
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        ScriptManager.ScriptEnvironment scriptEnvironment = this.scriptEnvironment;
        if (scriptEnvironment == null) {
            return;
        }
        int i = scriptEnvironment.getGlobals().instanceId;
        this.scriptEnvironment.triggerEvent("SystemDispose");
        this.scriptEnvironment.dispose();
        this.scriptEnvironment = null;
        Game.f8589i.scriptManager.unregisterInstance(i);
        super.dispose();
    }

    public void draw(SpriteBatch spriteBatch, float f) {
        if (this.scriptEnvironment == null) {
            return;
        }
        LuaValue luaValue = this.f11769d;
        if (luaValue == null) {
            this.f11769d = CoerceJavaToLua.coerce(spriteBatch);
        } else if (((JavaInstance) luaValue).m_instance != spriteBatch) {
            this.f11769d = CoerceJavaToLua.coerce(spriteBatch);
        }
        this.scriptEnvironment.triggerEvent("SystemDraw", this.f11769d, PMath.cachedLuaDouble1(f));
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postStateRestore() {
        if (this.scriptEnvironment == null) {
            return;
        }
        int i = 0;
        while (true) {
            Array<String> array = this.f11768b;
            if (i < array.size) {
                I18NBundle i18NBundle = Game.f8589i.localeManager.i18n;
                String[] strArr = array.items;
                i18NBundle.registerCustom(strArr[i], strArr[i + 1]);
                i += 2;
            } else {
                this.scriptEnvironment.triggerEvent("StateRestored");
                return;
            }
        }
    }

    public void runScriptAction(String str) {
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if (gameStateSystem != null) {
            if (gameStateSystem.replayMode) {
                this.scriptEnvironment.executeLua(str, "scriptAction");
                return;
            } else {
                gameStateSystem.pushAction(new ScriptAction(str));
                return;
            }
        }
        throw new IllegalStateException("GameStateSystem is not registered");
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        this.scriptEnvironment.getGlobals().set("SP", CoerceJavaToLua.coerce(this.f8844S));
        if (Game.f8589i.progressManager.isDeveloperModeEnabled()) {
            this.f8844S.script.scriptEnvironment.loadScript(AssetManager.localOrInternalFile("scripts/utils/game_commands.lua"));
        }
        DelayedRemovalArray<Tile> delayedRemovalArray = this.f8844S.map.getMap().tilesArray;
        for (int i = 0; i < delayedRemovalArray.size; i++) {
            Tile tile = this.f8844S.map.getMap().tilesArray.items[i];
            if (tile.type == TileType.SCRIPT) {
                ScriptTile scriptTile = (ScriptTile) tile;
                ScriptManager.ScriptEnvironment scriptEnvironment = this.f8844S.script.scriptEnvironment;
                String script = scriptTile.getScript();
                ScriptManager.ScriptEnvironment.LuaExecutionResult executeLua = scriptEnvironment.executeLua(script, "Script tile [" + scriptTile.getX() + ":" + scriptTile.getY() + "]");
                StringBuilder sb = new StringBuilder();
                sb.append(Game.f8589i.localeManager.i18n.getLocale().getLanguage());
                sb.append(JavaConstant.Dynamic.DEFAULT_NAME);
                sb.append(Game.f8589i.localeManager.i18n.getLocale().getCountry());
                String sb2 = sb.toString();
                ObjectMap.Keys<String> it = executeLua.scriptTranslations.keys().iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    if (executeLua.scriptTranslations.get(next) != null) {
                        ObjectMap.Keys<String> it2 = executeLua.scriptTranslations.get(next).keys().iterator();
                        while (it2.hasNext()) {
                            String next2 = it2.next();
                            if (next2.equals(sb2)) {
                                String str = executeLua.scriptTranslations.get(next).get(next2);
                                Game.f8589i.localeManager.i18n.registerCustom(next, str);
                                this.f11768b.add(next, str);
                            }
                        }
                    }
                }
            }
        }
        this.scriptEnvironment.triggerEvent("SystemSetup");
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        StateSystem.ActionsArray currentUpdateActions;
        ScriptManager.ScriptEnvironment scriptEnvironment = this.scriptEnvironment;
        if (scriptEnvironment == null) {
            return;
        }
        scriptEnvironment.triggerEvent("SystemUpdate", PMath.cachedLuaDouble1(f));
        if (this.f8844S.gameState != null && !Config.isHeadless() && (currentUpdateActions = this.f8844S.gameState.getCurrentUpdateActions()) != null) {
            for (int i = 0; i < currentUpdateActions.size; i++) {
                Action action = currentUpdateActions.actions[i];
                if (action.getType() == ActionType.S) {
                    if (!Config.isHeadless()) {
                        this.scriptEnvironment.executeLua(((ScriptAction) action).script, "scriptAction");
                    } else {
                        throw new IllegalStateException("Run script actions are not allowed in headless mode");
                    }
                }
            }
        }
    }

    public ScriptSystem(boolean z) {
        ScriptManager.ScriptEnvironment scriptEnvironment = new ScriptManager.ScriptEnvironment(true);
        this.scriptEnvironment = scriptEnvironment;
        scriptEnvironment.triggerEvent("SystemConstruct");
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f11767a = input.readBoolean();
        this.f11768b = (Array) kryo.readObject(input, Array.class);
        if (!this.f11767a) {
            this.scriptEnvironment = (ScriptManager.ScriptEnvironment) kryo.readObject(input, ScriptManager.ScriptEnvironment.class);
        }
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeBoolean(this.f11767a);
        kryo.writeObject(output, this.f11768b);
        if (!this.f11767a) {
            kryo.writeObject(output, this.scriptEnvironment);
        }
    }
}
