package com.prineside.tdi2;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ObjectIntMap;
import com.badlogic.gdx.utils.ObjectMap;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
import java.util.Iterator;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class Registry {

    /* renamed from: a */
    public ObjectMap<String, EnumCategory> f8845a = new ObjectMap<>();

    /* renamed from: com.prineside.tdi2.Registry$D */
    /* loaded from: classes2.dex */
    public static class C1572D {

        /* renamed from: com.prineside.tdi2.Registry$D$UnitType */
        /* loaded from: classes2.dex */
        public static class UnitType {
            public static final int BALL_LIGHTNING = 1;
            public static final int DISORIENTED = 2;
            public static final int MICROGUN = 3;
            public static final int MINE = 4;
            public static final int SNOWBALL = 0;
        }
    }

    /* loaded from: classes2.dex */
    public static class EnumCategory {
        public final String name;

        /* renamed from: a */
        public int f8846a = -1;
        public Array<String> idRegistry = new Array<>(true, 8, String.class);
        public ObjectIntMap<String> nameRegistry = new ObjectIntMap<>();
        public IntArray idListOrdered = new IntArray(true, 8);
        public Array<String> nameListOrdered = new Array<>(true, 8, String.class);

        public int getId(String str) {
            return this.nameRegistry.get(str, -1);
        }

        public int getMaxId() {
            return this.f8846a;
        }

        public String getName(int i) {
            return this.idRegistry.items[i];
        }

        public IntArray ids() {
            return this.idListOrdered;
        }

        public Array<String> values() {
            return this.nameListOrdered;
        }

        public EnumCategory(String str) {
            this.name = str;
        }

        public int register(String str) {
            if (!this.nameRegistry.containsKey(str)) {
                int i = this.f8846a + 1;
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (i3 >= this.f8846a) {
                        break;
                    } else if (this.idRegistry.items[i3] == null) {
                        i = i3;
                        break;
                    } else {
                        i3++;
                    }
                }
                Array<String> array = this.idRegistry;
                if (array.size <= i) {
                    array.setSize(i + 1);
                }
                this.idRegistry.set(i, str);
                this.nameRegistry.put(str, i);
                this.idListOrdered.add(i);
                this.idListOrdered.sort();
                this.nameListOrdered.clear();
                while (true) {
                    IntArray intArray = this.idListOrdered;
                    if (i2 < intArray.size) {
                        this.nameListOrdered.add(this.idRegistry.get(intArray.items[i2]));
                        i2++;
                    } else {
                        this.f8846a = StrictMath.max(this.f8846a, i);
                        return i;
                    }
                }
            } else {
                throw new IllegalArgumentException("Constant " + str + " is already registered in " + str);
            }
        }

        public void unregister(int i) {
            String removeIndex = this.idRegistry.removeIndex(i);
            this.nameRegistry.remove(removeIndex, 0);
            this.idListOrdered.removeValue(i);
            this.nameListOrdered.removeValue(removeIndex, false);
            IntArray intArray = this.idListOrdered;
            this.f8846a = intArray.items[intArray.size - 1];
        }
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<Registry> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public Registry read() {
            return Game.f8591r;
        }
    }

    public EnumCategory getCategory(String str) {
        return this.f8845a.get(str);
    }

    /* renamed from: a */
    public final void m21907a(String str) {
        if (!this.f8845a.containsKey(str)) {
            this.f8845a.put(str, new EnumCategory(str));
        }
    }

    public void reload() {
        Iterator<JsonValue> iterator2 = new JsonReader().parse(Gdx.files.internal("res/enum-registry.json")).iterator2();
        while (iterator2.hasNext()) {
            JsonValue next = iterator2.next();
            m21907a(next.name);
            EnumCategory category = getCategory(next.name);
            Iterator<JsonValue> iterator22 = next.iterator2();
            while (iterator22.hasNext()) {
                category.register(iterator22.next().asString());
            }
        }
    }
}
