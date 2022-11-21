.class public final synthetic Lcom/prineside/tdi2/ui/components/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/g;->a:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    return-void
.end method


# virtual methods
.method public final retrieved(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/g;->a:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    check-cast p1, Lcom/prineside/tdi2/Item;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->a(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/Item;)V

    return-void
.end method
