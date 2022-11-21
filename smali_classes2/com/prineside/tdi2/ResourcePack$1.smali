.class Lcom/prineside/tdi2/ResourcePack$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ResourcePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;)I
    .locals 0

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    iget p2, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    check-cast p2, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/ResourcePack$1;->compare(Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;)I

    move-result p1

    return p1
.end method
