.class public final enum Lr4/se0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr4/se0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lr4/se0;

.field public static final enum d:Lr4/se0;

.field public static final enum k:Lr4/se0;

.field public static final enum p:Lr4/se0;

.field public static final synthetic q:[Lr4/se0;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lr4/se0;

    const-string v1, "BEGIN_TO_RENDER"

    const/4 v2, 0x0

    const-string v3, "beginToRender"

    invoke-direct {v0, v1, v2, v3}, Lr4/se0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lr4/se0;->b:Lr4/se0;

    new-instance v1, Lr4/se0;

    const-string v3, "DEFINED_BY_JAVASCRIPT"

    const/4 v4, 0x1

    const-string v5, "definedByJavascript"

    invoke-direct {v1, v3, v4, v5}, Lr4/se0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lr4/se0;->d:Lr4/se0;

    new-instance v3, Lr4/se0;

    const-string v5, "ONE_PIXEL"

    const/4 v6, 0x2

    const-string v7, "onePixel"

    invoke-direct {v3, v5, v6, v7}, Lr4/se0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lr4/se0;->k:Lr4/se0;

    new-instance v5, Lr4/se0;

    const-string v7, "UNSPECIFIED"

    const/4 v8, 0x3

    const-string v9, "unspecified"

    invoke-direct {v5, v7, v8, v9}, Lr4/se0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lr4/se0;->p:Lr4/se0;

    const/4 v7, 0x4

    new-array v7, v7, [Lr4/se0;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lr4/se0;->q:[Lr4/se0;

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

    iput-object p3, p0, Lr4/se0;->a:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lr4/se0;
    .locals 1

    sget-object v0, Lr4/se0;->q:[Lr4/se0;

    invoke-virtual {v0}, [Lr4/se0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/se0;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/se0;->a:Ljava/lang/String;

    return-object v0
.end method
