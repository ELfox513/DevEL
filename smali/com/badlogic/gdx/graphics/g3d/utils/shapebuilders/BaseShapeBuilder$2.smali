.class Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder$2;
.super Lcom/badlogic/gdx/utils/FlushablePool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/FlushablePool<",
        "Lcom/badlogic/gdx/math/Matrix4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/FlushablePool;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder$2;->c()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method
