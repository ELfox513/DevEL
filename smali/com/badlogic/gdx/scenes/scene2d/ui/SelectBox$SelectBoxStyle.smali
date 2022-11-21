.class public Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectBoxStyle"
.end annotation


# instance fields
.field public background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public backgroundDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public backgroundOpen:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public backgroundOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public disabledFontColor:Lcom/badlogic/gdx/graphics/Color;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public fontColor:Lcom/badlogic/gdx/graphics/Color;

.field public listStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

.field public overFontColor:Lcom/badlogic/gdx/graphics/Color;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
    .locals 2
    .param p3    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iput-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->overFontColor:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->disabledFontColor:Lcom/badlogic/gdx/graphics/Color;

    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundOpen:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundOpen:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->backgroundDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-void
.end method
