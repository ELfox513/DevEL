package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.util.Util;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.MonthDay;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.Period;
import java.time.Year;
import java.time.YearMonth;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
/* loaded from: classes.dex */
public final class TimeSerializers {

    /* loaded from: classes.dex */
    public static class DurationSerializer extends ImmutableSerializer<Duration> {
        @Override // com.esotericsoftware.kryo.Serializer
        public Duration read(Kryo kryo, Input input, Class cls) {
            return Duration.ofSeconds(input.readLong(), input.readInt(true));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Duration duration) {
            output.writeLong(duration.getSeconds());
            output.writeInt(duration.getNano(), true);
        }
    }

    /* loaded from: classes.dex */
    public static class InstantSerializer extends ImmutableSerializer<Instant> {
        @Override // com.esotericsoftware.kryo.Serializer
        public Instant read(Kryo kryo, Input input, Class cls) {
            return Instant.ofEpochSecond(input.readVarLong(true), input.readInt(true));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Instant instant) {
            output.writeVarLong(instant.getEpochSecond(), true);
            output.writeInt(instant.getNano(), true);
        }
    }

    /* loaded from: classes.dex */
    public static class LocalDateSerializer extends ImmutableSerializer<LocalDate> {
        /* renamed from: a */
        public static LocalDate m23219a(Input input) {
            return LocalDate.of(input.readInt(true), input.readByte(), input.readByte());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public LocalDate read(Kryo kryo, Input input, Class cls) {
            return m23219a(input);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, LocalDate localDate) {
            m23218b(output, localDate);
        }

        /* renamed from: b */
        public static void m23218b(Output output, LocalDate localDate) {
            output.writeInt(localDate.getYear(), true);
            output.writeByte(localDate.getMonthValue());
            output.writeByte(localDate.getDayOfMonth());
        }
    }

    /* loaded from: classes.dex */
    public static class LocalDateTimeSerializer extends ImmutableSerializer<LocalDateTime> {
        @Override // com.esotericsoftware.kryo.Serializer
        public LocalDateTime read(Kryo kryo, Input input, Class cls) {
            return LocalDateTime.of(LocalDateSerializer.m23219a(input), LocalTimeSerializer.m23217a(input));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, LocalDateTime localDateTime) {
            LocalDateSerializer.m23218b(output, localDateTime.toLocalDate());
            LocalTimeSerializer.m23216b(output, localDateTime.toLocalTime());
        }
    }

    /* loaded from: classes.dex */
    public static class LocalTimeSerializer extends ImmutableSerializer<LocalTime> {
        @Override // com.esotericsoftware.kryo.Serializer
        public LocalTime read(Kryo kryo, Input input, Class cls) {
            return m23217a(input);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, LocalTime localTime) {
            m23216b(output, localTime);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* renamed from: a */
        public static LocalTime m23217a(Input input) {
            byte b;
            int i;
            byte b2;
            int readByte = input.readByte();
            byte b3 = 0;
            if (readByte < 0) {
                readByte ^= -1;
                b2 = 0;
            } else {
                byte readByte2 = input.readByte();
                if (readByte2 < 0) {
                    int i2 = readByte2 ^ (-1);
                    i = 0;
                    b3 = i2 == 1 ? 1 : 0;
                    b = 0;
                } else {
                    byte readByte3 = input.readByte();
                    if (readByte3 < 0) {
                        b3 = readByte2;
                        b2 = readByte3 ^ (-1);
                    } else {
                        int readInt = input.readInt(true);
                        b = readByte3;
                        i = readInt;
                        b3 = readByte2;
                    }
                }
                return LocalTime.of(readByte, b3, b, i);
            }
            i = 0;
            b = b2;
            return LocalTime.of(readByte, b3, b, i);
        }

        /* renamed from: b */
        public static void m23216b(Output output, LocalTime localTime) {
            if (localTime.getNano() == 0) {
                if (localTime.getSecond() == 0) {
                    if (localTime.getMinute() == 0) {
                        output.writeByte(localTime.getHour() ^ (-1));
                        return;
                    }
                    output.writeByte(localTime.getHour());
                    output.writeByte(localTime.getMinute() ^ (-1));
                    return;
                }
                output.writeByte(localTime.getHour());
                output.writeByte(localTime.getMinute());
                output.writeByte(localTime.getSecond() ^ (-1));
                return;
            }
            output.writeByte(localTime.getHour());
            output.writeByte(localTime.getMinute());
            output.writeByte(localTime.getSecond());
            output.writeInt(localTime.getNano(), true);
        }
    }

    /* loaded from: classes.dex */
    public static class MonthDaySerializer extends ImmutableSerializer<MonthDay> {
        @Override // com.esotericsoftware.kryo.Serializer
        public MonthDay read(Kryo kryo, Input input, Class cls) {
            return MonthDay.of(input.readByte(), input.readByte());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, MonthDay monthDay) {
            output.writeByte(monthDay.getMonthValue());
            output.writeByte(monthDay.getDayOfMonth());
        }
    }

    /* loaded from: classes.dex */
    public static class OffsetDateTimeSerializer extends ImmutableSerializer<OffsetDateTime> {
        @Override // com.esotericsoftware.kryo.Serializer
        public OffsetDateTime read(Kryo kryo, Input input, Class cls) {
            return OffsetDateTime.of(LocalDateSerializer.m23219a(input), LocalTimeSerializer.m23217a(input), ZoneOffsetSerializer.m23213a(input));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, OffsetDateTime offsetDateTime) {
            LocalDateSerializer.m23218b(output, offsetDateTime.toLocalDate());
            LocalTimeSerializer.m23216b(output, offsetDateTime.toLocalTime());
            ZoneOffsetSerializer.m23212b(output, offsetDateTime.getOffset());
        }
    }

    /* loaded from: classes.dex */
    public static class OffsetTimeSerializer extends ImmutableSerializer<OffsetTime> {
        @Override // com.esotericsoftware.kryo.Serializer
        public OffsetTime read(Kryo kryo, Input input, Class cls) {
            return OffsetTime.of(LocalTimeSerializer.m23217a(input), ZoneOffsetSerializer.m23213a(input));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, OffsetTime offsetTime) {
            LocalTimeSerializer.m23216b(output, offsetTime.toLocalTime());
            ZoneOffsetSerializer.m23212b(output, offsetTime.getOffset());
        }
    }

    /* loaded from: classes.dex */
    public static class PeriodSerializer extends ImmutableSerializer<Period> {
        @Override // com.esotericsoftware.kryo.Serializer
        public Period read(Kryo kryo, Input input, Class cls) {
            return Period.of(input.readInt(true), input.readInt(true), input.readInt(true));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Period period) {
            output.writeVarInt(period.getYears(), true);
            output.writeVarInt(period.getMonths(), true);
            output.writeVarInt(period.getDays(), true);
        }
    }

    /* loaded from: classes.dex */
    public static class YearMonthSerializer extends ImmutableSerializer<YearMonth> {
        @Override // com.esotericsoftware.kryo.Serializer
        public YearMonth read(Kryo kryo, Input input, Class cls) {
            return YearMonth.of(input.readInt(true), input.readByte());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, YearMonth yearMonth) {
            output.writeVarInt(yearMonth.getYear(), true);
            output.writeByte(yearMonth.getMonthValue());
        }
    }

    /* loaded from: classes.dex */
    public static class YearSerializer extends ImmutableSerializer<Year> {
        @Override // com.esotericsoftware.kryo.Serializer
        public Year read(Kryo kryo, Input input, Class cls) {
            return Year.of(input.readInt(true));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, Year year) {
            output.writeVarInt(year.getValue(), true);
        }
    }

    /* loaded from: classes.dex */
    public static class ZoneIdSerializer extends ImmutableSerializer<ZoneId> {
        /* renamed from: b */
        public static void m23214b(Output output, ZoneId zoneId) {
            output.writeString(zoneId.getId());
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public ZoneId read(Kryo kryo, Input input, Class cls) {
            return m23215a(input);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, ZoneId zoneId) {
            m23214b(output, zoneId);
        }

        /* renamed from: a */
        public static ZoneId m23215a(Input input) {
            return ZoneId.of(input.readString());
        }
    }

    /* loaded from: classes.dex */
    public static class ZoneOffsetSerializer extends ImmutableSerializer<ZoneOffset> {
        @Override // com.esotericsoftware.kryo.Serializer
        public ZoneOffset read(Kryo kryo, Input input, Class cls) {
            return m23213a(input);
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, ZoneOffset zoneOffset) {
            m23212b(output, zoneOffset);
        }

        /* renamed from: a */
        public static ZoneOffset m23213a(Input input) {
            byte readByte = input.readByte();
            if (readByte == Byte.MAX_VALUE) {
                return ZoneOffset.ofTotalSeconds(input.readInt());
            }
            return ZoneOffset.ofTotalSeconds(readByte * 900);
        }

        /* renamed from: b */
        public static void m23212b(Output output, ZoneOffset zoneOffset) {
            int i;
            int totalSeconds = zoneOffset.getTotalSeconds();
            if (totalSeconds % 900 == 0) {
                i = totalSeconds / 900;
            } else {
                i = 127;
            }
            output.writeByte(i);
            if (i == 127) {
                output.writeInt(totalSeconds);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class ZonedDateTimeSerializer extends ImmutableSerializer<ZonedDateTime> {
        @Override // com.esotericsoftware.kryo.Serializer
        public ZonedDateTime read(Kryo kryo, Input input, Class cls) {
            return ZonedDateTime.of(LocalDateSerializer.m23219a(input), LocalTimeSerializer.m23217a(input), ZoneIdSerializer.m23215a(input));
        }

        @Override // com.esotericsoftware.kryo.Serializer
        public void write(Kryo kryo, Output output, ZonedDateTime zonedDateTime) {
            LocalDateSerializer.m23218b(output, zonedDateTime.toLocalDate());
            LocalTimeSerializer.m23216b(output, zonedDateTime.toLocalTime());
            ZoneIdSerializer.m23214b(output, zonedDateTime.getZone());
        }
    }

    public static void addDefaultSerializers(Kryo kryo) {
        if (Util.isClassAvailable("java.time.Duration")) {
            kryo.addDefaultSerializer(Duration.class, DurationSerializer.class);
        }
        if (Util.isClassAvailable("java.time.Instant")) {
            kryo.addDefaultSerializer(Instant.class, InstantSerializer.class);
        }
        if (Util.isClassAvailable("java.time.LocalDate")) {
            kryo.addDefaultSerializer(LocalDate.class, LocalDateSerializer.class);
        }
        if (Util.isClassAvailable("java.time.LocalTime")) {
            kryo.addDefaultSerializer(LocalTime.class, LocalTimeSerializer.class);
        }
        if (Util.isClassAvailable("java.time.LocalDateTime")) {
            kryo.addDefaultSerializer(LocalDateTime.class, LocalDateTimeSerializer.class);
        }
        if (Util.isClassAvailable("java.time.ZoneOffset")) {
            kryo.addDefaultSerializer(ZoneOffset.class, ZoneOffsetSerializer.class);
        }
        if (Util.isClassAvailable("java.time.ZoneId")) {
            kryo.addDefaultSerializer(ZoneId.class, ZoneIdSerializer.class);
        }
        if (Util.isClassAvailable("java.time.OffsetTime")) {
            kryo.addDefaultSerializer(OffsetTime.class, OffsetTimeSerializer.class);
        }
        if (Util.isClassAvailable("java.time.OffsetDateTime")) {
            kryo.addDefaultSerializer(OffsetDateTime.class, OffsetDateTimeSerializer.class);
        }
        if (Util.isClassAvailable("java.time.ZonedDateTime")) {
            kryo.addDefaultSerializer(ZonedDateTime.class, ZonedDateTimeSerializer.class);
        }
        if (Util.isClassAvailable("java.time.Year")) {
            kryo.addDefaultSerializer(Year.class, YearSerializer.class);
        }
        if (Util.isClassAvailable("java.time.YearMonth")) {
            kryo.addDefaultSerializer(YearMonth.class, YearMonthSerializer.class);
        }
        if (Util.isClassAvailable("java.time.MonthDay")) {
            kryo.addDefaultSerializer(MonthDay.class, MonthDaySerializer.class);
        }
        if (Util.isClassAvailable("java.time.Period")) {
            kryo.addDefaultSerializer(Period.class, PeriodSerializer.class);
        }
    }
}
