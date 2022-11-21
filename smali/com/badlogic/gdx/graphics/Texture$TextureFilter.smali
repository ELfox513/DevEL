.class public final enum Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMap:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapLinearLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapLinearNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapNearestLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapNearestNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final synthetic b:[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v1, "Nearest"

    const/4 v2, 0x0

    const/16 v3, 0x2600

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v3, "Linear"

    const/4 v4, 0x1

    const/16 v5, 0x2601

    invoke-direct {v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v5, "MipMap"

    const/4 v6, 0x2

    const/16 v7, 0x2703

    invoke-direct {v3, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMap:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v8, "MipMapNearestNearest"

    const/4 v9, 0x3

    const/16 v10, 0x2700

    invoke-direct {v5, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapNearestNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    new-instance v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v10, "MipMapLinearNearest"

    const/4 v11, 0x4

    const/16 v12, 0x2701

    invoke-direct {v8, v10, v11, v12}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapLinearNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    new-instance v10, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v12, "MipMapNearestLinear"

    const/4 v13, 0x5

    const/16 v14, 0x2702

    invoke-direct {v10, v12, v13, v14}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapNearestLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    new-instance v12, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v14, "MipMapLinearLinear"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v7}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapLinearLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v7, 0x7

    new-array v7, v7, [Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v9

    aput-object v8, v7, v11

    aput-object v10, v7, v13

    aput-object v12, v7, v15

    sput-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->b:[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->b:[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method


# virtual methods
.method public getGLEnum()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->a:I

    return v0
.end method

.method public isMipMap()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->a:I

    const/16 v1, 0x2600

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2601

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
