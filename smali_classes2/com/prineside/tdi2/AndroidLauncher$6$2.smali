.class Lcom/prineside/tdi2/AndroidLauncher$6$2;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/AndroidLauncher$6;->onAdFailedToLoad(Lt2/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/prineside/tdi2/AndroidLauncher$6;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/AndroidLauncher$6;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$6$2;->q:Lcom/prineside/tdi2/AndroidLauncher$6;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$6$2;->q:Lcom/prineside/tdi2/AndroidLauncher$6;

    iget-object v0, v0, Lcom/prineside/tdi2/AndroidLauncher$6;->b:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->q(Lcom/prineside/tdi2/AndroidLauncher;)V

    return-void
.end method
