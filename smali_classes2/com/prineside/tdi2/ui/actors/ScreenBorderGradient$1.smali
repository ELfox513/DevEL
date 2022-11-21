.class Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient$1;->h:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient$1;->h:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->b(Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient$1;->h:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->a(Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient$1;->h:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->b(Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V

    return-void
.end method
