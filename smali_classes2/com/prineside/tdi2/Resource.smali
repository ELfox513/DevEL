.class public Lcom/prineside/tdi2/Resource;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NAMES:[Ljava/lang/String;

.field public static final TEXTURE_REGION_NAMES:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/prineside/tdi2/Resource;->NAMES:[Ljava/lang/String;

    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->SCALAR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string v4, "Scalar"

    aput-object v4, v1, v3

    sget-object v3, Lcom/prineside/tdi2/enums/ResourceType;->VECTOR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const-string v5, "Vector"

    aput-object v5, v1, v4

    sget-object v4, Lcom/prineside/tdi2/enums/ResourceType;->MATRIX:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const-string v6, "Matrix"

    aput-object v6, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/ResourceType;->TENSOR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const-string v7, "Tensor"

    aput-object v7, v1, v6

    sget-object v6, Lcom/prineside/tdi2/enums/ResourceType;->INFIAR:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const-string v8, "Infiar"

    aput-object v8, v1, v7

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/prineside/tdi2/Resource;->TEXTURE_REGION_NAMES:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "resource-scalar"

    aput-object v2, v0, v1

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "resource-vector"

    aput-object v2, v0, v1

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "resource-matrix"

    aput-object v2, v0, v1

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "resource-tensor"

    aput-object v2, v0, v1

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "resource-infiar"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
