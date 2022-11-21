.class public final synthetic Lcom/prineside/tdi2/ui/actors/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/PieChartActor;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/actors/PieChartActor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/b;->a:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/b;->a:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    return-void
.end method
