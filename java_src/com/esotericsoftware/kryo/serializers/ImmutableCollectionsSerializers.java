package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.util.Util;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class ImmutableCollectionsSerializers {

    /* loaded from: classes.dex */
    public static class JdkImmutableListSerializer extends CollectionSerializer<List<Object>> {
        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer, com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends List<Object>>) cls);
        }

        /* renamed from: a */
        public static void m23232a(Kryo kryo) {
            List m23209a;
            List m23209a2;
            List m23209a3;
            JdkImmutableListSerializer jdkImmutableListSerializer = new JdkImmutableListSerializer();
            kryo.addDefaultSerializer(Collections.emptyList().getClass(), jdkImmutableListSerializer);
            m23209a = C1367c.m23209a(new Object[]{1});
            kryo.addDefaultSerializer(m23209a.getClass(), jdkImmutableListSerializer);
            m23209a2 = C1367c.m23209a(new Object[]{1, 2, 3, 4});
            kryo.addDefaultSerializer(m23209a2.getClass(), jdkImmutableListSerializer);
            m23209a3 = C1367c.m23209a(new Object[]{1, 2, 3, 4});
            kryo.addDefaultSerializer(m23209a3.subList(0, 2).getClass(), jdkImmutableListSerializer);
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer
        public List<Object> create(Kryo kryo, Input input, Class<? extends List<Object>> cls, int i) {
            return new ArrayList(i);
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer
        public List<Object> createCopy(Kryo kryo, List<Object> list) {
            return new ArrayList(list.size());
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer, com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Collection read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends List<Object>>) cls);
        }

        public JdkImmutableListSerializer() {
            setElementsCanBeNull(false);
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer
        public List<Object> copy(Kryo kryo, List<Object> list) {
            return C1371g.m23205a((List) super.copy(kryo, (Kryo) list));
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer, com.esotericsoftware.kryo.Serializer
        public List<Object> read(Kryo kryo, Input input, Class<? extends List<Object>> cls) {
            List list = (List) super.read(kryo, input, (Class<? extends Collection>) cls);
            if (list == null) {
                return null;
            }
            return C1367c.m23209a(list.toArray());
        }
    }

    /* loaded from: classes.dex */
    public static class JdkImmutableMapSerializer extends MapSerializer<Map<Object, Object>> {
        @Override // com.esotericsoftware.kryo.serializers.MapSerializer
        public Map<Object, Object> create(Kryo kryo, Input input, Class<? extends Map<Object, Object>> cls, int i) {
            return new HashMap();
        }

        @Override // com.esotericsoftware.kryo.serializers.MapSerializer
        public Map<Object, Object> createCopy(Kryo kryo, Map<Object, Object> map) {
            return new HashMap();
        }

        @Override // com.esotericsoftware.kryo.serializers.MapSerializer, com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Map<Object, Object>>) cls);
        }

        /* renamed from: a */
        public static void m23231a(Kryo kryo) {
            Map m23201a;
            Map m23201a2;
            JdkImmutableMapSerializer jdkImmutableMapSerializer = new JdkImmutableMapSerializer();
            kryo.addDefaultSerializer(Collections.emptyMap().getClass(), jdkImmutableMapSerializer);
            m23201a = C1375k.m23201a(new Map.Entry[]{new AbstractMap.SimpleEntry(1, 2)});
            kryo.addDefaultSerializer(m23201a.getClass(), jdkImmutableMapSerializer);
            m23201a2 = C1375k.m23201a(new Map.Entry[]{new AbstractMap.SimpleEntry(1, 2), new AbstractMap.SimpleEntry(3, 4)});
            kryo.addDefaultSerializer(m23201a2.getClass(), jdkImmutableMapSerializer);
        }

        @Override // com.esotericsoftware.kryo.serializers.MapSerializer, com.esotericsoftware.kryo.Serializer
        public Map<Object, Object> copy(Kryo kryo, Map<Object, Object> map) {
            return C1372h.m23204a(super.copy(kryo, (Kryo) map));
        }

        @Override // com.esotericsoftware.kryo.serializers.MapSerializer, com.esotericsoftware.kryo.Serializer
        public Map<Object, Object> read(Kryo kryo, Input input, Class<? extends Map<Object, Object>> cls) {
            Map read = super.read(kryo, input, (Class<? extends Map>) cls);
            if (read == null) {
                return null;
            }
            return C1372h.m23204a(read);
        }

        public JdkImmutableMapSerializer() {
            setKeysCanBeNull(false);
            setValuesCanBeNull(false);
        }
    }

    /* loaded from: classes.dex */
    public static class JdkImmutableSetSerializer extends CollectionSerializer<Set<Object>> {
        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer, com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Set<Object>>) cls);
        }

        /* renamed from: a */
        public static void m23230a(Kryo kryo) {
            Set m23200a;
            Set m23200a2;
            JdkImmutableSetSerializer jdkImmutableSetSerializer = new JdkImmutableSetSerializer();
            kryo.addDefaultSerializer(Collections.emptySet().getClass(), jdkImmutableSetSerializer);
            m23200a = C1376l.m23200a(new Object[]{1});
            kryo.addDefaultSerializer(m23200a.getClass(), jdkImmutableSetSerializer);
            m23200a2 = C1376l.m23200a(new Object[]{1, 2, 3, 4});
            kryo.addDefaultSerializer(m23200a2.getClass(), jdkImmutableSetSerializer);
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer
        public Set<Object> create(Kryo kryo, Input input, Class<? extends Set<Object>> cls, int i) {
            return new HashSet();
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer
        public Set<Object> createCopy(Kryo kryo, Set<Object> set) {
            return new HashSet();
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer, com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Collection read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Set<Object>>) cls);
        }

        public JdkImmutableSetSerializer() {
            setElementsCanBeNull(false);
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer
        public Set<Object> copy(Kryo kryo, Set<Object> set) {
            return C1379o.m23197a((Set) super.copy(kryo, (Kryo) set));
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer, com.esotericsoftware.kryo.Serializer
        public Set<Object> read(Kryo kryo, Input input, Class<? extends Set<Object>> cls) {
            Set set = (Set) super.read(kryo, input, (Class<? extends Collection>) cls);
            if (set == null) {
                return null;
            }
            return C1376l.m23200a(set.toArray());
        }
    }

    public static void addDefaultSerializers(Kryo kryo) {
        if (Util.isClassAvailable("java.util.ImmutableCollections")) {
            JdkImmutableListSerializer.m23232a(kryo);
            JdkImmutableMapSerializer.m23231a(kryo);
            JdkImmutableSetSerializer.m23230a(kryo);
        }
    }
}
