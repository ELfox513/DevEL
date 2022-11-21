.class public final synthetic Lcom/prineside/tdi2/ui/shared/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/d1;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/d1;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/d1;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iget v1, p0, Lcom/prineside/tdi2/ui/shared/d1;->b:I

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->r(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;I)V

    return-void
.end method
