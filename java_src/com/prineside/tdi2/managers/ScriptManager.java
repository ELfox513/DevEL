package com.prineside.tdi2.managers;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.Globals;
import com.prineside.luaj.LoadState;
import com.prineside.luaj.LuaClosure;
import com.prineside.luaj.LuaError;
import com.prineside.luaj.LuaTable;
import com.prineside.luaj.LuaValue;
import com.prineside.luaj.Varargs;
import com.prineside.luaj.compiler.LuaC;
import com.prineside.luaj.lib.Bit32Lib;
import com.prineside.luaj.lib.CoroutineLib;
import com.prineside.luaj.lib.DebugLib;
import com.prineside.luaj.lib.OneArgFunction;
import com.prineside.luaj.lib.PackageLib;
import com.prineside.luaj.lib.StringLib;
import com.prineside.luaj.lib.TableLib;
import com.prineside.luaj.lib.TwoArgFunction;
import com.prineside.luaj.lib.VarArgFunction;
import com.prineside.luaj.lib.jse.CoerceJavaToLua;
import com.prineside.luaj.lib.jse.JseBaseLib;
import com.prineside.luaj.lib.jse.JseMathLib;
import com.prineside.luaj.lib.jse.LuajavaLib;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.ScriptProxyCreator;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import net.bytebuddy.utility.JavaConstant;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class ScriptManager extends Manager.ManagerAdapter {
    public static ObjectMap<String, ScriptProxyCreator> SCRIPT_PROXIES = new ObjectMap<>();

    /* renamed from: a */
    public static final StringBuilder f10087a = new StringBuilder();
    public ScriptEnvironment global;
    public IntMap<Globals> globalsInstances = new IntMap<>();

    @REGS
    /* loaded from: classes2.dex */
    public static class LuajavaFixedLib extends LuajavaLib {
        @Override // com.prineside.luaj.lib.jse.LuajavaLib
        /* renamed from: s */
        public Class mo21500s(String str) {
            if (!str.startsWith("class ") && !str.startsWith("interface ")) {
                return Class.forName(str, true, Thread.currentThread().getContextClassLoader());
            }
            throw new ClassNotFoundException("maybe Class object passed instead of its name (class name looks like Class#toString()): '" + str + "'");
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class ReadOnlyLuaTable extends LuaTable {
        public ReadOnlyLuaTable() {
        }

        @Override // com.prineside.luaj.LuaTable, com.prineside.luaj.LuaValue
        public void rawset(int i, LuaValue luaValue) {
            LuaValue.error("table is read-only");
        }

        @Override // com.prineside.luaj.LuaTable
        public LuaValue remove(int i) {
            return LuaValue.error("table is read-only");
        }

        @Override // com.prineside.luaj.LuaTable, com.prineside.luaj.LuaValue
        public void set(int i, LuaValue luaValue) {
            LuaValue.error("table is read-only");
        }

        @Override // com.prineside.luaj.LuaTable, com.prineside.luaj.LuaValue
        public LuaValue setmetatable(LuaValue luaValue) {
            return LuaValue.error("table is read-only");
        }

        public ReadOnlyLuaTable(LuaValue luaValue) {
            presize(luaValue.length(), 0);
            Varargs next = luaValue.next(LuaValue.NIL);
            while (!next.arg1().isnil()) {
                LuaValue arg1 = next.arg1();
                LuaValue arg = next.arg(2);
                if (arg.istable()) {
                    arg = new ReadOnlyLuaTable(arg);
                }
                super.rawset(arg1, arg);
                next = luaValue.next(next.arg1());
            }
        }

        @Override // com.prineside.luaj.LuaTable, com.prineside.luaj.LuaValue
        public void rawset(LuaValue luaValue, LuaValue luaValue2) {
            LuaValue.error("table is read-only");
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class ScriptEnvironment implements KryoSerializable {

        /* renamed from: a */
        public Globals f10089a;

        /* renamed from: b */
        public ObjectMap<String, DelayedRemovalArray<LuaClosure>> f10090b = new ObjectMap<>();

        /* loaded from: classes2.dex */
        public static class LuaExecutionResult {

            /* renamed from: a */
            public LuaValue f10091a;
            public String errorMessage;
            public ObjectMap<String, ObjectMap<String, String>> scriptTranslations = new ObjectMap<>();
        }

        public ScriptEnvironment() {
        }

        public void dispose() {
            this.f10089a = null;
            this.f10090b = null;
        }

        public void triggerEvent(String str) {
            m21497c();
            DelayedRemovalArray<LuaClosure> delayedRemovalArray = this.f10090b.get(str);
            if (delayedRemovalArray != null) {
                delayedRemovalArray.begin();
                int i = delayedRemovalArray.size;
                for (int i2 = 0; i2 < i; i2++) {
                    try {
                        delayedRemovalArray.items[i2].call();
                    } catch (LuaError e) {
                        Logger.error("ScriptManager", "error running script with event '" + str + "'", e);
                    }
                }
                delayedRemovalArray.end();
            }
        }

        /* renamed from: c */
        public final void m21497c() {
            FileHandle[] list;
            boolean z;
            FileHandle[] list2;
            if (this.f10089a == null) {
                Globals globals = new Globals(Game.f8589i.scriptManager.getFreeInstanceId());
                this.f10089a = globals;
                globals.load(new JseBaseLib());
                this.f10089a.load(new PackageLib());
                this.f10089a.load(new Bit32Lib());
                this.f10089a.load(new TableLib());
                this.f10089a.load(new StringLib());
                this.f10089a.load(new CoroutineLib());
                this.f10089a.load(new JseMathLib());
                LuajavaFixedLib luajavaFixedLib = new LuajavaFixedLib();
                Globals globals2 = this.f10089a;
                luajavaFixedLib.globals = globals2;
                globals2.load(luajavaFixedLib);
                this.f10089a.load(new DebugLib());
                LoadState.install(this.f10089a);
                LuaC luaC = new LuaC();
                Globals globals3 = this.f10089a;
                globals3.compiler = luaC;
                globals3.loader = luaC;
                globals3.set("log", new luaLog());
                this.f10089a.set("warning", new luaWarning());
                this.f10089a.set("addEventHandler", new luaAddEventHandler(this));
                this.f10089a.set("removeEventHandler", new luaRemoveEventHandler(this));
                LuaTable luaTable = new LuaTable();
                luaTable.set("getFields", new luaGetFields());
                luaTable.set("getMethods", new luaGetMethods());
                this.f10089a.set("reflection", luaTable);
                this.f10089a.set("reg", CoerceJavaToLua.coerce(Game.f8591r));
                LuaTable luaTable2 = new LuaTable();
                luaTable2.set("_noSyncCheck", LuaValue.TRUE);
                int i = 0;
                int i2 = 0;
                while (true) {
                    Array<Manager> array = Game.f8589i.managers;
                    if (i2 >= array.size) {
                        break;
                    }
                    Manager manager = array.get(i2);
                    luaTable2.set(manager.getClass().getSimpleName(), CoerceJavaToLua.coerce(manager));
                    i2++;
                }
                this.f10089a.set("managers", new ReadOnlyLuaTable(luaTable2));
                Array array2 = new Array(true, 1, FileHandle.class);
                if (Gdx.files.external("scripts").exists()) {
                    for (FileHandle fileHandle : Gdx.files.external("scripts").list()) {
                        if (!fileHandle.isDirectory()) {
                            array2.add(fileHandle);
                        }
                    }
                }
                for (FileHandle fileHandle2 : Gdx.files.external("scripts").list()) {
                    if (!fileHandle2.isDirectory()) {
                        int i3 = 0;
                        while (true) {
                            if (i3 < array2.size) {
                                if (((FileHandle[]) array2.items)[i3].path().equals(fileHandle2.path())) {
                                    z = true;
                                    break;
                                }
                                i3++;
                            } else {
                                z = false;
                                break;
                            }
                        }
                        if (!z) {
                            array2.add(fileHandle2);
                        }
                    }
                }
                while (i < array2.size) {
                    int i4 = i + 1;
                    for (int i5 = i4; i5 < array2.size; i5++) {
                        if (((FileHandle[]) array2.items)[i].name().compareTo(((FileHandle[]) array2.items)[i5].name()) > 0) {
                            array2.swap(i, i5);
                        }
                    }
                    i = i4;
                }
                Array.ArrayIterator it = array2.iterator();
                while (it.hasNext()) {
                    FileHandle fileHandle3 = (FileHandle) it.next();
                    if (!fileHandle3.name().startsWith(JavaConstant.Dynamic.DEFAULT_NAME)) {
                        try {
                            loadScript(fileHandle3);
                            Logger.log("ScriptManager", "Loaded script: " + fileHandle3.path());
                        } catch (Exception e) {
                            Logger.error("ScriptManager", "Failed to load script: " + fileHandle3.name(), e);
                        }
                    }
                }
            }
        }

        public LuaExecutionResult executeLua(String str, String str2) {
            m21497c();
            LuaExecutionResult luaExecutionResult = new LuaExecutionResult();
            try {
                luaExecutionResult.f10091a = this.f10089a.load(str, str2).call();
                try {
                    LuaValue luaValue = this.f10089a.get("__scriptTranslations");
                    if (luaValue.istable()) {
                        LuaTable luaTable = (LuaTable) luaValue;
                        LuaValue luaValue2 = LuaValue.NIL;
                        while (true) {
                            Varargs next = luaTable.next(luaValue2);
                            LuaValue arg1 = next.arg1();
                            if (arg1.isnil()) {
                                break;
                            }
                            LuaValue arg = next.arg(2);
                            if (arg.istable()) {
                                ObjectMap<String, String> objectMap = new ObjectMap<>();
                                luaExecutionResult.scriptTranslations.put(arg1.tojstring(), objectMap);
                                if (arg.istable()) {
                                    LuaTable luaTable2 = (LuaTable) arg;
                                    LuaValue luaValue3 = LuaValue.NIL;
                                    while (true) {
                                        Varargs next2 = luaTable2.next(luaValue3);
                                        LuaValue arg12 = next2.arg1();
                                        if (arg12.isnil()) {
                                            break;
                                        }
                                        LuaValue arg2 = next2.arg(2);
                                        if (arg12.isstring() && arg2.isstring()) {
                                            objectMap.put(arg12.tojstring(), arg2.tojstring());
                                        } else {
                                            Logger.error("ScriptManager", str2 + " __scriptTranslations." + arg1 + "." + arg12 + " is not a string or key is not a string");
                                        }
                                        luaValue3 = arg12;
                                    }
                                }
                            } else if (arg.isstring()) {
                                luaExecutionResult.scriptTranslations.put(arg.tojstring(), null);
                            } else {
                                Logger.error("ScriptManager", str2 + " __scriptTranslations." + arg1 + " is not a string and key is not an i18n alias");
                            }
                            luaValue2 = arg1;
                        }
                    }
                } catch (Exception e) {
                    Logger.error("ScriptManager", "failed to get script translations", e);
                }
                this.f10089a.set("__scriptTranslations", LuaValue.NIL);
            } catch (Exception e2) {
                Logger.error("ScriptManager", "Failed to execute Lua script", e2);
                luaExecutionResult.errorMessage = e2.getMessage();
            }
            return luaExecutionResult;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f10089a = (Globals) kryo.readObject(input, Globals.class);
            this.f10090b = (ObjectMap) kryo.readObject(input, ObjectMap.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f10089a);
            kryo.writeObject(output, this.f10090b);
        }

        public ScriptEnvironment(boolean z) {
            Logger.log("ScriptManager", "ScriptEnvironment created");
            m21497c();
        }

        public Globals getGlobals() {
            m21497c();
            return this.f10089a;
        }

        public LuaExecutionResult loadScript(FileHandle fileHandle) {
            String path;
            if (fileHandle.type() == Files.FileType.Classpath) {
                path = "[CP] " + fileHandle.path();
            } else {
                path = fileHandle.path();
            }
            return executeLua(fileHandle.readString("UTF-8"), path);
        }

        public void triggerEvent(String str, LuaValue luaValue) {
            m21497c();
            DelayedRemovalArray<LuaClosure> delayedRemovalArray = this.f10090b.get(str);
            if (delayedRemovalArray != null) {
                delayedRemovalArray.begin();
                int i = delayedRemovalArray.size;
                for (int i2 = 0; i2 < i; i2++) {
                    try {
                        delayedRemovalArray.items[i2].call(luaValue);
                    } catch (LuaError e) {
                        Logger.error("ScriptManager", "error running script with event '" + str + "'", e);
                    }
                }
                delayedRemovalArray.end();
            }
        }

        public void triggerEvent(String str, LuaValue luaValue, LuaValue luaValue2) {
            m21497c();
            DelayedRemovalArray<LuaClosure> delayedRemovalArray = this.f10090b.get(str);
            if (delayedRemovalArray != null) {
                delayedRemovalArray.begin();
                int i = delayedRemovalArray.size;
                for (int i2 = 0; i2 < i; i2++) {
                    try {
                        delayedRemovalArray.items[i2].call(luaValue, luaValue2);
                    } catch (LuaError e) {
                        Logger.error("ScriptManager", "error running script with event '" + str + "'", e);
                    }
                }
                delayedRemovalArray.end();
            }
        }

        public void triggerEvent(String str, LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
            m21497c();
            DelayedRemovalArray<LuaClosure> delayedRemovalArray = this.f10090b.get(str);
            if (delayedRemovalArray != null) {
                delayedRemovalArray.begin();
                int i = delayedRemovalArray.size;
                for (int i2 = 0; i2 < i; i2++) {
                    try {
                        delayedRemovalArray.items[i2].call(luaValue, luaValue2, luaValue3);
                    } catch (LuaError e) {
                        Logger.error("ScriptManager", "error running script with event '" + str + "'", e);
                    }
                }
                delayedRemovalArray.end();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<ScriptManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public ScriptManager read() {
            return Game.f8589i.scriptManager;
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class luaAddEventHandler extends TwoArgFunction {

        /* renamed from: x */
        public ScriptEnvironment f10092x;

        public luaAddEventHandler() {
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f10092x = (ScriptEnvironment) kryo.readObject(input, ScriptEnvironment.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f10092x);
        }

        public luaAddEventHandler(ScriptEnvironment scriptEnvironment) {
            this.f10092x = scriptEnvironment;
        }

        @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            if (luaValue.isstring()) {
                if (luaValue2 instanceof LuaClosure) {
                    String luaValue3 = luaValue.toString();
                    if (!this.f10092x.f10090b.containsKey(luaValue3)) {
                        this.f10092x.f10090b.put(luaValue3, new DelayedRemovalArray(true, 1, LuaClosure.class));
                    }
                    ((DelayedRemovalArray) this.f10092x.f10090b.get(luaValue3)).add((LuaClosure) luaValue2);
                    return LuaValue.TRUE;
                }
                throw new LuaError("second argument must be a callback function, " + luaValue2.getClass().getSimpleName() + " " + luaValue2.typename() + " given");
            }
            throw new LuaError("first argument must be a string with event name, " + luaValue.typename() + " given");
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class luaGetFields extends OneArgFunction {
        @Override // com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            Class<?> cls;
            try {
                if (luaValue.isuserdata(Class.class)) {
                    cls = (Class) luaValue.checkuserdata(Class.class);
                } else {
                    cls = luaValue.touserdata().getClass();
                }
                return CoerceJavaToLua.coerce(cls.getFields());
            } catch (Exception unused) {
                return CoerceJavaToLua.coerce(new Field[0]);
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class luaGetMethods extends OneArgFunction {
        @Override // com.prineside.luaj.lib.OneArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue) {
            Class<?> cls;
            try {
                if (luaValue.isuserdata(Class.class)) {
                    cls = (Class) luaValue.checkuserdata(Class.class);
                } else {
                    cls = luaValue.touserdata().getClass();
                }
                return CoerceJavaToLua.coerce(cls.getMethods());
            } catch (Exception unused) {
                return CoerceJavaToLua.coerce(new Method[0]);
            }
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class luaRemoveEventHandler extends TwoArgFunction {

        /* renamed from: x */
        public ScriptEnvironment f10093x;

        public luaRemoveEventHandler() {
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f10093x = (ScriptEnvironment) kryo.readObject(input, ScriptEnvironment.class);
        }

        @Override // com.prineside.luaj.lib.LibFunction, com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.f10093x);
        }

        public luaRemoveEventHandler(ScriptEnvironment scriptEnvironment) {
            this.f10093x = scriptEnvironment;
        }

        @Override // com.prineside.luaj.lib.TwoArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            if (luaValue.isstring()) {
                if (luaValue2 instanceof LuaClosure) {
                    String luaValue3 = luaValue.toString();
                    if (!this.f10093x.f10090b.containsKey(luaValue3)) {
                        return LuaValue.FALSE;
                    }
                    ((DelayedRemovalArray) this.f10093x.f10090b.get(luaValue3)).removeValue((LuaClosure) luaValue2, true);
                    return LuaValue.TRUE;
                }
                throw new LuaError("second argument must be a callback function, " + luaValue2.getClass().getSimpleName() + " " + luaValue2.typename() + " given");
            }
            throw new LuaError("first argument must be a string with event name, " + luaValue.typename() + " given");
        }
    }

    public void unregisterInstance(int i) {
        this.globalsInstances.remove(i);
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class luaLog extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            int narg = varargs.narg();
            if (narg == 0) {
                Logger.log("Script", "");
            } else {
                ScriptManager.f10087a.setLength(0);
                for (int i = 1; i <= narg; i++) {
                    if (i != 1) {
                        ScriptManager.f10087a.append(' ');
                    }
                    ScriptManager.f10087a.append(varargs.arg(1).tojstring());
                }
                Logger.log("Script", ScriptManager.f10087a.toString());
            }
            return LuaValue.varargsOf(new LuaValue[]{LuaValue.NIL});
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class luaWarning extends VarArgFunction {
        @Override // com.prineside.luaj.lib.VarArgFunction, com.prineside.luaj.lib.LibFunction, com.prineside.luaj.LuaValue
        public Varargs invoke(Varargs varargs) {
            if (varargs.narg() > 0) {
                Logger.error("Script", varargs.arg(1).tojstring());
            }
            return LuaValue.varargsOf(new LuaValue[]{LuaValue.NIL});
        }
    }

    public void registerInstance(int i, Globals globals) {
        if (!this.globalsInstances.containsKey(i)) {
            this.globalsInstances.put(i, globals);
            return;
        }
        throw new IllegalArgumentException("instance " + i + " is already registered");
    }

    public final void reload() {
        ScriptEnvironment scriptEnvironment = this.global;
        if (scriptEnvironment != null) {
            unregisterInstance(scriptEnvironment.f10089a.instanceId);
        }
        ScriptEnvironment scriptEnvironment2 = new ScriptEnvironment(true);
        this.global = scriptEnvironment2;
        scriptEnvironment2.loadScript(Gdx.files.external("scripts/utils/global_commands.lua"));
    }

    public int getFreeInstanceId() {
        int random = (int) (Math.random() * 1.0E9d);
        if (!this.globalsInstances.containsKey(random)) {
            return random;
        }
        return getFreeInstanceId();
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        reload();
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.ScriptManager.1
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                ScriptManager.this.reload();
            }
        });
    }
}
