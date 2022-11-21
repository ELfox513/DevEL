.class public final synthetic Lcom/prineside/tdi2/ui/shared/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

.field public final synthetic b:Lcom/prineside/tdi2/BasicLevel;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/l0;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/l0;->b:Lcom/prineside/tdi2/BasicLevel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/l0;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/l0;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->s(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/prineside/tdi2/BasicLevel;)V

    return-void
.end method
