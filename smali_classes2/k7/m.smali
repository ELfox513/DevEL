.class public final Lk7/m;
.super Lo7/y;
.source "SourceFile"

# interfaces
.implements Lo7/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/m$b;,
        Lk7/m$d;,
        Lk7/m$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/y<",
        "Lk7/m;",
        "Lk7/m$b;",
        ">;",
        "Lo7/t0;"
    }
.end annotation


# static fields
.field public static final CLIENT_START_TIME_US_FIELD_NUMBER:I = 0x4

.field public static final COUNTERS_FIELD_NUMBER:I = 0x6

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lk7/m;

.field public static final DURATION_US_FIELD_NUMBER:I = 0x5

.field public static final IS_AUTO_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo7/a1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/a1<",
            "Lk7/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERF_SESSIONS_FIELD_NUMBER:I = 0x9

.field public static final SUBTRACES_FIELD_NUMBER:I = 0x7


# instance fields
.field private bitField0_:I

.field private clientStartTimeUs_:J

.field private counters_:Lo7/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/m0<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private customAttributes_:Lo7/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/m0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs_:J

.field private isAuto_:Z

.field private name_:Ljava/lang/String;

.field private perfSessions_:Lo7/a0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/a0$i<",
            "Lk7/k;",
            ">;"
        }
    .end annotation
.end field

.field private subtraces_:Lo7/a0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/a0$i<",
            "Lk7/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk7/m;

    invoke-direct {v0}, Lk7/m;-><init>()V

    sput-object v0, Lk7/m;->DEFAULT_INSTANCE:Lk7/m;

    const-class v1, Lk7/m;

    invoke-static {v1, v0}, Lo7/y;->O(Ljava/lang/Class;Lo7/y;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo7/y;-><init>()V

    invoke-static {}, Lo7/m0;->f()Lo7/m0;

    move-result-object v0

    iput-object v0, p0, Lk7/m;->counters_:Lo7/m0;

    invoke-static {}, Lo7/m0;->f()Lo7/m0;

    move-result-object v0

    iput-object v0, p0, Lk7/m;->customAttributes_:Lo7/m0;

    const-string v0, ""

    iput-object v0, p0, Lk7/m;->name_:Ljava/lang/String;

    invoke-static {}, Lo7/y;->D()Lo7/a0$i;

    move-result-object v0

    iput-object v0, p0, Lk7/m;->subtraces_:Lo7/a0$i;

    invoke-static {}, Lo7/y;->D()Lo7/a0$i;

    move-result-object v0

    iput-object v0, p0, Lk7/m;->perfSessions_:Lo7/a0$i;

    return-void
.end method

.method public static synthetic Q()Lk7/m;
    .locals 1

    sget-object v0, Lk7/m;->DEFAULT_INSTANCE:Lk7/m;

    return-object v0
.end method

.method public static synthetic R(Lk7/m;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/m;->y0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic S(Lk7/m;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lk7/m;->l0()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Lk7/m;Lk7/m;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/m;->d0(Lk7/m;)V

    return-void
.end method

.method public static synthetic U(Lk7/m;Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/m;->b0(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic V(Lk7/m;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lk7/m;->m0()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Lk7/m;Lk7/k;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/m;->c0(Lk7/k;)V

    return-void
.end method

.method public static synthetic X(Lk7/m;Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/m;->a0(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic Y(Lk7/m;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lk7/m;->w0(J)V

    return-void
.end method

.method public static synthetic Z(Lk7/m;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lk7/m;->x0(J)V

    return-void
.end method

.method public static j0()Lk7/m;
    .locals 1

    sget-object v0, Lk7/m;->DEFAULT_INSTANCE:Lk7/m;

    return-object v0
.end method

.method public static v0()Lk7/m$b;
    .locals 1

    sget-object v0, Lk7/m;->DEFAULT_INSTANCE:Lk7/m;

    invoke-virtual {v0}, Lo7/y;->y()Lo7/y$a;

    move-result-object v0

    check-cast v0, Lk7/m$b;

    return-object v0
.end method


# virtual methods
.method public final B(Lo7/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-class p2, Lk7/m;

    sget-object p3, Lk7/m$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lk7/m;->PARSER:Lo7/a1;

    if-nez p1, :cond_1

    monitor-enter p2

    :try_start_0
    sget-object p1, Lk7/m;->PARSER:Lo7/a1;

    if-nez p1, :cond_0

    new-instance p1, Lo7/y$b;

    sget-object p3, Lk7/m;->DEFAULT_INSTANCE:Lk7/m;

    invoke-direct {p1, p3}, Lo7/y$b;-><init>(Lo7/y;)V

    sput-object p1, Lk7/m;->PARSER:Lo7/a1;

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
    sget-object p1, Lk7/m;->DEFAULT_INSTANCE:Lk7/m;

    return-object p1

    :pswitch_4
    const/16 p1, 0xd

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "bitField0_"

    aput-object v1, p1, v0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const/4 p3, 0x2

    const-string v0, "isAuto_"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "clientStartTimeUs_"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    const-string v0, "durationUs_"

    aput-object v0, p1, p3

    const/4 p3, 0x5

    const-string v0, "counters_"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    sget-object v0, Lk7/m$c;->a:Lo7/l0;

    aput-object v0, p1, p3

    const/4 p3, 0x7

    const-string v0, "subtraces_"

    aput-object v0, p1, p3

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const/16 p2, 0x9

    const-string p3, "customAttributes_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    sget-object p3, Lk7/m$d;->a:Lo7/l0;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "perfSessions_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lk7/k;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\t\u0008\u0002\u0002\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0004\u1002\u0002\u0005\u1002\u0003\u00062\u0007\u001b\u00082\t\u001b"

    sget-object p3, Lk7/m;->DEFAULT_INSTANCE:Lk7/m;

    invoke-static {p3, p2, p1}, Lo7/y;->M(Lo7/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lk7/m$b;

    invoke-direct {p1, v0}, Lk7/m$b;-><init>(Lk7/m$a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lk7/m;

    invoke-direct {p1}, Lk7/m;-><init>()V

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

.method public final a0(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lk7/k;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lk7/m;->e0()V

    iget-object v0, p0, Lk7/m;->perfSessions_:Lo7/a0$i;

    invoke-static {p1, v0}, Lo7/a;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final b0(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lk7/m;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lk7/m;->f0()V

    iget-object v0, p0, Lk7/m;->subtraces_:Lo7/a0$i;

    invoke-static {p1, v0}, Lo7/a;->d(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final c0(Lk7/k;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lk7/m;->e0()V

    iget-object v0, p0, Lk7/m;->perfSessions_:Lo7/a0$i;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d0(Lk7/m;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lk7/m;->f0()V

    iget-object v0, p0, Lk7/m;->subtraces_:Lo7/a0$i;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e0()V
    .locals 2

    iget-object v0, p0, Lk7/m;->perfSessions_:Lo7/a0$i;

    invoke-interface {v0}, Lo7/a0$i;->V0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lo7/y;->K(Lo7/a0$i;)Lo7/a0$i;

    move-result-object v0

    iput-object v0, p0, Lk7/m;->perfSessions_:Lo7/a0$i;

    :cond_0
    return-void
.end method

.method public final f0()V
    .locals 2

    iget-object v0, p0, Lk7/m;->subtraces_:Lo7/a0$i;

    invoke-interface {v0}, Lo7/a0$i;->V0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lo7/y;->K(Lo7/a0$i;)Lo7/a0$i;

    move-result-object v0

    iput-object v0, p0, Lk7/m;->subtraces_:Lo7/a0$i;

    :cond_0
    return-void
.end method

.method public g0()I
    .locals 1

    invoke-virtual {p0}, Lk7/m;->r0()Lo7/m0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method

.method public h0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lk7/m;->r0()Lo7/m0;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public i0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lk7/m;->s0()Lo7/m0;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public k0()J
    .locals 2

    iget-wide v0, p0, Lk7/m;->durationUs_:J

    return-wide v0
.end method

.method public final l0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lk7/m;->t0()Lo7/m0;

    move-result-object v0

    return-object v0
.end method

.method public final m0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lk7/m;->u0()Lo7/m0;

    move-result-object v0

    return-object v0
.end method

.method public n0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk7/m;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public o0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk7/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk7/m;->perfSessions_:Lo7/a0$i;

    return-object v0
.end method

.method public p0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk7/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk7/m;->subtraces_:Lo7/a0$i;

    return-object v0
.end method

.method public q0()Z
    .locals 1

    iget v0, p0, Lk7/m;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r0()Lo7/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo7/m0<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk7/m;->counters_:Lo7/m0;

    return-object v0
.end method

.method public final s0()Lo7/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo7/m0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk7/m;->customAttributes_:Lo7/m0;

    return-object v0
.end method

.method public final t0()Lo7/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo7/m0<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk7/m;->counters_:Lo7/m0;

    invoke-virtual {v0}, Lo7/m0;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk7/m;->counters_:Lo7/m0;

    invoke-virtual {v0}, Lo7/m0;->p()Lo7/m0;

    move-result-object v0

    iput-object v0, p0, Lk7/m;->counters_:Lo7/m0;

    :cond_0
    iget-object v0, p0, Lk7/m;->counters_:Lo7/m0;

    return-object v0
.end method

.method public final u0()Lo7/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo7/m0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk7/m;->customAttributes_:Lo7/m0;

    invoke-virtual {v0}, Lo7/m0;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk7/m;->customAttributes_:Lo7/m0;

    invoke-virtual {v0}, Lo7/m0;->p()Lo7/m0;

    move-result-object v0

    iput-object v0, p0, Lk7/m;->customAttributes_:Lo7/m0;

    :cond_0
    iget-object v0, p0, Lk7/m;->customAttributes_:Lo7/m0;

    return-object v0
.end method

.method public final w0(J)V
    .locals 1

    iget v0, p0, Lk7/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lk7/m;->bitField0_:I

    iput-wide p1, p0, Lk7/m;->clientStartTimeUs_:J

    return-void
.end method

.method public final x0(J)V
    .locals 1

    iget v0, p0, Lk7/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lk7/m;->bitField0_:I

    iput-wide p1, p0, Lk7/m;->durationUs_:J

    return-void
.end method

.method public final y0(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lk7/m;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk7/m;->bitField0_:I

    iput-object p1, p0, Lk7/m;->name_:Ljava/lang/String;

    return-void
.end method
