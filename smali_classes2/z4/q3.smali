.class public final enum Lz4/q3;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz4/q3;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lz4/q3;

.field public static final enum d:Lz4/q3;

.field public static final enum k:Lz4/q3;

.field public static final enum p:Lz4/q3;

.field public static final enum q:Lz4/q3;

.field public static final enum r:Lz4/q3;

.field public static final enum s:Lz4/q3;

.field public static final enum t:Lz4/q3;

.field public static final enum u:Lz4/q3;

.field public static final synthetic v:[Lz4/q3;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lz4/q3;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lz4/q3;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lz4/q3;->b:Lz4/q3;

    new-instance v2, Lz4/q3;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "LONG"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lz4/q3;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, Lz4/q3;->d:Lz4/q3;

    new-instance v3, Lz4/q3;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v6, "FLOAT"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lz4/q3;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Lz4/q3;->k:Lz4/q3;

    new-instance v4, Lz4/q3;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v8, "DOUBLE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lz4/q3;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v4, Lz4/q3;->p:Lz4/q3;

    new-instance v6, Lz4/q3;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v10, "BOOLEAN"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lz4/q3;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v6, Lz4/q3;->q:Lz4/q3;

    new-instance v8, Lz4/q3;

    const-string v10, "STRING"

    const/4 v12, 0x5

    const-string v13, ""

    invoke-direct {v8, v10, v12, v13}, Lz4/q3;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v8, Lz4/q3;->r:Lz4/q3;

    new-instance v10, Lz4/q3;

    sget-object v13, Lz4/i;->b:Lz4/i;

    const-string v14, "BYTE_STRING"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v13}, Lz4/q3;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v10, Lz4/q3;->s:Lz4/q3;

    new-instance v13, Lz4/q3;

    const-string v14, "ENUM"

    const/4 v15, 0x7

    const/4 v12, 0x0

    invoke-direct {v13, v14, v15, v12}, Lz4/q3;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v13, Lz4/q3;->t:Lz4/q3;

    new-instance v14, Lz4/q3;

    const-string v15, "MESSAGE"

    const/16 v11, 0x8

    invoke-direct {v14, v15, v11, v12}, Lz4/q3;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v14, Lz4/q3;->u:Lz4/q3;

    const/16 v12, 0x9

    new-array v12, v12, [Lz4/q3;

    aput-object v0, v12, v1

    aput-object v2, v12, v5

    aput-object v3, v12, v7

    aput-object v4, v12, v9

    const/4 v0, 0x4

    aput-object v6, v12, v0

    const/4 v0, 0x5

    aput-object v8, v12, v0

    const/4 v0, 0x6

    aput-object v10, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    aput-object v14, v12, v11

    sput-object v12, Lz4/q3;->v:[Lz4/q3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lz4/q3;->a:Ljava/lang/Object;

    return-void
.end method

.method public static values()[Lz4/q3;
    .locals 1

    sget-object v0, Lz4/q3;->v:[Lz4/q3;

    invoke-virtual {v0}, [Lz4/q3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz4/q3;

    return-object v0
.end method
