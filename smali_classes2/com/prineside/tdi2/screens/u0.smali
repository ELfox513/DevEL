.class public final synthetic Lcom/prineside/tdi2/screens/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/u0;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-void
.end method


# virtual methods
.method public final retrieved(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/u0;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    check-cast p1, Ljava/lang/Double;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->e(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/Double;)V

    return-void
.end method
