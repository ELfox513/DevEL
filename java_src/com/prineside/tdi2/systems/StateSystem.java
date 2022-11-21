package com.prineside.tdi2.systems;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntMap;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Action;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.managers.ReplayManager;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
/* loaded from: classes2.dex */
public class StateSystem extends GameSystem {
    @NAGS

    /* renamed from: b */
    public int f11801b;
    @NAGS
    public StateSystem duplicateActionsTo;
    @NAGS
    public long replayFrameCount;
    @NAGS
    public boolean replayMode;
    @NAGS
    public ReplayManager.ReplayRecord replayRecord;
    public int updateNumber;
    @NAGS
    public boolean updateRequired;
    @NAGS

    /* renamed from: a */
    public boolean f11800a = false;
    @NAGS
    public boolean inUpdateStage = false;

    /* renamed from: d */
    public IntMap<ActionsArray> f11802d = new IntMap<>();

    /* renamed from: k */
    public Array<ActionUpdatePair> f11803k = new Array<>(ActionUpdatePair.class);

    @REGS
    /* loaded from: classes2.dex */
    public static class ActionUpdatePair implements KryoSerializable {
        public Action action;
        public int update;

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.action);
            output.writeVarInt(this.update, true);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.action = (Action) kryo.readClassAndObject(input);
            this.update = input.readVarInt(true);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class ActionsArray implements KryoSerializable {
        public Action[] actions = new Action[1];
        public int size;

        /* renamed from: a */
        public final void m20885a() {
            int i = this.size;
            Action[] actionArr = new Action[i + i];
            System.arraycopy(this.actions, 0, actionArr, 0, i);
            this.actions = actionArr;
        }

        public void add(Action action) {
            if (this.size == this.actions.length) {
                m20885a();
            }
            Action[] actionArr = this.actions;
            int i = this.size;
            this.size = i + 1;
            actionArr[i] = action;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.actions = (Action[]) kryo.readObject(input, Action[].class);
            this.size = input.readVarInt(true);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObject(output, this.actions);
            output.writeVarInt(this.size, true);
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    public boolean canSkipMediaUpdate() {
        return this.f11800a && this.f11801b - this.updateNumber > 60;
    }

    public int getFastForwardUpdateNumber() {
        return this.f11801b;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "State";
    }

    public boolean isFastForwarding() {
        return this.f11800a;
    }

    public void pushAction(Action action) {
        pushAction(action, this.updateNumber + 1);
    }

    public void requireUpdate() {
        this.updateRequired = true;
    }

    public void startFastForwarding(int i) {
        this.f11800a = true;
        this.f11801b = i;
    }

    public void checkGameplayUpdateAllowed() {
        if (this.inUpdateStage) {
            return;
        }
        throw new IllegalStateException("Game updates are not allowed now");
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f11802d.clear();
        this.f11803k.clear();
        this.replayRecord = null;
        this.duplicateActionsTo = null;
        super.dispose();
    }

    public void pushAction(Action action, int i) {
        if (GameSystemProvider.DEBUG) {
            Logger.log("StateSystem", "pushAction " + action + " " + i);
        }
        if (this.replayMode) {
            return;
        }
        if (!this.f11802d.containsKey(i)) {
            this.f11802d.put(i, new ActionsArray());
        }
        this.f11802d.get(i).add(action);
        ActionUpdatePair actionUpdatePair = new ActionUpdatePair();
        actionUpdatePair.action = action;
        actionUpdatePair.update = i;
        this.f11803k.add(actionUpdatePair);
        this.updateRequired = true;
        StateSystem stateSystem = this.duplicateActionsTo;
        if (stateSystem != null) {
            stateSystem.pushAction(action, i);
        }
    }

    public void stopFastForwarding() {
        if (this.f11800a) {
            Logger.log("StateSystem", "stopped fast forwarding on frame " + this.updateNumber + " / " + this.f11801b);
            this.f11800a = false;
        }
    }

    public ActionsArray getCurrentUpdateActions() {
        checkGameplayUpdateAllowed();
        return this.f11802d.get(this.updateNumber);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.updateNumber = input.readInt();
        this.f11802d = (IntMap) kryo.readObject(input, IntMap.class);
        this.f11803k = (Array) kryo.readObject(input, Array.class);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeInt(this.updateNumber);
        kryo.writeObject(output, this.f11802d);
        kryo.writeObject(output, this.f11803k);
    }
}
