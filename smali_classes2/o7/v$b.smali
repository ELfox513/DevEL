.class public final enum Lo7/v$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo7/v$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lo7/v$b;

.field public static final enum d:Lo7/v$b;

.field public static final enum k:Lo7/v$b;

.field public static final enum p:Lo7/v$b;

.field public static final synthetic q:[Lo7/v$b;


# instance fields
.field public final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lo7/v$b;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lo7/v$b;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lo7/v$b;->b:Lo7/v$b;

    new-instance v1, Lo7/v$b;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lo7/v$b;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lo7/v$b;->d:Lo7/v$b;

    new-instance v3, Lo7/v$b;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lo7/v$b;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lo7/v$b;->k:Lo7/v$b;

    new-instance v5, Lo7/v$b;

    const-string v7, "MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lo7/v$b;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lo7/v$b;->p:Lo7/v$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lo7/v$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lo7/v$b;->q:[Lo7/v$b;

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

    iput-boolean p3, p0, Lo7/v$b;->a:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo7/v$b;
    .locals 1

    const-class v0, Lo7/v$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo7/v$b;

    return-object p0
.end method

.method public static values()[Lo7/v$b;
    .locals 1

    sget-object v0, Lo7/v$b;->q:[Lo7/v$b;

    invoke-virtual {v0}, [Lo7/v$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo7/v$b;

    return-object v0
.end method
