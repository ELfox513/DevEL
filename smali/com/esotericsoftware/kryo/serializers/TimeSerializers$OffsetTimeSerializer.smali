.class public Lcom/esotericsoftware/kryo/serializers/TimeSerializers$OffsetTimeSerializer;
.super Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/TimeSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OffsetTimeSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer<",
        "Ljava/time/OffsetTime;",
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$OffsetTimeSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/time/OffsetTime;
    .locals 0

    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;->a(Lcom/esotericsoftware/kryo/io/Input;)Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$ZoneOffsetSerializer;->a(Lcom/esotericsoftware/kryo/io/Input;)Ljava/time/ZoneOffset;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/time/OffsetTime;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$OffsetTimeSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/time/OffsetTime;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/time/OffsetTime;)V
    .locals 0

    invoke-virtual {p3}, Ljava/time/OffsetTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalTimeSerializer;->b(Lcom/esotericsoftware/kryo/io/Output;Ljava/time/LocalTime;)V

    invoke-virtual {p3}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$ZoneOffsetSerializer;->b(Lcom/esotericsoftware/kryo/io/Output;Ljava/time/ZoneOffset;)V

    return-void
.end method
