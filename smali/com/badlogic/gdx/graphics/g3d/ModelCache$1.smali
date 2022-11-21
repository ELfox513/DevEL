.class Lcom/badlogic/gdx/graphics/g3d/ModelCache$1;
.super Lcom/badlogic/gdx/utils/FlushablePool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/FlushablePool<",
        "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/badlogic/gdx/graphics/g3d/ModelCache;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelCache;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelCache$1;->c:Lcom/badlogic/gdx/graphics/g3d/ModelCache;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/FlushablePool;-><init>()V

    return-void
.end method


# virtual methods
.method public newObject()Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Renderable;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelCache$1;->newObject()Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    return-object v0
.end method
