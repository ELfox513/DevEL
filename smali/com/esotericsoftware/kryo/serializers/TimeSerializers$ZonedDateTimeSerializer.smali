.class public Lcom/esotericsoftware/kryo/serializers/TimeSerializers$ZonedDateTimeSerializer;
.super Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/TimeSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZonedDateTimeSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer<",
        "Ljava/time/ZonedDateTime;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$ZonedDateTimeSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/time/ZonedDateTime;
    .locals 0

    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalDateSerializer;->a(Lcom/esotericsoftware/kryo/io/Input;)Ljava/time/LocalDate;

    move-result-object p1

    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;->a(Lcom/esotericsoftware/kryo/io/Input;)Ljava/time/LocalTime;

    move-result-object p3

    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$ZoneIdSerializer;->a(Lcom/esotericsoftware/kryo/io/Input;)Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p3, p2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/time/ZonedDateTime;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$ZonedDateTimeSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/time/ZonedDateTime;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/time/ZonedDateTime;)V
    .locals 0

    invoke-virtual {p3}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalDateSerializer;->b(Lcom/esotericsoftware/kryo/io/Output;Ljava/time/LocalDate;)V

    invoke-virtual {p3}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;->b(Lcom/esotericsoftware/kryo/io/Output;Ljava/time/LocalTime;)V

    invoke-virtual {p3}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$ZoneIdSerializer;->b(Lcom/esotericsoftware/kryo/io/Output;Ljava/time/ZoneId;)V

    return-void
.end method
