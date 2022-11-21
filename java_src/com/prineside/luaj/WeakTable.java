package com.prineside.luaj;

import com.prineside.luaj.LuaTable;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class WeakTable implements Metatable {

    /* renamed from: a */
    public boolean f8035a;

    /* renamed from: b */
    public boolean f8036b;

    /* renamed from: d */
    public LuaValue f8037d;

    /* loaded from: classes2.dex */
    public static abstract class WeakSlot implements LuaTable.Slot {

        /* renamed from: a */
        public Object f8040a;

        /* renamed from: b */
        public Object f8041b;

        /* renamed from: d */
        public LuaTable.Slot f8042d;

        /* renamed from: a */
        public abstract WeakSlot mo22750a(LuaTable.Slot slot);

        @Override // com.prineside.luaj.LuaTable.Slot
        public int arraykey(int i) {
            return 0;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public abstract int keyindex(int i);

        @Override // com.prineside.luaj.LuaTable.Slot
        public LuaTable.Slot rest() {
            return this.f8042d;
        }

        public abstract LuaTable.Slot set(LuaValue luaValue);

        public LuaValue strongkey() {
            return (LuaValue) this.f8040a;
        }

        public LuaValue strongvalue() {
            return (LuaValue) this.f8041b;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public LuaTable.Slot add(LuaTable.Slot slot) {
            LuaTable.Slot slot2 = this.f8042d;
            if (slot2 != null) {
                slot = slot2.add(slot);
            }
            this.f8042d = slot;
            if (strongkey() != null && strongvalue() != null) {
                return this;
            }
            return this.f8042d;
        }

        public WeakSlot(Object obj, Object obj2, LuaTable.Slot slot) {
            this.f8040a = obj;
            this.f8041b = obj2;
            this.f8042d = slot;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public LuaTable.StrongSlot find(LuaValue luaValue) {
            LuaTable.StrongSlot first = first();
            if (first != null) {
                return first.find(luaValue);
            }
            return null;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public LuaTable.StrongSlot first() {
            LuaValue strongkey = strongkey();
            LuaValue strongvalue = strongvalue();
            if (strongkey != null && strongvalue != null) {
                return new LuaTable.NormalEntry(strongkey, strongvalue);
            }
            this.f8040a = null;
            this.f8041b = null;
            return null;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public boolean keyeq(LuaValue luaValue) {
            LuaTable.StrongSlot first = first();
            if (first != null && first.keyeq(luaValue)) {
                return true;
            }
            return false;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public LuaTable.Slot relink(LuaTable.Slot slot) {
            if (strongkey() != null && strongvalue() != null) {
                if (slot == null && this.f8042d == null) {
                    return this;
                }
                return mo22750a(slot);
            }
            return slot;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public LuaTable.Slot remove(LuaTable.StrongSlot strongSlot) {
            LuaValue strongkey = strongkey();
            if (strongkey == null) {
                return this.f8042d.remove(strongSlot);
            }
            if (strongSlot.keyeq(strongkey)) {
                this.f8041b = null;
                return this;
            }
            this.f8042d = this.f8042d.remove(strongSlot);
            return this;
        }

        @Override // com.prineside.luaj.LuaTable.Slot
        public LuaTable.Slot set(LuaTable.StrongSlot strongSlot, LuaValue luaValue) {
            LuaValue strongkey = strongkey();
            if (strongkey != null && strongSlot.find(strongkey) != null) {
                return set(luaValue);
            }
            if (strongkey != null) {
                this.f8042d = this.f8042d.set(strongSlot, luaValue);
                return this;
            }
            return this.f8042d.set(strongSlot, luaValue);
        }
    }

    /* loaded from: classes2.dex */
    public static final class WeakUserdata extends WeakValue {

        /* renamed from: w */
        public final WeakReference f8043w;

        /* renamed from: x */
        public final LuaValue f8044x;

        public WeakUserdata(LuaValue luaValue) {
            super(luaValue);
            this.f8043w = new WeakReference(luaValue.touserdata());
            this.f8044x = luaValue.getmetatable();
        }

        @Override // com.prineside.luaj.WeakTable.WeakValue, com.prineside.luaj.LuaValue
        public LuaValue strongvalue() {
            Object obj = this.f8045u.get();
            if (obj != null) {
                return (LuaValue) obj;
            }
            Object obj2 = this.f8043w.get();
            if (obj2 != null) {
                LuaUserdata userdataOf = LuaValue.userdataOf(obj2, this.f8044x);
                this.f8045u = new WeakReference(userdataOf);
                return userdataOf;
            }
            return null;
        }
    }

    /* loaded from: classes2.dex */
    public static class WeakValue extends LuaValue {

        /* renamed from: u */
        public WeakReference f8045u;

        @Override // com.prineside.luaj.LuaValue, com.prineside.luaj.Varargs
        public String toString() {
            return "weak<" + this.f8045u.get() + ">";
        }

        @Override // com.prineside.luaj.LuaValue
        public int type() {
            m22774k("type", "weak value");
            return 0;
        }

        @Override // com.prineside.luaj.LuaValue
        public String typename() {
            m22774k("typename", "weak value");
            return null;
        }

        @Override // com.prineside.luaj.LuaValue
        public boolean raweq(LuaValue luaValue) {
            Object obj = this.f8045u.get();
            if (obj != null && luaValue.raweq((LuaValue) obj)) {
                return true;
            }
            return false;
        }

        @Override // com.prineside.luaj.LuaValue
        public LuaValue strongvalue() {
            return (LuaValue) this.f8045u.get();
        }

        public WeakValue(LuaValue luaValue) {
            this.f8045u = new WeakReference(luaValue);
        }
    }

    /* loaded from: classes2.dex */
    public static class WeakValueSlot extends WeakSlot {
        public WeakValueSlot(LuaValue luaValue, LuaValue luaValue2, LuaTable.Slot slot) {
            super(luaValue, WeakTable.m22751b(luaValue2), slot);
        }

        @Override // com.prineside.luaj.WeakTable.WeakSlot
        /* renamed from: a */
        public WeakSlot mo22750a(LuaTable.Slot slot) {
            return new WeakValueSlot(this, slot);
        }

        @Override // com.prineside.luaj.WeakTable.WeakSlot, com.prineside.luaj.LuaTable.Slot
        public int keyindex(int i) {
            return LuaTable.hashSlot(strongkey(), i);
        }

        @Override // com.prineside.luaj.WeakTable.WeakSlot
        public LuaTable.Slot set(LuaValue luaValue) {
            this.f8041b = WeakTable.m22751b(luaValue);
            return this;
        }

        @Override // com.prineside.luaj.WeakTable.WeakSlot
        public LuaValue strongvalue() {
            return WeakTable.m22752a(this.f8041b);
        }

        public WeakValueSlot(WeakValueSlot weakValueSlot, LuaTable.Slot slot) {
            super(weakValueSlot.f8040a, weakValueSlot.f8041b, slot);
        }
    }

    @Override // com.prineside.luaj.Metatable
    public LuaValue toLuaValue() {
        return this.f8037d;
    }

    @Override // com.prineside.luaj.Metatable
    public boolean useWeakKeys() {
        return this.f8035a;
    }

    @Override // com.prineside.luaj.Metatable
    public boolean useWeakValues() {
        return this.f8036b;
    }

    @Override // com.prineside.luaj.Metatable
    public LuaValue wrap(LuaValue luaValue) {
        return this.f8036b ? m22751b(luaValue) : luaValue;
    }

    /* loaded from: classes2.dex */
    public static class WeakKeyAndValueSlot extends WeakSlot {

        /* renamed from: k */
        public final int f8038k;

        public WeakKeyAndValueSlot(LuaValue luaValue, LuaValue luaValue2, LuaTable.Slot slot) {
            super(WeakTable.m22751b(luaValue), WeakTable.m22751b(luaValue2), slot);
            this.f8038k = luaValue.hashCode();
        }

        @Override // com.prineside.luaj.WeakTable.WeakSlot
        /* renamed from: a */
        public WeakSlot mo22750a(LuaTable.Slot slot) {
            return new WeakKeyAndValueSlot(this, slot);
        }

        @Override // com.prineside.luaj.WeakTable.WeakSlot, com.prineside.luaj.LuaTable.Slot
        public int keyindex(int i) {
            return LuaTable.hashmod(this.f8038k, i);
        }

        @Override // com.prineside.luaj.WeakTable.WeakSlot
        public LuaTable.Slot set(LuaValue luaValue) {
            this.f8041b = WeakTable.m22751b(luaValue);
            return this;
        }

        @Override // com.prineside.luaj.WeakTable.WeakSlot
        public LuaValue strongkey() {
            return WeakTable.m22752a(this.f8040a);
        }

        @Override // com.prineside.luaj.WeakTable.WeakSlot
        public LuaValue strongvalue() {
            return WeakTable.m22752a(this.f8041b);
        }

        public WeakKeyAndValueSlot(WeakKeyAndValueSlot weakKeyAndValueSlot, LuaTable.Slot slot) {
            super(weakKeyAndValueSlot.f8040a, weakKeyAndValueSlot.f8041b, slot);
            this.f8038k = weakKeyAndValueSlot.f8038k;
        }
    }

    /* loaded from: classes2.dex */
    public static class WeakKeySlot extends WeakSlot {

        /* renamed from: k */
        public final int f8039k;

        public WeakKeySlot(LuaValue luaValue, LuaValue luaValue2, LuaTable.Slot slot) {
            super(WeakTable.m22751b(luaValue), luaValue2, slot);
            this.f8039k = luaValue.hashCode();
        }

        @Override // com.prineside.luaj.WeakTable.WeakSlot
        /* renamed from: a */
        public WeakSlot mo22750a(LuaTable.Slot slot) {
            return new WeakKeySlot(this, slot);
        }

        @Override // com.prineside.luaj.WeakTable.WeakSlot, com.prineside.luaj.LuaTable.Slot
        public int keyindex(int i) {
            return LuaTable.hashmod(this.f8039k, i);
        }

        @Override // com.prineside.luaj.WeakTable.WeakSlot
        public LuaTable.Slot set(LuaValue luaValue) {
            this.f8041b = luaValue;
            return this;
        }

        @Override // com.prineside.luaj.WeakTable.WeakSlot
        public LuaValue strongkey() {
            return WeakTable.m22752a(this.f8040a);
        }

        public WeakKeySlot(WeakKeySlot weakKeySlot, LuaTable.Slot slot) {
            super(weakKeySlot.f8040a, weakKeySlot.f8041b, slot);
            this.f8039k = weakKeySlot.f8039k;
        }
    }

    /* renamed from: a */
    public static LuaValue m22752a(Object obj) {
        if (obj instanceof WeakReference) {
            obj = ((WeakReference) obj).get();
        }
        if (obj instanceof WeakValue) {
            return ((WeakValue) obj).strongvalue();
        }
        return (LuaValue) obj;
    }

    public static LuaTable make(boolean z, boolean z2) {
        LuaString valueOf;
        if (z && z2) {
            valueOf = LuaString.valueOf("kv");
        } else if (z) {
            valueOf = LuaString.valueOf("k");
        } else if (z2) {
            valueOf = LuaString.valueOf("v");
        } else {
            return LuaValue.tableOf();
        }
        LuaTable tableOf = LuaValue.tableOf();
        tableOf.setmetatable(LuaValue.tableOf(new LuaValue[]{LuaValue.MODE, valueOf}));
        return tableOf;
    }

    @Override // com.prineside.luaj.Metatable
    public LuaValue arrayget(LuaValue[] luaValueArr, int i) {
        LuaValue luaValue = luaValueArr[i];
        if (luaValue != null && (luaValue = m22752a(luaValue)) == null) {
            luaValueArr[i] = null;
        }
        return luaValue;
    }

    public WeakTable(boolean z, boolean z2, LuaValue luaValue) {
        this.f8035a = z;
        this.f8036b = z2;
        this.f8037d = luaValue;
    }

    /* renamed from: b */
    public static LuaValue m22751b(LuaValue luaValue) {
        int type = luaValue.type();
        if (type != 5 && type != 6) {
            if (type != 7) {
                if (type != 8) {
                    return luaValue;
                }
            } else {
                return new WeakUserdata(luaValue);
            }
        }
        return new WeakValue(luaValue);
    }

    @Override // com.prineside.luaj.Metatable
    public LuaTable.Slot entry(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue strongvalue = luaValue2.strongvalue();
        if (strongvalue == null) {
            return null;
        }
        if (this.f8035a && !luaValue.isnumber() && !luaValue.isstring() && !luaValue.isboolean()) {
            if (this.f8036b && !strongvalue.isnumber() && !strongvalue.isstring() && !strongvalue.isboolean()) {
                return new WeakKeyAndValueSlot(luaValue, strongvalue, null);
            }
            return new WeakKeySlot(luaValue, strongvalue, null);
        } else if (this.f8036b && !strongvalue.isnumber() && !strongvalue.isstring() && !strongvalue.isboolean()) {
            return new WeakValueSlot(luaValue, strongvalue, null);
        } else {
            return LuaTable.m22793v(luaValue, strongvalue);
        }
    }
}
