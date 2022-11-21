.class Lcom/prineside/tdi2/AndroidLauncher$4$2;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/AndroidLauncher$4;->gameLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:[I

.field public final synthetic r:[Ljava/lang/Runnable;

.field public final synthetic s:Lcom/prineside/tdi2/AndroidLauncher$4;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/AndroidLauncher$4;[I[Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$4$2;->s:Lcom/prineside/tdi2/AndroidLauncher$4;

    iput-object p2, p0, Lcom/prineside/tdi2/AndroidLauncher$4$2;->q:[I

    iput-object p3, p0, Lcom/prineside/tdi2/AndroidLauncher$4$2;->r:[Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$4$2;->q:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/prineside/tdi2/AndroidLauncher$4$2;->r:[Ljava/lang/Runnable;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v0, v2, v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$4$2;->q:[I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$4$2;->s:Lcom/prineside/tdi2/AndroidLauncher$4;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher$4;->E(Lcom/prineside/tdi2/AndroidLauncher$4;)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_0
    return-void
.end method
