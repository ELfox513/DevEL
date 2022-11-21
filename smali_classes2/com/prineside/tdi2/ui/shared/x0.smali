.class public final synthetic Lcom/prineside/tdi2/ui/shared/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

.field public final synthetic b:Lcom/prineside/tdi2/ItemStack;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/ItemStack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/x0;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/x0;->b:Lcom/prineside/tdi2/ItemStack;

    return-void
.end method


# virtual methods
.method public final retrieved(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/x0;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/x0;->b:Lcom/prineside/tdi2/ItemStack;

    check-cast p1, Lcom/prineside/tdi2/Item;

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->y(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/Item;)V

    return-void
.end method
