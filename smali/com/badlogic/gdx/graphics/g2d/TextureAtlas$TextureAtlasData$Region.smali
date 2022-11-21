.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Region"
.end annotation


# instance fields
.field public degrees:I

.field public flip:Z

.field public height:I

.field public index:I

.field public left:I

.field public name:Ljava/lang/String;

.field public names:[Ljava/lang/String;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public offsetX:F

.field public offsetY:F

.field public originalHeight:I

.field public originalWidth:I

.field public page:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

.field public rotate:Z

.field public top:I

.field public values:[[I
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    return-void
.end method


# virtual methods
.method public findValue(Ljava/lang/String;)[I
    .locals 3
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->names:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->names:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->values:[[I

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
