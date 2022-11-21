.class public final synthetic Lcom/prineside/tdi2/ui/shared/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

.field public final synthetic b:Lcom/badlogic/gdx/utils/Array;

.field public final synthetic d:Lcom/prineside/tdi2/ItemStack;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/ItemStack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/p0;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/p0;->b:Lcom/badlogic/gdx/utils/Array;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/p0;->d:Lcom/prineside/tdi2/ItemStack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/p0;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/p0;->b:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/p0;->d:Lcom/prineside/tdi2/ItemStack;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->p(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/ItemStack;)V

    return-void
.end method
