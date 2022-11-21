.class public final Lk7/k;
.super Lo7/y;
.source "SourceFile"

# interfaces
.implements Lo7/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/k$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/y<",
        "Lk7/k;",
        "Lk7/k$c;",
        ">;",
        "Lo7/t0;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lk7/k;

.field private static volatile PARSER:Lo7/a1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/a1<",
            "Lk7/k;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1

.field public static final SESSION_VERBOSITY_FIELD_NUMBER:I = 0x2

.field private static final sessionVerbosity_converter_:Lo7/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/b0<",
            "Ljava/lang/Integer;",
            "Lk7/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private sessionId_:Ljava/lang/String;

.field private sessionVerbosity_:Lo7/a0$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk7/k$a;

    invoke-direct {v0}, Lk7/k$a;-><init>()V

    sput-object v0, Lk7/k;->sessionVerbosity_converter_:Lo7/b0;

    new-instance v0, Lk7/k;

    invoke-direct {v0}, Lk7/k;-><init>()V

    sput-object v0, Lk7/k;->DEFAULT_INSTANCE:Lk7/k;

    const-class v1, Lk7/k;

    invoke-static {v1, v0}, Lo7/y;->O(Ljava/lang/Class;Lo7/y;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo7/y;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lk7/k;->sessionId_:Ljava/lang/String;

    invoke-static {}, Lo7/y;->C()Lo7/a0$g;

    move-result-object v0

    iput-object v0, p0, Lk7/k;->sessionVerbosity_:Lo7/a0$g;

    return-void
.end method

.method public static synthetic Q()Lk7/k;
    .locals 1

    sget-object v0, Lk7/k;->DEFAULT_INSTANCE:Lk7/k;

    return-object v0
.end method

.method public static synthetic R(Lk7/k;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/k;->Y(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic S(Lk7/k;Lk7/l;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7/k;->T(Lk7/l;)V

    return-void
.end method

.method public static X()Lk7/k$c;
    .locals 1

    sget-object v0, Lk7/k;->DEFAULT_INSTANCE:Lk7/k;

    invoke-virtual {v0}, Lo7/y;->y()Lo7/y$a;

    move-result-object v0

    check-cast v0, Lk7/k$c;

    return-object v0
.end method


# virtual methods
.method public final B(Lo7/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lk7/k$b;->a:[I

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
    sget-object p1, Lk7/k;->PARSER:Lo7/a1;

    if-nez p1, :cond_1

    const-class p2, Lk7/k;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lk7/k;->PARSER:Lo7/a1;

    if-nez p1, :cond_0

    new-instance p1, Lo7/y$b;

    sget-object p3, Lk7/k;->DEFAULT_INSTANCE:Lk7/k;

    invoke-direct {p1, p3}, Lo7/y$b;-><init>(Lo7/y;)V

    sput-object p1, Lk7/k;->PARSER:Lo7/a1;

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
    sget-object p1, Lk7/k;->DEFAULT_INSTANCE:Lk7/k;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "sessionId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "sessionVerbosity_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    invoke-static {}, Lk7/l;->d()Lo7/a0$e;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001e"

    sget-object p3, Lk7/k;->DEFAULT_INSTANCE:Lk7/k;

    invoke-static {p3, p2, p1}, Lo7/y;->M(Lo7/s0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lk7/k$c;

    invoke-direct {p1, p3}, Lk7/k$c;-><init>(Lk7/k$a;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lk7/k;

    invoke-direct {p1}, Lk7/k;-><init>()V

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

.method public final T(Lk7/l;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lk7/k;->U()V

    iget-object v0, p0, Lk7/k;->sessionVerbosity_:Lo7/a0$g;

    invoke-virtual {p1}, Lk7/l;->e()I

    move-result p1

    invoke-interface {v0, p1}, Lo7/a0$g;->P(I)V

    return-void
.end method

.method public final U()V
    .locals 2

    iget-object v0, p0, Lk7/k;->sessionVerbosity_:Lo7/a0$g;

    invoke-interface {v0}, Lo7/a0$i;->V0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lo7/y;->J(Lo7/a0$g;)Lo7/a0$g;

    move-result-object v0

    iput-object v0, p0, Lk7/k;->sessionVerbosity_:Lo7/a0$g;

    :cond_0
    return-void
.end method

.method public V(I)Lk7/l;
    .locals 2

    sget-object v0, Lk7/k;->sessionVerbosity_converter_:Lo7/b0;

    iget-object v1, p0, Lk7/k;->sessionVerbosity_:Lo7/a0$g;

    invoke-interface {v1, p1}, Lo7/a0$g;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lo7/b0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk7/l;

    return-object p1
.end method

.method public W()I
    .locals 1

    iget-object v0, p0, Lk7/k;->sessionVerbosity_:Lo7/a0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final Y(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lk7/k;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk7/k;->bitField0_:I

    iput-object p1, p0, Lk7/k;->sessionId_:Ljava/lang/String;

    return-void
.end method
