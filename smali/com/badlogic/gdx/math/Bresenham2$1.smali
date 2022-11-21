.class Lcom/badlogic/gdx/math/Bresenham2$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Bresenham2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/math/GridPoint2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/badlogic/gdx/math/Bresenham2;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Bresenham2;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/math/Bresenham2$1;->b:Lcom/badlogic/gdx/math/Bresenham2;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/badlogic/gdx/math/GridPoint2;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/GridPoint2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/GridPoint2;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Bresenham2$1;->c()Lcom/badlogic/gdx/math/GridPoint2;

    move-result-object v0

    return-object v0
.end method
