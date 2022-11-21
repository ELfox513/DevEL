.class public final Lr4/bq;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/bq;",
        "Lr4/vp;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zze:Lr4/bq;


# instance fields
.field private zzb:Lr4/ym3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ym3<",
            "Lr4/up;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/bq;

    invoke-direct {v0}, Lr4/bq;-><init>()V

    sput-object v0, Lr4/bq;->zze:Lr4/bq;

    const-class v1, Lr4/bq;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    invoke-static {}, Lr4/pm3;->m()Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/bq;->zzb:Lr4/ym3;

    return-void
.end method

.method public static C()Lr4/vp;
    .locals 1

    sget-object v0, Lr4/bq;->zze:Lr4/bq;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/vp;

    return-object v0
.end method

.method public static synthetic D()Lr4/bq;
    .locals 1

    sget-object v0, Lr4/bq;->zze:Lr4/bq;

    return-object v0
.end method

.method public static synthetic E(Lr4/bq;Lr4/up;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lr4/bq;->zzb:Lr4/ym3;

    invoke-interface {v0}, Lr4/ym3;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lr4/pm3;->n(Lr4/ym3;)Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/bq;->zzb:Lr4/ym3;

    :cond_0
    iget-object p0, p0, Lr4/bq;->zzb:Lr4/ym3;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lr4/bq;->zze:Lr4/bq;

    return-object p1

    :cond_1
    new-instance p1, Lr4/vp;

    invoke-direct {p1, p3}, Lr4/vp;-><init>(Lr4/np;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/bq;

    invoke-direct {p1}, Lr4/bq;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzb"

    aput-object v0, p1, p3

    const-class p3, Lr4/up;

    aput-object p3, p1, p2

    sget-object p2, Lr4/bq;->zze:Lr4/bq;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
