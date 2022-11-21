.class public final synthetic Lcom/prineside/tdi2/ui/shared/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

.field public final synthetic b:Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/j0;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/j0;->b:Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    iput p3, p0, Lcom/prineside/tdi2/ui/shared/j0;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/j0;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/j0;->b:Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;

    iget v2, p0, Lcom/prineside/tdi2/ui/shared/j0;->d:I

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->k(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/WaveTemplates$PredefinedWaveTemplate;I)V

    return-void
.end method
