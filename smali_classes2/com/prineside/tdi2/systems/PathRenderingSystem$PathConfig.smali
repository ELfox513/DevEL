.class Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/PathRenderingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathConfig"
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public k:I

.field public p:Lcom/prineside/tdi2/Path;

.field public q:F

.field public r:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Path$PathSegment;",
            ">;"
        }
    .end annotation
.end field

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Path$PathSegment;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->r:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/PathRenderingSystem$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->p:Lcom/prineside/tdi2/Path;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->s:Z

    iput v1, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->k:I

    iput v1, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->b:I

    iput-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->a:F

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->r:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Path$PathSegment;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Path$PathSegment;->free()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method
