.class public final enum Lz1/m$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz1/m$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lz1/m$a;

.field public static final enum b:Lz1/m$a;

.field public static final enum d:Lz1/m$a;

.field public static final enum k:Lz1/m$a;

.field public static final enum p:Lz1/m$a;

.field public static final synthetic q:[Lz1/m$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lz1/m$a;

    const-string v1, "MOVE_PARAM_COMBINER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz1/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz1/m$a;->a:Lz1/m$a;

    new-instance v1, Lz1/m$a;

    const-string v3, "SCCP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lz1/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz1/m$a;->b:Lz1/m$a;

    new-instance v3, Lz1/m$a;

    const-string v5, "LITERAL_UPGRADE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lz1/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz1/m$a;->d:Lz1/m$a;

    new-instance v5, Lz1/m$a;

    const-string v7, "CONST_COLLECTOR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lz1/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lz1/m$a;->k:Lz1/m$a;

    new-instance v7, Lz1/m$a;

    const-string v9, "ESCAPE_ANALYSIS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lz1/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lz1/m$a;->p:Lz1/m$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lz1/m$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lz1/m$a;->q:[Lz1/m$a;

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

.method public static valueOf(Ljava/lang/String;)Lz1/m$a;
    .locals 1

    const-class v0, Lz1/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz1/m$a;

    return-object p0
.end method

.method public static values()[Lz1/m$a;
    .locals 1

    sget-object v0, Lz1/m$a;->q:[Lz1/m$a;

    invoke-virtual {v0}, [Lz1/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz1/m$a;

    return-object v0
.end method
