.class public Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalDateSerializer;
.super Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/TimeSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalDateSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer<",
        "Ljava/time/LocalDate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;-><init>()V

    return-void
.end method

.method public static a(Lcom/esotericsoftware/kryo/io/Input;)Ljava/time/LocalDate;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result p0

    invoke-static {v0, v1, p0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/esotericsoftware/kryo/io/Output;Ljava/time/LocalDate;)V
    .locals 2

    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalDateSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/time/LocalDate;
    .locals 0

    invoke-static {p2}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalDateSerializer;->a(Lcom/esotericsoftware/kryo/io/Input;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/time/LocalDate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalDateSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/time/LocalDate;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/time/LocalDate;)V
    .locals 0

    invoke-static {p2, p3}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers$LocalDateSerializer;->b(Lcom/esotericsoftware/kryo/io/Output;Ljava/time/LocalDate;)V

    return-void
.end method
