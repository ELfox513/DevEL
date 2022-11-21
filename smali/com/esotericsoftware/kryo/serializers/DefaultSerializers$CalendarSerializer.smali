.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/DefaultSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->c:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Calendar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Calendar;",
            ">;)",
            "Ljava/util/Calendar;"
        }
    .end annotation

    iget-object p3, p0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->c:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    const-class v0, Ljava/util/TimeZone;

    invoke-virtual {p3, p1, p2, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide p2

    const-wide v0, -0xb1d069b5400L

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    instance-of v0, p1, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/GregorianCalendar;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Calendar;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Calendar;)V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;->c:Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/TimeZone;)V

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-virtual {p2, v0, v1, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    invoke-virtual {p3}, Ljava/util/Calendar;->isLenient()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    invoke-virtual {p3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    invoke-virtual {p3}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    instance-of p1, p3, Ljava/util/GregorianCalendar;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p3, Ljava/util/GregorianCalendar;

    invoke-virtual {p3}, Ljava/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    goto :goto_0

    :cond_0
    const-wide v1, -0xb1d069b5400L

    invoke-virtual {p2, v1, v2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarLong(JZ)I

    :goto_0
    return-void
.end method
