.class public final Lz4/a;
.super Lz4/m0;
.source "SourceFile"

# interfaces
.implements Lz4/t1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz4/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz4/m0<",
        "Lz4/a;",
        "Lz4/a$a;",
        ">;",
        "Lz4/t1;"
    }
.end annotation


# static fields
.field private static volatile zzhk:Lz4/b2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz4/b2<",
            "Lz4/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhp:Lz4/a;


# instance fields
.field private zzhd:I

.field private zzhe:I

.field private zzhg:J

.field private zzhi:B

.field private zzhm:Ljava/lang/String;

.field private zzhn:J

.field private zzho:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz4/a;

    invoke-direct {v0}, Lz4/a;-><init>()V

    sput-object v0, Lz4/a;->zzhp:Lz4/a;

    const-class v1, Lz4/a;

    invoke-static {v1, v0}, Lz4/m0;->o(Ljava/lang/Class;Lz4/m0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lz4/m0;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lz4/a;->zzhi:B

    const/4 v0, 0x1

    iput v0, p0, Lz4/a;->zzhe:I

    const-string v0, ""

    iput-object v0, p0, Lz4/a;->zzhm:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lz4/a;->zzhn:J

    iput-wide v0, p0, Lz4/a;->zzhg:J

    const/4 v0, -0x1

    iput v0, p0, Lz4/a;->zzho:I

    return-void
.end method

.method public static synthetic A(Lz4/a;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lz4/a;->F(I)V

    return-void
.end method

.method public static synthetic B(Lz4/a;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz4/a;->t(J)V

    return-void
.end method

.method public static synthetic u(Lz4/a;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lz4/a;->E(I)V

    return-void
.end method

.method public static synthetic v(Lz4/a;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz4/a;->D(J)V

    return-void
.end method

.method public static synthetic x(Lz4/a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz4/a;->C(Ljava/lang/String;)V

    return-void
.end method

.method public static y()Lz4/a$a;
    .locals 1

    sget-object v0, Lz4/a;->zzhp:Lz4/a;

    invoke-virtual {v0}, Lz4/m0;->r()Lz4/m0$a;

    move-result-object v0

    check-cast v0, Lz4/a$a;

    return-object v0
.end method

.method public static synthetic z()Lz4/a;
    .locals 1

    sget-object v0, Lz4/a;->zzhp:Lz4/a;

    return-object v0
.end method


# virtual methods
.method public final C(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lz4/a;->zzhd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lz4/a;->zzhd:I

    iput-object p1, p0, Lz4/a;->zzhm:Ljava/lang/String;

    return-void
.end method

.method public final D(J)V
    .locals 1

    iget v0, p0, Lz4/a;->zzhd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lz4/a;->zzhd:I

    iput-wide p1, p0, Lz4/a;->zzhn:J

    return-void
.end method

.method public final E(I)V
    .locals 1

    iget v0, p0, Lz4/a;->zzhd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz4/a;->zzhd:I

    iput p1, p0, Lz4/a;->zzhe:I

    return-void
.end method

.method public final F(I)V
    .locals 1

    iget v0, p0, Lz4/a;->zzhd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lz4/a;->zzhd:I

    iput p1, p0, Lz4/a;->zzho:I

    return-void
.end method

.method public final l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p3, Lz4/b;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    iput-byte p1, p0, Lz4/a;->zzhi:B

    return-object v1

    :pswitch_1
    iget-byte p1, p0, Lz4/a;->zzhi:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lz4/a;->zzhk:Lz4/b2;

    if-nez p1, :cond_2

    const-class p2, Lz4/a;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lz4/a;->zzhk:Lz4/b2;

    if-nez p1, :cond_1

    new-instance p1, Lz4/m0$b;

    sget-object p3, Lz4/a;->zzhp:Lz4/a;

    invoke-direct {p1, p3}, Lz4/m0$b;-><init>(Lz4/m0;)V

    sput-object p1, Lz4/a;->zzhk:Lz4/b2;

    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lz4/a;->zzhp:Lz4/a;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzhd"

    aput-object p2, p1, p3

    const-string p2, "zzhe"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzhm"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhn"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzhg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzho"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0004\u0001\u0504\u0000\u0002\u0508\u0001\u0003\u0510\u0002\u0004\u0510\u0003\u0005\u0004\u0004"

    sget-object p3, Lz4/a;->zzhp:Lz4/a;

    invoke-static {p3, p2, p1}, Lz4/m0;->n(Lz4/r1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lz4/a$a;

    invoke-direct {p1, v1}, Lz4/a$a;-><init>(Lz4/b;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lz4/a;

    invoke-direct {p1}, Lz4/a;-><init>()V

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

.method public final t(J)V
    .locals 1

    iget v0, p0, Lz4/a;->zzhd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lz4/a;->zzhd:I

    iput-wide p1, p0, Lz4/a;->zzhg:J

    return-void
.end method
