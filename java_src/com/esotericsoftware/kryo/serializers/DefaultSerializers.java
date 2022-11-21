package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.Registration;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.util.Util;
import java.lang.reflect.Constructor;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Currency;
import java.util.Date;
import java.util.EnumSet;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentSkipListMap;
/* loaded from: classes.dex */
public class DefaultSerializers {

    /* loaded from: classes.dex */
    public static class ArraysAsListSerializer extends CollectionSerializer<List> {
        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer
        public List create(Kryo kryo, Input input, Class<? extends List> cls, int i) {
            return new ArrayList(i);
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer
        public List copy(Kryo kryo, List list) {
            Object[] objArr = new Object[list.size()];
            List asList = Arrays.asList(objArr);
            kryo.reference(asList);
            for (int i = 0; i < list.size(); i++) {
                objArr[i] = kryo.copy(list.get(i));
            }
            return asList;
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer, com.esotericsoftware.kryo.Serializer
        public List read(Kryo kryo, Input input, Class cls) {
            List list = (List) super.read(kryo, input, (Class<? extends Collection>) cls);
            if (list == null) {
                return null;
            }
            return Arrays.asList(list.toArray());
        }
    }

    /* loaded from: classes.dex */
    public static class BigDecimalSerializer extends ImmutableSerializer<BigDecimal> {

        /* renamed from: c */
        public final BigIntegerSerializer f7311c = new BigIntegerSerializer();

        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends BigDecimal>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public BigDecimal read(Kryo kryo, Input input, Class<? extends BigDecimal> cls) {
            BigInteger read = this.f7311c.read(kryo, input, BigInteger.class);
            if (read == null) {
                return null;
            }
            int readInt = input.readInt(false);
            if (cls != BigDecimal.class && cls != null) {
                try {
                    Constructor<? extends BigDecimal> constructor = cls.getConstructor(BigInteger.class, Integer.TYPE);
                    if (!constructor.isAccessible()) {
                        try {
                            constructor.setAccessible(true);
                        } catch (SecurityException unused) {
                        }
                    }
                    return constructor.newInstance(read, Integer.valueOf(readInt));
                } catch (Exception e) {
                    throw new KryoException(e);
                }
            } else if (read == BigInteger.ZERO && readInt == 0) {
                return BigDecimal.ZERO;
            } else {
                return new BigDecimal(read, readInt);
            }
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, BigDecimal bigDecimal) {
            if (bigDecimal == null) {
                output.writeByte((byte) 0);
            } else if (bigDecimal == BigDecimal.ZERO) {
                this.f7311c.write(kryo, output, BigInteger.ZERO);
                output.writeInt(0, false);
            } else {
                this.f7311c.write(kryo, output, bigDecimal.unscaledValue());
                output.writeInt(bigDecimal.scale(), false);
            }
        }

        public BigDecimalSerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class BigIntegerSerializer extends ImmutableSerializer<BigInteger> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends BigInteger>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public BigInteger read(Kryo kryo, Input input, Class<? extends BigInteger> cls) {
            int readVarInt = input.readVarInt(true);
            if (readVarInt == 0) {
                return null;
            }
            byte[] readBytes = input.readBytes(readVarInt - 1);
            if (cls != BigInteger.class && cls != null) {
                try {
                    Constructor<? extends BigInteger> constructor = cls.getConstructor(byte[].class);
                    if (!constructor.isAccessible()) {
                        try {
                            constructor.setAccessible(true);
                        } catch (SecurityException unused) {
                        }
                    }
                    return constructor.newInstance(readBytes);
                } catch (Exception e) {
                    throw new KryoException(e);
                }
            }
            if (readVarInt == 2) {
                byte b = readBytes[0];
                if (b == 0) {
                    return BigInteger.ZERO;
                }
                if (b == 1) {
                    return BigInteger.ONE;
                }
                if (b == 10) {
                    return BigInteger.TEN;
                }
            }
            return new BigInteger(readBytes);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, BigInteger bigInteger) {
            if (bigInteger == null) {
                output.writeByte((byte) 0);
            } else if (bigInteger == BigInteger.ZERO) {
                output.writeByte(2);
                output.writeByte(0);
            } else {
                byte[] byteArray = bigInteger.toByteArray();
                output.writeVarInt(byteArray.length + 1, true);
                output.writeBytes(byteArray);
            }
        }

        public BigIntegerSerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class BitSetSerializer extends Serializer<BitSet> {
        @Override // com.esotericsoftware.kryo.Serializer
        public BitSet copy(Kryo kryo, BitSet bitSet) {
            long[] longArray;
            BitSet valueOf;
            longArray = bitSet.toLongArray();
            valueOf = BitSet.valueOf(longArray);
            return valueOf;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public BitSet read(Kryo kryo, Input input, Class<? extends BitSet> cls) {
            BitSet valueOf;
            valueOf = BitSet.valueOf(input.readLongs(input.readVarInt(true)));
            return valueOf;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, BitSet bitSet) {
            long[] longArray;
            longArray = bitSet.toLongArray();
            output.writeVarInt(longArray.length, true);
            output.writeLongs(longArray, 0, longArray.length);
        }
    }

    /* loaded from: classes.dex */
    public static class BooleanSerializer extends ImmutableSerializer<Boolean> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Boolean>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Boolean read(Kryo kryo, Input input, Class<? extends Boolean> cls) {
            return Boolean.valueOf(input.readBoolean());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Boolean bool) {
            output.writeBoolean(bool.booleanValue());
        }
    }

    /* loaded from: classes.dex */
    public static class ByteSerializer extends ImmutableSerializer<Byte> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Byte>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Byte read(Kryo kryo, Input input, Class<? extends Byte> cls) {
            return Byte.valueOf(input.readByte());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Byte b) {
            output.writeByte(b.byteValue());
        }
    }

    /* loaded from: classes.dex */
    public static class CalendarSerializer extends Serializer<Calendar> {

        /* renamed from: c */
        public TimeZoneSerializer f7312c = new TimeZoneSerializer();

        @Override // com.esotericsoftware.kryo.Serializer
        public Calendar copy(Kryo kryo, Calendar calendar) {
            return (Calendar) calendar.clone();
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Calendar read(Kryo kryo, Input input, Class<? extends Calendar> cls) {
            Calendar calendar = Calendar.getInstance(this.f7312c.read(kryo, input, TimeZone.class));
            calendar.setTimeInMillis(input.readVarLong(true));
            calendar.setLenient(input.readBoolean());
            calendar.setFirstDayOfWeek(input.readInt(true));
            calendar.setMinimalDaysInFirstWeek(input.readInt(true));
            long readVarLong = input.readVarLong(false);
            if (readVarLong != -12219292800000L && (calendar instanceof GregorianCalendar)) {
                ((GregorianCalendar) calendar).setGregorianChange(new Date(readVarLong));
            }
            return calendar;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Calendar calendar) {
            this.f7312c.write(kryo, output, calendar.getTimeZone());
            output.writeVarLong(calendar.getTimeInMillis(), true);
            output.writeBoolean(calendar.isLenient());
            output.writeInt(calendar.getFirstDayOfWeek(), true);
            output.writeInt(calendar.getMinimalDaysInFirstWeek(), true);
            if (calendar instanceof GregorianCalendar) {
                output.writeVarLong(((GregorianCalendar) calendar).getGregorianChange().getTime(), false);
            } else {
                output.writeVarLong(-12219292800000L, false);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class CharSerializer extends ImmutableSerializer<Character> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Character>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Character read(Kryo kryo, Input input, Class<? extends Character> cls) {
            return Character.valueOf(input.readChar());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Character ch) {
            output.writeChar(ch.charValue());
        }
    }

    /* loaded from: classes.dex */
    public static class CharsetSerializer extends ImmutableSerializer<Charset> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Charset>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Charset read(Kryo kryo, Input input, Class<? extends Charset> cls) {
            return Charset.forName(input.readString());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Charset charset) {
            output.writeString(charset.name());
        }
    }

    /* loaded from: classes.dex */
    public static class ClassSerializer extends ImmutableSerializer<Class> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Class>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Class read(Kryo kryo, Input input, Class<? extends Class> cls) {
            Registration readClass = kryo.readClass(input);
            if (readClass == null) {
                return null;
            }
            Class type = readClass.getType();
            return (!type.isPrimitive() || input.readBoolean()) ? type : Util.getWrapperClass(type);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Class cls) {
            kryo.writeClass(output, cls);
            if (cls != null) {
                if (cls.isPrimitive() || Util.isWrapperClass(cls)) {
                    output.writeBoolean(cls.isPrimitive());
                }
            }
        }

        public ClassSerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class CollectionsEmptyListSerializer extends ImmutableSerializer<Collection> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Collection>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Collection collection) {
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Collection read(Kryo kryo, Input input, Class<? extends Collection> cls) {
            return Collections.EMPTY_LIST;
        }
    }

    /* loaded from: classes.dex */
    public static class CollectionsEmptyMapSerializer extends ImmutableSerializer<Map> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Map>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Map map) {
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Map read(Kryo kryo, Input input, Class<? extends Map> cls) {
            return Collections.EMPTY_MAP;
        }
    }

    /* loaded from: classes.dex */
    public static class CollectionsEmptySetSerializer extends ImmutableSerializer<Set> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Set>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Set set) {
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Set read(Kryo kryo, Input input, Class<? extends Set> cls) {
            return Collections.EMPTY_SET;
        }
    }

    /* loaded from: classes.dex */
    public static class CollectionsSingletonListSerializer extends Serializer<List> {
        @Override // com.esotericsoftware.kryo.Serializer
        public List copy(Kryo kryo, List list) {
            return Collections.singletonList(kryo.copy(list.get(0)));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public List read(Kryo kryo, Input input, Class<? extends List> cls) {
            return Collections.singletonList(kryo.readClassAndObject(input));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, List list) {
            kryo.writeClassAndObject(output, list.get(0));
        }
    }

    /* loaded from: classes.dex */
    public static class CollectionsSingletonMapSerializer extends Serializer<Map> {
        @Override // com.esotericsoftware.kryo.Serializer
        public Map copy(Kryo kryo, Map map) {
            Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
            return Collections.singletonMap(kryo.copy(entry.getKey()), kryo.copy(entry.getValue()));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Map read(Kryo kryo, Input input, Class<? extends Map> cls) {
            return Collections.singletonMap(kryo.readClassAndObject(input), kryo.readClassAndObject(input));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Map map) {
            Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
            kryo.writeClassAndObject(output, entry.getKey());
            kryo.writeClassAndObject(output, entry.getValue());
        }
    }

    /* loaded from: classes.dex */
    public static class CollectionsSingletonSetSerializer extends Serializer<Set> {
        @Override // com.esotericsoftware.kryo.Serializer
        public Set copy(Kryo kryo, Set set) {
            return Collections.singleton(kryo.copy(set.iterator().next()));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Set read(Kryo kryo, Input input, Class<? extends Set> cls) {
            return Collections.singleton(kryo.readClassAndObject(input));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Set set) {
            kryo.writeClassAndObject(output, set.iterator().next());
        }
    }

    /* loaded from: classes.dex */
    public static class ConcurrentSkipListMapSerializer extends MapSerializer<ConcurrentSkipListMap> {
        /* renamed from: a */
        public final ConcurrentSkipListMap m23246a(Class<? extends ConcurrentSkipListMap> cls, Comparator comparator) {
            if (cls != ConcurrentSkipListMap.class && cls != null) {
                try {
                    Constructor<? extends ConcurrentSkipListMap> constructor = cls.getConstructor(Comparator.class);
                    if (!constructor.isAccessible()) {
                        try {
                            constructor.setAccessible(true);
                        } catch (SecurityException unused) {
                        }
                    }
                    return constructor.newInstance(comparator);
                } catch (Exception e) {
                    throw new KryoException(e);
                }
            }
            return new ConcurrentSkipListMap(comparator);
        }

        @Override // com.esotericsoftware.kryo.serializers.MapSerializer
        public ConcurrentSkipListMap create(Kryo kryo, Input input, Class<? extends ConcurrentSkipListMap> cls, int i) {
            return m23246a(cls, (Comparator) kryo.readClassAndObject(input));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.esotericsoftware.kryo.serializers.MapSerializer
        public ConcurrentSkipListMap createCopy(Kryo kryo, ConcurrentSkipListMap concurrentSkipListMap) {
            return m23246a(concurrentSkipListMap.getClass(), concurrentSkipListMap.comparator());
        }

        @Override // com.esotericsoftware.kryo.serializers.MapSerializer
        public void writeHeader(Kryo kryo, Output output, ConcurrentSkipListMap concurrentSkipListMap) {
            kryo.writeClassAndObject(output, concurrentSkipListMap.comparator());
        }
    }

    /* loaded from: classes.dex */
    public static class CurrencySerializer extends ImmutableSerializer<Currency> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Currency>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Currency read(Kryo kryo, Input input, Class<? extends Currency> cls) {
            String readString = input.readString();
            if (readString == null) {
                return null;
            }
            return Currency.getInstance(readString);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Currency currency) {
            output.writeString(currency == null ? null : currency.getCurrencyCode());
        }

        public CurrencySerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class DateSerializer extends Serializer<Date> {
        /* renamed from: a */
        public final Date m23245a(Kryo kryo, Class<? extends Date> cls, long j) {
            if (cls != Date.class && cls != null) {
                if (cls == Timestamp.class) {
                    return new Timestamp(j);
                }
                if (cls == java.sql.Date.class) {
                    return new java.sql.Date(j);
                }
                if (cls == Time.class) {
                    return new Time(j);
                }
                try {
                    Constructor<? extends Date> constructor = cls.getConstructor(Long.TYPE);
                    if (!constructor.isAccessible()) {
                        try {
                            constructor.setAccessible(true);
                        } catch (SecurityException unused) {
                        }
                    }
                    return constructor.newInstance(Long.valueOf(j));
                } catch (Exception unused2) {
                    Date date = (Date) kryo.newInstance(cls);
                    date.setTime(j);
                    return date;
                }
            }
            return new Date(j);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.esotericsoftware.kryo.Serializer
        public Date copy(Kryo kryo, Date date) {
            return m23245a(kryo, date.getClass(), date.getTime());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Date read(Kryo kryo, Input input, Class<? extends Date> cls) {
            return m23245a(kryo, cls, input.readVarLong(true));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Date date) {
            output.writeVarLong(date.getTime(), true);
        }
    }

    /* loaded from: classes.dex */
    public static class DoubleSerializer extends ImmutableSerializer<Double> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Double>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Double read(Kryo kryo, Input input, Class<? extends Double> cls) {
            return Double.valueOf(input.readDouble());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Double d) {
            output.writeDouble(d.doubleValue());
        }
    }

    /* loaded from: classes.dex */
    public static class EnumSerializer extends ImmutableSerializer<Enum> {

        /* renamed from: c */
        public Object[] f7313c;

        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Enum>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Enum read(Kryo kryo, Input input, Class<? extends Enum> cls) {
            int readVarInt = input.readVarInt(true);
            if (readVarInt == 0) {
                return null;
            }
            int i = readVarInt - 1;
            if (i >= 0) {
                Object[] objArr = this.f7313c;
                if (i <= objArr.length - 1) {
                    return (Enum) objArr[i];
                }
            }
            throw new KryoException("Invalid ordinal for enum \"" + cls.getName() + "\": " + i);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Enum r3) {
            if (r3 == null) {
                output.writeVarInt(0, true);
            } else {
                output.writeVarInt(r3.ordinal() + 1, true);
            }
        }

        public EnumSerializer(Class<? extends Enum> cls) {
            setAcceptsNull(true);
            Object[] enumConstants = cls.getEnumConstants();
            this.f7313c = enumConstants;
            if (enumConstants == null && !Enum.class.equals(cls)) {
                throw new IllegalArgumentException("The type must be an enum: " + cls);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class EnumSetSerializer extends Serializer<EnumSet> {
        @Override // com.esotericsoftware.kryo.Serializer
        public EnumSet copy(Kryo kryo, EnumSet enumSet) {
            return EnumSet.copyOf(enumSet);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public EnumSet read(Kryo kryo, Input input, Class<? extends EnumSet> cls) {
            Registration readClass = kryo.readClass(input);
            EnumSet noneOf = EnumSet.noneOf(readClass.getType());
            Serializer serializer = readClass.getSerializer();
            int readVarInt = input.readVarInt(true);
            for (int i = 0; i < readVarInt; i++) {
                noneOf.add(serializer.read(kryo, input, null));
            }
            return noneOf;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, EnumSet enumSet) {
            Serializer serializer;
            if (enumSet.isEmpty()) {
                EnumSet complementOf = EnumSet.complementOf(enumSet);
                if (!complementOf.isEmpty()) {
                    serializer = kryo.writeClass(output, complementOf.iterator().next().getClass()).getSerializer();
                } else {
                    throw new KryoException("An EnumSet must have a defined Enum to be serialized.");
                }
            } else {
                serializer = kryo.writeClass(output, enumSet.iterator().next().getClass()).getSerializer();
            }
            output.writeVarInt(enumSet.size(), true);
            Iterator it = enumSet.iterator();
            while (it.hasNext()) {
                serializer.write(kryo, output, it.next());
            }
        }
    }

    /* loaded from: classes.dex */
    public static class FloatSerializer extends ImmutableSerializer<Float> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Float>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Float read(Kryo kryo, Input input, Class<? extends Float> cls) {
            return Float.valueOf(input.readFloat());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Float f) {
            output.writeFloat(f.floatValue());
        }
    }

    /* loaded from: classes.dex */
    public static class IntSerializer extends ImmutableSerializer<Integer> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Integer>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Integer read(Kryo kryo, Input input, Class<? extends Integer> cls) {
            return Integer.valueOf(input.readInt(false));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Integer num) {
            output.writeInt(num.intValue(), false);
        }
    }

    /* loaded from: classes.dex */
    public static class KryoSerializableSerializer extends Serializer<KryoSerializable> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.esotericsoftware.kryo.Serializer
        public KryoSerializable read(Kryo kryo, Input input, Class<? extends KryoSerializable> cls) {
            KryoSerializable kryoSerializable = (KryoSerializable) kryo.newInstance(cls);
            kryo.reference(kryoSerializable);
            kryoSerializable.read(kryo, input);
            return kryoSerializable;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, KryoSerializable kryoSerializable) {
            kryoSerializable.write(kryo, output);
        }
    }

    /* loaded from: classes.dex */
    public static class LocaleSerializer extends ImmutableSerializer<Locale> {
        public static final Locale SPANISH = new Locale("es", "", "");
        public static final Locale SPAIN = new Locale("es", "ES", "");

        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Locale>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Locale read(Kryo kryo, Input input, Class<? extends Locale> cls) {
            return create(input.readString(), input.readString(), input.readString());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Locale locale) {
            output.writeAscii(locale.getLanguage());
            output.writeAscii(locale.getCountry());
            output.writeString(locale.getVariant());
        }

        public static boolean isSameLocale(Locale locale, String str, String str2, String str3) {
            if (locale.getLanguage().equals(str) && locale.getCountry().equals(str2) && locale.getVariant().equals(str3)) {
                return true;
            }
            return false;
        }

        public Locale create(String str, String str2, String str3) {
            Locale locale = Locale.getDefault();
            if (isSameLocale(locale, str, str2, str3)) {
                return locale;
            }
            Locale locale2 = Locale.US;
            if (locale != locale2 && isSameLocale(locale2, str, str2, str3)) {
                return locale2;
            }
            Locale locale3 = Locale.ENGLISH;
            if (isSameLocale(locale3, str, str2, str3)) {
                return locale3;
            }
            if (isSameLocale(Locale.GERMAN, str, str2, str3)) {
                return Locale.GERMAN;
            }
            Locale locale4 = SPANISH;
            if (isSameLocale(locale4, str, str2, str3)) {
                return locale4;
            }
            if (isSameLocale(Locale.FRENCH, str, str2, str3)) {
                return Locale.FRENCH;
            }
            if (isSameLocale(Locale.ITALIAN, str, str2, str3)) {
                return Locale.ITALIAN;
            }
            if (isSameLocale(Locale.JAPANESE, str, str2, str3)) {
                return Locale.JAPANESE;
            }
            if (isSameLocale(Locale.KOREAN, str, str2, str3)) {
                return Locale.KOREAN;
            }
            if (isSameLocale(Locale.SIMPLIFIED_CHINESE, str, str2, str3)) {
                return Locale.SIMPLIFIED_CHINESE;
            }
            if (isSameLocale(Locale.CHINESE, str, str2, str3)) {
                return Locale.CHINESE;
            }
            if (isSameLocale(Locale.TRADITIONAL_CHINESE, str, str2, str3)) {
                return Locale.TRADITIONAL_CHINESE;
            }
            if (isSameLocale(Locale.UK, str, str2, str3)) {
                return Locale.UK;
            }
            if (isSameLocale(Locale.GERMANY, str, str2, str3)) {
                return Locale.GERMANY;
            }
            Locale locale5 = SPAIN;
            if (isSameLocale(locale5, str, str2, str3)) {
                return locale5;
            }
            if (isSameLocale(Locale.FRANCE, str, str2, str3)) {
                return Locale.FRANCE;
            }
            if (isSameLocale(Locale.ITALY, str, str2, str3)) {
                return Locale.ITALY;
            }
            if (isSameLocale(Locale.JAPAN, str, str2, str3)) {
                return Locale.JAPAN;
            }
            if (isSameLocale(Locale.KOREA, str, str2, str3)) {
                return Locale.KOREA;
            }
            if (isSameLocale(Locale.CANADA, str, str2, str3)) {
                return Locale.CANADA;
            }
            if (isSameLocale(Locale.CANADA_FRENCH, str, str2, str3)) {
                return Locale.CANADA_FRENCH;
            }
            return new Locale(str, str2, str3);
        }
    }

    /* loaded from: classes.dex */
    public static class LongSerializer extends ImmutableSerializer<Long> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Long>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Long read(Kryo kryo, Input input, Class<? extends Long> cls) {
            return Long.valueOf(input.readVarLong(false));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Long l) {
            output.writeVarLong(l.longValue(), false);
        }
    }

    /* loaded from: classes.dex */
    public static class PriorityQueueSerializer extends CollectionSerializer<PriorityQueue> {
        /* renamed from: a */
        public final PriorityQueue m23244a(Class<? extends Collection> cls, int i, Comparator comparator) {
            int max = Math.max(i, 1);
            if (cls != PriorityQueue.class && cls != null) {
                try {
                    Constructor<? extends Collection> constructor = cls.getConstructor(Integer.TYPE, Comparator.class);
                    if (!constructor.isAccessible()) {
                        try {
                            constructor.setAccessible(true);
                        } catch (SecurityException unused) {
                        }
                    }
                    return (PriorityQueue) constructor.newInstance(Integer.valueOf(max), comparator);
                } catch (Exception e) {
                    throw new KryoException(e);
                }
            }
            return new PriorityQueue(max, comparator);
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer
        public PriorityQueue create(Kryo kryo, Input input, Class<? extends PriorityQueue> cls, int i) {
            return m23244a(cls, i, (Comparator) kryo.readClassAndObject(input));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer
        public PriorityQueue createCopy(Kryo kryo, PriorityQueue priorityQueue) {
            return m23244a(priorityQueue.getClass(), priorityQueue.size(), priorityQueue.comparator());
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer
        public void writeHeader(Kryo kryo, Output output, PriorityQueue priorityQueue) {
            kryo.writeClassAndObject(output, priorityQueue.comparator());
        }
    }

    /* loaded from: classes.dex */
    public static class ShortSerializer extends ImmutableSerializer<Short> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends Short>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public Short read(Kryo kryo, Input input, Class<? extends Short> cls) {
            return Short.valueOf(input.readShort());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Short sh) {
            output.writeShort(sh.shortValue());
        }
    }

    /* loaded from: classes.dex */
    public static class StringBufferSerializer extends Serializer<StringBuffer> {
        @Override // com.esotericsoftware.kryo.Serializer
        public StringBuffer copy(Kryo kryo, StringBuffer stringBuffer) {
            return new StringBuffer(stringBuffer);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public StringBuffer read(Kryo kryo, Input input, Class<? extends StringBuffer> cls) {
            String readString = input.readString();
            if (readString == null) {
                return null;
            }
            return new StringBuffer(readString);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, StringBuffer stringBuffer) {
            output.writeString(stringBuffer == null ? null : stringBuffer.toString());
        }

        public StringBufferSerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class StringBuilderSerializer extends Serializer<StringBuilder> {
        @Override // com.esotericsoftware.kryo.Serializer
        public StringBuilder copy(Kryo kryo, StringBuilder sb) {
            return new StringBuilder(sb);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public StringBuilder read(Kryo kryo, Input input, Class<? extends StringBuilder> cls) {
            return input.readStringBuilder();
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, StringBuilder sb) {
            output.writeString(sb == null ? null : sb.toString());
        }

        public StringBuilderSerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class StringSerializer extends ImmutableSerializer<String> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends String>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public String read(Kryo kryo, Input input, Class<? extends String> cls) {
            return input.readString();
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, String str) {
            output.writeString(str);
        }

        public StringSerializer() {
            setAcceptsNull(true);
        }
    }

    /* loaded from: classes.dex */
    public static class TimeZoneSerializer extends ImmutableSerializer<TimeZone> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends TimeZone>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public TimeZone read(Kryo kryo, Input input, Class<? extends TimeZone> cls) {
            return TimeZone.getTimeZone(input.readString());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, TimeZone timeZone) {
            output.writeString(timeZone.getID());
        }
    }

    /* loaded from: classes.dex */
    public static class TreeMapSerializer extends MapSerializer<TreeMap> {
        /* renamed from: a */
        public final TreeMap m23243a(Class<? extends TreeMap> cls, Comparator comparator) {
            if (cls != TreeMap.class && cls != null) {
                try {
                    Constructor<? extends TreeMap> constructor = cls.getConstructor(Comparator.class);
                    if (!constructor.isAccessible()) {
                        try {
                            constructor.setAccessible(true);
                        } catch (SecurityException unused) {
                        }
                    }
                    return constructor.newInstance(comparator);
                } catch (Exception e) {
                    throw new KryoException(e);
                }
            }
            return new TreeMap(comparator);
        }

        @Override // com.esotericsoftware.kryo.serializers.MapSerializer
        public TreeMap create(Kryo kryo, Input input, Class<? extends TreeMap> cls, int i) {
            return m23243a(cls, (Comparator) kryo.readClassAndObject(input));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.esotericsoftware.kryo.serializers.MapSerializer
        public TreeMap createCopy(Kryo kryo, TreeMap treeMap) {
            return m23243a(treeMap.getClass(), treeMap.comparator());
        }

        @Override // com.esotericsoftware.kryo.serializers.MapSerializer
        public void writeHeader(Kryo kryo, Output output, TreeMap treeMap) {
            kryo.writeClassAndObject(output, treeMap.comparator());
        }
    }

    /* loaded from: classes.dex */
    public static class TreeSetSerializer extends CollectionSerializer<TreeSet> {
        /* renamed from: a */
        public final TreeSet m23242a(Class<? extends Collection> cls, Comparator comparator) {
            if (cls != TreeSet.class && cls != null) {
                try {
                    Constructor<? extends Collection> constructor = cls.getConstructor(Comparator.class);
                    if (!constructor.isAccessible()) {
                        try {
                            constructor.setAccessible(true);
                        } catch (SecurityException unused) {
                        }
                    }
                    return (TreeSet) constructor.newInstance(comparator);
                } catch (Exception e) {
                    throw new KryoException(e);
                }
            }
            return new TreeSet(comparator);
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer
        public TreeSet create(Kryo kryo, Input input, Class<? extends TreeSet> cls, int i) {
            return m23242a(cls, (Comparator) kryo.readClassAndObject(input));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer
        public TreeSet createCopy(Kryo kryo, TreeSet treeSet) {
            return m23242a(treeSet.getClass(), treeSet.comparator());
        }

        @Override // com.esotericsoftware.kryo.serializers.CollectionSerializer
        public void writeHeader(Kryo kryo, Output output, TreeSet treeSet) {
            kryo.writeClassAndObject(output, treeSet.comparator());
        }
    }

    /* loaded from: classes.dex */
    public static class URLSerializer extends ImmutableSerializer<URL> {
        @Override // com.esotericsoftware.kryo.Serializer
        public /* bridge */ /* synthetic */ Object read(Kryo kryo, Input input, Class cls) {
            return read(kryo, input, (Class<? extends URL>) cls);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public URL read(Kryo kryo, Input input, Class<? extends URL> cls) {
            try {
                return new URL(input.readString());
            } catch (MalformedURLException e) {
                throw new KryoException(e);
            }
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, URL url) {
            output.writeString(url.toExternalForm());
        }
    }

    /* loaded from: classes.dex */
    public static class VoidSerializer extends ImmutableSerializer {
        @Override // com.esotericsoftware.kryo.Serializer
        public Object read(Kryo kryo, Input input, Class cls) {
            return null;
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Object obj) {
        }
    }
}
