.class Lcom/badlogic/gdx/backends/android/AndroidDaydream$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidDaydream;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/backends/android/AndroidDaydream;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidDaydream;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$2;->a:Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$2;->a:Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    invoke-virtual {v0}, Landroid/service/dreams/DreamService;->finish()V

    return-void
.end method
