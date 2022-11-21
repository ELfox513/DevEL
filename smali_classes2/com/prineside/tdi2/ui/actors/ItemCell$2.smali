.class Lcom/prineside/tdi2/ui/actors/ItemCell$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/ItemCell;->reveal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/ItemCell;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/ItemCell;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$2;->a:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$2;->a:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->q(Lcom/prineside/tdi2/ui/actors/ItemCell;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    return-void
.end method
