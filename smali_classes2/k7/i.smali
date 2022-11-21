.class public final Lk7/i;
.super Lo7/y;
.source "SourceFile"

# interfaces
.implements Lk7/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/y<",
        "Lk7/i;",
        "Lk7/i$b;",
        ">;",
        "Lk7/j;"
    }
.end annotation


# static fields
.field public static final APPLICATION_INFO_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lk7/i;

.field public static final GAUGE_METRIC_FIELD_NUMBER:I = 0x4

.field public static final NETWORK_REQUEST_METRIC_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lo7/a1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/a1<",
            "Lk7/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRACE_METRIC_FIELD_NUMBER:I = 0x2

.field public static final TRANSPORT_INFO_FIELD_NUMBER:I = 0x5


# instance fields
.field private applicationInfo_:Lk7/c;

.field private bitField0_:I

.field private gaugeMetric_:Lk7/g;

.field private networkRequestMetric_:Lk7/h;

.field private traceMetric_:Lk7/m;

.field private transportInfo_:Lk7/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk7/i;

    invoke-direct {v0}, Lk7/i;-><init>()V

    sput-object v0, Lk7/i;->DEFAULT_INSTANCE:Lk7/i;

    const-class v1, Lk7/i;

    invoke-static {v1, v0}, Lo7/y;->O(Ljava/lang/Class;Lo7/y;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo7/y;-><init>()V

    return-void
.end method

.method public static synthetic Q()Lk7/i;
    .locals 1

    sget-object v0, Lk7/i;->DEFAULT_INSTANCE:Lk7/i;

    return-object v0
.end method

.method public static synthetic R(Lk7/i;Lk7/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/i;->Y(Lk7/c;)V

    return-void
.end method

.method public static synthetic S(Lk7/i;Lk7/g;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/i;->Z(Lk7/g;)V

    return-void
.end method

.method public static synthetic T(Lk7/i;Lk7/m;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/i;->b0(Lk7/m;)V

    return-void
.end method

.method public static synthetic U(Lk7/i;Lk7/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/i;->a0(Lk7/h;)V

    return-void
.end method

.method public static X()Lk7/i$b;
    .locals 1

    sget-object v0, Lk7/i;->DEFAULT_INSTANCE:Lk7/i;

    invoke-virtual {v0}, Lo7/y;->y()Lo7/y$a;

    move-result-object v0

    check-cast v0, Lk7/i$b;

    return-object v0
.end method


# virtual methods
.method public final B(Lo7/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lk7/i$a;->a:[I

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
    sget-object p1, Lk7/i;->PARSER:Lo7/a1;

    if-nez p1, :cond_1

    const-class p2, Lk7/i;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lk7/i;->PARSER:Lo7/a1;

    if-nez p1, :cond_0

    new-instance p1, Lo7/y$b;

    sget-object p3, Lk7/i;->DEFAULT_INSTANCE:Lk7/i;

    invoke-direct {p1, p3}, Lo7/y$b;-><init>(Lo7/y;)V

    sput-object p1, Lk7/i;->PARSER:Lo7/a1;

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
    sget-object p1, Lk7/i;->DEFAULT_INSTANCE:Lk7/i;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "applicationInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "traceMetric_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "networkRequestMetric_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "gaugeMetric_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "transportInfo_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u1009\u0004"

    sget-object p3, Lk7/i;->DEFAULT_INSTANCE:Lk7/i;

    invoke-static {p3, p2, p1}, Lo7/y;->M(Lo7/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lk7/i$b;

    invoke-direct {p1, p3}, Lk7/i$b;-><init>(Lk7/i$a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lk7/i;

    invoke-direct {p1}, Lk7/i;-><init>()V

    return-object p1

    nop

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

.method public V()Lk7/c;
    .locals 1

    iget-object v0, p0, Lk7/i;->applicationInfo_:Lk7/c;

    if-nez v0, :cond_0

    invoke-static {}, Lk7/c;->X()Lk7/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public W()Z
    .locals 2

    iget v0, p0, Lk7/i;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final Y(Lk7/c;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lk7/i;->applicationInfo_:Lk7/c;

    iget p1, p0, Lk7/i;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lk7/i;->bitField0_:I

    return-void
.end method

.method public final Z(Lk7/g;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lk7/i;->gaugeMetric_:Lk7/g;

    iget p1, p0, Lk7/i;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lk7/i;->bitField0_:I

    return-void
.end method

.method public final a0(Lk7/h;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lk7/i;->networkRequestMetric_:Lk7/h;

    iget p1, p0, Lk7/i;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lk7/i;->bitField0_:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lk7/i;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b0(Lk7/m;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lk7/i;->traceMetric_:Lk7/m;

    iget p1, p0, Lk7/i;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lk7/i;->bitField0_:I

    return-void
.end method

.method public i()Z
    .locals 1

    iget v0, p0, Lk7/i;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Lk7/m;
    .locals 1

    iget-object v0, p0, Lk7/i;->traceMetric_:Lk7/m;

    if-nez v0, :cond_0

    invoke-static {}, Lk7/m;->j0()Lk7/m;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public n()Z
    .locals 1

    iget v0, p0, Lk7/i;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Lk7/h;
    .locals 1

    iget-object v0, p0, Lk7/i;->networkRequestMetric_:Lk7/h;

    if-nez v0, :cond_0

    invoke-static {}, Lk7/h;->i0()Lk7/h;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public t()Lk7/g;
    .locals 1

    iget-object v0, p0, Lk7/i;->gaugeMetric_:Lk7/g;

    if-nez v0, :cond_0

    invoke-static {}, Lk7/g;->b0()Lk7/g;

    move-result-object v0

    :cond_0
    return-object v0
.end method
