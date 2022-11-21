.class public final enum Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VertexDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

.field public static final enum VertexBufferObject:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

.field public static final enum VertexBufferObjectSubData:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

.field public static final enum VertexBufferObjectWithVAO:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

.field public static final synthetic a:[Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    const-string v1, "VertexArray"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    new-instance v1, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    const-string v3, "VertexBufferObject"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObject:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    new-instance v3, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    const-string v5, "VertexBufferObjectSubData"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObjectSubData:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    new-instance v5, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    const-string v7, "VertexBufferObjectWithVAO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObjectWithVAO:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->a:[Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->a:[Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    return-object v0
.end method
