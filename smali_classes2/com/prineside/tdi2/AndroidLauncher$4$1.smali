.class Lcom/prineside/tdi2/AndroidLauncher$4$1;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/AndroidLauncher$4;->k0(IIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/badlogic/gdx/InputProcessor;

.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:Lcom/prineside/tdi2/AndroidLauncher$4;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/AndroidLauncher$4;Lcom/badlogic/gdx/InputProcessor;II)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$4$1;->t:Lcom/prineside/tdi2/AndroidLauncher$4;

    iput-object p2, p0, Lcom/prineside/tdi2/AndroidLauncher$4$1;->q:Lcom/badlogic/gdx/InputProcessor;

    iput p3, p0, Lcom/prineside/tdi2/AndroidLauncher$4$1;->r:I

    iput p4, p0, Lcom/prineside/tdi2/AndroidLauncher$4$1;->s:I

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$4$1;->q:Lcom/badlogic/gdx/InputProcessor;

    iget v1, p0, Lcom/prineside/tdi2/AndroidLauncher$4$1;->r:I

    iget v2, p0, Lcom/prineside/tdi2/AndroidLauncher$4$1;->s:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    return-void
.end method
