.class Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager$1;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager$1;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager$1;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->initialTime:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->b:F

    return-void
.end method
