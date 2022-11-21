.class public Lcom/prineside/luaj/lib/OsLib;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/OsLib$OsLibFunc;
    }
.end annotation


# static fields
.field public static A:J = 0x0L

.field public static final B:[Ljava/lang/String;

.field public static final C:[Ljava/lang/String;

.field public static final D:[Ljava/lang/String;

.field public static final E:[Ljava/lang/String;

.field public static final TMP_PREFIX:Ljava/lang/String; = ".luaj"

.field public static final TMP_SUFFIX:Ljava/lang/String; = "tmp"

.field public static final y:[Ljava/lang/String;

.field public static final z:J


# instance fields
.field public x:Lcom/prineside/luaj/Globals;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const/16 v0, 0xb

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "clock"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "date"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "difftime"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "execute"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "exit"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "getenv"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "remove"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "rename"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "setlocale"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "time"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "tmpname"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    sput-object v1, Lcom/prineside/luaj/lib/OsLib;->y:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/prineside/luaj/lib/OsLib;->z:J

    sput-wide v1, Lcom/prineside/luaj/lib/OsLib;->A:J

    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "Sun"

    aput-object v2, v1, v3

    const-string v2, "Mon"

    aput-object v2, v1, v4

    const-string v2, "Tue"

    aput-object v2, v1, v5

    const-string v2, "Wed"

    aput-object v2, v1, v6

    const-string v2, "Thu"

    aput-object v2, v1, v7

    const-string v2, "Fri"

    aput-object v2, v1, v8

    const-string v2, "Sat"

    aput-object v2, v1, v9

    sput-object v1, Lcom/prineside/luaj/lib/OsLib;->B:[Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "Sunday"

    aput-object v2, v1, v3

    const-string v2, "Monday"

    aput-object v2, v1, v4

    const-string v2, "Tuesday"

    aput-object v2, v1, v5

    const-string v2, "Wednesday"

    aput-object v2, v1, v6

    const-string v2, "Thursday"

    aput-object v2, v1, v7

    const-string v2, "Friday"

    aput-object v2, v1, v8

    const-string v2, "Saturday"

    aput-object v2, v1, v9

    sput-object v1, Lcom/prineside/luaj/lib/OsLib;->C:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v2, v1, [Ljava/lang/String;

    const-string v14, "Jan"

    aput-object v14, v2, v3

    const-string v14, "Feb"

    aput-object v14, v2, v4

    const-string v14, "Mar"

    aput-object v14, v2, v5

    const-string v14, "Apr"

    aput-object v14, v2, v6

    const-string v14, "May"

    aput-object v14, v2, v7

    const-string v15, "Jun"

    aput-object v15, v2, v8

    const-string v15, "Jul"

    aput-object v15, v2, v9

    const-string v15, "Aug"

    aput-object v15, v2, v10

    const-string v15, "Sep"

    aput-object v15, v2, v11

    const-string v15, "Oct"

    aput-object v15, v2, v12

    const-string v15, "Nov"

    aput-object v15, v2, v13

    const-string v15, "Dec"

    aput-object v15, v2, v0

    sput-object v2, Lcom/prineside/luaj/lib/OsLib;->D:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "January"

    aput-object v2, v1, v3

    const-string v2, "February"

    aput-object v2, v1, v4

    const-string v2, "March"

    aput-object v2, v1, v5

    const-string v2, "April"

    aput-object v2, v1, v6

    aput-object v14, v1, v7

    const-string v2, "June"

    aput-object v2, v1, v8

    const-string v2, "July"

    aput-object v2, v1, v9

    const-string v2, "August"

    aput-object v2, v1, v10

    const-string v2, "September"

    aput-object v2, v1, v11

    const-string v2, "October"

    aput-object v2, v1, v12

    const-string v2, "November"

    aput-object v2, v1, v13

    const-string v2, "December"

    aput-object v2, v1, v0

    sput-object v1, Lcom/prineside/luaj/lib/OsLib;->E:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method public static synthetic s(Lcom/prineside/luaj/lib/OsLib;Ljava/util/Calendar;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/lib/OsLib;->z(Ljava/util/Calendar;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/io/IOException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "C"

    return-object p1
.end method

.method public D(Lcom/prineside/luaj/LuaTable;)D
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "year"

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    const-string v3, "month"

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    const-string v2, "day"

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    const-string v2, "hour"

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/prineside/luaj/LuaValue;->optint(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const-string v1, "min"

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/LuaValue;->optint(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    const-string v3, "sec"

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/LuaValue;->optint(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final E(Ljava/util/Calendar;)I
    .locals 8

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v7, v0, 0x3e8

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v7}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    return p1
.end method

.method public F()Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/prineside/luaj/lib/OsLib;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".luaj"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/prineside/luaj/lib/OsLib;->A:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/prineside/luaj/lib/OsLib;->A:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final G(Ljava/util/Calendar;I)I
    .locals 5

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/lib/OsLib;->t(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    add-int/lit8 p2, p2, 0x8

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v2, p2, v2

    rem-int/2addr v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr p2, v2

    rem-int/2addr p2, v1

    add-int/2addr p2, v3

    invoke-virtual {v0, v4, p2}, Ljava/util/Calendar;->set(II)V

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x240c8400

    div-long/2addr p1, v0

    long-to-int p2, p1

    add-int/2addr p2, v3

    return p2
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkglobals()Lcom/prineside/luaj/Globals;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/lib/OsLib;->x:Lcom/prineside/luaj/Globals;

    new-instance p1, Lcom/prineside/luaj/LuaTable;

    invoke-direct {p1}, Lcom/prineside/luaj/LuaTable;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/prineside/luaj/lib/OsLib;->y:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    new-instance v2, Lcom/prineside/luaj/lib/OsLib$OsLibFunc;

    invoke-direct {v2, p0, v0, v1}, Lcom/prineside/luaj/lib/OsLib$OsLibFunc;-><init>(Lcom/prineside/luaj/lib/OsLib;ILjava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "os"

    invoke-virtual {p2, v0, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    const-string v1, "package"

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    const-string v1, "loaded"

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    :cond_1
    return-object p1
.end method

.method public date(Ljava/lang/String;D)Ljava/lang/String;
    .locals 12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v4, p2, v2

    double-to-long v4, v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string v1, "!"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/lib/OsLib;->E(Ljava/util/Calendar;)I

    move-result v1

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p2, v5

    new-instance v1, Ljava/util/Date;

    mul-double v2, v2, p2

    double-to-long v2, v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v1, p1

    new-instance v2, Lcom/prineside/luaj/Buffer;

    invoke-direct {v2, v1}, Lcom/prineside/luaj/Buffer;-><init>(I)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_11

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p1, v5

    const/16 v7, 0xa

    if-eq v5, v7, :cond_10

    const/16 v7, 0x25

    if-eq v5, v7, :cond_1

    invoke-virtual {v2, v5}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_3

    :cond_1
    if-lt v6, v1, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p1, v6

    if-eq v6, v7, :cond_f

    const/16 v7, 0x4d

    const/16 v8, 0xc

    if-eq v6, v7, :cond_e

    const/16 v7, 0x53

    if-eq v6, v7, :cond_d

    const/16 v7, 0x55

    if-eq v6, v7, :cond_c

    const/16 v7, 0x6a

    if-eq v6, v7, :cond_b

    const/16 v7, 0x6d

    const/4 v9, 0x2

    if-eq v6, v7, :cond_a

    const/16 v7, 0x70

    const/16 v10, 0xb

    if-eq v6, v7, :cond_8

    const/16 v7, 0x41

    const/4 v11, 0x7

    if-eq v6, v7, :cond_7

    const/16 v7, 0x42

    if-eq v6, v7, :cond_6

    const/16 v7, 0x48

    if-eq v6, v7, :cond_5

    const/16 v7, 0x49

    if-eq v6, v7, :cond_4

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid conversion specifier \'%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/lib/OsLib;->E(Ljava/util/Calendar;)I

    move-result v6

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    div-int/lit8 v8, v7, 0x3c

    add-int/lit8 v8, v8, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    rem-int/lit8 v7, v7, 0x3c

    add-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-ltz v6, :cond_3

    const-string v6, "+"

    goto :goto_1

    :cond_3
    const-string v6, "-"

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :pswitch_2
    const-string v6, "%m/%d/%y"

    invoke-virtual {p0, v6, p2, p3}, Lcom/prineside/luaj/lib/OsLib;->date(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    rem-int/2addr v6, v11

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :pswitch_4
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :pswitch_5
    const-string v6, "%a %b %d %H:%M:%S %Y"

    invoke-virtual {p0, v6, p2, p3}, Lcom/prineside/luaj/lib/OsLib;->date(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :pswitch_6
    sget-object v6, Lcom/prineside/luaj/lib/OsLib;->D:[Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :pswitch_7
    sget-object v6, Lcom/prineside/luaj/lib/OsLib;->B:[Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :pswitch_9
    const-string v6, "%H:%M:%S"

    invoke-virtual {p0, v6, p2, p3}, Lcom/prineside/luaj/lib/OsLib;->date(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0, v0, v4}, Lcom/prineside/luaj/lib/OsLib;->G(Ljava/util/Calendar;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    rem-int/2addr v6, v8

    add-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :cond_6
    sget-object v6, Lcom/prineside/luaj/lib/OsLib;->E:[Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :cond_7
    sget-object v6, Lcom/prineside/luaj/lib/OsLib;->C:[Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ge v6, v8, :cond_9

    const-string v6, "AM"

    goto :goto_2

    :cond_9
    const-string v6, "PM"

    :goto_2
    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x65

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/lib/OsLib;->t(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x5265c00

    div-long/2addr v7, v9

    long-to-int v6, v7

    add-int/lit16 v6, v6, 0x3e9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, v0, v3}, Lcom/prineside/luaj/lib/OsLib;->G(Ljava/util/Calendar;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :cond_d
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v2, v7}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    goto/16 :goto_0

    :cond_10
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    :goto_3
    move v5, v6

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v2}, Lcom/prineside/luaj/Buffer;->tojstring()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x77
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public u()D
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/prineside/luaj/lib/OsLib;->z:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public v(DD)D
    .locals 0

    sub-double/2addr p1, p3

    return-wide p1
.end method

.method public w(Ljava/lang/String;)Lcom/prineside/luaj/Varargs;
    .locals 2

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    const-string v0, "exit"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sget-object v1, Lcom/prineside/luaj/LuaValue;->ONE:Lcom/prineside/luaj/LuaNumber;

    invoke-static {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public x(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public y(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final z(Ljava/util/Calendar;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/lib/OsLib;->E(Ljava/util/Calendar;)I

    move-result v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
