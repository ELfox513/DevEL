.class public final synthetic Lcom/prineside/tdi2/managers/music/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/music/LiveMusicManager;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/music/LiveMusicManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/music/c;->a:Lcom/prineside/tdi2/managers/music/LiveMusicManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/music/c;->a:Lcom/prineside/tdi2/managers/music/LiveMusicManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->e(Lcom/prineside/tdi2/managers/music/LiveMusicManager;)V

    return-void
.end method
