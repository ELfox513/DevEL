.class public final Lr4/df3;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/df3;",
        "Lr4/cf3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzf:Lr4/df3;


# instance fields
.field private zzb:I

.field private zze:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/df3;

    invoke-direct {v0}, Lr4/df3;-><init>()V

    sput-object v0, Lr4/df3;->zzf:Lr4/df3;

    const-class v1, Lr4/df3;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    return-void
.end method

.method public static D(Lr4/ll3;Lr4/bm3;)Lr4/df3;
    .locals 1

    sget-object v0, Lr4/df3;->zzf:Lr4/df3;

    invoke-static {v0, p0, p1}, Lr4/pm3;->r(Lr4/pm3;Lr4/ll3;Lr4/bm3;)Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/df3;

    return-object p0
.end method

.method public static E()Lr4/cf3;
    .locals 1

    sget-object v0, Lr4/df3;->zzf:Lr4/df3;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/cf3;

    return-object v0
.end method

.method public static synthetic I()Lr4/df3;
    .locals 1

    sget-object v0, Lr4/df3;->zzf:Lr4/df3;

    return-object v0
.end method

.method public static synthetic J(Lr4/df3;I)V
    .locals 0

    const/16 p1, 0x40

    iput p1, p0, Lr4/df3;->zzb:I

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
    sget-object p1, Lr4/df3;->zzf:Lr4/df3;

    return-object p1

    :cond_1
    new-instance p1, Lr4/cf3;

    invoke-direct {p1, p3}, Lr4/cf3;-><init>(Lr4/af3;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/df3;

    invoke-direct {p1}, Lr4/df3;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzb"

    aput-object v0, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    sget-object p2, Lr4/df3;->zzf:Lr4/df3;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lr4/df3;->zzb:I

    return v0
.end method
