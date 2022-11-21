.class public final enum Lw0/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw0/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lw0/k;

.field public static final enum b:Lw0/k;

.field public static final enum d:Lw0/k;

.field public static final enum k:Lw0/k;

.field public static final enum p:Lw0/k;

.field public static final enum q:Lw0/k;

.field public static final synthetic r:[Lw0/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lw0/k;

    const-string v1, "NOT_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw0/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw0/k;->a:Lw0/k;

    new-instance v1, Lw0/k;

    const-string v3, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lw0/k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw0/k;->b:Lw0/k;

    new-instance v3, Lw0/k;

    const-string v5, "UNMETERED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lw0/k;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw0/k;->d:Lw0/k;

    new-instance v5, Lw0/k;

    const-string v7, "NOT_ROAMING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lw0/k;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lw0/k;->k:Lw0/k;

    new-instance v7, Lw0/k;

    const-string v9, "METERED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lw0/k;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lw0/k;->p:Lw0/k;

    new-instance v9, Lw0/k;

    const-string v11, "TEMPORARILY_UNMETERED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lw0/k;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lw0/k;->q:Lw0/k;

    const/4 v11, 0x6

    new-array v11, v11, [Lw0/k;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lw0/k;->r:[Lw0/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw0/k;
    .locals 1

    const-class v0, Lw0/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw0/k;

    return-object p0
.end method

.method public static values()[Lw0/k;
    .locals 1

    sget-object v0, Lw0/k;->r:[Lw0/k;

    invoke-virtual {v0}, [Lw0/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw0/k;

    return-object v0
.end method
