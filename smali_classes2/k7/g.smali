.class public final Lk7/g;
.super Lo7/y;
.source "SourceFile"

# interfaces
.implements Lo7/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/y<",
        "Lk7/g;",
        "Lk7/g$b;",
        ">;",
        "Lo7/t0;"
    }
.end annotation


# static fields
.field public static final ANDROID_MEMORY_READINGS_FIELD_NUMBER:I = 0x4

.field public static final CPU_METRIC_READINGS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lk7/g;

.field public static final GAUGE_METADATA_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lo7/a1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/a1<",
            "Lk7/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private androidMemoryReadings_:Lo7/a0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/a0$i<",
            "Lk7/b;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private cpuMetricReadings_:Lo7/a0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/a0$i<",
            "Lk7/e;",
            ">;"
        }
    .end annotation
.end field

.field private gaugeMetadata_:Lk7/f;

.field private sessionId_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk7/g;

    invoke-direct {v0}, Lk7/g;-><init>()V

    sput-object v0, Lk7/g;->DEFAULT_INSTANCE:Lk7/g;

    const-class v1, Lk7/g;

    invoke-static {v1, v0}, Lo7/y;->O(Ljava/lang/Class;Lo7/y;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo7/y;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lk7/g;->sessionId_:Ljava/lang/String;

    invoke-static {}, Lo7/y;->D()Lo7/a0$i;

    move-result-object v0

    iput-object v0, p0, Lk7/g;->cpuMetricReadings_:Lo7/a0$i;

    invoke-static {}, Lo7/y;->D()Lo7/a0$i;

    move-result-object v0

    iput-object v0, p0, Lk7/g;->androidMemoryReadings_:Lo7/a0$i;

    return-void
.end method

.method public static synthetic Q()Lk7/g;
    .locals 1

    sget-object v0, Lk7/g;->DEFAULT_INSTANCE:Lk7/g;

    return-object v0
.end method

.method public static synthetic R(Lk7/g;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/g;->h0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic S(Lk7/g;Lk7/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/g;->V(Lk7/b;)V

    return-void
.end method

.method public static synthetic T(Lk7/g;Lk7/f;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/g;->g0(Lk7/f;)V

    return-void
.end method

.method public static synthetic U(Lk7/g;Lk7/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/g;->W(Lk7/e;)V

    return-void
.end method

.method public static b0()Lk7/g;
    .locals 1

    sget-object v0, Lk7/g;->DEFAULT_INSTANCE:Lk7/g;

    return-object v0
.end method

.method public static f0()Lk7/g$b;
    .locals 1

    sget-object v0, Lk7/g;->DEFAULT_INSTANCE:Lk7/g;

    invoke-virtual {v0}, Lo7/y;->y()Lo7/y$a;

    move-result-object v0

    check-cast v0, Lk7/g$b;

    return-object v0
.end method


# virtual methods
.method public final B(Lo7/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lk7/g$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lk7/g;->PARSER:Lo7/a1;

    if-nez p1, :cond_1

    const-class p2, Lk7/g;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lk7/g;->PARSER:Lo7/a1;

    if-nez p1, :cond_0

    new-instance p1, Lo7/y$b;

    sget-object p3, Lk7/g;->DEFAULT_INSTANCE:Lk7/g;

    invoke-direct {p1, p3}, Lo7/y$b;-><init>(Lo7/y;)V

    sput-object p1, Lk7/g;->PARSER:Lo7/a1;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lk7/g;->DEFAULT_INSTANCE:Lk7/g;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "sessionId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "cpuMetricReadings_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lk7/e;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "gaugeMetadata_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "androidMemoryReadings_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lk7/b;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1009\u0001\u0004\u001b"

    sget-object p3, Lk7/g;->DEFAULT_INSTANCE:Lk7/g;

    invoke-static {p3, p2, p1}, Lo7/y;->M(Lo7/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lk7/g$b;

    invoke-direct {p1, p3}, Lk7/g$b;-><init>(Lk7/g$a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lk7/g;

    invoke-direct {p1}, Lk7/g;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final V(Lk7/b;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lk7/g;->X()V

    iget-object v0, p0, Lk7/g;->androidMemoryReadings_:Lo7/a0$i;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final W(Lk7/e;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lk7/g;->Y()V

    iget-object v0, p0, Lk7/g;->cpuMetricReadings_:Lo7/a0$i;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final X()V
    .locals 2

    iget-object v0, p0, Lk7/g;->androidMemoryReadings_:Lo7/a0$i;

    invoke-interface {v0}, Lo7/a0$i;->V0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lo7/y;->K(Lo7/a0$i;)Lo7/a0$i;

    move-result-object v0

    iput-object v0, p0, Lk7/g;->androidMemoryReadings_:Lo7/a0$i;

    :cond_0
    return-void
.end method

.method public final Y()V
    .locals 2

    iget-object v0, p0, Lk7/g;->cpuMetricReadings_:Lo7/a0$i;

    invoke-interface {v0}, Lo7/a0$i;->V0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lo7/y;->K(Lo7/a0$i;)Lo7/a0$i;

    move-result-object v0

    iput-object v0, p0, Lk7/g;->cpuMetricReadings_:Lo7/a0$i;

    :cond_0
    return-void
.end method

.method public Z()I
    .locals 1

    iget-object v0, p0, Lk7/g;->androidMemoryReadings_:Lo7/a0$i;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a0()I
    .locals 1

    iget-object v0, p0, Lk7/g;->cpuMetricReadings_:Lo7/a0$i;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c0()Lk7/f;
    .locals 1

    iget-object v0, p0, Lk7/g;->gaugeMetadata_:Lk7/f;

    if-nez v0, :cond_0

    invoke-static {}, Lk7/f;->V()Lk7/f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public d0()Z
    .locals 1

    iget v0, p0, Lk7/g;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e0()Z
    .locals 2

    iget v0, p0, Lk7/g;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final g0(Lk7/f;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lk7/g;->gaugeMetadata_:Lk7/f;

    iget p1, p0, Lk7/g;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lk7/g;->bitField0_:I

    return-void
.end method

.method public final h0(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lk7/g;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk7/g;->bitField0_:I

    iput-object p1, p0, Lk7/g;->sessionId_:Ljava/lang/String;

    return-void
.end method
