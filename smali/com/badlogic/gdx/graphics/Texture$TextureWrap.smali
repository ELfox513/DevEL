.class public final enum Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureWrap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/Texture$TextureWrap;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public static final enum MirroredRepeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public static final enum Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public static final synthetic b:[Lcom/badlogic/gdx/graphics/Texture$TextureWrap;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v1, "MirroredRepeat"

    const/4 v2, 0x0

    const v3, 0x8370

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->MirroredRepeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ClampToEdge"

    const/4 v4, 0x1

    const v5, 0x812f

    invoke-direct {v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v5, "Repeat"

    const/4 v6, 0x2

    const/16 v7, 0x2901

    invoke-direct {v3, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->b:[Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

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

    iput p3, p0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->b:[Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-object v0
.end method


# virtual methods
.method public getGLEnum()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->a:I

    return v0
.end method
