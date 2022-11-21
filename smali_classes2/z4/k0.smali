.class public final enum Lz4/k0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz4/k0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lz4/k0;

.field public static final enum d:Lz4/k0;

.field public static final enum k:Lz4/k0;

.field public static final enum p:Lz4/k0;

.field public static final synthetic q:[Lz4/k0;


# instance fields
.field public final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lz4/k0;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lz4/k0;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lz4/k0;->b:Lz4/k0;

    new-instance v1, Lz4/k0;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lz4/k0;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lz4/k0;->d:Lz4/k0;

    new-instance v3, Lz4/k0;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lz4/k0;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lz4/k0;->k:Lz4/k0;

    new-instance v5, Lz4/k0;

    const-string v7, "MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lz4/k0;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lz4/k0;->p:Lz4/k0;

    const/4 v7, 0x4

    new-array v7, v7, [Lz4/k0;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lz4/k0;->q:[Lz4/k0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lz4/k0;->a:Z

    return-void
.end method

.method public static values()[Lz4/k0;
    .locals 1

    sget-object v0, Lz4/k0;->q:[Lz4/k0;

    invoke-virtual {v0}, [Lz4/k0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz4/k0;

    return-object v0
.end method
