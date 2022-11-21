.class public final enum Lj7/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj7/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lj7/b;

.field public static final enum d:Lj7/b;

.field public static final enum k:Lj7/b;

.field public static final enum p:Lj7/b;

.field public static final enum q:Lj7/b;

.field public static final enum r:Lj7/b;

.field public static final synthetic s:[Lj7/b;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lj7/b;

    const-string v1, "TRACE_EVENT_RATE_LIMITED"

    const/4 v2, 0x0

    const-string v3, "_fstec"

    invoke-direct {v0, v1, v2, v3}, Lj7/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj7/b;->b:Lj7/b;

    new-instance v1, Lj7/b;

    const-string v3, "NETWORK_TRACE_EVENT_RATE_LIMITED"

    const/4 v4, 0x1

    const-string v5, "_fsntc"

    invoke-direct {v1, v3, v4, v5}, Lj7/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lj7/b;->d:Lj7/b;

    new-instance v3, Lj7/b;

    const-string v5, "TRACE_STARTED_NOT_STOPPED"

    const/4 v6, 0x2

    const-string v7, "_tsns"

    invoke-direct {v3, v5, v6, v7}, Lj7/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lj7/b;->k:Lj7/b;

    new-instance v5, Lj7/b;

    const-string v7, "FRAMES_TOTAL"

    const/4 v8, 0x3

    const-string v9, "_fr_tot"

    invoke-direct {v5, v7, v8, v9}, Lj7/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lj7/b;->p:Lj7/b;

    new-instance v7, Lj7/b;

    const-string v9, "FRAMES_SLOW"

    const/4 v10, 0x4

    const-string v11, "_fr_slo"

    invoke-direct {v7, v9, v10, v11}, Lj7/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lj7/b;->q:Lj7/b;

    new-instance v9, Lj7/b;

    const-string v11, "FRAMES_FROZEN"

    const/4 v12, 0x5

    const-string v13, "_fr_fzn"

    invoke-direct {v9, v11, v12, v13}, Lj7/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lj7/b;->r:Lj7/b;

    const/4 v11, 0x6

    new-array v11, v11, [Lj7/b;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lj7/b;->s:[Lj7/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lj7/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj7/b;
    .locals 1

    const-class v0, Lj7/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj7/b;

    return-object p0
.end method

.method public static values()[Lj7/b;
    .locals 1

    sget-object v0, Lj7/b;->s:[Lj7/b;

    invoke-virtual {v0}, [Lj7/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj7/b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj7/b;->a:Ljava/lang/String;

    return-object v0
.end method
