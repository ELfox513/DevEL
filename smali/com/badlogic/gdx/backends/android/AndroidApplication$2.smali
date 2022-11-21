.class Lcom/badlogic/gdx/backends/android/AndroidApplication$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidApplication;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/backends/android/AndroidApplication;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication$2;->a:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication$2;->a:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
