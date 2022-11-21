.class public final Lk7/c;
.super Lo7/y;
.source "SourceFile"

# interfaces
.implements Lo7/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/c$b;,
        Lk7/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/y<",
        "Lk7/c;",
        "Lk7/c$b;",
        ">;",
        "Lo7/t0;"
    }
.end annotation


# static fields
.field public static final ANDROID_APP_INFO_FIELD_NUMBER:I = 0x3

.field public static final APPLICATION_PROCESS_STATE_FIELD_NUMBER:I = 0x5

.field public static final APP_INSTANCE_ID_FIELD_NUMBER:I = 0x2

.field public static final CUSTOM_ATTRIBUTES_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lk7/c;

.field public static final GOOGLE_APP_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo7/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/a1<",
            "Lk7/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private androidAppInfo_:Lk7/a;

.field private appInstanceId_:Ljava/lang/String;

.field private applicationProcessState_:I

.field private bitField0_:I

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

.field private googleAppId_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk7/c;

    invoke-direct {v0}, Lk7/c;-><init>()V

    sput-object v0, Lk7/c;->DEFAULT_INSTANCE:Lk7/c;

    const-class v1, Lk7/c;

    invoke-static {v1, v0}, Lo7/y;->O(Ljava/lang/Class;Lo7/y;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo7/y;-><init>()V

    invoke-static {}, Lo7/m0;->f()Lo7/m0;

    move-result-object v0

    iput-object v0, p0, Lk7/c;->customAttributes_:Lo7/m0;

    const-string v0, ""

    iput-object v0, p0, Lk7/c;->googleAppId_:Ljava/lang/String;

    iput-object v0, p0, Lk7/c;->appInstanceId_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic Q()Lk7/c;
    .locals 1

    sget-object v0, Lk7/c;->DEFAULT_INSTANCE:Lk7/c;

    return-object v0
.end method

.method public static synthetic R(Lk7/c;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/c;->i0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic S(Lk7/c;Lk7/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/c;->h0(Lk7/d;)V

    return-void
.end method

.method public static synthetic T(Lk7/c;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lk7/c;->Y()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U(Lk7/c;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/c;->g0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic V(Lk7/c;Lk7/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/c;->f0(Lk7/a;)V

    return-void
.end method

.method public static X()Lk7/c;
    .locals 1

    sget-object v0, Lk7/c;->DEFAULT_INSTANCE:Lk7/c;

    return-object v0
.end method

.method public static e0()Lk7/c$b;
    .locals 1

    sget-object v0, Lk7/c;->DEFAULT_INSTANCE:Lk7/c;

    invoke-virtual {v0}, Lo7/y;->y()Lo7/y$a;

    move-result-object v0

    check-cast v0, Lk7/c$b;

    return-object v0
.end method


# virtual methods
.method public final B(Lo7/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lk7/c$a;->a:[I

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
    sget-object p1, Lk7/c;->PARSER:Lo7/a1;

    if-nez p1, :cond_1

    const-class p2, Lk7/c;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lk7/c;->PARSER:Lo7/a1;

    if-nez p1, :cond_0

    new-instance p1, Lo7/y$b;

    sget-object p3, Lk7/c;->DEFAULT_INSTANCE:Lk7/c;

    invoke-direct {p1, p3}, Lo7/y$b;-><init>(Lo7/y;)V

    sput-object p1, Lk7/c;->PARSER:Lo7/a1;

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
    sget-object p1, Lk7/c;->DEFAULT_INSTANCE:Lk7/c;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "googleAppId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "appInstanceId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "androidAppInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "applicationProcessState_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    invoke-static {}, Lk7/d;->d()Lo7/a0$e;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "customAttributes_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    sget-object p3, Lk7/c$c;->a:Lo7/l0;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0001\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0005\u100c\u0003\u00062"

    sget-object p3, Lk7/c;->DEFAULT_INSTANCE:Lk7/c;

    invoke-static {p3, p2, p1}, Lo7/y;->M(Lo7/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lk7/c$b;

    invoke-direct {p1, p3}, Lk7/c$b;-><init>(Lk7/c$a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lk7/c;

    invoke-direct {p1}, Lk7/c;-><init>()V

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

.method public W()Lk7/a;
    .locals 1

    iget-object v0, p0, Lk7/c;->androidAppInfo_:Lk7/a;

    if-nez v0, :cond_0

    invoke-static {}, Lk7/a;->U()Lk7/a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final Y()Ljava/util/Map;
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

    invoke-virtual {p0}, Lk7/c;->d0()Lo7/m0;

    move-result-object v0

    return-object v0
.end method

.method public Z()Z
    .locals 1

    iget v0, p0, Lk7/c;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a0()Z
    .locals 1

    iget v0, p0, Lk7/c;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b0()Z
    .locals 1

    iget v0, p0, Lk7/c;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c0()Z
    .locals 2

    iget v0, p0, Lk7/c;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final d0()Lo7/m0;
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

    iget-object v0, p0, Lk7/c;->customAttributes_:Lo7/m0;

    invoke-virtual {v0}, Lo7/m0;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk7/c;->customAttributes_:Lo7/m0;

    invoke-virtual {v0}, Lo7/m0;->p()Lo7/m0;

    move-result-object v0

    iput-object v0, p0, Lk7/c;->customAttributes_:Lo7/m0;

    :cond_0
    iget-object v0, p0, Lk7/c;->customAttributes_:Lo7/m0;

    return-object v0
.end method

.method public final f0(Lk7/a;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lk7/c;->androidAppInfo_:Lk7/a;

    iget p1, p0, Lk7/c;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lk7/c;->bitField0_:I

    return-void
.end method

.method public final g0(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lk7/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lk7/c;->bitField0_:I

    iput-object p1, p0, Lk7/c;->appInstanceId_:Ljava/lang/String;

    return-void
.end method

.method public final h0(Lk7/d;)V
    .locals 0

    invoke-virtual {p1}, Lk7/d;->e()I

    move-result p1

    iput p1, p0, Lk7/c;->applicationProcessState_:I

    iget p1, p0, Lk7/c;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lk7/c;->bitField0_:I

    return-void
.end method

.method public final i0(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lk7/c;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk7/c;->bitField0_:I

    iput-object p1, p0, Lk7/c;->googleAppId_:Ljava/lang/String;

    return-void
.end method
