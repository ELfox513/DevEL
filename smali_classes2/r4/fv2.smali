.class public final enum Lr4/fv2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr4/fv2;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lr4/fv2;

.field public static final enum d:Lr4/fv2;

.field public static final enum k:Lr4/fv2;

.field public static final enum p:Lr4/fv2;

.field public static final enum q:Lr4/fv2;

.field public static final enum r:Lr4/fv2;

.field public static final enum s:Lr4/fv2;

.field public static final enum t:Lr4/fv2;

.field public static final synthetic u:[Lr4/fv2;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lr4/fv2;

    const-string v1, "DEFINED_BY_JAVASCRIPT"

    const/4 v2, 0x0

    const-string v3, "definedByJavaScript"

    invoke-direct {v0, v1, v2, v3}, Lr4/fv2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lr4/fv2;->b:Lr4/fv2;

    new-instance v1, Lr4/fv2;

    const-string v3, "UNSPECIFIED"

    const/4 v4, 0x1

    const-string v5, "unspecified"

    invoke-direct {v1, v3, v4, v5}, Lr4/fv2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lr4/fv2;->d:Lr4/fv2;

    new-instance v3, Lr4/fv2;

    const-string v5, "LOADED"

    const/4 v6, 0x2

    const-string v7, "loaded"

    invoke-direct {v3, v5, v6, v7}, Lr4/fv2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lr4/fv2;->k:Lr4/fv2;

    new-instance v5, Lr4/fv2;

    const-string v7, "BEGIN_TO_RENDER"

    const/4 v8, 0x3

    const-string v9, "beginToRender"

    invoke-direct {v5, v7, v8, v9}, Lr4/fv2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lr4/fv2;->p:Lr4/fv2;

    new-instance v7, Lr4/fv2;

    const-string v9, "ONE_PIXEL"

    const/4 v10, 0x4

    const-string v11, "onePixel"

    invoke-direct {v7, v9, v10, v11}, Lr4/fv2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lr4/fv2;->q:Lr4/fv2;

    new-instance v9, Lr4/fv2;

    const-string v11, "VIEWABLE"

    const/4 v12, 0x5

    const-string v13, "viewable"

    invoke-direct {v9, v11, v12, v13}, Lr4/fv2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lr4/fv2;->r:Lr4/fv2;

    new-instance v11, Lr4/fv2;

    const-string v13, "AUDIBLE"

    const/4 v14, 0x6

    const-string v15, "audible"

    invoke-direct {v11, v13, v14, v15}, Lr4/fv2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lr4/fv2;->s:Lr4/fv2;

    new-instance v13, Lr4/fv2;

    const-string v15, "OTHER"

    const/4 v14, 0x7

    const-string v12, "other"

    invoke-direct {v13, v15, v14, v12}, Lr4/fv2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lr4/fv2;->t:Lr4/fv2;

    const/16 v12, 0x8

    new-array v12, v12, [Lr4/fv2;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lr4/fv2;->u:[Lr4/fv2;

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

    iput-object p3, p0, Lr4/fv2;->a:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lr4/fv2;
    .locals 1

    sget-object v0, Lr4/fv2;->u:[Lr4/fv2;

    invoke-virtual {v0}, [Lr4/fv2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/fv2;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/fv2;->a:Ljava/lang/String;

    return-object v0
.end method
