package com.prineside.luaj;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.StringBuilder;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.luaj.LuaValue;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import java.lang.ref.WeakReference;
import java.util.Vector;
@REGS
/* loaded from: classes2.dex */
public class LuaTable extends LuaValue implements Metatable, KryoSerializable {

    /* renamed from: u */
    public LuaValue[] f7981u;

    /* renamed from: w */
    public Slot[] f7982w;

    /* renamed from: x */
    public int f7983x;

    /* renamed from: y */
    public Metatable f7984y;

    /* renamed from: z */
    public static final LuaString f7980z = LuaValue.valueOf("n");
    public static PMath.ClassComparator CLASS_COMPARATOR = new PMath.ClassComparator<LuaTable>() { // from class: com.prineside.luaj.LuaTable.1
        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public /* bridge */ /* synthetic */ void compare(LuaTable luaTable, LuaTable luaTable2, StringBuilder stringBuilder, Array array, int i, IntIntMap intIntMap, boolean z) {
            compare2(luaTable, luaTable2, stringBuilder, (Array<String>) array, i, intIntMap, z);
        }

        @Override // com.prineside.tdi2.utils.PMath.ClassComparator
        public Class<LuaTable> forClass() {
            return LuaTable.class;
        }

        /* renamed from: compare  reason: avoid collision after fix types in other method */
        public void compare2(LuaTable luaTable, LuaTable luaTable2, StringBuilder stringBuilder, Array<String> array, int i, IntIntMap intIntMap, boolean z) {
            if (luaTable.get("_noSyncCheck") == LuaValue.TRUE) {
                return;
            }
            LuaValue luaValue = LuaValue.NIL;
            while (true) {
                Varargs next = luaTable.next(luaValue);
                LuaValue arg1 = next.arg1();
                if (arg1.isnil()) {
                    return;
                }
                LuaValue arg = next.arg(2);
                array.add(".");
                array.add(arg1.toString());
                PMath.compareObjects(arg, luaTable2.get(arg1), stringBuilder, array, i - 1, intIntMap, z);
                array.pop();
                array.pop();
                luaValue = arg1;
            }
        }
    };

    /* renamed from: A */
    public static final Slot[] f7979A = new Slot[0];

    @REGS
    /* loaded from: classes2.dex */
    public static class DeadSlot implements Slot, KryoSerializable {

        /* renamed from: a */
        public Object f7985a;

        /* renamed from: b */
        public Slot f7986b;

        public DeadSlot() {
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot add(Slot slot) {
            Slot slot2 = this.f7986b;
            return slot2 != null ? slot2.add(slot) : slot;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public int arraykey(int i) {
            return -1;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public StrongSlot find(LuaValue luaValue) {
            return null;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public StrongSlot first() {
            return null;
        }

        public final LuaValue key() {
            Object obj = this.f7985a;
            if (obj instanceof WeakReference) {
                obj = ((WeakReference) obj).get();
            }
            return (LuaValue) obj;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public int keyindex(int i) {
            return 0;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot relink(Slot slot) {
            return slot;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot rest() {
            return this.f7986b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.ref.WeakReference] */
        public DeadSlot(LuaValue luaValue, Slot slot) {
            this.f7985a = LuaTable.m22803E(luaValue) ? new WeakReference(luaValue) : luaValue;
            this.f7986b = slot;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot set(StrongSlot strongSlot, LuaValue luaValue) {
            Slot slot;
            Slot slot2 = this.f7986b;
            if (slot2 != null) {
                slot = slot2.set(strongSlot, luaValue);
            } else {
                slot = null;
            }
            if (key() != null) {
                this.f7986b = slot;
                return this;
            }
            return slot;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("<dead");
            LuaValue key = key();
            if (key != null) {
                stringBuffer.append(": ");
                stringBuffer.append(key.toString());
            }
            stringBuffer.append('>');
            if (this.f7986b != null) {
                stringBuffer.append("; ");
                stringBuffer.append(this.f7986b.toString());
            }
            return stringBuffer.toString();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.f7985a);
            kryo.writeClassAndObject(output, this.f7986b);
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public boolean keyeq(LuaValue luaValue) {
            LuaValue key = key();
            if (key != null && luaValue.raweq(key)) {
                return true;
            }
            return false;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f7985a = kryo.readClassAndObject(input);
            this.f7986b = (Slot) kryo.readClassAndObject(input);
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot remove(StrongSlot strongSlot) {
            if (key() != null) {
                this.f7986b = this.f7986b.remove(strongSlot);
                return this;
            }
            return this.f7986b;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class Entry extends Varargs implements StrongSlot {
        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot add(Slot slot) {
            return new LinkSlot(this, slot);
        }

        @Override // com.prineside.luaj.Varargs
        public LuaValue arg(int i) {
            if (i != 1) {
                if (i != 2) {
                    return LuaValue.NIL;
                }
                return value();
            }
            return key();
        }

        @Override // com.prineside.luaj.Varargs
        public LuaValue arg1() {
            return key();
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public int arraykey(int i) {
            return 0;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public StrongSlot find(LuaValue luaValue) {
            if (keyeq(luaValue)) {
                return this;
            }
            return null;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public StrongSlot first() {
            return this;
        }

        @Override // com.prineside.luaj.LuaTable.StrongSlot
        public abstract LuaValue key();

        @Override // com.prineside.luaj.LuaTable.Slot
        public abstract boolean keyeq(LuaValue luaValue);

        @Override // com.prineside.luaj.LuaTable.Slot
        public abstract int keyindex(int i);

        @Override // com.prineside.luaj.Varargs
        public int narg() {
            return 2;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot relink(Slot slot) {
            return slot != null ? new LinkSlot(this, slot) : this;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot remove(StrongSlot strongSlot) {
            return new DeadSlot(key(), null);
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot rest() {
            return null;
        }

        public abstract Entry set(LuaValue luaValue);

        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot set(StrongSlot strongSlot, LuaValue luaValue) {
            return set(luaValue);
        }

        @Override // com.prineside.luaj.Varargs
        public Varargs subargs(int i) {
            if (i != 1) {
                if (i != 2) {
                    return LuaValue.NONE;
                }
                return value();
            }
            return this;
        }

        @Override // com.prineside.luaj.LuaTable.StrongSlot
        public Varargs toVarargs() {
            return LuaValue.varargsOf(key(), value());
        }

        @Override // com.prineside.luaj.LuaTable.StrongSlot
        public abstract LuaValue value();
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class IntKeyEntry extends Entry implements KryoSerializable {

        /* renamed from: a */
        public int f7987a;

        /* renamed from: b */
        public LuaValue f7988b;

        public IntKeyEntry() {
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot add(Slot slot) {
            return super.add(slot);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.Varargs
        public /* bridge */ /* synthetic */ LuaValue arg(int i) {
            return super.arg(i);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.Varargs
        public /* bridge */ /* synthetic */ LuaValue arg1() {
            return super.arg1();
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public int arraykey(int i) {
            int i2 = this.f7987a;
            if (i2 < 1 || i2 > i) {
                return 0;
            }
            return i2;
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ StrongSlot find(LuaValue luaValue) {
            return super.find(luaValue);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ StrongSlot first() {
            return super.first();
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.StrongSlot
        public LuaValue key() {
            return LuaValue.valueOf(this.f7987a);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public boolean keyeq(LuaValue luaValue) {
            return luaValue.raweq(this.f7987a);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public int keyindex(int i) {
            return LuaTable.hashmod(LuaInteger.hashCode(this.f7987a), i);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.Varargs
        public /* bridge */ /* synthetic */ int narg() {
            return super.narg();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f7987a = input.readVarInt(false);
            this.f7988b = (LuaValue) kryo.readClassAndObject(input);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot relink(Slot slot) {
            return super.relink(slot);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot remove(StrongSlot strongSlot) {
            return super.remove(strongSlot);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot rest() {
            return super.rest();
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot set(StrongSlot strongSlot, LuaValue luaValue) {
            return super.set(strongSlot, luaValue);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.Varargs
        public /* bridge */ /* synthetic */ Varargs subargs(int i) {
            return super.subargs(i);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.StrongSlot
        public /* bridge */ /* synthetic */ Varargs toVarargs() {
            return super.toVarargs();
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.StrongSlot
        public LuaValue value() {
            return this.f7988b;
        }

        public IntKeyEntry(int i, LuaValue luaValue) {
            this.f7987a = i;
            this.f7988b = luaValue;
        }

        @Override // com.prineside.luaj.LuaTable.Entry
        public Entry set(LuaValue luaValue) {
            this.f7988b = luaValue;
            return this;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeVarInt(this.f7987a, false);
            kryo.writeClassAndObject(output, this.f7988b);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class LinkSlot implements StrongSlot, KryoSerializable {

        /* renamed from: a */
        public Entry f7989a;

        /* renamed from: b */
        public Slot f7990b;

        public LinkSlot() {
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot add(Slot slot) {
            return m22788a(this.f7990b.add(slot));
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public int arraykey(int i) {
            return this.f7989a.arraykey(i);
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public StrongSlot find(LuaValue luaValue) {
            if (this.f7989a.keyeq(luaValue)) {
                return this;
            }
            return null;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public StrongSlot first() {
            return this.f7989a;
        }

        @Override // com.prineside.luaj.LuaTable.StrongSlot
        public LuaValue key() {
            return this.f7989a.key();
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public boolean keyeq(LuaValue luaValue) {
            return this.f7989a.keyeq(luaValue);
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public int keyindex(int i) {
            return this.f7989a.keyindex(i);
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot relink(Slot slot) {
            return slot != null ? new LinkSlot(this.f7989a, slot) : this.f7989a;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot rest() {
            return this.f7990b;
        }

        public String toString() {
            return this.f7989a + "; " + this.f7990b;
        }

        @Override // com.prineside.luaj.LuaTable.StrongSlot
        public Varargs toVarargs() {
            return this.f7989a.toVarargs();
        }

        @Override // com.prineside.luaj.LuaTable.StrongSlot
        public LuaValue value() {
            return this.f7989a.value();
        }

        public LinkSlot(Entry entry, Slot slot) {
            this.f7989a = entry;
            this.f7990b = slot;
        }

        /* renamed from: a */
        public final Slot m22788a(Slot slot) {
            if (slot != null) {
                this.f7990b = slot;
                return this;
            }
            return this.f7989a;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot remove(StrongSlot strongSlot) {
            if (this == strongSlot) {
                return new DeadSlot(key(), this.f7990b);
            }
            this.f7990b = this.f7990b.remove(strongSlot);
            return this;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public Slot set(StrongSlot strongSlot, LuaValue luaValue) {
            if (strongSlot == this) {
                this.f7989a = this.f7989a.set(luaValue);
                return this;
            }
            return m22788a(this.f7990b.set(strongSlot, luaValue));
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeClassAndObject(output, this.f7989a);
            kryo.writeClassAndObject(output, this.f7990b);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f7989a = (Entry) kryo.readClassAndObject(input);
            this.f7990b = (Slot) kryo.readClassAndObject(input);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class NormalEntry extends Entry implements KryoSerializable {

        /* renamed from: a */
        public LuaValue f7991a;

        /* renamed from: b */
        public LuaValue f7992b;

        public NormalEntry() {
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot add(Slot slot) {
            return super.add(slot);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.Varargs
        public /* bridge */ /* synthetic */ LuaValue arg(int i) {
            return super.arg(i);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.Varargs
        public /* bridge */ /* synthetic */ LuaValue arg1() {
            return super.arg1();
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ int arraykey(int i) {
            return super.arraykey(i);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ StrongSlot find(LuaValue luaValue) {
            return super.find(luaValue);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ StrongSlot first() {
            return super.first();
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.StrongSlot
        public LuaValue key() {
            return this.f7991a;
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public boolean keyeq(LuaValue luaValue) {
            return luaValue.raweq(this.f7991a);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public int keyindex(int i) {
            return LuaTable.hashSlot(this.f7991a, i);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.Varargs
        public /* bridge */ /* synthetic */ int narg() {
            return super.narg();
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot relink(Slot slot) {
            return super.relink(slot);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot remove(StrongSlot strongSlot) {
            return super.remove(strongSlot);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot rest() {
            return super.rest();
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot set(StrongSlot strongSlot, LuaValue luaValue) {
            return super.set(strongSlot, luaValue);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.Varargs
        public /* bridge */ /* synthetic */ Varargs subargs(int i) {
            return super.subargs(i);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.StrongSlot
        public Varargs toVarargs() {
            return this;
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.StrongSlot
        public LuaValue value() {
            return this.f7992b;
        }

        public NormalEntry(LuaValue luaValue, LuaValue luaValue2) {
            this.f7991a = luaValue;
            this.f7992b = luaValue2;
        }

        @Override // com.prineside.luaj.LuaTable.Entry
        public Entry set(LuaValue luaValue) {
            this.f7992b = luaValue;
            return this;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            LuaValue.NillableSerializer nillableSerializer = LuaValue.NILLABLE_SERIALIZER;
            nillableSerializer.writeClassAndObject(kryo, output, this.f7991a);
            nillableSerializer.writeClassAndObject(kryo, output, this.f7992b);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f7991a = (LuaValue) kryo.readClassAndObject(input);
            this.f7992b = (LuaValue) kryo.readClassAndObject(input);
        }
    }

    @REGS
    /* loaded from: classes2.dex */
    public static class NumberValueEntry extends Entry implements KryoSerializable {

        /* renamed from: a */
        public double f7993a;

        /* renamed from: b */
        public LuaValue f7994b;

        public NumberValueEntry() {
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot add(Slot slot) {
            return super.add(slot);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.Varargs
        public /* bridge */ /* synthetic */ LuaValue arg(int i) {
            return super.arg(i);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.Varargs
        public /* bridge */ /* synthetic */ LuaValue arg1() {
            return super.arg1();
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ int arraykey(int i) {
            return super.arraykey(i);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ StrongSlot find(LuaValue luaValue) {
            return super.find(luaValue);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ StrongSlot first() {
            return super.first();
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.StrongSlot
        public LuaValue key() {
            return this.f7994b;
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public boolean keyeq(LuaValue luaValue) {
            return luaValue.raweq(this.f7994b);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public int keyindex(int i) {
            return LuaTable.hashSlot(this.f7994b, i);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.Varargs
        public /* bridge */ /* synthetic */ int narg() {
            return super.narg();
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot relink(Slot slot) {
            return super.relink(slot);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot remove(StrongSlot strongSlot) {
            return super.remove(strongSlot);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot rest() {
            return super.rest();
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.Slot
        public /* bridge */ /* synthetic */ Slot set(StrongSlot strongSlot, LuaValue luaValue) {
            return super.set(strongSlot, luaValue);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.Varargs
        public /* bridge */ /* synthetic */ Varargs subargs(int i) {
            return super.subargs(i);
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.StrongSlot
        public /* bridge */ /* synthetic */ Varargs toVarargs() {
            return super.toVarargs();
        }

        @Override // com.prineside.luaj.LuaTable.Entry, com.prineside.luaj.LuaTable.StrongSlot
        public LuaValue value() {
            return LuaValue.valueOf(this.f7993a);
        }

        public NumberValueEntry(LuaValue luaValue, double d) {
            this.f7994b = luaValue;
            this.f7993a = d;
        }

        @Override // com.prineside.luaj.LuaTable.Entry
        public Entry set(LuaValue luaValue) {
            if (luaValue.type() == 3) {
                LuaValue luaValue2 = luaValue.tonumber();
                if (!luaValue2.isnil()) {
                    this.f7993a = luaValue2.todouble();
                    return this;
                }
            }
            return new NormalEntry(this.f7994b, luaValue);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeDouble(this.f7993a);
            LuaValue.NILLABLE_SERIALIZER.writeClassAndObject(kryo, output, this.f7994b);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f7993a = input.readDouble();
            this.f7994b = (LuaValue) kryo.readClassAndObject(input);
        }
    }

    @REGS(arrayLevels = 1, classOnly = true)
    /* loaded from: classes2.dex */
    public interface Slot {
        Slot add(Slot slot);

        int arraykey(int i);

        StrongSlot find(LuaValue luaValue);

        StrongSlot first();

        boolean keyeq(LuaValue luaValue);

        int keyindex(int i);

        Slot relink(Slot slot);

        Slot remove(StrongSlot strongSlot);

        Slot rest();

        Slot set(StrongSlot strongSlot, LuaValue luaValue);
    }

    /* loaded from: classes2.dex */
    public interface StrongSlot extends Slot {
        LuaValue key();

        Varargs toVarargs();

        LuaValue value();
    }

    public LuaTable() {
        this.f7981u = LuaValue.NOVALS;
        this.f7982w = f7979A;
    }

    /* renamed from: F */
    public static int m22802F(int i) {
        int i2;
        int i3 = i - 1;
        if (i3 < 0) {
            return Integer.MIN_VALUE;
        }
        if (((-65536) & i3) != 0) {
            i3 >>>= 16;
            i2 = 16;
        } else {
            i2 = 0;
        }
        if ((65280 & i3) != 0) {
            i2 += 8;
            i3 >>>= 8;
        }
        if ((i3 & 240) != 0) {
            i2 += 4;
            i3 >>>= 4;
        }
        switch (i3) {
            case 0:
                return 0;
            case 1:
                return i2 + 1;
            case 2:
            case 3:
                return i2 + 2;
            case 4:
            case 5:
            case 6:
            case 7:
                return i2 + 3;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return i2 + 4;
            default:
                return i2;
        }
    }

    public static int hashmod(int i, int i2) {
        return (i & Integer.MAX_VALUE) % i2;
    }

    public static int hashpow2(int i, int i2) {
        return i & i2;
    }

    /* renamed from: A */
    public final int m22807A(LuaValue luaValue) {
        return hashSlot(luaValue, this.f7982w.length - 1);
    }

    @Override // com.prineside.luaj.Metatable
    public LuaValue arrayget(LuaValue[] luaValueArr, int i) {
        return luaValueArr[i];
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaTable checktable() {
        return this;
    }

    @Override // com.prineside.luaj.Metatable
    public Slot entry(LuaValue luaValue, LuaValue luaValue2) {
        return m22793v(luaValue, luaValue2);
    }

    @Override // com.prineside.luaj.LuaValue
    /* renamed from: eq */
    public LuaValue mo22783eq(LuaValue luaValue) {
        return eq_b(luaValue) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean eq_b(LuaValue luaValue) {
        LuaValue luaValue2;
        if (this == luaValue) {
            return true;
        }
        return this.f7984y != null && luaValue.istable() && (luaValue2 = luaValue.getmetatable()) != null && LuaValue.eqmtcall(this, this.f7984y.toLuaValue(), luaValue, luaValue2);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue get(int i) {
        LuaValue rawget = rawget(i);
        return (!rawget.isnil() || this.f7984y == null) ? rawget : LuaValue.m22775j(this, LuaValue.valueOf(i));
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue getmetatable() {
        Metatable metatable = this.f7984y;
        if (metatable != null) {
            return metatable.toLuaValue();
        }
        return null;
    }

    @Override // com.prineside.luaj.LuaValue
    public boolean istable() {
        return true;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaTable opttable(LuaTable luaTable) {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public void presize(int i) {
        LuaValue[] luaValueArr = this.f7981u;
        if (i > luaValueArr.length) {
            this.f7981u = m22800H(luaValueArr, 1 << m22802F(i));
        }
    }

    /* renamed from: r */
    public final boolean m22797r() {
        return this.f7983x >= this.f7982w.length;
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue rawget(int i) {
        if (i > 0) {
            LuaValue[] luaValueArr = this.f7981u;
            if (i <= luaValueArr.length) {
                Metatable metatable = this.f7984y;
                int i2 = i - 1;
                LuaValue arrayget = metatable == null ? luaValueArr[i2] : metatable.arrayget(luaValueArr, i2);
                return arrayget != null ? arrayget : LuaValue.NIL;
            }
        }
        return m22806B(LuaInteger.valueOf(i));
    }

    @Override // com.prineside.luaj.LuaValue
    public void rawset(int i, LuaValue luaValue) {
        if (m22798q(i, luaValue)) {
            return;
        }
        hashset(LuaInteger.valueOf(i), luaValue);
    }

    @Override // com.prineside.luaj.LuaValue
    public void set(int i, LuaValue luaValue) {
        if (this.f7984y != null && rawget(i).isnil() && LuaValue.m22768n(this, LuaInteger.valueOf(i), luaValue)) {
            return;
        }
        rawset(i, luaValue);
    }

    /* renamed from: t */
    public final int m22795t() {
        int i = 0;
        int i2 = 0;
        while (true) {
            Slot[] slotArr = this.f7982w;
            if (i < slotArr.length) {
                for (Slot slot = slotArr[i]; slot != null; slot = slot.rest()) {
                    if (slot.first() != null) {
                        i2++;
                    }
                }
                i++;
            } else {
                return i2;
            }
        }
    }

    @Override // com.prineside.luaj.Metatable
    public LuaValue toLuaValue() {
        return this;
    }

    @Override // com.prineside.luaj.LuaValue
    public int type() {
        return 5;
    }

    @Override // com.prineside.luaj.LuaValue
    public String typename() {
        return "table";
    }

    /* renamed from: u */
    public final int m22794u(int[] iArr) {
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        for (int i4 = 0; i4 < 31; i4++) {
            LuaValue[] luaValueArr = this.f7981u;
            if (i2 > luaValueArr.length) {
                break;
            }
            int min = Math.min(luaValueArr.length, 1 << i4);
            int i5 = 0;
            while (i2 <= min) {
                int i6 = i2 + 1;
                if (this.f7981u[i2 - 1] != null) {
                    i5++;
                }
                i2 = i6;
            }
            iArr[i4] = i5;
            i3 += i5;
        }
        while (true) {
            Slot[] slotArr = this.f7982w;
            if (i < slotArr.length) {
                for (Slot slot = slotArr[i]; slot != null; slot = slot.rest()) {
                    int arraykey = slot.arraykey(Integer.MAX_VALUE);
                    if (arraykey > 0) {
                        int m22802F = m22802F(arraykey);
                        iArr[m22802F] = iArr[m22802F] + 1;
                        i3++;
                    }
                }
                i++;
            } else {
                return i3;
            }
        }
    }

    public Varargs unpack() {
        return unpack(1, rawlen());
    }

    @Override // com.prineside.luaj.Metatable
    public boolean useWeakKeys() {
        return false;
    }

    @Override // com.prineside.luaj.Metatable
    public boolean useWeakValues() {
        return false;
    }

    /* renamed from: w */
    public final void m22792w() {
        int i = 0;
        while (true) {
            LuaValue[] luaValueArr = this.f7981u;
            if (i < luaValueArr.length) {
                this.f7984y.arrayget(luaValueArr, i);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.prineside.luaj.Metatable
    public LuaValue wrap(LuaValue luaValue) {
        return luaValue;
    }

    /* renamed from: x */
    public int m22791x() {
        return this.f7981u.length;
    }

    /* renamed from: y */
    public int m22790y() {
        return this.f7982w.length;
    }

    /* renamed from: H */
    public static LuaValue[] m22800H(LuaValue[] luaValueArr, int i) {
        LuaValue[] luaValueArr2 = new LuaValue[i];
        System.arraycopy(luaValueArr, 0, luaValueArr2, 0, luaValueArr.length);
        return luaValueArr2;
    }

    /* renamed from: B */
    public LuaValue m22806B(LuaValue luaValue) {
        if (this.f7983x > 0) {
            for (Slot slot = this.f7982w[m22807A(luaValue)]; slot != null; slot = slot.rest()) {
                StrongSlot find = slot.find(luaValue);
                if (find != null) {
                    return find.value();
                }
            }
        }
        return LuaValue.NIL;
    }

    /* renamed from: D */
    public final void m22804D(int i, LuaValue luaValue) {
        for (int i2 = i / 2; i2 > 0; i2--) {
            m22799I(i2, i, luaValue);
        }
    }

    /* renamed from: G */
    public final void m22801G(int i) {
        int i2;
        int i3;
        LuaValue[] luaValueArr;
        int i4;
        Slot[] slotArr;
        int i5;
        Slot m22793v;
        Metatable metatable = this.f7984y;
        if (metatable != null && (metatable.useWeakKeys() || this.f7984y.useWeakValues())) {
            this.f7983x = m22795t();
            if (this.f7984y.useWeakValues()) {
                m22792w();
            }
        }
        int[] iArr = new int[32];
        int m22794u = m22794u(iArr);
        if (i > 0) {
            m22794u++;
            int m22802F = m22802F(i);
            iArr[m22802F] = iArr[m22802F] + 1;
        }
        int i6 = iArr[0];
        int i7 = 1;
        int i8 = 0;
        while (true) {
            i2 = 2;
            if (i7 >= 32) {
                break;
            }
            i6 += iArr[i7];
            int i9 = 1 << i7;
            if (m22794u * 2 < i9) {
                break;
            }
            if (i6 >= (1 << (i7 - 1))) {
                i8 = i9;
            }
            i7++;
        }
        LuaValue[] luaValueArr2 = this.f7981u;
        Slot[] slotArr2 = this.f7982w;
        if (i > 0 && i <= i8) {
            i3 = -1;
        } else {
            i3 = 0;
        }
        if (i8 != luaValueArr2.length) {
            luaValueArr = new LuaValue[i8];
            if (i8 > luaValueArr2.length) {
                int m22802F2 = m22802F(i8) + 1;
                for (int m22802F3 = m22802F(luaValueArr2.length + 1); m22802F3 < m22802F2; m22802F3++) {
                    i3 += iArr[m22802F3];
                }
            } else if (luaValueArr2.length > i8) {
                int m22802F4 = m22802F(luaValueArr2.length) + 1;
                for (int m22802F5 = m22802F(i8 + 1); m22802F5 < m22802F4; m22802F5++) {
                    i3 -= iArr[m22802F5];
                }
            }
            System.arraycopy(luaValueArr2, 0, luaValueArr, 0, Math.min(luaValueArr2.length, i8));
        } else {
            luaValueArr = luaValueArr2;
        }
        int i10 = this.f7983x - i3;
        if (i >= 0 && i <= i8) {
            i4 = 0;
        } else {
            i4 = 1;
        }
        int i11 = i10 + i4;
        if (i11 > 0) {
            if (i11 >= 2) {
                i2 = 1 << m22802F(i11);
            }
            i5 = i2 - 1;
            slotArr = new Slot[i2];
        } else {
            slotArr = f7979A;
            i5 = 0;
        }
        for (Slot slot : slotArr2) {
            for (; slot != null; slot = slot.rest()) {
                int arraykey = slot.arraykey(i8);
                if (arraykey > 0) {
                    StrongSlot first = slot.first();
                    if (first != null) {
                        luaValueArr[arraykey - 1] = first.value();
                    }
                } else if (!(slot instanceof DeadSlot)) {
                    int keyindex = slot.keyindex(i5);
                    slotArr[keyindex] = slot.relink(slotArr[keyindex]);
                }
            }
        }
        while (i8 < luaValueArr2.length) {
            int i12 = i8 + 1;
            LuaValue luaValue = luaValueArr2[i8];
            if (luaValue != null) {
                int hashmod = hashmod(LuaInteger.hashCode(i12), i5);
                Metatable metatable2 = this.f7984y;
                if (metatable2 != null) {
                    m22793v = metatable2.entry(LuaValue.valueOf(i12), luaValue);
                    if (m22793v == null) {
                    }
                } else {
                    m22793v = m22793v(LuaValue.valueOf(i12), luaValue);
                }
                Slot slot2 = slotArr[hashmod];
                if (slot2 != null) {
                    m22793v = slot2.add(m22793v);
                }
                slotArr[hashmod] = m22793v;
            }
            i8 = i12;
        }
        this.f7982w = slotArr;
        this.f7981u = luaValueArr;
        this.f7983x -= i3;
    }

    /* renamed from: I */
    public final void m22799I(int i, int i2, LuaValue luaValue) {
        while (true) {
            int i3 = i * 2;
            if (i3 <= i2) {
                if (i3 < i2) {
                    int i4 = i3 + 1;
                    if (m22796s(i3, i4, luaValue)) {
                        i3 = i4;
                    }
                }
                if (m22796s(i, i3, luaValue)) {
                    LuaValue luaValue2 = get(i);
                    set(i, get(i3));
                    set(i3, luaValue2);
                    i = i3;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public LuaValue concat(LuaString luaString, int i, int i2) {
        Buffer buffer = new Buffer();
        if (i <= i2) {
            buffer.append(get(i).checkstring());
            while (true) {
                i++;
                if (i > i2) {
                    break;
                }
                buffer.append(luaString);
                buffer.append(get(i).checkstring());
            }
        }
        return buffer.tostring();
    }

    public void insert(int i, LuaValue luaValue) {
        if (i == 0) {
            i = length() + 1;
        }
        while (!luaValue.isnil()) {
            LuaValue luaValue2 = get(i);
            set(i, luaValue);
            luaValue = luaValue2;
            i++;
        }
    }

    public int keyCount() {
        LuaValue luaValue = LuaValue.NIL;
        int i = 0;
        while (true) {
            luaValue = next(luaValue).arg1();
            if (luaValue.isnil()) {
                return i;
            }
            i++;
        }
    }

    public LuaValue[] keys() {
        Vector vector = new Vector();
        LuaValue luaValue = LuaValue.NIL;
        while (true) {
            luaValue = next(luaValue).arg1();
            if (luaValue.isnil()) {
                LuaValue[] luaValueArr = new LuaValue[vector.size()];
                vector.copyInto(luaValueArr);
                return luaValueArr;
            }
            vector.addElement(luaValue);
        }
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue len() {
        LuaValue metatag = metatag(LuaValue.LEN);
        if (metatag.toboolean()) {
            return metatag.call(this);
        }
        return LuaInteger.valueOf(rawlen());
    }

    @Override // com.prineside.luaj.LuaValue
    public int length() {
        if (this.f7984y != null) {
            LuaValue len = len();
            if (len.isint()) {
                return len.toint();
            }
            throw new LuaError("table length is not an integer: " + len);
        }
        return rawlen();
    }

    /* renamed from: q */
    public final boolean m22798q(int i, LuaValue luaValue) {
        if (i > 0) {
            LuaValue[] luaValueArr = this.f7981u;
            if (i <= luaValueArr.length) {
                int i2 = i - 1;
                if (luaValue.isnil()) {
                    luaValue = null;
                } else {
                    Metatable metatable = this.f7984y;
                    if (metatable != null) {
                        luaValue = metatable.wrap(luaValue);
                    }
                }
                luaValueArr[i2] = luaValue;
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x003b, code lost:
        if (r3 != ((r5 == null || !r5.useWeakValues()) ? false : false)) goto L25;
     */
    @Override // com.prineside.luaj.LuaValue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.prineside.luaj.LuaValue setmetatable(com.prineside.luaj.LuaValue r5) {
        /*
            r4 = this;
            com.prineside.luaj.Metatable r0 = r4.f7984y
            r1 = 1
            r2 = 0
            if (r0 == 0) goto Le
            boolean r0 = r0.useWeakKeys()
            if (r0 == 0) goto Le
            r0 = 1
            goto Lf
        Le:
            r0 = 0
        Lf:
            com.prineside.luaj.Metatable r3 = r4.f7984y
            if (r3 == 0) goto L1b
            boolean r3 = r3.useWeakValues()
            if (r3 == 0) goto L1b
            r3 = 1
            goto L1c
        L1b:
            r3 = 0
        L1c:
            com.prineside.luaj.Metatable r5 = com.prineside.luaj.LuaValue.m22769m(r5)
            r4.f7984y = r5
            if (r5 == 0) goto L2c
            boolean r5 = r5.useWeakKeys()
            if (r5 == 0) goto L2c
            r5 = 1
            goto L2d
        L2c:
            r5 = 0
        L2d:
            if (r0 != r5) goto L3d
            com.prineside.luaj.Metatable r5 = r4.f7984y
            if (r5 == 0) goto L3a
            boolean r5 = r5.useWeakValues()
            if (r5 == 0) goto L3a
            goto L3b
        L3a:
            r1 = 0
        L3b:
            if (r3 == r1) goto L40
        L3d:
            r4.m22801G(r2)
        L40:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.luaj.LuaTable.setmetatable(com.prineside.luaj.LuaValue):com.prineside.luaj.LuaValue");
    }

    public Varargs unpack(int i) {
        return unpack(i, rawlen());
    }

    public void write(Kryo kryo, Output output) {
        LuaValue.NILLABLE_SERIALIZER.writeClassAndObject(kryo, output, this.f7981u);
        kryo.writeClassAndObject(output, this.f7982w);
        output.writeInt(this.f7983x);
        kryo.writeClassAndObject(output, this.f7984y);
    }

    /* renamed from: z */
    public final void m22789z(LuaValue luaValue) {
        if (this.f7982w.length > 0) {
            int m22807A = m22807A(luaValue);
            for (Slot slot = this.f7982w[m22807A]; slot != null; slot = slot.rest()) {
                StrongSlot find = slot.find(luaValue);
                if (find != null) {
                    Slot[] slotArr = this.f7982w;
                    slotArr[m22807A] = slotArr[m22807A].remove(find);
                    this.f7983x--;
                    return;
                }
            }
        }
    }

    /* renamed from: E */
    public static boolean m22803E(LuaValue luaValue) {
        int type = luaValue.type();
        if (type == 1 || type == 3) {
            return false;
        }
        if (type == 4 && luaValue.rawlen() <= 32) {
            return false;
        }
        return true;
    }

    public static int hashSlot(LuaValue luaValue, int i) {
        int type = luaValue.type();
        if (type != 2 && type != 3 && type != 5 && type != 7 && type != 8) {
            return hashpow2(luaValue.hashCode(), i);
        }
        return hashmod(luaValue.hashCode(), i);
    }

    /* renamed from: v */
    public static Entry m22793v(LuaValue luaValue, LuaValue luaValue2) {
        if (luaValue.isinttype()) {
            return new IntKeyEntry(luaValue.toint(), luaValue2);
        }
        if (luaValue2.type() == 3) {
            return new NumberValueEntry(luaValue, luaValue2.todouble());
        }
        return new NormalEntry(luaValue, luaValue2);
    }

    /* renamed from: C */
    public final void m22805C(int i, LuaValue luaValue) {
        m22804D(i, luaValue);
        while (i > 1) {
            LuaValue luaValue2 = get(i);
            set(i, get(1));
            set(1, luaValue2);
            i--;
            m22799I(1, i, luaValue);
        }
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue get(LuaValue luaValue) {
        LuaValue rawget = rawget(luaValue);
        return (!rawget.isnil() || this.f7984y == null) ? rawget : LuaValue.m22775j(this, luaValue);
    }

    public void hashset(LuaValue luaValue, LuaValue luaValue2) {
        Slot m22793v;
        if (luaValue2.isnil()) {
            m22789z(luaValue);
            return;
        }
        int i = 0;
        if (this.f7982w.length > 0) {
            i = m22807A(luaValue);
            for (Slot slot = this.f7982w[i]; slot != null; slot = slot.rest()) {
                StrongSlot find = slot.find(luaValue);
                if (find != null) {
                    Slot[] slotArr = this.f7982w;
                    slotArr[i] = slotArr[i].set(find, luaValue2);
                    return;
                }
            }
        }
        if (m22797r()) {
            Metatable metatable = this.f7984y;
            if ((metatable == null || !metatable.useWeakValues()) && luaValue.isinttype() && luaValue.toint() > 0) {
                m22801G(luaValue.toint());
                if (m22798q(luaValue.toint(), luaValue2)) {
                    return;
                }
            } else {
                m22801G(-1);
            }
            i = m22807A(luaValue);
        }
        Metatable metatable2 = this.f7984y;
        if (metatable2 != null) {
            m22793v = metatable2.entry(luaValue, luaValue2);
        } else {
            m22793v = m22793v(luaValue, luaValue2);
        }
        Slot[] slotArr2 = this.f7982w;
        Slot slot2 = slotArr2[i];
        if (slot2 != null) {
            m22793v = slot2.add(m22793v);
        }
        slotArr2[i] = m22793v;
        this.f7983x++;
    }

    @Override // com.prineside.luaj.LuaValue
    public Varargs inext(LuaValue luaValue) {
        int checkint = luaValue.checkint() + 1;
        LuaValue rawget = rawget(checkint);
        if (rawget.isnil()) {
            return LuaValue.NONE;
        }
        return LuaValue.varargsOf(LuaInteger.valueOf(checkint), rawget);
    }

    @Override // com.prineside.luaj.LuaValue
    public Varargs next(LuaValue luaValue) {
        int i;
        int i2 = 0;
        if (!luaValue.isnil()) {
            if (luaValue.isinttype() && (i = luaValue.toint()) > 0 && i <= this.f7981u.length) {
                i2 = i;
            } else {
                if (this.f7982w.length == 0) {
                    LuaValue.error("invalid key to 'next' 1: " + luaValue);
                }
                int m22807A = m22807A(luaValue);
                for (Slot slot = this.f7982w[m22807A]; slot != null; slot = slot.rest()) {
                    if (i2 != 0) {
                        StrongSlot first = slot.first();
                        if (first != null) {
                            return first.toVarargs();
                        }
                    } else if (slot.keyeq(luaValue)) {
                        i2 = 1;
                    }
                }
                if (i2 == 0) {
                    LuaValue.error("invalid key to 'next' 2: " + luaValue);
                }
                i2 = m22807A + this.f7981u.length + 1;
            }
        }
        while (true) {
            LuaValue[] luaValueArr = this.f7981u;
            if (i2 < luaValueArr.length) {
                LuaValue luaValue2 = luaValueArr[i2];
                if (luaValue2 != null) {
                    Metatable metatable = this.f7984y;
                    if (metatable != null) {
                        luaValue2 = metatable.arrayget(luaValueArr, i2);
                    }
                    if (luaValue2 != null) {
                        return LuaValue.varargsOf(LuaInteger.valueOf(i2 + 1), luaValue2);
                    }
                }
                i2++;
            } else {
                int length = i2 - luaValueArr.length;
                while (true) {
                    Slot[] slotArr = this.f7982w;
                    if (length < slotArr.length) {
                        for (Slot slot2 = slotArr[length]; slot2 != null; slot2 = slot2.rest()) {
                            StrongSlot first2 = slot2.first();
                            if (first2 != null) {
                                return first2.toVarargs();
                            }
                        }
                        length++;
                    } else {
                        return LuaValue.NIL;
                    }
                }
            }
        }
    }

    public void presize(int i, int i2) {
        if (i2 > 0 && i2 < 2) {
            i2 = 2;
        }
        this.f7981u = i > 0 ? new LuaValue[1 << m22802F(i)] : LuaValue.NOVALS;
        this.f7982w = i2 > 0 ? new Slot[1 << m22802F(i2)] : f7979A;
        this.f7983x = 0;
    }

    @Override // com.prineside.luaj.LuaValue
    public int rawlen() {
        int m22791x = m22791x();
        int i = m22791x + 1;
        int i2 = 0;
        while (!rawget(i).isnil()) {
            i2 = i;
            i = m22790y() + m22791x + 1 + i;
        }
        while (i > i2 + 1) {
            int i3 = (i + i2) / 2;
            if (!rawget(i3).isnil()) {
                i2 = i3;
            } else {
                i = i3;
            }
        }
        return i2;
    }

    @Override // com.prineside.luaj.LuaValue
    public void rawset(LuaValue luaValue, LuaValue luaValue2) {
        if (luaValue.isinttype() && m22798q(luaValue.toint(), luaValue2)) {
            return;
        }
        hashset(luaValue, luaValue2);
    }

    public void read(Kryo kryo, Input input) {
        this.f7981u = (LuaValue[]) kryo.readClassAndObject(input);
        this.f7982w = (Slot[]) kryo.readClassAndObject(input);
        this.f7983x = input.readInt();
        this.f7984y = (Metatable) kryo.readClassAndObject(input);
    }

    public LuaValue remove(int i) {
        int length = length();
        if (i == 0) {
            i = length;
        } else if (i > length) {
            return LuaValue.NONE;
        }
        LuaValue luaValue = get(i);
        LuaValue luaValue2 = luaValue;
        while (!luaValue2.isnil()) {
            int i2 = i + 1;
            LuaValue luaValue3 = get(i2);
            set(i, luaValue3);
            i = i2;
            luaValue2 = luaValue3;
        }
        if (luaValue.isnil()) {
            return LuaValue.NONE;
        }
        return luaValue;
    }

    /* renamed from: s */
    public final boolean m22796s(int i, int i2, LuaValue luaValue) {
        LuaValue luaValue2 = get(i);
        LuaValue luaValue3 = get(i2);
        if (luaValue2 != null && luaValue3 != null) {
            if (luaValue != null) {
                return luaValue.call(luaValue2, luaValue3).toboolean();
            }
            return luaValue2.lt_b(luaValue3);
        }
        return false;
    }

    @Override // com.prineside.luaj.LuaValue
    public void set(LuaValue luaValue, LuaValue luaValue2) {
        if (luaValue != null && (luaValue.isvalidkey() || metatag(LuaValue.NEWINDEX).isfunction())) {
            if (this.f7984y != null && rawget(luaValue).isnil() && LuaValue.m22768n(this, luaValue, luaValue2)) {
                return;
            }
            rawset(luaValue, luaValue2);
            return;
        }
        throw new LuaError("value ('" + luaValue + "') can not be used as a table index");
    }

    public void sort(LuaValue luaValue) {
        if (len().tolong() < 2147483647L) {
            Metatable metatable = this.f7984y;
            if (metatable != null && metatable.useWeakValues()) {
                m22792w();
            }
            int length = length();
            if (length > 1) {
                if (luaValue.isnil()) {
                    luaValue = null;
                }
                m22805C(length, luaValue);
                return;
            }
            return;
        }
        throw new LuaError("array too big: " + len().tolong());
    }

    public Varargs unpack(int i, int i2) {
        if (i2 < i) {
            return LuaValue.NONE;
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new LuaError("too many results to unpack: greater 2147483647");
        }
        if (i3 >= 16777215) {
            throw new LuaError("too many results to unpack: " + i3 + " (max is 16777215)");
        }
        int i4 = (i2 + 1) - i;
        if (i4 == 0) {
            return LuaValue.NONE;
        }
        if (i4 == 1) {
            return get(i);
        }
        if (i4 == 2) {
            return LuaValue.varargsOf(get(i), get(i + 1));
        }
        if (i4 < 0) {
            return LuaValue.NONE;
        }
        try {
            LuaValue[] luaValueArr = new LuaValue[i4];
            while (true) {
                i4--;
                if (i4 >= 0) {
                    luaValueArr[i4] = get(i + i4);
                } else {
                    return LuaValue.varargsOf(luaValueArr);
                }
            }
        } catch (OutOfMemoryError unused) {
            throw new LuaError("too many results to unpack [out of memory]: " + i4);
        }
    }

    public LuaTable(int i, int i2) {
        presize(i, i2);
    }

    @Override // com.prineside.luaj.LuaValue
    public LuaValue rawget(LuaValue luaValue) {
        int i;
        if (luaValue.isinttype() && (i = luaValue.toint()) > 0) {
            LuaValue[] luaValueArr = this.f7981u;
            if (i <= luaValueArr.length) {
                Metatable metatable = this.f7984y;
                LuaValue arrayget = metatable == null ? luaValueArr[i - 1] : metatable.arrayget(luaValueArr, i - 1);
                return arrayget != null ? arrayget : LuaValue.NIL;
            }
        }
        return m22806B(luaValue);
    }

    public LuaTable(LuaValue[] luaValueArr, LuaValue[] luaValueArr2, Varargs varargs) {
        int length = luaValueArr != null ? luaValueArr.length : 0;
        int length2 = luaValueArr2 != null ? luaValueArr2.length : 0;
        presize((varargs != null ? varargs.narg() : 0) + length2, length >> 1);
        int i = 0;
        while (i < length2) {
            int i2 = i + 1;
            rawset(i2, luaValueArr2[i]);
            i = i2;
        }
        if (varargs != null) {
            int narg = varargs.narg();
            for (int i3 = 1; i3 <= narg; i3++) {
                rawset(length2 + i3, varargs.arg(i3));
            }
        }
        for (int i4 = 0; i4 < length; i4 += 2) {
            int i5 = i4 + 1;
            if (!luaValueArr[i5].isnil()) {
                rawset(luaValueArr[i4], luaValueArr[i5]);
            }
        }
    }

    public LuaTable(Varargs varargs) {
        this(varargs, 1);
    }

    public LuaTable(Varargs varargs, int i) {
        int i2 = i - 1;
        int max = Math.max(varargs.narg() - i2, 0);
        presize(max, 1);
        set(f7980z, LuaValue.valueOf(max));
        for (int i3 = 1; i3 <= max; i3++) {
            set(i3, varargs.arg(i3 + i2));
        }
    }
}
