.class public final enum Lo7/c1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo7/c1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lo7/c1;

.field public static final enum b:Lo7/c1;

.field public static final synthetic d:[Lo7/c1;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lo7/c1;

    const-string v1, "PROTO2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo7/c1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo7/c1;->a:Lo7/c1;

    new-instance v1, Lo7/c1;

    const-string v3, "PROTO3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lo7/c1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo7/c1;->b:Lo7/c1;

    const/4 v3, 0x2

    new-array v3, v3, [Lo7/c1;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lo7/c1;->d:[Lo7/c1;

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

.method public static valueOf(Ljava/lang/String;)Lo7/c1;
    .locals 1

    const-class v0, Lo7/c1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo7/c1;

    return-object p0
.end method

.method public static values()[Lo7/c1;
    .locals 1

    sget-object v0, Lo7/c1;->d:[Lo7/c1;

    invoke-virtual {v0}, [Lo7/c1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo7/c1;

    return-object v0
.end method
