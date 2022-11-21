.class public final synthetic Lcom/prineside/tdi2/ui/actors/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/a;->a:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/a;->a:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    return-void
.end method
