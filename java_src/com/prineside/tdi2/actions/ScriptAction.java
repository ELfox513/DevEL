package com.prineside.tdi2.actions;

import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonValue;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.enums.ActionType;
import com.prineside.tdi2.utils.REGS;
import p168r4.C6226s;
@REGS
/* loaded from: classes2.dex */
public class ScriptAction extends Action {
    public String script;

    public ScriptAction() {
    }

    @Override // com.prineside.tdi2.Action
    public ActionType getType() {
        return ActionType.S;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.script = input.readString();
    }

    @Override // com.prineside.tdi2.Action
    public void toJson(Json json) {
        json.writeValue(C6226s.f31189J, this.script);
    }

    public String toString() {
        return "Script " + this.script;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        output.writeString(this.script);
    }

    public ScriptAction(String str) {
        this.script = str;
    }

    public ScriptAction(JsonValue jsonValue) {
        this(jsonValue.getString(C6226s.f31189J));
    }
}
