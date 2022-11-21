.class Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;->b:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;->c()Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    return-object v0
.end method
