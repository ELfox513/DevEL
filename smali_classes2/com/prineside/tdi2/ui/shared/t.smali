.class public final synthetic Lcom/prineside/tdi2/ui/shared/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

.field public final synthetic b:Lcom/prineside/tdi2/BasicLevel$WaveQuest;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevel$WaveQuest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/t;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/t;->b:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/t;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/t;->b:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->G(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevel$WaveQuest;)V

    return-void
.end method
